-- Personagem
CREATE OR REPLACE TYPE Personagem_tp AS OBJECT (
    nome VARCHAR(50),
    raca VARCHAR(50),
    vida INT,
    vida_maxima INT,
    mana INT,
    mana_maxima INT,
    defesa INT,
    dano INT,
    
    MEMBER PROCEDURE tomar_dano(dano NUMBER),
    ORDER MEMBER FUNCTION order_nome (p Personagem_tp) RETURN NUMBER
) NOT INSTANTIABLE NOT FINAL;
/
CREATE OR REPLACE TYPE BODY Personagem_tp AS
	MEMBER PROCEDURE tomar_dano(dano NUMBER) IS
	BEGIN
    	vida := GREATEST(vida - dano, 0);
	END;	

	ORDER MEMBER FUNCTION order_nome (p Personagem_tp) RETURN NUMBER IS
    BEGIN
        IF UPPER(nome) < UPPER(p.nome) THEN
            RETURN -1;
        ELSIF UPPER(nome) > UPPER(p.nome) THEN
            RETURN 1;
        ELSE
            RETURN 0;
        END IF;
    END;
END;
/

-- Inimigo
CREATE OR REPLACE TYPE Inimigo_tp UNDER Personagem_tp (
  experiencia INT,
  nivel INT,
  
  OVERRIDING MEMBER PROCEDURE tomar_dano(dano NUMBER),
  
  FINAL MEMBER FUNCTION calcular_dano_bonus RETURN NUMBER,
  
  CONSTRUCTOR FUNCTION Inimigo_tp (
    nome VARCHAR2,
    raca VARCHAR2,
    vida INT,
    vida_maxima INT,
    mana INT,
    mana_maxima INT,
    defesa INT,
    dano INT,
    experiencia INT,
    nivel INT
  ) RETURN SELF AS RESULT
);
/

CREATE OR REPLACE TYPE BODY Inimigo_tp AS
  OVERRIDING MEMBER PROCEDURE tomar_dano(dano NUMBER) IS
  BEGIN
    vida := GREATEST(vida - dano, 0);
    IF vida = 0 THEN
      experiencia := experiencia + 10 * nivel;
	  SELF.dano := 0;
    END IF;
  END;

  FINAL MEMBER FUNCTION calcular_dano_bonus RETURN NUMBER IS
    bonus NUMBER := 0;
  BEGIN
    IF nivel >= 10 THEN
      bonus := 10;
    ELSIF nivel >= 5 THEN
      bonus := 5;
    END IF;
    RETURN bonus;
  END;

  CONSTRUCTOR FUNCTION Inimigo_tp (
    nome VARCHAR2,
    raca VARCHAR2,
    vida INT,
    vida_maxima INT,
    mana INT,
    mana_maxima INT,
    defesa INT,
    dano INT,
    experiencia INT,
    nivel INT
  ) RETURN SELF AS RESULT IS
  BEGIN
    SELF.nome := nome;
    SELF.raca := raca;
    SELF.vida := vida;
    SELF.vida_maxima := vida_maxima;
    SELF.mana := mana;
    SELF.mana_maxima := mana_maxima;
    SELF.defesa := defesa;
    SELF.dano := dano;
    SELF.experiencia := experiencia;
    SELF.nivel := nivel;
    RETURN;
  END;
END;
/

CREATE TABLE Inimigo of Inimigo_tp (
  	nome PRIMARY KEY,

    CONSTRAINT inimigo_vida CHECK (vida >= 0),
    CONSTRAINT inimigo_vida2 CHECK (vida <= vida_maxima),
    CONSTRAINT inimigo_vida_maxima CHECK (vida_maxima > 0),
    CONSTRAINT inimigo_mana CHECK (mana >= 0),
    CONSTRAINT inimigo_mana2 CHECK (mana <= mana_maxima),
    CONSTRAINT inimigo_mana_maxima CHECK (mana_maxima > 0),
    CONSTRAINT inimigo_defesa CHECK (defesa >= 0),
    CONSTRAINT inimigo_dano CHECK (dano >= 0),
    CONSTRAINT inimigo_nivel CHECK (nivel >= 1),
    CONSTRAINT inimigo_experiencia CHECK (experiencia >= 0)
);
/

