-- Personagem
INSERT INTO Personagem (nome, raca, vida, vida_maxima, mana, mana_maxima, defesa, dano)
	VALUES ('Ronald', 'Gran-Elfo', 79, 87, 142, 190, 35, 45);

INSERT INTO Personagem (nome, raca, vida, vida_maxima, mana, mana_maxima, defesa, dano)
	VALUES ('Luca', 'Anão', 160, 160, 36, 58, 72, 52);

INSERT INTO Personagem (nome, raca, vida, vida_maxima, mana, mana_maxima, defesa, dano)
	VALUES ('Bia', 'Troll', 23, 98, 113, 182, 57, 102);

INSERT INTO Personagem (nome, raca, vida, vida_maxima, mana, mana_maxima, defesa, dano)
	VALUES ('Pedro', 'Humano', 97, 108, 14, 148, 37, 43);

INSERT INTO Personagem (nome, raca, vida, vida_maxima, mana, mana_maxima, defesa, dano)
	VALUES ('Joao', 'Morto-vivo', 0, 100, 0, 100, 0, 0);

INSERT INTO Personagem (nome, raca, vida, vida_maxima, mana, mana_maxima, defesa, dano)
	VALUES ('Amadeo', 'Pé-peludo', 153, 168, 200, 200, 102, 301);

INSERT INTO Personagem (nome, raca, vida, vida_maxima, mana, mana_maxima, defesa, dano)
	VALUES ('Karen', 'Duende', 89, 117, 50, 78, 258, 351);

INSERT INTO Personagem (nome, raca, vida, vida_maxima, mana, mana_maxima, defesa, dano)
	VALUES ('Camelot', 'Humano', 50, 50, 0, 1, 0, 0);

INSERT INTO Personagem (nome, raca, vida, vida_maxima, mana, mana_maxima, defesa, dano)
	VALUES ('Almir', 'Semideus', 1001, 1001, 1001, 1001, 0, 0);

INSERT INTO Personagem (nome, raca, vida, vida_maxima, mana, mana_maxima, defesa, dano)
	VALUES ('Orc das trevas', 'Orc', 150, 150, 0, 1, 77, 50);

INSERT INTO Personagem (nome, raca, vida, vida_maxima, mana, mana_maxima, defesa, dano)
	VALUES ('Lobo da estepe', 'Lobo', 67, 67, 0, 1, 30, 100);

INSERT INTO Personagem (nome, raca, vida, vida_maxima, mana, mana_maxima, defesa, dano)
	VALUES ('Necromancer', 'Morto-vivo', 10, 25, 250, 300, 15, 200);

INSERT INTO Personagem (nome, raca, vida, vida_maxima, mana, mana_maxima, defesa, dano)
	VALUES ('Guarda Real', 'Humano', 94, 94, 10, 15, 80, 50);

INSERT INTO Personagem (nome, raca, vida, vida_maxima, mana, mana_maxima, defesa, dano)
	VALUES ('Veterana da III guerra salazariana', 'Elfa', 0, 75, 0, 34, 56, 50);

INSERT INTO Personagem (nome, raca, vida, vida_maxima, mana, mana_maxima, defesa, dano)
	VALUES ('Gárgula', 'Inanimado', 0, 123, 0, 15, 89, 52);

-- Inimigo 
INSERT INTO Inimigo (nome, experiencia, nivel) 
	VALUES ('Orc das trevas', 75, 7);

INSERT INTO Inimigo (nome, experiencia, nivel) 
	VALUES ('Lobo da estepe', 22, 3);

INSERT INTO Inimigo (nome, experiencia, nivel) 
	VALUES ('Necromancer', 200, 15);

INSERT INTO Inimigo (nome, experiencia, nivel) 
	VALUES ('Guarda Real', 135, 10);

INSERT INTO Inimigo (nome, experiencia, nivel)
    VALUES ('Veterana da III guerra salazariana', 117, 13);

INSERT INTO Inimigo (nome, experiencia, nivel)
    VALUES ('Gárgula', 116, 13);

-- Comerciante
INSERT INTO Comerciante (nome)
	VALUES ('Camelot');

INSERT INTO Comerciante (nome)
	VALUES ('Almir');

-- Jogador 
INSERT INTO Jogador (nome, nome_classe, especializacao, dinheiro, nivel, experiencia, inclinacao_moral, capacidade_total)
	VALUES ('Ronald', 'Druida', 'Curandeiro', 222, 1, 0, 'Neutro', 310);

INSERT INTO Jogador (nome, nome_classe, especializacao, dinheiro, nivel, experiencia, inclinacao_moral, capacidade_total)
	VALUES ('Luca', 'Guerreiro', 'Tanque', 72, 1, 0, '100% Jesus', 1035);

