DECLARE
  inimigo Inimigo_tp;
BEGIN
  inimigo := Inimigo_tp('Goblin', 'Monstro', 100, 100, 50, 50, 10, 15, 50, 5);
  DBMS_OUTPUT.PUT_LINE('Vida do inimigo: ' || inimigo.vida);
  inimigo.tomar_dano(10);
  DBMS_OUTPUT.PUT_LINE('Vida do inimigo: ' || inimigo.vida);
END;
/
DECLARE
  inimigo1 Inimigo_tp := Inimigo_tp('Zumbi','Amaldiçoado',50,50,0,0,10,10,100,1);
  
  inimigo2 Inimigo_tp := Inimigo_tp('Goblin','Goblin',25,25,0,0,5,5,50,1);
  
  comp NUMBER;
BEGIN
  comp := inimigo1.order_nome(inimigo2);
  
  IF comp = 0 THEN
    DBMS_OUTPUT.PUT_LINE('Os nomes sao iguais!');
  ELSIF comp < 0 THEN
    DBMS_OUTPUT.PUT_LINE(inimigo1.nome || ' vem antes de ' || inimigo2.nome || ' na ordem alfabética.');
  ELSE
    DBMS_OUTPUT.PUT_LINE(inimigo2.nome || ' vem antes de ' || inimigo1.nome || ' na ordem alfabética.');
  END IF;
END;
/

DECLARE
    arma1 Arma_tp := Arma_tp('Espada de Ferro', 5, 100, 50, 10, 'COMUM', 10);
    arma2 Arma_tp := Arma_tp('Machado de Guerra', 10, 200, 100, 20, 'RARO', 15);
BEGIN
    DBMS_OUTPUT.PUT_LINE(arma1.nome || ' raridade: ' || arma1.raridade_map());
    DBMS_OUTPUT.PUT_LINE(arma2.nome || ' raridade: ' || arma2.raridade_map());
END;
/

DECLARE
  inimigo Inimigo_tp;
BEGIN
  inimigo := Inimigo_tp(
    nome => 'Goblin',
    raca => 'Goblin',
    vida => 50,
    vida_maxima => 50,
    mana => 0,
    mana_maxima => 0,
    defesa => 10,
    dano => 5,
    experiencia => 100,
    nivel => 5
  );
  DBMS_OUTPUT.PUT_LINE('Vida inicial do inimigo: ' || inimigo.vida);
  DBMS_OUTPUT.PUT_LINE('Dano inicial do inimigo: ' || inimigo.dano);

  inimigo.tomar_dano(70);

  DBMS_OUTPUT.PUT_LINE('Vida atual do inimigo: ' || inimigo.vida);
  DBMS_OUTPUT.PUT_LINE('Dano atual do inimigo: ' || inimigo.dano);
END;
/

SELECT VALUE(v).nome, VALUE(v).nivel, VALUE(v).experiencia FROM Inimigo v;
