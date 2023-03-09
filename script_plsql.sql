-- Package que consegue realizar algumas ações referentes aos jogadores
CREATE OR REPLACE PACKAGE jogador_pck AS 
PROCEDURE compra_item (
    nome_jogador Jogador.Nome%TYPE,
    nome_item Item.Nome%TYPE,
    nome_comerciante Comerciante.Nome%TYPE,
    quantidade_comprada INT);
FUNCTION elegivel_ataque (
    nome_jogador IN Jogador.nome%TYPE,
    nome_ataque IN Ataque_especial.nome%TYPE) RETURN VARCHAR;
END jogador_pck; 
/
CREATE OR REPLACE PACKAGE BODY jogador_pck AS 
    -- Retorna Sim ou Não se um jogador é elegível para usar um ataque
    FUNCTION elegivel_ataque (
        nome_jogador IN Jogador.nome%TYPE,
        nome_ataque IN Ataque_especial.nome%TYPE
    ) RETURN VARCHAR
    IS
    	qtd_restricoes_classe INT;
    	qtd_restricoes_especializacao INT;
    
    	restricao_classe INT;
    	restricao_especializacao INT;
    BEGIN
        SELECT COUNT(*) INTO qtd_restricoes_classe
        	FROM Restricao_classe
        	WHERE ataque = nome_ataque;
    
    	SELECT COUNT(*) INTO qtd_restricoes_especializacao
        	FROM Restricao_especializacao
        	WHERE ataque = nome_ataque;
    
    	SELECT COUNT(*) INTO restricao_classe 
            FROM Restricao_classe
            WHERE ataque = nome_ataque
            	AND restricao = (SELECT nome_classe FROM Jogador WHERE nome = nome_jogador);
    
        SELECT COUNT(*) INTO restricao_especializacao 
            FROM Restricao_especializacao
            WHERE ataque = nome_ataque
                AND especializacao = (SELECT especializacao FROM Jogador WHERE nome = nome_jogador);
    
    	IF ((qtd_restricoes_classe = 0 AND qtd_restricoes_especializacao = 0) OR restricao_classe > 0 OR restricao_especializacao > 0) THEN
            RETURN('Sim');
    	ELSE
            RETURN('Não');
        END IF;    
    END;

	-- Procedure para ser chamado após um jogador A comprar o item B de um vendedor C numa quantidade D
    PROCEDURE compra_item (
        nome_jogador Jogador.Nome%TYPE,
        nome_item Item.Nome%TYPE,
        nome_comerciante Comerciante.Nome%TYPE,
        quantidade_comprada INT
    ) IS
    	estoque INT;
    	inventario_check INT;
    	capacidade_check INT;
    	capacidade_comprada INT;
    	dinheiro_check INT;
    	
    	sem_estoque EXCEPTION;
    	sem_capacidade EXCEPTION;
    	sem_dinheiro EXCEPTION;
    
    BEGIN
        SELECT quantidade INTO estoque
            FROM Estoque
            WHERE comerciante = nome_comerciante AND item = nome_item;
    
    	-- Capacidade total do jogador após a compra
    	SELECT capacidade_total - SUM(peso) - capacidade_comprada INTO capacidade_check
        	FROM (SELECT jogador, item, peso, capacidade_total 
            		FROM Inventario, Item, Jogador 
            		WHERE item = Item.nome AND Jogador.Nome = jogador AND jogador = nome_jogador),
            	 (SELECT peso * quantidade_comprada AS capacidade_comprada 
            		FROM Item 
            		WHERE nome = nome_item)
        	GROUP BY capacidade_total, capacidade_comprada;
    
    	-- Dinheiro do jogador após a compra
    	SELECT dinheiro - (preco_compra * quantidade_comprada) INTO dinheiro_check
            FROM Jogador, Item
            WHERE Jogador.nome = nome_jogador AND Item.nome = nome_item;
    
    	IF (estoque < quantidade_comprada) THEN
            RAISE sem_estoque;
    	ELSIF (capacidade_check < 0) THEN
            RAISE sem_capacidade;
    	ELSIF (dinheiro_check < 0) THEN
            RAISE sem_dinheiro;
    	END IF;
    
    	-- Atualiza o estoque
    	IF (estoque = quantidade_comprada) THEN
            DELETE FROM Estoque WHERE comerciante = nome_comerciante AND item = nome_item;
    	ELSE 
            UPDATE Estoque
                SET quantidade = (estoque - quantidade_comprada)
                WHERE comerciante = nome_comerciante AND item = nome_item;
        END IF;
    
    	-- Atualiza o inventário
    	SELECT COUNT(*) INTO inventario_check
            FROM Inventario
            WHERE jogador = nome_jogador AND item = nome_item;
            
    	IF (inventario_check > 0) THEN
            UPDATE Inventario
                SET quantidade = (quantidade + quantidade_comprada)
                WHERE jogador = nome_jogador AND item = nome_item;
    	ELSE 
            INSERT INTO Inventario (jogador, item, quantidade)
                VALUES (nome_jogador, nome_item, quantidade_comprada);
        END IF;
    
    	-- Atualiza o dinheiro
    	UPDATE Jogador
            SET dinheiro = dinheiro_check
            WHERE nome = nome_jogador;
    
    	-- Cria uma nova transação
    	INSERT INTO Transacao (jogador, comerciante, item, compra_venda, quantidade)
            VALUES (nome_jogador, nome_comerciante, nome_item, 'compra', quantidade_comprada);
            
    EXCEPTION
        WHEN sem_estoque THEN
        	DBMS_OUTPUT.PUT_LINE('Não existe estoque suficiente para esta compra!');
        WHEN sem_dinheiro THEN
        	DBMS_OUTPUT.PUT_LINE('Não foi possível realizar a compra pois o(a) jogador(a) não possui dinheiro suficiente!');
    	WHEN sem_capacidade THEN
            DBMS_OUTPUT.PUT_LINE('Não existe capacidade no inventário para completar a compra.');
    END;
