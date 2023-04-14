-- Comerciante
INSERT INTO Comerciante_tb 
		VALUES ('Camelot', 'Humano', 50, 50, 0, 1, 0, 0);

INSERT INTO Comerciante_tb 
		VALUES ('Almir', 'Semideus', 1001, 1001, 1001, 1001, 0, 0);

--Inimigo
INSERT INTO Inimigo
    VALUES ('Orc das trevas', 'Orc', 150, 150, 0, 1, 77, 50, 75, 7);

INSERT INTO Inimigo
    VALUES ('Lobo da estepe', 'Lobo', 67, 67, 0, 1, 30, 100, 22, 3);

INSERT INTO Inimigo
    VALUES ('Necromancer', 'Morto-vivo', 10, 25, 250, 300, 15, 200, 200, 15);

INSERT INTO Inimigo
    VALUES ('Guarda Real', 'Humano', 94, 94, 10, 15, 80, 50, 135, 10);

INSERT INTO Inimigo
    VALUES ('Veterana da III guerra salazariana', 'Elfa', 0, 75, 0, 34, 56, 50, 117, 13);

INSERT INTO Inimigo
    VALUES ('Gárgula', 'Inanimado', 0, 123, 0, 15, 89, 52, 116, 13);

--Jogador
INSERT INTO Jogador
    VALUES ('Ronald', 'Gran-Elfo', 79, 87, 142, 190, 35, 45, 'Druida', 'Curandeiro', 222, 1, 0, 'Neutro', 310, 
    fraquezas_tp('Preguiça', 'Dependência hídrica', 'Procrastinação', 'Visão Comprometida'));

INSERT INTO Jogador
    VALUES ('Luca', 'Anão', 160, 160, 36, 58, 72, 52, 'Guerreiro', 'Tanque', 72, 1, 0, '100% Jesus', 1035, 
    fraquezas_tp('Odiado pelos animais', 'Excesso de sono', 'Dívida de sangue', 'Vício em marcelinho'));

INSERT INTO Jogador
    VALUES ('Bia', 'Troll', 23, 98, 113, 182, 57, 102, 'Feiticeira', 'Elementalista', 430, 1, 0, 'Maléfica', 510, 
    fraquezas_tp('Desmotivada', 'Joelho podre', 'Dorme mal', 'Fome constante'));

INSERT INTO Jogador
    VALUES ('Pedro', 'Humano', 97, 108, 14, 148, 37, 43, 'Paladino', 'Assassino', 130, 1, 0, 'Pequeno querido', 385, 
    fraquezas_tp('Lentidão', 'Ouvido ruim', 'Procurado', 'Mau mentiroso'));

INSERT INTO Jogador
    VALUES ('Joao', 'Morto-vivo', 0, 100, 0, 100, 0, 0, 'NPC Gourmet', 'Espreitador', 0, 1, 0, 'Se voltou para o lado negro da força', 0, 
    fraquezas_tp('Desaparecido', 'Viciado em produtividade', 'Leitor Assíduo', 'Sempre Cansado'));

INSERT INTO Jogador 
    VALUES ('Amadeo', 'Pé-peludo', 153, 168, 200, 200, 102, 301, 'Mago', 'Transfigurador', 1072, 20, 9999, 'Nem aí pra nada', 1066,
    fraquezas_tp('Perda de memória', 'Viciado em aprender', 'Paranoico', 'Vingativo'));

INSERT INTO Jogador
    VALUES ('Karen', 'Duende', 89, 117, 50, 78, 258, 351, 'Ladina', 'Assassina', 2050, 20, 9999, 'Fria e calculista', 1024,
    fraquezas_tp('Piedosa', 'Péssima reputação', 'Dores no corpo', 'Curiosa'));

--Ataque especial
INSERT INTO Ataque_especial_tb VALUES (
    Ataque_especial_tp(
        'Enraizamento',
        1,
        Nivel_ataque_nt(
            Nivel_ataque_tp(1, 25, 15, 60),
            Nivel_ataque_tp(2, 35, 20, 60),
            Nivel_ataque_tp(3, 45, 25, 60)
        ),
        Restricao_classe_nt(
            Restricao_classe_tp('Druida'),
            Restricao_classe_tp('Mago'),
            Restricao_classe_tp('Feiticeira')
        ),
        Restricao_especializacao_nt()
    )
);