INSERT INTO Jogador (nome, nome_classe, especializacao, dinheiro, nivel, experiencia, inclinacao_moral, capacidade_total)
	VALUES ('Bia', 'Feiticeira', 'Elementalista', 430, 1, 0, 'Maléfica', 510);

INSERT INTO Jogador (nome, nome_classe, especializacao, dinheiro, nivel, experiencia, inclinacao_moral, capacidade_total)
	VALUES ('Pedro', 'Paladino', 'Assassino', 130, 1, 0, 'Pequeno querido', 385);

INSERT INTO Jogador (nome, nome_classe, especializacao, dinheiro, nivel, experiencia, inclinacao_moral, capacidade_total)
	VALUES ('Joao', 'NPC Gourmet', 'Espreitador', 0, 1, 0, 'Se voltou para o lado negro da força', 0);

INSERT INTO Jogador (nome, nome_classe, especializacao, dinheiro, nivel, experiencia, inclinacao_moral, capacidade_total)
	VALUES ('Amadeo', 'Mago', 'Transfigurador', 1072, 20, 9999, 'Nem aí pra nada', 1066);

INSERT INTO Jogador (nome, nome_classe, especializacao, dinheiro, nivel, experiencia, inclinacao_moral, capacidade_total)
	VALUES ('Karen', 'Ladina', 'Assassina', 2050, 20, 9999, 'Fria e calculista', 1024);

-- Ataque_especial, Nivel_ataque, Restricao_classe, Restricao_especializacao e Leque_ataque
INSERT INTO Ataque_especial (nome, nivel_minimo)
	VALUES ('Enraizamento', 1);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Enraizamento', 1, 25, 15, 60);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Enraizamento', 2, 35, 20, 60);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Enraizamento', 3, 45, 25, 60);

INSERT INTO Restricao_classe(ataque, restricao) 
    VALUES ('Enraizamento', 'Druida');

INSERT INTO Restricao_classe(ataque, restricao) 
    VALUES ('Enraizamento', 'Mago');

INSERT INTO Restricao_classe(ataque, restricao) 
    VALUES ('Enraizamento', 'Feiticeira');

INSERT INTO Ataque_especial (nome, nivel_minimo)
	VALUES ('Soco do One-Punch Man', 1);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Soco do One-Punch Man', 1, 40, 0, 200);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Soco do One-Punch Man', 2, 50, 0, 200);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Soco do One-Punch Man', 3, 60, 0, 200);

INSERT INTO Restricao_classe(ataque, restricao) 
    VALUES ('Soco do One-Punch Man', 'Paladino');

INSERT INTO Restricao_classe(ataque, restricao) 
    VALUES ('Soco do One-Punch Man', 'Guerreiro');

INSERT INTO Ataque_especial (nome, nivel_minimo)
	VALUES ('Bola de fogo', 1);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Bola de fogo', 1, 40, 20, 50);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Bola de fogo', 2, 50, 25, 50);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Bola de fogo', 3, 60, 30, 50);

INSERT INTO Restricao_especializacao(ataque, especializacao) 
    VALUES ('Bola de fogo', 'Elementalista');

INSERT INTO Ataque_especial (nome, nivel_minimo)
	VALUES ('Giro mortal', 1);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Giro mortal', 1, 15, 5, 25);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Giro mortal', 2, 25, 10, 25);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Giro mortal', 3, 35, 15, 25);

INSERT INTO Ataque_especial (nome, nivel_minimo)
	VALUES ('Apoptose', 3);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Apoptose', 1, 37, 30, 75);

INSERT INTO Restricao_classe(ataque, restricao) 
    VALUES ('Apoptose', 'Druida');

INSERT INTO Restricao_classe(ataque, restricao) 
    VALUES ('Apoptose', 'Feiticeira');

INSERT INTO Ataque_especial (nome, nivel_minimo)
	VALUES ('Golpe das sombras', 5);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Golpe das sombras', 1, 40, 0, 250);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Golpe das sombras', 2, 60, 10, 250);

INSERT INTO Restricao_especializacao(ataque, especializacao) 
    VALUES ('Golpe das sombras', 'Assassino');

INSERT INTO Restricao_especializacao(ataque, especializacao) 
    VALUES ('Golpe das sombras', 'Assassina');

INSERT INTO Ataque_especial (nome, nivel_minimo)
	VALUES ('Cura menor', 1);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Cura menor', 1, 0, 20, 45);

INSERT INTO Restricao_especializacao(ataque, especializacao) 
    VALUES ('Cura menor', 'Curandeiro');

INSERT INTO Ataque_especial (nome, nivel_minimo)
	VALUES ('Cura maior', 8);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Cura maior', 1, 0, 50, 45);

INSERT INTO Restricao_especializacao(ataque, especializacao) 
    VALUES ('Cura maior', 'Curandeiro');