-- Comerciante
CREATE OR REPLACE TYPE Comerciante_tp UNDER Personagem_tp (   
);
/
CREATE TABLE Comerciante_tb OF Comerciante_tp (
    nome PRIMARY KEY,

    CONSTRAINT comerciante_vida CHECK (vida >= 0),
    CONSTRAINT comerciante_vida2 CHECK (vida <= vida_maxima),
    CONSTRAINT comerciante_vida_maxima CHECK (vida_maxima > 0),
    CONSTRAINT comerciante_mana CHECK (mana >= 0),
    CONSTRAINT comerciante_mana2 CHECK (mana <= mana_maxima),
    CONSTRAINT comerciante_mana_maxima CHECK (mana_maxima > 0),
    CONSTRAINT comerciante_defesa CHECK (defesa >= 0),
    CONSTRAINT comerciante_dano CHECK (dano >= 0)
);
/

-- Ataque especial
CREATE OR REPLACE TYPE Ataque_especial_tp AS OBJECT (
    nome VARCHAR(50),
    nivel_minimo INT
);
/
CREATE TABLE Ataque_especial_tb OF Ataque_especial_tp (
    nome PRIMARY KEY,

    CONSTRAINT ataque_especial_nivel_minimo CHECK (nivel_minimo >= 1)
);
/

-- Nivel ataque
CREATE OR REPLACE TYPE Nivel_ataque_tp AS OBJECT (
    nivel INT,
    dano INT,
    custo_mana INT,
    tempo_recarga INT
);
/
CREATE OR REPLACE TYPE Nivel_ataque_nt IS TABLE OF Nivel_ataque_tp;
/
ALTER TYPE Ataque_especial_tp ADD ATTRIBUTE nivel_ataque Nivel_ataque_nt CASCADE;

-- Restricao classe
CREATE OR REPLACE TYPE Restricao_classe_tp AS OBJECT (
    restricao VARCHAR(50)
);
/
CREATE OR REPLACE TYPE Restricao_classe_nt IS TABLE OF Restricao_classe_tp;
/
ALTER TYPE Ataque_especial_tp ADD ATTRIBUTE restricao_classe Restricao_classe_nt CASCADE;
/

-- Restricao especializacao
CREATE OR REPLACE TYPE Restricao_especializacao_tp AS OBJECT (
    restricao VARCHAR(50)
);
/
CREATE OR REPLACE TYPE Restricao_especializacao_nt IS TABLE OF Restricao_especializacao_tp;
/
ALTER TYPE Ataque_especial_tp ADD ATTRIBUTE restricao_especializacao Restricao_especializacao_nt CASCADE;
/