END jogador_pck;
/
-- Após alguma missão ser marcada como completa, mostra todas as missões que ainda estão em andamento
CREATE OR REPLACE TRIGGER missao_trigger
AFTER UPDATE OF status ON Quest
BEGIN
    DBMS_OUTPUT.PUT_LINE('As seguintes missões ainda precisam ser completadas:');

    FOR missao_em_andamento IN (SELECT UNIQUE missao FROM Quest WHERE LOWER(status) = 'em progresso' ORDER BY missao)
    LOOP
    	DBMS_OUTPUT.PUT_LINE(missao_em_andamento.missao);
    END LOOP;
END;
/
-- Adiciona automaticamente a data-hora e o número de uma transação
CREATE OR REPLACE TRIGGER transacao_num_trigger
BEFORE INSERT ON Transacao
FOR EACH ROW
BEGIN
    :NEW.data_hora := SYSTIMESTAMP;
    :NEW.numero := num_transacao.nextval;
END;
/
-- Insere a hora automaticamente em batalha
CREATE OR REPLACE TRIGGER batalha_data_hora_trigger
BEFORE INSERT ON Batalha
FOR EACH ROW
BEGIN
    :NEW.data_hora := SYSTIMESTAMP;
END;
/
-- Mostra quantas poções de mana Camelot tem pra vender, isso se a fiscalização ainda não tiver pego ele!
DECLARE
    possui_pocoes_de_mana INT;
	qtd_pocoes INT;
BEGIN
    SELECT COUNT(*) INTO possui_pocoes_de_mana
    	FROM Estoque
    	WHERE item = 'Poção de mana'
    		AND comerciante = 'Camelot';

	CASE
        WHEN possui_pocoes_de_mana = 0 THEN
			    DBMS_OUTPUT.PUT_LINE('Ah! Parece que as poções de mana de Camelot foram confiscadas de novo!');
		ELSE
          SELECT quantidade INTO qtd_pocoes FROM Estoque WHERE item = 'Poção de mana' AND comerciante = 'Camelot';

          DBMS_OUTPUT.PUT_LINE('Camelot possui à venda ' || qtd_pocoes || ' poções de mana.');
	END CASE;
END;
/
-- Simplesmente mostra as informações dos itens
DECLARE
    CURSOR item_cur IS (
    	SELECT * FROM ITEM
    );

	item_row item%ROWTYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Nome | Nivel mínimo | Preço de compra | Preço de venda | Peso | Raridade');

    OPEN item_cur;
	
	LOOP
        FETCH item_cur INTO item_row;

		EXIT WHEN item_cur%NOTFOUND;

		DBMS_OUTPUT.PUT_LINE(item_row.nome || ' | ' || item_row.nivel_minimo || ' | ' || item_row.preco_compra || ' | ' || item_row.preco_venda || ' | ' || item_row.peso || ' | ' || item_row.raridade);
    END LOOP;

	CLOSE item_cur;
END;
/
-- O registro recebe as informações gerais sobre a vida do personagem
DECLARE
  TYPE vida_personagem IS RECORD(
    vida personagem.vida%TYPE,
	vida_max personagem.vida_maxima%TYPE);

  vida_ronald   vida_personagem;
BEGIN
  SELECT vida,
         vida_maxima
  INTO vida_ronald
  FROM Personagem
  WHERE nome = 'Ronald';

  DBMS_OUTPUT.PUT_LINE('Personagem Ronald:  Vida atual - ' || vida_ronald.vida || ', ' || 'Vida máxima - ' || vida_ronald.vida_max);
END;
/
--A variável quantidade_item recebe a quantidade de poções de vida que o comerciante Almir tem disponível
DECLARE
	quantidade_item Estoque.quantidade%TYPE;
BEGIN
    SELECT quantidade INTO quantidade_item
    FROM Estoque
    WHERE comerciante = 'Almir' AND item = 'Poção de vida';
	DBMS_OUTPUT.PUT_LINE('Quantidade - Poção de vida: ' || quantidade_item);
END;
/
-- Printa as transações de acordo com sua ordem de ocorrência
DECLARE
    num_transacoes INT;
	contador INT := 0;
	transacao_row Transacao%ROWTYPE;
BEGIN
    SELECT COUNT(*) INTO num_transacoes FROM Transacao;

	DBMS_OUTPUT.PUT_LINE('Jogador | Comerciante | Item | Quantidade | Compra/Venda');

	WHILE contador < num_transacoes
    LOOP
        SELECT * INTO transacao_row FROM Transacao WHERE numero = contador;

		DBMS_OUTPUT.PUT_LINE(transacao_row.jogador || ' | ' || transacao_row.comerciante || ' | ' || transacao_row.item || ' | ' || transacao_row.quantidade || ' | ' || transacao_row.compra_venda);

		contador := contador + 1;
	END LOOP;
END;
/
-- Lista os ataques especiais e os jogadores que podem usá-los levando em consideração as restrições de classe e especialização
BEGIN
    FOR ataque IN (SELECT nome FROM Ataque_especial ORDER BY nome) 
    LOOP
    	DBMS_OUTPUT.PUT_LINE(ataque.nome || ':');

    	FOR jogador IN (SELECT nome FROM Jogador WHERE jogador_pck.elegivel_ataque(nome, ataque.nome) = 'Sim' ORDER BY nome)
        LOOP
            DBMS_OUTPUT.PUT_LINE('-' || jogador.nome);
        END LOOP;

		DBMS_OUTPUT.PUT_LINE(CHR(10));
    END LOOP;
END;