INSERT INTO Ataque_especial (nome, nivel_minimo)
	VALUES ('Carteirada de monitor', 20);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Carteirada de monitor', 1, 350, 0, 42);

INSERT INTO Ataque_especial (nome, nivel_minimo)
	VALUES ('Casca grossa', 3);

INSERT INTO Nivel_ataque (nome, nivel, dano, custo_mana, tempo_recarga)
    VALUES ('Casca grossa', 1, 0, 10, 60);

INSERT INTO Restricao_especializacao(ataque, especializacao) 
    VALUES ('Casca grossa', 'Tanque');

INSERT INTO Leque_ataque (jogador, ataque, nivel)
    VALUES ('Ronald', 'Enraizamento', 1);

INSERT INTO Leque_ataque (jogador, ataque, nivel)
    VALUES ('Ronald', 'Cura menor', 1);

INSERT INTO Leque_ataque (jogador, ataque, nivel)
    VALUES ('Bia', 'Enraizamento', 1);

INSERT INTO Leque_ataque (jogador, ataque, nivel)
    VALUES ('Bia', 'Bola de fogo', 1);

INSERT INTO Leque_ataque (jogador, ataque, nivel)
    VALUES ('Amadeo', 'Enraizamento', 3);

INSERT INTO Leque_ataque (jogador, ataque, nivel)
    VALUES ('Amadeo', 'Carteirada de monitor', 1);

INSERT INTO Leque_ataque (jogador, ataque, nivel)
    VALUES ('Karen', 'Giro mortal', 3);

INSERT INTO Leque_ataque (jogador, ataque, nivel)
    VALUES ('Karen', 'Golpe das sombras', 2);

INSERT INTO Leque_ataque (jogador, ataque, nivel)
    VALUES ('Karen', 'Carteirada de monitor', 1);

INSERT INTO Leque_ataque (jogador, ataque, nivel)
    VALUES ('Luca', 'Soco do One-Punch Man', 1);

INSERT INTO Leque_ataque (jogador, ataque, nivel)
    VALUES ('Luca', 'Casca grossa', 1);

INSERT INTO Leque_ataque (jogador, ataque, nivel)
    VALUES ('Pedro', 'Soco do One-Punch Man', 1);

-- Item, Arma, Armadura e Consumivel
INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Copo de água', 1, 0, 0, 1, 'COMUM');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Faca de manteiga', 1, 1, 1, 3, 'COMUM');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Cetro clerical', 1, 100, 100, 10, 'COMUM');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Cajado elementar', 1, 100, 100, 10, 'COMUM');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Clava da justiça', 1, 100, 100, 10, 'COMUM');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Espada sanguinária', 1, 100, 100, 10, 'COMUM');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Cetro dos deuses antigos', 15, 10000, 9999, 35, 'LENDARIO');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Cajado de Knaarr', 15, 10000, 10000, 35, 'LENDARIO');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Porrete dos portões de Embiid', 15, 10000, 4872, 50, 'LENDARIO');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Espada do andarilho esquecido', 15, 10000, 3500, 50, 'LENDARIO');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Adaga da Regina Maledetta', 15, 10000, 2500, 20, 'LENDARIO');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Cota de malha', 1, 100, 100, 10, 'COMUM');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Bandana do naruto', 5, 100, 100, 10, 'RARO');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Armadura das fadas de Avalon', 15, 5000, 5000, 10, 'EPICO');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Poção de vida', 1, 10, 5, 10, 'COMUM');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Poção de mana', 1, 5, 5, 10, 'COMUM');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Poção da invisibilidade', 1, 2500, 1000, 10, 'EPICO');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Poção felix felicius', 1, 2500, 2500, 10, 'EPICO');

INSERT INTO Item (nome, nivel_minimo, preco_compra, preco_venda, peso, raridade)
    VALUES ('Poção do caos', 1, 7500, 7500, 10, 'LENDARIO');
--
INSERT INTO Arma (nome, dano)
	VALUES ('Cetro clerical', 20);

INSERT INTO Arma (nome, dano)
	VALUES ('Cajado elementar', 20);

INSERT INTO Arma (nome, dano)
	VALUES ('Clava da justiça', 20);

INSERT INTO Arma (nome, dano)
	VALUES ('Espada sanguinária', 20);

INSERT INTO Arma (nome, dano)
	VALUES ('Cetro dos deuses antigos', 150);

INSERT INTO Arma (nome, dano)
	VALUES ('Cajado de Knaarr', 150);

INSERT INTO Arma (nome, dano)
	VALUES ('Porrete dos portões de Embiid', 150);

INSERT INTO Arma (nome, dano)
	VALUES ('Espada do andarilho esquecido', 150);

INSERT INTO Arma (nome, dano)
	VALUES ('Adaga da Regina Maledetta', 150);

INSERT INTO Arma (nome, dano)
	VALUES ('Faca de manteiga', 5);