--Fraquezas
CREATE OR REPLACE TYPE fraquezas_tp AS TABLE OF VARCHAR(250);
/
--Jogador
CREATE OR REPLACE TYPE Jogador_tp UNDER Personagem_tp(
    nome_classe VARCHAR(50),
    especializacao VARCHAR(50),
    dinheiro INT,
    nivel INT,
    experiencia INT,
    inclinacao_moral VARCHAR(50),
    capacidade_total INT,
    fraquezas fraquezas_tp
);
/
CREATE TABLE Jogador of Jogador_tp(
    nome PRIMARY KEY,
    CONSTRAINT vida_jogador CHECK (vida >= 0),
    CONSTRAINT vida_jogador2 CHECK (vida <= vida_maxima),
    CONSTRAINT vida_maxima_jogador CHECK (vida_maxima > 0),
    CONSTRAINT mana_jogador CHECK (mana >= 0),
    CONSTRAINT mana2_jogador CHECK (mana <= mana_maxima),
    CONSTRAINT mana_maxima_jogador CHECK (mana_maxima > 0),
    CONSTRAINT defesa_jogador CHECK (defesa >= 0),
    CONSTRAINT dano_jogador CHECK (dano >= 0),
    CONSTRAINT nivel_jogador CHECK (nivel >= 1),
    CONSTRAINT experiencia_jogador CHECK (experiencia >= 0),
    CONSTRAINT dinheiro CHECK (dinheiro >= 0),
    CONSTRAINT capacidade_total CHECK (capacidade_total >= 0)
)NESTED TABLE fraquezas STORE AS fraquezas_nt;
/
-- Objetivos
CREATE OR REPLACE TYPE Objetivos_tp AS VARRAY(5) OF VARCHAR(250);
/
--Missão
CREATE OR REPLACE TYPE Missao_tp AS OBJECT (
    nome VARCHAR(50),
    experiencia INT,
    dinheiro INT,
    nivel_minimo INT,
    objetivos Objetivos_tp
);
/
CREATE TABLE Missao_tb OF Missao_tp (
    nome PRIMARY KEY,

    CONSTRAINT missao_experiencia CHECK (experiencia >= 0),
    CONSTRAINT missao_dinheiro CHECK (dinheiro >= 0),
    CONSTRAINT missao_nivel_minimo CHECK (nivel_minimo >= 1)
);
/
-- Item
CREATE OR REPLACE TYPE Item_tp AS OBJECT (
    nome VARCHAR(50),
    nivel_minimo INT,
    preco_compra INT,
    preco_venda INT,
    peso INT,
    raridade VARCHAR(50),

    FINAL MAP MEMBER FUNCTION raridade_map RETURN NUMBER,
    MEMBER FUNCTION jogador_num_total_itens(jogador IN Jogador_tp) RETURN REAL
) NOT INSTANTIABLE NOT FINAL;
/
CREATE OR REPLACE TYPE BODY Item_tp AS 
    MAP MEMBER FUNCTION raridade_map RETURN NUMBER IS
    BEGIN
        CASE raridade
            WHEN 'COMUM' THEN RETURN 1;
            WHEN 'RARO' THEN RETURN 2;
            WHEN 'EPICO' THEN RETURN 3;
            WHEN 'LENDARIO' THEN RETURN 4;
        END CASE;
    END;

    MEMBER FUNCTION jogador_num_total_itens(jogador IN Jogador_tp) RETURN REAL IS
        aux Jogador_tp;
    BEGIN
        SELECT VALUE(j) INTO aux FROM Jogador j WHERE j.nome = jogador.nome;
        RETURN aux.capacidade_total/peso;
    END;
END;
/
-- Arma
CREATE OR REPLACE TYPE Arma_tp UNDER Item_tp (
    dano INT
);
/
CREATE TABLE Arma_tb OF Arma_tp (
    nome PRIMARY KEY,

    CONSTRAINT arma_nivel_minimo CHECK (nivel_minimo >= 1),
    CONSTRAINT arma_preco_compra CHECK (preco_compra >= 0),
    CONSTRAINT arma_preco_venda CHECK (preco_venda >= 0),
    CONSTRAINT arma_peso CHECK (peso > 0),
    CONSTRAINT arma_raridade CHECK (raridade IN ('COMUM','RARO','EPICO','LENDARIO')),
    CONSTRAINT arma_dano CHECK (dano >= 0)
);
/