INSERT INTO Ataque_especial_tb VALUES (
    Ataque_especial_tp(
        'Soco do One-Punch Man',
        1,
        Nivel_ataque_nt(
            Nivel_ataque_tp(1, 40, 0, 200),
            Nivel_ataque_tp(2, 50, 0, 200),
            Nivel_ataque_tp(3, 60, 0, 200)
        ),
        Restricao_classe_nt(
            Restricao_classe_tp('Paladino'),
            Restricao_classe_tp('Guerreiro')
        ),
        Restricao_especializacao_nt()
    )
);

INSERT INTO Ataque_especial_tb VALUES (
    Ataque_especial_tp(
        'Bola de fogo',
        1,
        Nivel_ataque_nt(
            Nivel_ataque_tp(1, 40, 20, 50),
            Nivel_ataque_tp(2, 50, 25, 50),
            Nivel_ataque_tp(3, 60, 30, 50)
        ),
        Restricao_classe_nt(),
        Restricao_especializacao_nt(
            Restricao_especializacao_tp('Elementalista')
        )
    )
);

INSERT INTO Ataque_especial_tb VALUES (
    Ataque_especial_tp(
        'Giro mortal',
        1,
        Nivel_ataque_nt(
            Nivel_ataque_tp(1, 15, 5, 25),
            Nivel_ataque_tp(2, 25, 10, 25),
            Nivel_ataque_tp(3, 35, 15, 25)
        ),
        Restricao_classe_nt(),
        Restricao_especializacao_nt()
    )
);

INSERT INTO Ataque_especial_tb VALUES (
    Ataque_especial_tp(
        'Apoptose',
        3,
        Nivel_ataque_nt(
            Nivel_ataque_tp(1, 37, 30, 75)
        ),
        Restricao_classe_nt(
            Restricao_classe_tp('Druida'),
            Restricao_classe_tp('Feiticeira')
        ),
        Restricao_especializacao_nt()
    )
);

INSERT INTO Ataque_especial_tb VALUES (
    Ataque_especial_tp(
        'Golpe das sombras',
        5,
        Nivel_ataque_nt(
            Nivel_ataque_tp(1, 40, 0, 250),
            Nivel_ataque_tp(2, 60, 10, 250)
        ),
        Restricao_classe_nt(),
        Restricao_especializacao_nt(
            Restricao_especializacao_tp('Assassino'),
            Restricao_especializacao_tp('Assassina')
        )
    )
);

INSERT INTO Ataque_especial_tb VALUES (
    Ataque_especial_tp(
        'Cura menor',
        1,
        Nivel_ataque_nt(
            Nivel_ataque_tp(1, 0, 20, 45)
        ),
        Restricao_classe_nt(),
        Restricao_especializacao_nt(
            Restricao_especializacao_tp('Curandeiro')
        )
    )
);

INSERT INTO Ataque_especial_tb VALUES (
    Ataque_especial_tp(
        'Cura maior',
        8,
        Nivel_ataque_nt(
            Nivel_ataque_tp(1, 0, 50, 45)
        ),
        Restricao_classe_nt(),
        Restricao_especializacao_nt(
            Restricao_especializacao_tp('Curandeiro')
        )
    )
);

INSERT INTO Ataque_especial_tb VALUES (
    Ataque_especial_tp(
        'Carteirada de monitor',
        20,
        Nivel_ataque_nt(
            Nivel_ataque_tp(1, 350, 0, 42)
        ),
        Restricao_classe_nt(),
        Restricao_especializacao_nt()
    )
);

INSERT INTO Ataque_especial_tb VALUES (
    Ataque_especial_tp(
        'Casca grossa',
        3,
        Nivel_ataque_nt(
            Nivel_ataque_tp(1, 0, 10, 60)
        ),
        Restricao_classe_nt(),
        Restricao_especializacao_nt(
            Restricao_especializacao_tp('Tanque')
        )
    )
);