--
INSERT INTO Armadura (nome, defesa)
	VALUES ('Cota de malha', 20);

INSERT INTO Armadura (nome, defesa)
	VALUES ('Bandana do naruto', 35);

INSERT INTO Armadura (nome, defesa)
	VALUES ('Armadura das fadas de Avalon', 105);
--
INSERT INTO Consumivel (nome, efeito)
	VALUES ('Poção de vida', 'Cura em 50 pontos');

INSERT INTO Consumivel (nome, efeito)
	VALUES ('Poção de mana', 'Restaura 50 pontos de mana');

INSERT INTO Consumivel (nome, efeito)
	VALUES ('Poção da invisibilidade', 'Deixa o usuário invisível por 3 minutos');

INSERT INTO Consumivel (nome, efeito)
	VALUES ('Poção felix felicius', 'Sua sorte será inigualável por um dia inteiro');

INSERT INTO Consumivel (nome, efeito)
	VALUES ('Poção do caos', 'Apenas beba');

-- Inventário e Transação
INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Amadeo', 'Armadura das fadas de Avalon', 1);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Amadeo', 'Almir', 'Armadura das fadas de Avalon', SYSTIMESTAMP, 'compra', 1, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Amadeo', 'Poção de mana', 53);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Amadeo', 'Almir', 'Poção de mana', SYSTIMESTAMP, 'compra', 53, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Amadeo', 'Poção de vida', 34);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Amadeo', 'Almir', 'Poção de vida', SYSTIMESTAMP, 'compra', 33, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Amadeo', 'Poção felix felicius', 1);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Amadeo', 'Almir', 'Poção felix felicius', SYSTIMESTAMP, 'compra', 1, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Karen', 'Armadura das fadas de Avalon', 1);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Karen', 'Almir', 'Armadura das fadas de Avalon', SYSTIMESTAMP, 'compra', 1, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Karen', 'Adaga da Regina Maledetta', 1);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Karen', 'Almir', 'Adaga da Regina Maledetta', SYSTIMESTAMP, 'compra', 1, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Karen', 'Poção de mana', 26);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Karen', 'Almir', 'Poção de mana', SYSTIMESTAMP, 'compra', 25, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Karen', 'Poção de vida', 67);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Karen', 'Almir', 'Poção de vida', SYSTIMESTAMP, 'compra', 57, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Karen', 'Poção da invisibilidade', 1);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Karen', 'Almir', 'Poção da invisibilidade', SYSTIMESTAMP, 'compra', 1, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Bia', 'Cota de malha', 1);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Bia', 'Camelot', 'Cota de malha', SYSTIMESTAMP, 'compra', 1, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Bia', 'Faca de manteiga', 1);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Bia', 'Camelot', 'Faca de manteiga', SYSTIMESTAMP, 'compra', 1, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Bia', 'Cajado elementar', 1);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Bia', 'Camelot', 'Cajado elementar', SYSTIMESTAMP, 'compra', 1, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Bia', 'Poção de mana', 7);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Bia', 'Camelot', 'Poção de mana', SYSTIMESTAMP, 'compra', 7, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Bia', 'Poção de vida', 2);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Bia', 'Camelot', 'Poção de vida', SYSTIMESTAMP, 'compra', 2, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Luca', 'Poção de mana', 3);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Luca', 'Camelot', 'Poção de mana', SYSTIMESTAMP, 'compra', 3, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Luca', 'Poção de vida', 9);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Luca', 'Camelot', 'Poção de vida', SYSTIMESTAMP, 'compra', 9, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Luca', 'Cota de malha', 1);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Luca', 'Camelot', 'Cota de malha', SYSTIMESTAMP, 'compra', 1, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Luca', 'Espada sanguinária', 1);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Luca', 'Camelot', 'Espada sanguinária', SYSTIMESTAMP, 'compra', 1, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Pedro', 'Clava da justiça', 1);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Pedro', 'Camelot', 'Clava da justiça', SYSTIMESTAMP, 'compra', 1, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Pedro', 'Cota de malha', 1);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Pedro', 'Camelot', 'Cota de malha', SYSTIMESTAMP, 'compra', 1, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Pedro', 'Poção de mana', 3);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Pedro', 'Camelot', 'Poção de mana', SYSTIMESTAMP, 'compra', 3, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Ronald', 'Cota de malha', 1);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Ronald', 'Camelot', 'Cota de malha', SYSTIMESTAMP, 'compra', 1, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Ronald', 'Cetro clerical', 1);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Ronald', 'Camelot', 'Cetro clerical', SYSTIMESTAMP, 'compra', 1, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
	VALUES ('Ronald', 'Poção de mana', 1);

INSERT INTO Transacao (jogador, comerciante, item, data_hora, compra_venda, quantidade, numero)
    VALUES ('Ronald', 'Camelot', 'Poção de mana', SYSTIMESTAMP, 'compra', 1, num_transacao.nextval);

