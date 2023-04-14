-- Descreve o nome dos jogadores, o nome das missões e seus objetivos vinculados à quests que ocorrem em Camaragibe e possui status "Em Progresso"
DECLARE
    CURSOR get_quest_in_progress_on_cg IS (
        SELECT DEREF(jogador) AS jogador, DEREF(missao) AS missao FROM Quest
        WHERE status = 'Em Progresso'
        AND local_missao = (SELECT REF(L) FROM Locais L WHERE nome = 'Camaragibe')
    );

    v_objetivos Missao_tb.objetivos%TYPE;

BEGIN
    FOR quest IN get_quest_in_progress_on_cg LOOP
        dbms_output.put_line('O jogador ' || quest.jogador.nome ||' está na missão ' || quest.missao.nome);
        dbms_output.put_line(  'Os objetivos dessa missão são: ');

		--Seleciona os objetivos armazenados no varray "objetivos"
        SELECT objetivos INTO v_objetivos FROM Missao_tb WHERE nome = quest.missao.nome;

        FOR i IN 1..v_objetivos.COUNT LOOP
            dbms_output.put_line('- ' || v_objetivos(i));
        END LOOP;
    END LOOP;
END;
/
-- Retorna a experiência ganha por cada jogador em batalhas
SELECT DEREF(L.atacante).nome AS Jogador, SUM(I.experiencia) AS Experiencia_batalha
	FROM Inimigo I, Jogador J, Loot_tb L
	WHERE L.atacado = REF(I)
    	AND L.atacante = REF(J)
	GROUP BY DEREF(L.atacante).nome
  ORDER BY DEREF(L.atacante).nome;
/