--Leque Ataque
INSERT INTO Leque_ataque_tb VALUES (
    Leque_ataque_tp(
        (SELECT REF(a) FROM Ataque_especial_tb a WHERE a.nome = 'Enraizamento'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Ronald'),
        1
    )
);

INSERT INTO Leque_ataque_tb VALUES (
    Leque_ataque_tp(
        (SELECT REF(a) FROM Ataque_especial_tb a WHERE a.nome = 'Cura menor'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Ronald'),
        1
    )
);

INSERT INTO Leque_ataque_tb VALUES (
    Leque_ataque_tp(
        (SELECT REF(a) FROM Ataque_especial_tb a WHERE a.nome = 'Enraizamento'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
        1
    )
);

INSERT INTO Leque_ataque_tb VALUES (
    Leque_ataque_tp(
        (SELECT REF(a) FROM Ataque_especial_tb a WHERE a.nome = 'Bola de fogo'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
        1
    )
);

INSERT INTO Leque_ataque_tb VALUES (
    Leque_ataque_tp(
        (SELECT REF(a) FROM Ataque_especial_tb a WHERE a.nome = 'Enraizamento'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
        3
    )
);

INSERT INTO Leque_ataque_tb VALUES (
    Leque_ataque_tp(
        (SELECT REF(a) FROM Ataque_especial_tb a WHERE a.nome = 'Carteirada de monitor'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
        1
    )
);

INSERT INTO Leque_ataque_tb VALUES (
    Leque_ataque_tp(
        (SELECT REF(a) FROM Ataque_especial_tb a WHERE a.nome = 'Giro mortal'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
        3
    )
);

INSERT INTO Leque_ataque_tb VALUES (
    Leque_ataque_tp(
        (SELECT REF(a) FROM Ataque_especial_tb a WHERE a.nome = 'Golpe das sombras'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
        2
    )
);

INSERT INTO Leque_ataque_tb VALUES (
    Leque_ataque_tp(
        (SELECT REF(a) FROM Ataque_especial_tb a WHERE a.nome = 'Carteirada de monitor'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
        1
    )
);

INSERT INTO Leque_ataque_tb VALUES (
    Leque_ataque_tp(
        (SELECT REF(a) FROM Ataque_especial_tb a WHERE a.nome = 'Soco do One-Punch Man'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Luca'),
        1
    )
);

INSERT INTO Leque_ataque_tb VALUES (
    Leque_ataque_tp(
        (SELECT REF(a) FROM Ataque_especial_tb a WHERE a.nome = 'Casca grossa'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Luca'),
        1
    )
);

INSERT INTO Leque_ataque_tb VALUES (
    Leque_ataque_tp(
        (SELECT REF(a) FROM Ataque_especial_tb a WHERE a.nome = 'Soco do One-Punch Man'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Pedro'),
        1
    )
);

--Habilidade
INSERT INTO Habilidade_tb
    VALUES (Habilidade_tp('Agilidade', 'Capacidade de se movimentar com destreza'));

INSERT INTO Habilidade_tb
    VALUES (Habilidade_tp('Carisma', 'Medida da desenvoltura interpessoal'));

INSERT INTO Habilidade_tb
    VALUES (Habilidade_tp('Força', 'Poder físico'));

INSERT INTO Habilidade_tb
    VALUES (Habilidade_tp('Inteligência', 'Capacidade mental'));

INSERT INTO Habilidade_tb
    VALUES (Habilidade_tp('Percepção', 'Capacidade sensorial'));

INSERT INTO Habilidade_tb
    VALUES (Habilidade_tp('Vontade', 'Medida do controle sobre as suas decisões'));

INSERT INTO Habilidade_tb
    VALUES (Habilidade_tp('Resistência', 'Medida da resistência física'));

INSERT INTO Habilidade_tb
    VALUES (Habilidade_tp('Influência', 'Capacidade de influenciar os atos, pensamentos e sentimentos de outros personagens'));

INSERT INTO Habilidade_tb
    VALUES (Habilidade_tp('Memória', 'Capacidade de guardar informações'));

INSERT INTO Habilidade_tb
    VALUES (Habilidade_tp('Coordenação', 'Capacidade de usar diferentes partes do corpo juntas com fluidez e eficiência'));

INSERT INTO Habilidade_tb
    VALUES (Habilidade_tp('Imaginação', 'Medida de criatividade e desenvoltura'));

--Leque de Habilidades
INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Inteligência'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Ronald'),
        2,
        50,
        35,
        20
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Agilidade'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Ronald'),
        4,
        20,
        45,
        40
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Imaginação'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Ronald'),
        1,
        10,
        60,
        25
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Vontade'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Ronald'),
        7,
        35,
        40,
        40
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Memória'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Luca'),
        5,
        60,
        30,
        45        
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Resistência'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Luca'),
        2,
        70,
        10,
        50        
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Carisma'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Luca'),
        6,
        30,
        80,
        40        
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Percepção'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Luca'),
        3,
        40,
        40,
        40        
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Força'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
        2, 
        35, 
        70, 
        45
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Influência'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
        7, 
        80, 
        70, 
        5
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Coordenação'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
        5, 
        60, 
        70, 
        20
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Força'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
        3, 
        10, 
        30, 
        100
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Memória'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
        6, 
        55, 
        65, 
        110
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Inteligência'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
        4, 
        45, 
        40, 
        35
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Agilidade'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Pedro'),
        3, 
        72, 
        50, 
        27
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Resistência'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Pedro'),
        7, 
        40, 
        38, 
        45
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Influência'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Pedro'),
        15, 
        98, 
        55, 
        23
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Imaginação'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
        4, 
        20, 
        40, 
        25
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Carisma'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
        1, 
        30, 
        30, 
        30
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Coordenação'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
        7, 
        40, 
        20, 
        15
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Vontade'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Joao'),
        5, 
        30, 
        100, 
        70
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Percepção'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Joao'),
        10, 
        60, 
        20, 
        70
    )
);