INSERT INTO Inventario (jogador, item, quantidade)
    VALUES ('Amadeo', 'Cajado elementar', 1);

INSERT INTO Inventario (jogador, item, quantidade)
    VALUES ('Amadeo', 'Cetro dos deuses antigos', 1);

INSERT INTO Inventario (jogador, item, quantidade)
    VALUES ('Amadeo', 'Cajado de Knaarr', 1);

INSERT INTO Inventario (jogador, item, quantidade)
    VALUES ('Karen', 'Espada sanguinária', 1);

INSERT INTO Inventario (jogador, item, quantidade)
    VALUES ('Karen', 'Bandana do naruto', 1);

INSERT INTO Inventario (jogador, item, quantidade)
    VALUES ('Karen', 'Espada do andarilho esquecido', 1);


-- Estoque
INSERT INTO Estoque (comerciante, item, quantidade)
	VALUES ('Almir', 'Cetro dos deuses antigos', 1);

INSERT INTO Estoque (comerciante, item, quantidade)
	VALUES ('Almir', 'Porrete dos portões de Embiid', 1);

INSERT INTO Estoque (comerciante, item, quantidade)
	VALUES ('Almir', 'Espada do andarilho esquecido', 1);

INSERT INTO Estoque (comerciante, item, quantidade)
	VALUES ('Almir', 'Cajado de Knaarr', 1);

INSERT INTO Estoque (comerciante, item, quantidade)
	VALUES ('Almir', 'Armadura das fadas de Avalon', 1);

INSERT INTO Estoque (comerciante, item, quantidade)
	VALUES ('Almir', 'Poção do caos', 3);

INSERT INTO Estoque (comerciante, item, quantidade)
	VALUES ('Almir', 'Poção de vida', 1002);

INSERT INTO Estoque (comerciante, item, quantidade)
	VALUES ('Almir', 'Poção de mana', 350);

INSERT INTO Estoque (comerciante, item, quantidade)
	VALUES ('Camelot', 'Poção de mana', 112);

INSERT INTO Estoque (comerciante, item, quantidade)
	VALUES ('Camelot', 'Poção de vida', 237);

INSERT INTO Estoque (comerciante, item, quantidade)
	VALUES ('Camelot', 'Cota de malha', 8);

INSERT INTO Estoque (comerciante, item, quantidade)
	VALUES ('Camelot', 'Faca de manteiga', 13);

INSERT INTO Estoque (comerciante, item, quantidade)
	VALUES ('Camelot', 'Bandana do naruto', 2);


-- Habilidade
INSERT INTO Habilidade (nome, descricao) VALUES ('Agilidade', 'Capacidade de se movimentar com destreza');

INSERT INTO Habilidade (nome, descricao) VALUES ('Carisma', 'Medida da desenvoltura interpessoal');

INSERT INTO Habilidade (nome, descricao) VALUES ('Força', 'Poder físico');

INSERT INTO Habilidade (nome, descricao) VALUES ('Inteligência', 'Capacidade mental');

INSERT INTO Habilidade (nome, descricao) VALUES ('Percepção', 'Capacidade sensorial');

INSERT INTO Habilidade (nome, descricao) VALUES ('Vontade', 'Medida do controle sobre as suas decisões');

INSERT INTO Habilidade (nome, descricao) VALUES ('Resistência', 'Medida da resistência física');

INSERT INTO Habilidade (nome, descricao) VALUES ('Influência', 'Capacidade de influenciar os atos, pensamentos e sentimentos de outros personagens');

INSERT INTO Habilidade (nome, descricao) VALUES ('Memória', 'Capacidade de guardar informações');

INSERT INTO Habilidade (nome, descricao) VALUES ('Coordenação', 'Capacidade de usar diferentes partes do corpo juntas com fluidez e eficiência');

INSERT INTO Habilidade (nome, descricao) VALUES ('Imaginação', 'Medida de criatividade e desenvoltura');


-- Leque de habilidades
INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Ronald', 'Inteligência', 2, 50, 35, 20);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Ronald', 'Agilidade', 4, 20, 45, 40);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Ronald', 'Imaginação', 1, 10, 60, 25);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Ronald', 'Vontade', 7, 35, 40, 40);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Luca', 'Memória', 5, 60, 30, 45);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Luca', 'Resistência', 2, 70, 10, 50);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Luca', 'Carisma', 6, 30, 80, 40);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Luca', 'Percepção', 3, 40, 40, 40);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Amadeo', 'Força', 2, 35, 70, 45);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Amadeo', 'Influência', 7, 80, 70, 5);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Amadeo', 'Coordenação', 5, 60, 70, 20);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Bia', 'Força', 3, 10, 30, 100);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Bia', 'Memória', 6, 55, 65, 110);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Bia', 'Inteligência', 4, 45, 40, 35);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Pedro', 'Agilidade', 3, 72, 50, 27);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Pedro', 'Resistência', 7, 40, 38, 45);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Pedro', 'Influência', 15, 98, 55, 23);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Karen', 'Imaginação', 4, 20, 40, 25);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Karen', 'Carisma', 1, 30, 30, 30);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Karen', 'Coordenação', 7, 40, 20, 15);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Joao', 'Vontade', 5, 30, 100, 70);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Joao', 'Percepção', 10, 60, 20, 70);

