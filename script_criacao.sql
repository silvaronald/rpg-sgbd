-- Tables
CREATE TABLE Personagem (
  nome VARCHAR(50),
  raca VARCHAR(50),
  vida INT CHECK (vida >= 0),
  vida_maxima INT CHECK (vida_maxima > 0),
  mana INT CHECK (mana >= 0),
  mana_maxima INT CHECK (mana_maxima > 0),
  defesa INT CHECK (defesa >= 0),
  dano INT CHECK (dano >= 0),
  
  PRIMARY KEY (nome)
);

CREATE TABLE Inimigo (
  nome VARCHAR(50),
  experiencia INT CHECK (experiencia >= 0),
  nivel INT CHECK (nivel >= 1),

  PRIMARY KEY (nome),
  CONSTRAINT fk_inimigo_nome FOREIGN KEY (nome) REFERENCES Personagem(nome)
);
 
CREATE TABLE Comerciante (
  nome VARCHAR(50),

  PRIMARY KEY (nome),
  CONSTRAINT fk_comerciante_nome FOREIGN KEY (nome) REFERENCES Personagem(nome)
);

CREATE TABLE Jogador (
  nome VARCHAR(50),
  nome_classe VARCHAR(50),
  especializacao VARCHAR(50),
  dinheiro INT CHECK (dinheiro >= 0),
  nivel INT CHECK (nivel >= 1),
  experiencia INT CHECK (experiencia >= 0),
  inclinacao_moral VARCHAR(50),
  capacidade_total INT CHECK (capacidade_total >= 0),

  PRIMARY KEY (nome),
  CONSTRAINT fk_jogador_nome FOREIGN KEY (nome) REFERENCES Personagem(nome)
);

CREATE TABLE Ataque_especial (
  nome VARCHAR(50),
  nivel_minimo INT CHECK (nivel_minimo >= 1),
  
  PRIMARY KEY (nome)
);

CREATE TABLE Nivel_ataque (
  nome VARCHAR(50),
  nivel INT CHECK (nivel >= 1),
  dano INT CHECK (dano >= 0),
  custo_mana INT CHECK (custo_mana >= 0),
  tempo_recarga INT CHECK (tempo_recarga >= 0),

  PRIMARY KEY (nome, nivel),
  CONSTRAINT fk_nivel_ataque_nome FOREIGN KEY (nome) REFERENCES Ataque_especial(nome)
);

CREATE TABLE Missao (
  nome VARCHAR(50),
  experiencia INT CHECK (experiencia >= 0),
  dinheiro INT CHECK (dinheiro >= 0),
  nivel_minimo INT CHECK (nivel_minimo >= 1),

  PRIMARY KEY (nome)
);

CREATE TABLE Item (
  nome VARCHAR(50),
  nivel_minimo INT CHECK (nivel_minimo >= 1),
  preco_compra INT CHECK (preco_compra >= 0),
  preco_venda INT CHECK (preco_venda >= 0),
  peso INT CHECK (peso > 0),
  raridade VARCHAR(50),

  PRIMARY KEY (nome),
	CONSTRAINT ck_raridade_item CHECK(raridade IN ('COMUM','RARO','EPICO','LENDARIO'))
);

CREATE TABLE Arma (
  nome VARCHAR(50),
  dano INT CHECK (dano >= 0),

  PRIMARY KEY (nome),
  CONSTRAINT fk_nome_arma FOREIGN KEY (nome) REFERENCES Item(nome)
);

CREATE TABLE Armadura (
  nome VARCHAR(50),
  defesa INT CHECK (defesa >= 0),

  PRIMARY KEY (nome),
  CONSTRAINT fk_nome_armadura FOREIGN KEY (nome) REFERENCES Item(nome)
);

CREATE TABLE Consumivel (
  nome VARCHAR(50),
  efeito VARCHAR(250),

  PRIMARY KEY (nome),
  CONSTRAINT fk_nome_consumivel FOREIGN KEY (nome) REFERENCES Item(nome)
);

CREATE TABLE Locais(
  nome VARCHAR(50),
  nivel_recomendado INT CHECK (nivel_recomendado >= 1),
  continente VARCHAR(50),
  bioma VARCHAR(50),
  clima VARCHAR(50),

  PRIMARY KEY (nome)
);

CREATE TABLE Habilidade (
  nome VARCHAR(50),
  descricao VARCHAR(250),

  PRIMARY KEY (nome)
);

CREATE TABLE Loot (
  atacante VARCHAR(50),
  atacado VARCHAR(50),
  data_hora TIMESTAMP,
  item VARCHAR(50),
  
  PRIMARY KEY (atacante, atacado, data_hora, item),
  CONSTRAINT fk_loot_batalha FOREIGN KEY (atacante, atacado, data_hora) REFERENCES Batalha(atacante, atacado, data_hora),
  CONSTRAINT fk_loot_item FOREIGN KEY (item) REFERENCES Item(nome)
);

CREATE TABLE Fraquezas (
  jogador VARCHAR(50),
  fraqueza VARCHAR(250),

  PRIMARY KEY (jogador, fraqueza),
  CONSTRAINT fk_fraquezas_jogador FOREIGN KEY (jogador) REFERENCES Jogador(nome)
);

CREATE TABLE Objetivos (
  missao VARCHAR(50),
  objetivo VARCHAR(250),

  PRIMARY KEY (missao, objetivo),
  CONSTRAINT fk_objetivos_missao FOREIGN KEY (missao) REFERENCES Missao(nome)
);