-- Armadura
CREATE OR REPLACE TYPE Armadura_tp UNDER Item_tp (
    defesa INT
);
/
CREATE TABLE Armadura_tb OF Armadura_tp (
    nome PRIMARY KEY,

    CONSTRAINT armadura_nivel_minimo CHECK (nivel_minimo >= 1),
    CONSTRAINT armadura_preco_compra CHECK (preco_compra >= 0),
    CONSTRAINT armadura_preco_venda CHECK (preco_venda >= 0),
    CONSTRAINT armadura_peso CHECK (peso > 0),
    CONSTRAINT armadura_raridade CHECK (raridade IN ('COMUM','RARO','EPICO','LENDARIO')),
    CONSTRAINT armadura_defesa CHECK (defesa >= 0)
);
/

-- Consumível
CREATE OR REPLACE TYPE Consumivel_tp UNDER Item_tp (
    efeito VARCHAR(250)
);
/
CREATE TABLE Consumivel_tb OF Consumivel_tp (
    nome PRIMARY KEY,

    CONSTRAINT consumivel_nivel_minimo CHECK (nivel_minimo >= 1),
    CONSTRAINT consumivel_preco_compra CHECK (preco_compra >= 0),
    CONSTRAINT consumivel_preco_venda CHECK (preco_venda >= 0),
    CONSTRAINT consumivel_peso CHECK (peso > 0),
    CONSTRAINT consumivel_raridade CHECK (raridade IN ('COMUM','RARO','EPICO','LENDARIO'))
);
/

--Santuário
CREATE OR REPLACE TYPE Santuario_tp AS OBJECT(
    nome_santuario VARCHAR(50),
    efeito VARCHAR(50),
    MAP MEMBER FUNCTION get_nome_santuario_length RETURN INT
);
/

CREATE OR REPLACE TYPE BODY Santuario_tp AS
    MAP MEMBER FUNCTION get_nome_santuario_length RETURN INT IS
    BEGIN
        RETURN LENGTH(nome_santuario);
    END get_nome_santuario_length;
END;
/
CREATE OR REPLACE TYPE Santuarios_tp AS TABLE OF Santuario_tp;
/
--Locais
CREATE OR REPLACE TYPE Locais_tp AS OBJECT(
    nome VARCHAR(50),
    nivel_recomendado INT,
    continente VARCHAR(50),
    bioma VARCHAR(50),
    clima VARCHAR(50),
    santuarios Santuarios_tp
);
/
CREATE TABLE Locais OF Locais_tp(
    nome PRIMARY KEY,
    CONSTRAINT nivel_recomendado CHECK (nivel_recomendado >= 1)
)NESTED TABLE santuarios STORE AS santuarios_nt;
/
-- Habilidade
CREATE OR REPLACE TYPE Habilidade_tp AS OBJECT (
	nome VARCHAR(50),
  	descricao VARCHAR(250) 
);
/
CREATE TABLE Habilidade_tb OF Habilidade_tp (
	nome PRIMARY KEY 
);
/

--Quest
CREATE OR REPLACE TYPE Quest_tp AS OBJECT(
    local_missao REF Locais_tp,
    jogador REF Jogador_tp,
    missao REF Missao_tp,
    status VARCHAR(12)
);
/
CREATE TABLE Quest OF Quest_tp(
    missao WITH ROWID REFERENCES Missao_tb,
    jogador WITH ROWID REFERENCES Jogador,
    local_missao WITH ROWID REFERENCES Locais
);
/

-- Leque de habilidades
CREATE OR REPLACE TYPE Leque_habilidade_tp AS OBJECT (
	habilidade REF Habilidade_tp,
    jogador REF Jogador_tp,
    nivel INT,
    bonus_temporario INT,
    bonus_especializacao INT,
    bonus_classe INT
);
/
CREATE TABLE Leque_habilidade_tb OF Leque_habilidade_tp (
    habilidade WITH ROWID REFERENCES Habilidade_tb,
    jogador WITH ROWID REFERENCES Jogador,

    CONSTRAINT leque_habilidade_nivel CHECK (nivel >= 1),
    CONSTRAINT leque_habilidade_bonus_especializacao CHECK (bonus_especializacao >= 0),
    CONSTRAINT leque_habilidade_bonus_classe CHECK (bonus_classe >= 0)
);
/