INSERT INTO Leque_habilidade (jogador, habilidade, nivel, bonusTemporario, bonusEspecializacao, bonusClasse) VALUES ('Joao', 'Inteligência', 15, 90, 80, 140);

-- Batalha e Loot
INSERT INTO Batalha (atacante, atacado, dano, data_hora)
    VALUES ('Amadeo', 'Veterana da III guerra salazariana', 35, SYSTIMESTAMP);

INSERT INTO Batalha (atacante, atacado, dano, data_hora)
    VALUES ('Veterana da III guerra salazariana', 'Amadeo', 15, SYSTIMESTAMP);

INSERT INTO Batalha (atacante, atacado, dano, data_hora)
    VALUES ('Amadeo', 'Veterana da III guerra salazariana', 40, SYSTIMESTAMP);

INSERT INTO Loot (atacante, atacado, data_hora, item) 
    VALUES ('Amadeo', 'Veterana da III guerra salazariana', 
    		(SELECT data_hora 
    		FROM Batalha 
    		WHERE atacante = 'Amadeo'
    			AND atacado = 'Veterana da III guerra salazariana'
    			AND dano = 40),
    		'Poção de vida');

INSERT INTO Batalha (atacante, atacado, dano, data_hora)
    VALUES ('Karen', 'Gárgula', 73, SYSTIMESTAMP);

INSERT INTO Batalha (atacante, atacado, dano, data_hora)
    VALUES ('Gárgula', 'Karen', 28, SYSTIMESTAMP);

INSERT INTO Batalha (atacante, atacado, dano, data_hora)
    VALUES ('Karen', 'Gárgula', 50, SYSTIMESTAMP);

INSERT INTO Loot (atacante, atacado, data_hora, item) 
    VALUES ('Karen', 'Gárgula', 
    		(SELECT data_hora 
    		FROM Batalha 
    		WHERE atacante = 'Karen'
    			AND atacado = 'Gárgula'
    			AND dano = 50),
    		'Poção de mana');


-- Fraquezas

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Ronald', 'Preguiça');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Ronald', 'Dependência hídrica');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Ronald', 'Procrastinação');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Ronald', 'Visão Comprometida');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Pedro', 'Lentidão');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Pedro', 'Ouvido ruim');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Pedro', 'Procurado');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Pedro', 'Mau mentiroso');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Luca', 'Odiado pelos animais');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Luca', 'Excesso de sono');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Luca', 'Dívida de sangue');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Luca', 'Vício em marcelinho');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Bia', 'Desmotivada');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Bia', 'Joelho podre');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Bia', 'Dorme mal');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Bia', 'Fome constante');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Amadeo', 'Perda de memória');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Amadeo', 'Viciado em aprender');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Amadeo', 'Paranoico');


INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Amadeo', 'Vingativo');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Karen', 'Piedosa');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Karen', 'Péssima reputação');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Karen', 'Dores no corpo');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Karen', 'Curiosa');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Joao', 'Desaparecido');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Joao', 'Viciado em produtividade');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Joao', 'Leitor assíduo');

INSERT INTO Fraquezas (jogador, fraqueza) VALUES ('Joao', 'Sempre cansado');

--LOCAIS E SANTUARIO
INSERT INTO Locais (nome, nivel_recomendado, continente, bioma, clima)
	VALUES ('Oasis das Palmeiras', 10, 'Gondwana', 'Deserto', 'Hiperarido');

INSERT INTO Santuario (nome_local, nome, efeito)
    VALUES ('Oasis das Palmeiras', 'Aguas Sagradas', 'Regeneração de vida e mana');

INSERT INTO Locais (nome, nivel_recomendado, continente, bioma, clima)
	VALUES ('Coração do deserto', 15, 'Gondwana', 'Deserto', 'Hiperarido');

INSERT INTO Santuario (nome_local, nome, efeito)
    VALUES ('Coração do deserto', 'Lupa', 'Redução de vida, defesas e dano');

INSERT INTO Locais (nome, nivel_recomendado, continente, bioma, clima)
	VALUES ('Tribo Fate', 16, 'Gondwana', 'Deserto', 'Hiperarido');

INSERT INTO Locais (nome, nivel_recomendado, continente, bioma, clima)
	VALUES ('Toca do Predador', 5, 'Gondwana', 'Savana', 'Tropical');