CREATE TABLE Restricao_classe (
  ataque VARCHAR(50),
  restricao VARCHAR(50),

  PRIMARY KEY (ataque, restricao),
  CONSTRAINT fk_restricao_classe_ataque FOREIGN KEY (ataque) REFERENCES Ataque_especial(nome)
);

CREATE TABLE Restricao_especializacao (
  ataque VARCHAR(50),
  especializacao VARCHAR(50),

  PRIMARY KEY (ataque, especializacao),
  CONSTRAINT fk_restricao_especializacao_ataque FOREIGN KEY (ataque) REFERENCES Ataque_especial(nome)
);

CREATE TABLE Transacao (
  jogador VARCHAR(50),
  comerciante VARCHAR(50),
  item VARCHAR(50),
  data_hora TIMESTAMP,
  compra_venda VARCHAR(6),
  quantidade INT CHECK (quantidade > 0),
  numero INT,

  PRIMARY KEY (jogador, comerciante, item, data_hora),
  CONSTRAINT fk_transacao_jogador FOREIGN KEY (jogador) REFERENCES Jogador(nome),
  CONSTRAINT fk_transacao_comerciante FOREIGN KEY (comerciante) REFERENCES Comerciante(nome),
  CONSTRAINT fk_transacao_item FOREIGN KEY (item) REFERENCES Item(nome)
);

CREATE TABLE Quest (
  jogador VARCHAR(50),
  missao VARCHAR(50),
  nome_local VARCHAR(250),
  status VARCHAR (12),

  PRIMARY KEY (jogador, missao),
  CONSTRAINT fk_quest_jogador FOREIGN KEY (jogador) REFERENCES Jogador(nome),
  CONSTRAINT fk_quest_missao FOREIGN KEY (missao) REFERENCES Missao(nome),
  CONSTRAINT fk_quest_nome_local FOREIGN KEY (nome_local) REFERENCES Locais(nome)
);

CREATE TABLE Santuario (
  nome_local VARCHAR(50),
  nome VARCHAR(50),
  efeito VARCHAR(50),

  PRIMARY KEY (nome_local, nome),
  CONSTRAINT fk_santuario_nome_local FOREIGN KEY (nome_local) REFERENCES Locais(nome)
);

CREATE TABLE Estoque  (
  comerciante VARCHAR(50),
  item VARCHAR(50),
  quantidade INT CHECK (quantidade > 0),

  PRIMARY KEY (comerciante, item),
  CONSTRAINT fk_estoque_comerciante FOREIGN KEY (comerciante) REFERENCES Comerciante(nome),
  CONSTRAINT fk_estoque_item FOREIGN KEY (item) REFERENCES Item(nome)
);

CREATE TABLE Inventario  (
  jogador VARCHAR(50),
  item VARCHAR(50),
  quantidade INT CHECK (quantidade > 0),

  PRIMARY KEY (jogador, item),
  CONSTRAINT fk_inventario_jogador FOREIGN KEY (jogador) REFERENCES Jogador(nome),
  CONSTRAINT fk_inventario_item FOREIGN KEY (item) REFERENCES Item(nome)
);

CREATE TABLE Batalha (
  atacante VARCHAR(50),
  atacado VARCHAR(50),
  dano INT CHECK (dano >= 0),
  data_hora TIMESTAMP,
  
  PRIMARY KEY (atacante, atacado, data_hora),
  CONSTRAINT fk_batalha_atacante FOREIGN KEY (atacante) REFERENCES Personagem(nome),
  CONSTRAINT fk_batalha_atacado FOREIGN KEY (atacado) REFERENCES Personagem(nome)
);

CREATE TABLE Recompensa (
  jogador VARCHAR(50),
  missao VARCHAR(50),
  item VARCHAR(50),
  
  PRIMARY KEY (jogador, missao, item),
  CONSTRAINT fk_recompensa_jogador FOREIGN KEY (jogador) REFERENCES Jogador(nome),
  CONSTRAINT fk_recompensa_quest FOREIGN KEY (missao) REFERENCES Missao(nome),
  CONSTRAINT fk_recompensa_item FOREIGN KEY (item) REFERENCES Item(nome)

);

CREATE TABLE Leque_habilidade (
  jogador VARCHAR(50),
  habilidade VARCHAR(50),
  nivel INT CHECK (nivel >= 1),
  bonusTemporario INT,
  bonusEspecializacao INT,
  bonusClasse INT,
  
  PRIMARY KEY (jogador, habilidade),
  CONSTRAINT fk_leque_habilidade_jogador FOREIGN KEY (jogador) REFERENCES Jogador(nome),
  CONSTRAINT fk_leque_habilidade_habilidade FOREIGN KEY (habilidade) REFERENCES Habilidade(nome)
);

CREATE TABLE Leque_ataque(
  jogador VARCHAR(50),
  ataque VARCHAR(50),
  nivel INT CHECK (nivel >= 1),
  
  PRIMARY KEY (jogador, ataque),
  CONSTRAINT fk_leque_ataque_jogador FOREIGN KEY (jogador) REFERENCES Jogador(nome),
  CONSTRAINT fk_leque_ataque_nivel FOREIGN KEY (ataque, nivel) REFERENCES Nivel_ataque(nome, nivel)
);

-- Sequences
CREATE SEQUENCE num_transacao
START WITH 0
INCREMENT BY 1
MINVALUE 0
NOCYCLE;