INSERT INTO Leque_habilidade_tb VALUES (
    Leque_habilidade_tp(
        (SELECT REF(h) FROM Habilidade_tb h WHERE h.nome = 'Inteligência'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Joao'),
        15, 
        90, 
        80, 
        140
    )
);


-- Missão 
INSERT INTO MISSAO_TB
    VALUES (MISSAO_TP('Missão Principal', 10, 55, 3,
    OBJETIVOS_TP('Matar o dragão', 'Coletar recompensa', 'Sequestrar o padre')));
INSERT INTO MISSAO_TB
    VALUES (MISSAO_TP('Missão Secundária', 10, 55, 3,
    OBJETIVOS_TP('Falar com o necromante', 'Pescar no Ibura', 'Comer a fruta misteriosa')));
INSERT INTO MISSAO_TB
    VALUES (MISSAO_TP('A missão do mestre Ronald', 10, 55, 3,
    OBJETIVOS_TP('Montar no cavalo', 'Fazer a poção do primeiro amor')));
INSERT INTO MISSAO_TB
    VALUES (MISSAO_TP('Um segredo além da Terra', 10, 55, 3,
    OBJETIVOS_TP('Obter benção da mestre Beatriz')));

-- Arma
INSERT INTO Arma_tb VALUES (Arma_tp('Espada Longa', 5, 200, 500, 10, 'COMUM', 30));
INSERT INTO Arma_tb VALUES (Arma_tp('Lança do dragão', 25, 12, 123, 10, 'EPICO', 95));
INSERT INTO Arma_tb VALUES (
Arma_tp('Martelo do Caos (Cuidado, ele é do caos)', 65, 52, 400, 82, 'LENDARIO', 142)
);

INSERT INTO Arma_tb 
    VALUES (Arma_tp('Faca de manteiga', 1, 1, 1, 3, 'COMUM', 5));

INSERT INTO Arma_tb 
    VALUES (Arma_tp('Cetro clerical', 1, 100, 100, 10, 'COMUM', 20));

INSERT INTO Arma_tb 
    VALUES (Arma_tp('Cajado elementar', 1, 100, 100, 10, 'COMUM', 20));

INSERT INTO Arma_tb 
    VALUES (Arma_tp('Clava da justiça', 1, 100, 100, 10, 'COMUM', 20));

INSERT INTO Arma_tb 
    VALUES (Arma_tp('Espada sanguinária', 1, 100, 100, 10, 'COMUM', 20));

INSERT INTO Arma_tb 
    VALUES (Arma_tp('Cetro dos deuses antigos', 15, 10000, 9999, 35, 'LENDARIO', 150));

INSERT INTO Arma_tb 
    VALUES (Arma_tp('Cajado de Knaarr', 15, 10000, 10000, 35, 'LENDARIO', 150));

INSERT INTO Arma_tb 
    VALUES (Arma_tp('Porrete dos portões de Embiid', 15, 10000, 4872, 50, 'LENDARIO', 150));

INSERT INTO Arma_tb 
    VALUES (Arma_tp('Espada do andarilho esquecido', 15, 10000, 3500, 50, 'LENDARIO', 150));

INSERT INTO Arma_tb 
    VALUES (Arma_tp('Adaga da Regina Maledetta', 15, 10000, 2500, 20, 'LENDARIO', 150));

-- Armadura
INSERT INTO Armadura_tb
	VALUES (Armadura_tp('Cota de malha', 1, 100, 100, 10, 'COMUM', 20));

INSERT INTO Armadura_tb 
    VALUES (Armadura_tp('Bandana do naruto', 5, 100, 100, 10, 'RARO', 35));

INSERT INTO Armadura_tb 
    VALUES (Armadura_tp('Armadura das fadas de Avalon', 15, 5000, 5000, 10, 'EPICO', 105));

-- Consumível
INSERT INTO Consumivel_tb
    VALUES (Consumivel_tp('Poção de vida', 1, 10, 5, 10, 'COMUM', 'Cura em 50 pontos'));

INSERT INTO Consumivel_tb
    VALUES (Consumivel_tp('Poção de mana', 1, 5, 5, 10, 'COMUM', 'Restaura 50 pontos de mana'));

INSERT INTO Consumivel_tb
    VALUES (Consumivel_tp('Poção da invisibilidade', 1, 2500, 1000, 10, 'EPICO', 'Deixa o usuário invisível por 3 minutos'));

INSERT INTO Consumivel_tb
    VALUES (Consumivel_tp('Poção felix felicius', 1, 2500, 2500, 10, 'EPICO', 'Sua sorte será inigualável por um dia inteiro'));

INSERT INTO Consumivel_tb
    VALUES (Consumivel_tp('Poção do caos', 1, 7500, 7500, 10, 'LENDARIO', 'Apenas beba'));

--Transacao
INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
        'C',
    	(SELECT REF(ar) FROM Armadura_tb ar WHERE ar.nome = 'Armadura das fadas de Avalon'),
        1,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
        'C',
    	  (SELECT REF(co) FROM Consumivel_tb co WHERE co.nome = 'Poção de mana'),
        53,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
        'C',
   		  (SELECT REF(co) FROM Consumivel_tb co WHERE co.nome = 'Poção de vida'),
        33,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
        'C',
   		  (SELECT REF(co) FROM Consumivel_tb co WHERE co.nome = 'Poção felix felicius'),
        1,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
        'C',
   		  (SELECT REF(ar) FROM Armadura_tb ar WHERE ar.nome = 'Armadura das fadas de Avalon'),
        1,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
        'C',
   		  (SELECT REF(a) FROM Arma_tb a WHERE a.nome = 'Adaga da Regina Maledetta'),
        1,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
        'C',
   		  (SELECT REF(co) FROM Consumivel_tb co WHERE co.nome = 'Poção de mana'),
        25,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
        'C',
   		  (SELECT REF(co) FROM Consumivel_tb co WHERE co.nome = 'Poção de vida'),
        57,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
        'C',
   		  (SELECT REF(co) FROM Consumivel_tb co WHERE co.nome = 'Poção da invisibilidade'),
        1,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
        'C',
   		  (SELECT REF(ar) FROM Armadura_tb ar WHERE ar.nome = 'Cota de malha'),
        1,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
        'C',
   		  (SELECT REF(a) FROM Arma_tb a WHERE a.nome = 'Faca de manteiga'),
        1,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
        'C',
   		  (SELECT REF(a) FROM Arma_tb a WHERE a.nome = 'Cajado elementar'),
        1,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
        'C',
   		  (SELECT REF(co) FROM Consumivel_tb co WHERE co.nome = 'Poção de mana'),
        7,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
        'C',
   		  (SELECT REF(co) FROM Consumivel_tb co WHERE co.nome = 'Poção de vida'),
        2,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Luca'),
        'C',
   		  (SELECT REF(co) FROM Consumivel_tb co WHERE co.nome = 'Poção de mana'),
        3,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Luca'),
        'C',
   		  (SELECT REF(co) FROM Consumivel_tb co WHERE co.nome = 'Poção de vida'),
        9,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Luca'),
        'C',
   		  (SELECT REF(ar) FROM Armadura_tb ar WHERE ar.nome = 'Cota de malha'),
        1,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Luca'),
        'C',
   		  (SELECT REF(a) FROM Arma_tb a WHERE a.nome = 'Espada sanguinária'),
        1,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Pedro'),
        'C',
   		  (SELECT REF(a) FROM Arma_tb a WHERE a.nome = 'Clava da justiça'),
        1,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Pedro'),
        'C',
   		  (SELECT REF(ar) FROM Armadura_tb ar WHERE ar.nome = 'Cota de malha'),
        1,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Pedro'),
        'C',
   		  (SELECT REF(co) FROM Consumivel_tb co WHERE co.nome = 'Poção de mana'),
        3,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Ronald'),
        'C',
   		  (SELECT REF(ar) FROM Armadura_tb ar WHERE ar.nome = 'Cota de malha'),
        1,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Ronald'),
        'C',
   		  (SELECT REF(a) FROM Arma_tb a WHERE a.nome = 'Cetro clerical'),
        1,
        SYSTIMESTAMP
    )
);