INSERT INTO Santuario (nome_local, nome, efeito)
    VALUES ('Toca do Predador', 'Pedra do Rei', 'Aumento de Dano');

INSERT INTO Locais (nome, nivel_recomendado, continente, bioma, clima)
	VALUES ('Aldeia Caath', 7, 'Gondwana', 'Savana','Semiarido');
    
INSERT INTO Locais (nome, nivel_recomendado, continente)
    VALUES ('Vila Yona', 1, 'Central');

INSERT INTO Santuario (nome_local, nome, efeito)
    VALUES ('Vila Yona', 'Fonte Inicial', 'Regeneração de vida e mana');

INSERT INTO Locais (nome, nivel_recomendado, continente)
    VALUES ('Lago Pilzaun', 2, 'Central');

INSERT INTO Locais (nome, nivel_recomendado, continente)
    VALUES ('A Grande Ponte', 5, 'Central');

INSERT INTO Santuario (nome_local, nome, efeito)
    VALUES ('A Grande Ponte', 'A passagem', 'Aumento da Velocidade de movimento');

INSERT INTO Locais (nome, nivel_recomendado, continente, bioma)
    VALUES ('Pântano Enevoado', 20, 'Shadowamp', 'Pantano');

INSERT INTO Locais (nome, nivel_recomendado, continente, bioma)
    VALUES ('Vila Amaldiçoada', 20, 'Shadowamp', 'Pantano');

INSERT INTO Santuario (nome_local, nome, efeito)
    VALUES ('Vila Amaldiçoada', 'Neblina', 'Lentidão');

INSERT INTO Locais (nome, nivel_recomendado, continente, bioma)
    VALUES ('A Arvore', 25, 'Shadowamp', 'Pantano');

INSERT INTO Santuario (nome_local, nome, efeito)
    VALUES ('A Arvore', 'Ecos da Vida', 'Regeneração de vida e mana');

INSERT INTO Locais (nome, nivel_recomendado, continente, bioma)
    VALUES ('Cemiterio das Almas', 25, 'Shadowamp', 'Pantano');

INSERT INTO Santuario (nome_local, nome, efeito)
    VALUES ('Cemiterio das Almas', 'Lápide de Swamp', 'Redução de defesas e Lentidão');

INSERT INTO Locais (nome, nivel_recomendado, continente, bioma)
    VALUES ('Castelo CIn', 27, 'Shadowamp', 'Pantano');

INSERT INTO Locais (nome, nivel_recomendado, continente, bioma, clima)
    VALUES ('Cidade no Iceberg', 10, 'Terras Congeladas', 'Tundra', 'Frio e Úmido');

INSERT INTO Locais (nome, nivel_recomendado, continente, bioma, clima)
    VALUES ('Tribo do Yeti', 12, 'Terras Congeladas', 'Tundra', 'Frio e Úmido');

INSERT INTO Locais (nome, nivel_recomendado, continente, bioma, clima)
    VALUES ('Caverna Congelada', 15, 'Terras Congeladas', 'Tundra', 'Frio e Úmido');

INSERT INTO Santuario (nome_local, nome, efeito)
    VALUES ('Caverna Congelada', 'Avalanche', 'Lentidão e redução de vida e mana');

INSERT INTO Locais (nome, nivel_recomendado, continente)
    VALUES ('Fontes Termais', 17, 'Terras Congeladas');

INSERT INTO Santuario (nome_local, nome, efeito)
    VALUES ('Fontes Termais', 'Sopro de Calor', 'Aumento da agilidade');

INSERT INTO Locais (nome, nivel_recomendado, continente)
	VALUES ('Hellcife', 20, 'Terras Congeladas');

--Missao e objetivo
INSERT INTO Missao (nome, experiencia, dinheiro, nivel_minimo) 
	VALUES ('A cidade', 1000, 500, 10);
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('A cidade', 'Salve a cidade do ataque');
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('A cidade', 'Vá até a Tribo do Yeti');
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('A cidade', 'Converse com o líder da tribo');

INSERT INTO Missao (nome, experiencia, dinheiro, nivel_minimo) 
	VALUES ('A planta de fogo', 1200, 750, 15);
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('A planta de fogo', 'Derrote todos os inimigos');
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('A planta de fogo', 'Liberte a Fonte Termal');
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('A planta de fogo', 'Encontre a flor de Hellcife');

    
INSERT INTO Missao (nome, experiencia, dinheiro, nivel_minimo) 
	VALUES ('O resgate', 1100, 500, 15);
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('O resgate', 'Encontre o filho do Caçador no deserto');

INSERT INTO Missao (nome, experiencia, dinheiro, nivel_minimo)
    VALUES ('O pantano', 2000, 1000, 20);
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('O pantano', 'Derrote todos os inimigos');
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('O pantano', 'Fale com o espirito');
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('O pantano', 'Vá até a Arvore');

