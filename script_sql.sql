-- Proíbe que a vida ou mana sejam maiores que seus máximos
ALTER TABLE Personagem ADD CONSTRAINT check_personagem_vida_maxima CHECK (vida <= vida_maxima);
ALTER TABLE Personagem ADD CONSTRAINT check_personagem_mana_maxima CHECK (mana <= mana_maxima);

-- Cria um index baseado nas raças dos personagens
CREATE INDEX personagem_raca_I ON Personagem (raca);

-- Cria uma nova missão
INSERT INTO Missao (nome, experiencia, dinheiro, nivel_minimo) 
	VALUES ('Terminar AV4', 1800, 0, 1);

-- Verão chegou!!
UPDATE Locais 
    SET clima = 'Inferno', continente = 'Gondwana'
    WHERE nome = 'Hellcife';

-- As poções de mana desse vendedor foram confiscadas por apresentarem um odor desagradável
DELETE FROM Estoque
	WHERE comerciante = 'Camelot' AND item = 'Poção de mana';

-- Seleciona os itens lendários
SELECT * 
    FROM Item 
    WHERE raridade = 'LENDARIO'
    ORDER BY nome;

-- Seleciona os itens que custam entre 10 e 500
SELECT * FROM Item WHERE preco_compra BETWEEN 10 AND 500;

-- Seleciona os jogadores que são druidas, magos ou feiticeiros
SELECT nome
	FROM JOGADOR
	WHERE nome_classe IN ('Druida', 'Mago', 'Feiticeira');

-- Visualiza os itens que são poções
SELECT * 
	FROM Item
	WHERE nome LIKE '%Poção%';

-- Visualiza os locais com bioma e clima conhecidos
SELECT *
	FROM Locais
	WHERE bioma IS NOT NULL AND clima IS NOT NULL;

-- Mostra os ataques especiais de cada jogador
SELECT jogador, Leque_ataque.ataque, Nivel_ataque.nivel, dano, custo_mana, tempo_recarga
	FROM Leque_ataque
	INNER JOIN Nivel_ataque
	ON Leque_ataque.nivel = Nivel_ataque.nivel AND Leque_ataque.ataque = Nivel_ataque.nome
    ORDER BY jogador;

-- Seleciona a(s) arma(s) de maior dano que Bia possui no inventário
SELECT nome 
	FROM Arma, Inventario
	WHERE dano = (SELECT Max(dano) 
                    FROM Arma, Inventario
                    WHERE Arma.nome = Inventario.item AND Inventario.jogador = 'Bia')
    	AND Inventario.jogador = 'Bia'
    	AND Arma.nome = Inventario.item;

-- Seleciona as missões que toda a party pode fazer
SELECT nome
	FROM Missao
	WHERE
		nivel_minimo <= (SELECT MIN(nivel) FROM Jogador);

-- Pega a média de faturamento por venda de Almir
SELECT AVG(Transacao.quantidade * Item.preco_compra) AS Faturamento_por_venda
	FROM Transacao
	LEFT JOIN Item
	ON Transacao.item = Item.nome
	WHERE Transacao.comerciante = 'Almir';

-- Mostra a quantidade de santuários em cada local (se existir algum)
SELECT L.nome AS Lugar, COUNT(*) AS Santuarios
	FROM Santuario S, Locais L
    WHERE L.nome = S.nome_local
	GROUP BY L.nome
    ORDER BY L.nome;

-- Mostra as habilidades de cada jogador
SELECT jogador, nome, descricao, nivel, bonustemporario, bonusespecializacao, bonusclasse
	FROM Habilidade
	LEFT JOIN Leque_habilidade
	ON nome = habilidade
  ORDER BY jogador;

-- Seleciona quem tem o maior nível de agilidade
SELECT Jogador, Nivel
    FROM Leque_habilidade
    WHERE nivel = (SELECT MAX(nivel) 
    					FROM Leque_habilidade
    					WHERE habilidade = 'Agilidade')
    	AND habilidade = 'Agilidade';

-- Mostra a quantidade de itens épicos e lendários que a party possui
SELECT SUM(quantidade) AS Tesouros
	FROM Inventario
	WHERE item IN (SELECT nome FROM Item WHERE raridade IN ('EPICO', 'LENDARIO'));

-- Lista as quests que estão sendo feitas, mas não pela party toda 
SELECT missao
	FROM Quest
	WHERE jogador = ANY
		(SELECT nome FROM Jogador)
        AND status = 'Em Progresso'
MINUS
SELECT missao
	FROM Quest
	WHERE jogador = ALL
		(SELECT nome FROM Jogador)
    	AND status = 'Em Progresso';

-- Mostra os locais que é recomendável que a party vá
SELECT nome
	FROM Locais
	WHERE nivel_recomendado <= ALL
		(SELECT nivel FROM jogador);

-- Lista as fraquezas de cada jogador
SELECT * 
	FROM FRAQUEZAS 
	ORDER BY jogador, fraqueza;

--Visualiza as capacidades restantes no inventário de cada jogador
SELECT jogador, capacidade_total - SUM(peso) AS Capacidade_restante
    FROM (SELECT jogador, item, peso, capacidade_total FROM Inventario, Item, Jogador WHERE item = Item.nome AND Jogador.Nome = jogador)
    GROUP BY jogador, capacidade_total
    ORDER BY jogador;

-- Mostra a quantidade de habilidades de cada jogador para aqueles que têm 4 ou mais
SELECT jogador, COUNT(*) AS Num_habilidades
	FROM Leque_habilidade
	GROUP BY jogador
	HAVING COUNT(*) >= 4
	ORDER BY jogador;

-- Para iniciar a missão X é necessário ser nível 15 ou mais e possuir pelo menos 10 poções de vida, vamos ver quem é capaz!
SELECT nome 
	FROM Jogador
	WHERE nivel >= 15
INTERSECT
SELECT nome
	FROM Jogador, Inventario
	WHERE jogador = nome AND item = 'Poção de vida' AND quantidade >= 10;
-- Só podia ser '-'

-- Cria uma view referente ao estoque de Camelot
CREATE VIEW estoque_camelot AS
	SELECT item, quantidade, preco_compra
	FROM Estoque, Item
	WHERE item = nome AND comerciante = 'Camelot';