INSERT INTO Transacao_tb VALUES (
    Transacao_tp(
        (SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Ronald'),
        'C',
   		  (SELECT REF(co) FROM Consumivel_tb co WHERE co.nome = 'Poção de mana'),
        1,
        SYSTIMESTAMP
    )
);

-- Locais
INSERT INTO Locais
VALUES (
    Locais_tp(
        'Campo Grande', 
        2, 
        'Tanzânia', 
        'Deserto', 
        'Árido', 
        Santuarios_tp(
            Santuario_tp('O melhor', 'Veneno'),
            Santuario_tp('O segundo melhor', 'Veneno super')
        )
    )
);
INSERT INTO Locais
VALUES (
    Locais_tp(
        'Olinda', 
        22, 
        'Malu', 
        'Floresta', 
        'Nebulosa', 
        Santuarios_tp(
            Santuario_tp('A maior', 'Força'),
            Santuario_tp('O santuário do Santa Cruz', 'Fraqueza')
        )
    )
);
INSERT INTO Locais
VALUES (
    Locais_tp(
        'Camaragibe', 
        32, 
        'Araripina', 
        'Oceano', 
        'Frebrento', 
        Santuarios_tp(
            Santuario_tp('O leão da ilha', 'Destemido'),
            Santuario_tp('A mãe da terra', 'O tigre')
        )
    )
);

-- Quest
INSERT INTO Quest
VALUES (
    Quest_tp(
        (SELECT REF(l) FROM Locais l WHERE l.nome = 'Olinda'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Pedro'),
        (SELECT REF(m) FROM Missao_tb m WHERE m.nome = 'Um segredo além da Terra'),
        'Concluído'
    )
);
INSERT INTO Quest
VALUES (
    Quest_tp(
        (SELECT REF(l) FROM Locais l WHERE l.nome = 'Camaragibe'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Ronald'),
        (SELECT REF(m) FROM Missao_tb m WHERE m.nome = 'Missão Secundária'),
        'Concluído'
    )
);
INSERT INTO Quest
VALUES (
    Quest_tp(
        (SELECT REF(l) FROM Locais l WHERE l.nome = 'Camaragibe'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Luca'),
        (SELECT REF(m) FROM Missao_tb m WHERE m.nome = 'Missão Secundária'),
        'Em Progresso'
    )
);
INSERT INTO Quest
VALUES (
    Quest_tp(
        (SELECT REF(l) FROM Locais l WHERE l.nome = 'Olinda'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
        (SELECT REF(m) FROM Missao_tb m WHERE m.nome = 'A missão do mestre Ronald'),
        'Em Progresso'
    )
);
INSERT INTO Quest
VALUES (
    Quest_tp(
        (SELECT REF(l) FROM Locais l WHERE l.nome = 'Camaragibe'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
        (SELECT REF(m) FROM Missao_tb m WHERE m.nome = 'A missão do mestre Ronald'),
        'Em Progresso'
    )
);
INSERT INTO Quest
VALUES (
    Quest_tp(
        (SELECT REF(l) FROM Locais l WHERE l.nome = 'Camaragibe'),
        (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Ronald'),
        (SELECT REF(m) FROM Missao_tb m WHERE m.nome = 'Missão Principal'),
        'Em Progresso'
    )
);

-- Batalha
INSERT INTO Batalha_tb VALUES(
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
    (SELECT REF(i) FROM Inimigo i WHERE i.nome = 'Veterana da III guerra salazariana'),
    35,
    SYSTIMESTAMP
);

INSERT INTO Batalha_tb VALUES(
    (SELECT REF(i) FROM Inimigo i WHERE i.nome = 'Veterana da III guerra salazariana'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
    15,
    SYSTIMESTAMP
);

INSERT INTO Batalha_tb VALUES(
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
    (SELECT REF(i) FROM Inimigo i WHERE i.nome = 'Veterana da III guerra salazariana'),
    40,
    SYSTIMESTAMP
);

INSERT INTO Batalha_tb VALUES(
    (SELECT REF(i) FROM Inimigo i WHERE i.nome = 'Veterana da III guerra salazariana'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
    20,
    SYSTIMESTAMP
);

INSERT INTO Batalha_tb VALUES(
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
    (SELECT REF(i) FROM Inimigo i WHERE i.nome = 'Veterana da III guerra salazariana'),
    17,
    SYSTIMESTAMP
);

INSERT INTO Batalha_tb VALUES(
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
    (SELECT REF(i) FROM Inimigo i WHERE i.nome = 'Gárgula'),
    73,
    SYSTIMESTAMP
);

INSERT INTO Batalha_tb VALUES(
    (SELECT REF(i) FROM Inimigo i WHERE i.nome = 'Gárgula'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
    28,
    SYSTIMESTAMP
);

INSERT INTO Batalha_tb VALUES(
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
    (SELECT REF(i) FROM Inimigo i WHERE i.nome = 'Gárgula'),
    50,
    SYSTIMESTAMP
);

INSERT INTO Batalha_tb VALUES(
    (SELECT REF(i) FROM Inimigo i WHERE i.nome = 'Gárgula'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
    24,
    SYSTIMESTAMP
);

INSERT INTO Batalha_tb VALUES(
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
    (SELECT REF(i) FROM Inimigo i WHERE i.nome = 'Gárgula'),
    36,
    SYSTIMESTAMP
);

-- Estoque
INSERT INTO Estoque_tb
    VALUES (Estoque_tp(
    		(SELECT REF(i) FROM Arma_tb i WHERE i.nome = 'Cetro dos deuses antigos'),
    		(SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
    		1
    ));

INSERT INTO Estoque_tb
    VALUES (Estoque_tp(
    		(SELECT REF(i) FROM Arma_tb i WHERE i.nome = 'Porrete dos portões de Embiid'),
    		(SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
    		1
    ));

INSERT INTO Estoque_tb
    VALUES (Estoque_tp(
    		(SELECT REF(i) FROM Arma_tb i WHERE i.nome = 'Espada do andarilho esquecido'),
    		(SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
    		1
    ));

INSERT INTO Estoque_tb
    VALUES (Estoque_tp(
    		(SELECT REF(i) FROM Arma_tb i WHERE i.nome = 'Cajado de Knaarr'),
    		(SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
    		1
    ));

INSERT INTO Estoque_tb
    VALUES (Estoque_tp(
    		(SELECT REF(i) FROM Arma_tb i WHERE i.nome = 'Armadura das fadas de Avalon'),
    		(SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
    		1
    ));

INSERT INTO Estoque_tb
    VALUES (Estoque_tp(
    		(SELECT REF(i) FROM Arma_tb i WHERE i.nome = 'Poção do caos'),
    		(SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
    		3
    ));

INSERT INTO Estoque_tb
    VALUES (Estoque_tp(
    		(SELECT REF(i) FROM Arma_tb i WHERE i.nome = 'Poção de vida'),
    		(SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
    		1002
    ));

INSERT INTO Estoque_tb
    VALUES (Estoque_tp(
    		(SELECT REF(i) FROM Arma_tb i WHERE i.nome = 'Poção de mana'),
    		(SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Almir'),
    		350
    ));

INSERT INTO Estoque_tb
    VALUES (Estoque_tp(
    		(SELECT REF(i) FROM Arma_tb i WHERE i.nome = 'Poção de mana'),
    		(SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
    		112
    ));

INSERT INTO Estoque_tb
    VALUES (Estoque_tp(
    		(SELECT REF(i) FROM Arma_tb i WHERE i.nome = 'Poção de vida'),
    		(SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
    		237
    ));

INSERT INTO Estoque_tb
    VALUES (Estoque_tp(
    		(SELECT REF(i) FROM Arma_tb i WHERE i.nome = 'Cota de malha'),
    		(SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
    		112
    ));

INSERT INTO Estoque_tb
    VALUES (Estoque_tp(
    		(SELECT REF(i) FROM Arma_tb i WHERE i.nome = 'Faca de manteiga'),
    		(SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
    		13
    ));

INSERT INTO Estoque_tb
    VALUES (Estoque_tp(
    		(SELECT REF(i) FROM Arma_tb i WHERE i.nome = 'Bandana do naruto'),
    		(SELECT REF(c) FROM Comerciante_tb c WHERE c.nome = 'Camelot'),
    		2
    ));


INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção de mana'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
    53
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção de vida'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
    34
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção felix felicius'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(a) FROM Armadura_tb a WHERE a.nome = 'Armaduras das fadas de Avalon'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(a) FROM Arma_tb a WHERE a.nome = 'Adaga da Regina Maledetta'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção de mana'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
    26
);


INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção de vida'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
    67
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção de invisibilidade'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
    1
);


INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Armadura_tb c WHERE c.nome = 'Cota de malha'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
    1
);


INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Arma_tb c WHERE c.nome = 'Faca de manteiga'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Arma_tb c WHERE c.nome = 'Cajado elementar'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
    1
);


INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção de mana'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
    7
);


INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção de vida'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Bia'),
    2
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção de mana'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Luca'),
    3
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção de vida'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Luca'),
    9
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Armadura_tb c WHERE c.nome = 'Cota de malha'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Luca'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Arma_tb c WHERE c.nome = 'Espada sanguinária'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Luca'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Arma_tb c WHERE c.nome = 'Clava da justiça'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Pedro'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Armadura_tb c WHERE c.nome = 'Cota de malha'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Pedro'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção de mana'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Pedro'),
    3
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Armadura_tb c WHERE c.nome = 'Cota de malha'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Ronald'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Arma_tb c WHERE c.nome = 'Cetro clerical'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Ronald'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção de mana'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Ronald'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção de mana'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Ronald'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Arma_tb c WHERE c.nome = 'Cajado elementar'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Arma_tb c WHERE c.nome = 'Cetro dos deuses antigos'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Arma_tb c WHERE c.nome = 'Cajado de Knaarr'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Arma_tb c WHERE c.nome = 'Espada sanguinária'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Arma_tb c WHERE c.nome = 'Espada do andarilho esquecido'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
    1
);

INSERT INTO Inventario_tb VALUES(
    (SELECT REF(c) FROM Armadura_tb c WHERE c.nome = 'Bandana do naruto'),
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
    1
);

--Loot

INSERT INTO Loot_tb VALUES (
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Karen'),
    (SELECT REF(i) FROM Inimigo i WHERE i.nome = 'Gárgula'),
    (SELECT REF(co) FROM Consumivel_tb co WHERE co.nome = 'Poção de mana'),
    (SELECT data_hora 
    		FROM Batalha_tb
    		WHERE DEREF(atacante).nome = 'Karen'
    			AND DEREF(atacado).nome = 'Gárgula'
    			AND dano = 50)
);

INSERT INTO Loot_tb VALUES (
    (SELECT REF(j) FROM Jogador j WHERE j.nome = 'Amadeo'),
    (SELECT REF(i) FROM Inimigo i WHERE i.nome = 'Veterana da III guerra salazariana'),
    (SELECT REF(co) FROM Consumivel_tb co WHERE co.nome = 'Poção de vida'),
    (SELECT data_hora 
    		FROM Batalha_tb
    		WHERE DEREF(atacante).nome = 'Amadeo'
    			AND DEREF(atacado).nome = 'Veterana da III guerra salazariana'
    			AND dano = 50)
);

-- Recompensas
INSERT INTO Recompensa 
    VALUES (Recompensa_tp(
    	(SELECT REF(q) FROM Quest q WHERE q.missao.nome = 'Missão Principal' AND q.jogador.nome = 'Ronald'),
    	(SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção de Vida'),
     	(SELECT REF(a) FROM Arma_tb a WHERE a.nome = 'Espada de Fogo'),
     	(SELECT REF(ar) FROM Armadura_tb ar WHERE ar.nome = 'Cota de malha')
    ));
INSERT INTO Recompensa 
    VALUES (Recompensa_tp(
    	(SELECT REF(q) FROM Quest q WHERE q.missao.nome = 'Missão Secundária' AND q.jogador.nome = 'Luca'),
    	(SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção de mana'),
     	(SELECT REF(a) FROM Arma_tb a WHERE a.nome = 'Martelo do Caos (Cuidado, ele é do caos)'),
     	(SELECT REF(ar) FROM Armadura_tb ar WHERE ar.nome = 'Bandana do naruto')
    ));
INSERT INTO Recompensa 
    VALUES (Recompensa_tp(
    	(SELECT REF(q) FROM Quest q WHERE q.missao.nome = 'A missão do mestre Ronald' AND q.jogador.nome = 'Bia'),
    	(SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção da invisibilidade'),
     	(SELECT REF(a) FROM Arma_tb a WHERE a.nome = 'Cetro clerical'),
     	(SELECT REF(ar) FROM Armadura_tb ar WHERE ar.nome = 'Armadura das fadas de Avalon')
    ));
INSERT INTO Recompensa 
    VALUES (Recompensa_tp(
    	(SELECT REF(q) FROM Quest q WHERE q.missao.nome = 'A missão do mestre Ronald' AND q.jogador.nome = 'Karen'),
    	(SELECT REF(c) FROM Consumivel_tb c WHERE c.nome = 'Poção do caos'),
     	(SELECT REF(a) FROM Arma_tb a WHERE a.nome = 'Clava da justiça'),
     	(SELECT REF(ar) FROM Armadura_tb ar WHERE ar.nome = 'Bandana do naruto')
    ));