-- Leque de ataques
CREATE OR REPLACE TYPE Leque_ataque_tp AS OBJECT (
		ataque REF Ataque_especial_tp,
    jogador REF Jogador_tp,
    nivel INT
);
/
CREATE TABLE Leque_ataque_tb OF Leque_ataque_tp (
	ataque WITH ROWID REFERENCES Ataque_especial_tb,
    jogador WITH ROWID REFERENCES Jogador,

    CONSTRAINT leque_ataque_nivel CHECK (nivel >= 1)
);
/

-- Transação
CREATE OR REPLACE TYPE Transacao_tp AS OBJECT (
    comerciante REF Comerciante_tp,
    jogador REF Jogador_tp,
    tipo VARCHAR(1),
    item REF Item_tp,
    quantidade INT,
    data_hora TIMESTAMP,
    ORDER MEMBER FUNCTION compare_quantidade(t Transacao_tp) RETURN INT
); 
/
CREATE OR REPLACE TYPE BODY Transacao_tp AS
    ORDER MEMBER FUNCTION compare_quantidade(t Transacao_tp) RETURN INT IS
    BEGIN
        IF quantidade > t.quantidade THEN
            RETURN 1;
        ELSIF quantidade = t.quantidade THEN
            RETURN 0;
        ELSE
            RETURN -1;
        END IF;
    END compare_quantidade;
END;
/
CREATE TABLE Transacao_tb OF Transacao_tp (
    comerciante WITH ROWID REFERENCES Comerciante_tb,
    jogador WITH ROWID REFERENCES Jogador,
    
    CONSTRAINT transacao_tipo CHECK (tipo IN ('C', 'V')),
    CONSTRAINT transacao_quantidade CHECK (quantidade > 0)
);
/

-- Recompensa
CREATE OR REPLACE TYPE recompensa_tp AS OBJECT(
    quest REF Quest_tp,
    consumivel REF Consumivel_tp,
    arma REF Arma_tp,
    armadura REF Armadura_tp
);
/
CREATE TABLE Recompensa OF recompensa_tp(
    quest SCOPE IS Quest,
    consumivel SCOPE IS Consumivel_tb,
    arma SCOPE IS Arma_tb,
    armadura SCOPE IS Armadura_tb
);
/
    
-- Estoque
CREATE OR REPLACE TYPE Estoque_tp AS OBJECT (
	item REF Item_tp,
  comerciante REF Comerciante_tp, 
	quantidade INT
);
/
CREATE TABLE Estoque_tb OF Estoque_tp (
    comerciante WITH ROWID REFERENCES Comerciante_tb,
    CONSTRAINT estoque_quantidade CHECK (quantidade > 0)
);
/

-- Inventário
CREATE OR REPLACE TYPE Inventario_tp AS OBJECT (
	item REF Item_tp,
  jogador REF Jogador_tp,
    quantidade INT
);
/
CREATE TABLE Inventario_tb OF Inventario_tp (
    jogador WITH ROWID REFERENCES Jogador,
    CONSTRAINT inventario_quantidade CHECK (quantidade > 0)
    
);
/

-- Batalha
CREATE OR REPLACE TYPE Batalha_tp AS OBJECT (
	atacante REF Personagem_tp,
    atacado REF Personagem_tp,
    dano INT,
    data_hora TIMESTAMP
);
/
CREATE TABLE Batalha_tb OF Batalha_tp (
    CONSTRAINT batalha_dano CHECK (dano >= 0)
);
/

-- Loot
CREATE OR REPLACE TYPE Loot_tp AS OBJECT (
	atacante REF Personagem_tp,
    atacado REF Personagem_tp,
    item REF Item_tp,
    data_hora TIMESTAMP
);
/
CREATE TABLE Loot_tb OF Loot_tp;
/