INSERT INTO Missao (nome, experiencia, dinheiro, nivel_minimo)
    VALUES ('Caminho das raizes',2010, 1100,25);
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('Caminho das raizes', 'Liberte a Arvore dos espiritos corrompidos');
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('Caminho das raizes', 'Se conecte com a arvore');

INSERT INTO Missao (nome, experiencia, dinheiro, nivel_minimo) 
	VALUES ('Passar direto em GDI', 10001, 10001, 20);
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('Passar direto em GDI', 'Não reprovar.');

INSERT INTO Missao (nome, experiencia, dinheiro, nivel_minimo)
    VALUES ('Final de luta', 50000, 50000, 30);
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('Final de luta', 'Termine o curso');
    
INSERT INTO Missao (nome, experiencia, dinheiro, nivel_minimo) 
	VALUES ('A iniciação', 10, 10, 1);
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('A iniciação', 'Mate 20 lobos');

INSERT INTO Missao (nome, experiencia, dinheiro, nivel_minimo) 
	VALUES ('De baixo pra cima', 100, 0, 1);
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('De baixo pra cima', 'Ajude 50 idosos a atravessar a estrada');

INSERT INTO Missao (nome, experiencia, dinheiro, nivel_minimo) 
	VALUES ('O nome do jogo', 1000, 250,5);
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('O nome do jogo', 'Encontre o super-herói escondido');
INSERT INTO Objetivos (missao, objetivo)
	VALUES ('O nome do jogo', 'Pergunte ao super-herói escondido o segredo para tomar os meios de produção');

--Quest
INSERT INTO Quest (jogador, missao, nome_local, status)
    VALUES ('Amadeo', 'Passar direto em GDI', 'Hellcife', 'Concluido');

INSERT INTO Quest (jogador, missao, nome_local, status)
	VALUES ('Amadeo', 'O resgate', 'Aldeia Caath', 'Concluido');

INSERT INTO Quest (jogador, missao, nome_local, status)
	VALUES ('Amadeo', 'A iniciação', 'Vila Yona', 'Concluido');

INSERT INTO Quest (jogador, missao, nome_local, status)
	VALUES ('Amadeo', 'Final de luta', 'Castelo CIn', 'Em Progresso');

INSERT INTO Quest (jogador, missao, nome_local, status)
	VALUES ('Karen', 'A iniciação', 'Vila Yona', 'Concluido');

INSERT INTO Quest (jogador, missao, nome_local, status)
	VALUES ('Karen', 'Passar direto em GDI', 'Hellcife', 'Concluido');

INSERT INTO Quest (jogador, missao, nome_local, status)
	VALUES ('Karen', 'De baixo pra cima', 'Vila Yona', 'Concluido');

INSERT INTO Quest (jogador, missao, nome_local, status)
	VALUES ('Karen', 'O nome do jogo', 'A Grande Ponte', 'Concluido');

INSERT INTO Quest (jogador, missao, nome_local, status)
	VALUES ('Karen', 'Final de luta', 'Castelo CIn', 'Em Progresso');

INSERT INTO Quest (jogador, missao, nome_local, status)
	VALUES ('Ronald', 'A iniciação', 'Vila Yona', 'Em progresso');

INSERT INTO Quest (jogador, missao, nome_local, status)
	VALUES ('Luca', 'A iniciação', 'Vila Yona', 'Em progresso');

INSERT INTO Quest (jogador, missao, nome_local, status)
	VALUES ('Bia', 'A iniciação', 'Vila Yona', 'Em progresso');

INSERT INTO Quest (jogador, missao, nome_local, status)
	VALUES ('Pedro', 'A iniciação', 'Vila Yona', 'Em progresso');

--Recompensas

INSERT INTO Recompensa (jogador, missao, item)
    VALUES ('Amadeo', 'A iniciação', 'Cajado elementar');

INSERT INTO Recompensa (jogador, missao, item)
    VALUES ('Amadeo', 'Passar direto em GDI', 'Cetro dos deuses antigos');

INSERT INTO Recompensa (jogador, missao, item)
    VALUES ('Amadeo', 'O resgate', 'Cajado de Knaarr');

INSERT INTO Recompensa (jogador, missao, item)
    VALUES ('Karen', 'A iniciação', 'Espada sanguinária');

INSERT INTO Recompensa (jogador, missao, item)
    VALUES ('Karen', 'De baixo pra cima', 'Poção de vida');

INSERT INTO Recompensa (jogador, missao, item)
    VALUES ('Karen', 'O nome do jogo', 'Bandana do naruto');

INSERT INTO Recompensa (jogador, missao, item)
    VALUES ('Karen', 'Passar direto em GDI', 'Espada do andarilho esquecido');