-- Calcula o saldo de um dado comerciante
CREATE OR REPLACE PROCEDURE saldo_comerciante (nome_comerciante Comerciante_tb.nome%TYPE) IS
    	comerciante_ref REF Comerciante_tp;
		vendas NUMBER;
		compras NUMBER;
	BEGIN
        vendas := 0;
		compras := 0;

        SELECT REF(C) INTO comerciante_ref 
        	FROM Comerciante_tb C
        	WHERE nome = nome_comerciante;

		SELECT SUM(T.quantidade * DEREF(item).preco_compra) INTO vendas
        	FROM Transacao_tb T
        	WHERE T.comerciante = comerciante_ref AND T.tipo = 'C';

		SELECT SUM(T.quantidade * DEREF(item).preco_compra) INTO compras
        	FROM Transacao_tb T
        	WHERE T.comerciante = comerciante_ref AND T.tipo = 'V';

        IF vendas IS NULL THEN
            vendas := 0;
        END IF;

		IF compras IS NULL THEN
            compras := 0;
        END IF;

		DBMS_OUTPUT.PUT_LINE(nome_comerciante || ' ganhou ' || vendas || ' vendendo itens e gastou ' || compras || ' comprando-os. Seu saldo atual é de ' || (vendas - compras) || '.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
    	DBMS_OUTPUT.PUT_LINE('Não existe um comerciante com esse nome! Hmm... a não ser que o Camelot tenha falsificado a identidade de novo!');
END;
/
BEGIN
    saldo_comerciante('Camelot');
END;
/

-- Retorna Sim ou Não se um jogador é elegível para usar um ataque
CREATE OR REPLACE FUNCTION elegivel_ataque (
    nome_jogador IN Jogador.nome%TYPE,
    nome_ataque IN Ataque_especial_tb.nome%TYPE
) RETURN VARCHAR
IS
    qtd_restricoes_classe INT;
    qtd_restricoes_especializacao INT;

    restricao_classe INT;
    restricao_especializacao INT;
BEGIN
    SELECT COUNT(*) INTO qtd_restricoes_classe
        FROM TABLE (SELECT restricao_classe
    					FROM ataque_especial_tb 
    					WHERE nome = nome_ataque);

    SELECT COUNT(*) INTO qtd_restricoes_especializacao
        FROM TABLE (SELECT restricao_especializacao
    					FROM ataque_especial_tb 
    					WHERE nome = nome_ataque);

    SELECT COUNT(*) INTO restricao_classe 
        FROM TABLE (SELECT restricao_classe
    					FROM ataque_especial_tb 
    					WHERE nome = nome_ataque)
        WHERE restricao = (SELECT nome_classe FROM Jogador WHERE nome = nome_jogador);

    SELECT COUNT(*) INTO restricao_especializacao 
        FROM TABLE (SELECT restricao_especializacao
    					FROM ataque_especial_tb 
    					WHERE nome = nome_ataque)
        WHERE restricao = (SELECT especializacao FROM Jogador WHERE nome = nome_jogador);

    IF ((qtd_restricoes_classe = 0 AND qtd_restricoes_especializacao = 0) OR restricao_classe > 0 OR restricao_especializacao > 0) THEN
        RETURN('Sim');
    ELSE
        RETURN('Não');
    END IF;    
END;
/

-- Lista os ataques especiais e os jogadores que podem usá-los levando em consideração as restrições de classe e especialização
BEGIN
    FOR ataque IN (SELECT nome FROM Ataque_especial_TB ORDER BY nome) 
    LOOP
    	DBMS_OUTPUT.PUT_LINE(ataque.nome || ':');

    	FOR jogador IN (SELECT nome FROM Jogador WHERE elegivel_ataque(nome, ataque.nome) = 'Sim' ORDER BY nome)
        LOOP
            DBMS_OUTPUT.PUT_LINE('-' || jogador.nome);
        END LOOP;

		DBMS_OUTPUT.PUT_LINE(CHR(10));
    END LOOP;
END;
/

-- Lista os santuários dos locais e seus efeitos nos jogadores
BEGIN
    FOR loc IN (SELECT nome, santuarios FROM Locais ORDER BY nome) 
    LOOP
    	DBMS_OUTPUT.PUT_LINE(loc.nome || ':');

    	FOR santuario IN (SELECT * FROM TABLE(SELECT santuarios FROM Locais WHERE nome = loc.nome))
        LOOP
            DBMS_OUTPUT.PUT_LINE('-' || santuario.nome_santuario || ': ' || santuario.efeito);
        END LOOP;

		DBMS_OUTPUT.PUT_LINE(CHR(10));
    END LOOP;
END;
/

-- Lista os atributos por nível dos ataques especiais
BEGIN
    FOR ataque IN (SELECT nome FROM Ataque_especial_TB ORDER BY nome) 
    LOOP
    	DBMS_OUTPUT.PUT_LINE(ataque.nome || ':');

    	FOR nivel_ataque IN (SELECT * FROM TABLE(SELECT nivel_ataque FROM Ataque_especial_tb WHERE nome = ataque.nome))
        LOOP
            DBMS_OUTPUT.PUT_LINE('Nível: ' || nivel_ataque.nivel || ' // ' || 'Dano: ' || nivel_ataque.dano || ' // ' || 'Mana: ' || nivel_ataque.custo_mana || ' // ' || 'Tempo de recarga: ' || nivel_ataque.tempo_recarga);
        END LOOP;

		DBMS_OUTPUT.PUT_LINE(CHR(10));
    END LOOP;
END;
/

-- Lista as habilidades e quais jogadores a possuem
BEGIN
    FOR habilidade IN (SELECT * FROM Habilidade_tb ORDER BY nome) 
    LOOP
    	DBMS_OUTPUT.PUT_LINE(habilidade.nome || ': ' || habilidade.descricao);

    	FOR jogadora IN (SELECT DEREF(jogador).nome AS nome, nivel FROM Leque_habilidade_tb WHERE DEREF(habilidade).nome = habilidade.nome)
        LOOP
            DBMS_OUTPUT.PUT_LINE('-' || jogadora.nome || ' (' || jogadora.nivel || ')');
        END LOOP;

		DBMS_OUTPUT.PUT_LINE(CHR(10));
    END LOOP;
END;
/

-- Lista as recompensas obtidas em cada quest identificando o local da missão, o tipo da recompensa e seu atributo exclusivo (dano, efeito, defesa)
DECLARE
    CURSOR get_quest_reward IS (
        SELECT DEREF(DEREF(quest).local_missao) as local_missao, DEREF(consumivel) as consumivel, DEREF(arma) as arma, DEREF(armadura) as armadura FROM Recompensa
    );
BEGIN
    FOR reward IN get_quest_reward LOOP
    
    	dbms_output.put_line('A quest realizada em ' || reward.local_missao.nome ||' oferece as seguintes recompensas: ');

		IF (reward.consumivel IS NOT NULL) THEN
            dbms_output.put_line('O consumível ' || reward.consumivel.nome || ' com o efeito ' || reward.consumivel.efeito);
        END IF;

		IF (reward.arma IS NOT NULL) THEN
            dbms_output.put_line('A arma ' || reward.arma.nome || ' com dano ' || reward.arma.dano);
        END IF;

		IF (reward.armadura IS NOT NULL) THEN
            dbms_output.put_line('O consumível ' || reward.armadura.nome || ' com defesa ' || reward.armadura.defesa);
        END IF;
    END LOOP;
END;

/
-- Lista o nome, as fraquezas do jogador e o nome e quantidade de um item do qual ele possui mais de 40 unidades
DECLARE
    CURSOR get_player_item IS (
        SELECT DEREF(item).nome as item , DEREF(jogador).nome as jogador, DEREF(jogador).fraquezas as fraquezas, quantidade FROM Inventario_tb WHERE quantidade > 40
    );
BEGIN
    FOR player_item IN get_player_item LOOP
    
    	dbms_output.put_line('O jogador ' || player_item.jogador ||' que possui as fraquezas: ');
			FOR fraqueza IN (SELECT * FROM TABLE(player_item.fraquezas)) LOOP
            dbms_output.put_line('  -  ' || fraqueza.COLUMN_VALUE);
      END LOOP;
    	dbms_output.put_line('Tem no seu inventário ' || player_item.quantidade ||' unidades do item ' || player_item.item);
    	dbms_output.put_line('   ');
    END LOOP;
END;
/

-- Lista o nome do comerciante e do item do qual ele possui apenas 1 unidade no estoque e que tenha comece com a letra "C"
DECLARE
    CURSOR get__merchant_items IS (
        SELECT DEREF(item).nome as item, DEREF(comerciante).nome as comerciante FROM Estoque_tb WHERE quantidade = 1 AND DEREF(item).nome LIKE 'C%'
    );
BEGIN
    FOR item IN get__merchant_items LOOP
    	dbms_output.put_line('O comerciante ' || item.comerciante ||' possui apenas uma unidade do item ' || item.item || '.');
		dbms_output.put_line('  ');
    END LOOP;
END;

/
