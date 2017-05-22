/* 48 Задание */

CREATE VIEW v_caterer
  (id_caterer, caterer_name, contact_surname, contact_name)
AS
  SELECT t_caterer.id_caterer, t_caterer.name, t_contact.surname, t_contact.name
    FROM t_caterer JOIN t_contact
    ON t_caterer.id_caterer = t_contact.id_caterer;

SELECT * FROM v_caterer;

INSERT INTO v_caterer
  (id_caterer, caterer_name, contact_surname, contact_name)
  VALUES (seq_caterer.NEXTVAL, 'Поставщик 4', 'Андрей', 'Мальцев');

DELETE FROM v_caterer
  WHERE id_caterer = 3

UPDATE v_caterer
  SET contact_name = 'Вася'
  WHERE id_caterer = 1;

/* 49 Задание */

CREATE OR REPLACE VIEW v_surplus
  (material, store, volume)
AS
  SELECT t_material.name, t_store.name, SUM(t_surplus.volume)
    FROM t_marerial JOIN T_SURPLUS
      ON t_marerial.id_material = t_surplus.ID_MATERIAL
    JOIN t_store 
      ON t_surplus.id_store = t_store.id_store
  GROUP BY t_material.name, t_store.name;

/* Задание 50 */

CREATE VIEW v_supply
  (caterer_name, material, messure, supply_date, price, volume, summ)
AS
  SELECT t_caterer.name, t_material, t_messure.name,
         t_supply.supply_date, t_inprice.price,
         t_supply.volume, t_supply.volume * t_inprice.price 
  FROM t_supply JOIN t_caterer 
    ON t_supply.id_caterer = t_caterer.id_caterer
  JOIN t_material
    ON t_supply.id_material = t_material.id_material 
  JOIN t_messure 
    ON t_material.id_messure = t_messure.id_messure 
  JOIN t_inprice
    ON t_material.id_material = t_inprice.id_material;
  
/* 51 Задание */

CREATE VIEW v_store
  (store, material, messure, summ)
AS
  SELECT t_store.name, t_material.name, t_messure.name, SUM(t_deliver.volume)
    FROM t_deliver JOIN t_store 
      ON t_deliver.id_store = t_store.id_store
    JOIN t_material
      ON t_deliver.id_material = t_material.id_material
    JOIN t_messure 
      ON t_material.id_messure = t_messure.id_messure
    WHERE deliver_date >= '01.01.2017' AND deliver_date <= '31.12.2017'
  GROUP BY t_stote.name, t_material.name, t_messure.name;

/* 52 Задание */

CREATE OR REPLACE VIEW v_supply_price 
  (id, material, volume, store, price, summ)
AS 
  SELECT t_supply.id_supply, t_material.name, t_supply.volume,
         t_store.name, t_supply.price,
         t_supply.volume * t_supply.price
  FROM t_supply JOIN t_material
    ON t_supply.id_material = t_material.id_material 
  JOIN t_store 
    ON t_supply.id_store = t_store.id_store 
  ORDER BY t_supply.id_supply;

CREATE OR REPLACE VIEW v_inprice 
  (id, material, volume, store, price, summ)
AS
  SELECT t_supply.id_supply, t_material.name, t_supply.volume,
         t_store.name, t_supply.price,
         t_supply.volume * t_supply.price
  FROM t_supply JOIN t_material
    ON t_supply.id_material = t_material.id_material
  JOIN t_inprice
    ON t_material.id_material = t_inprice.id_material 
  JOIN t_store 
    ON t_supply.id_store = t_store.id_store 
  ORDER BY t_supply.id_supply;

CREATE VIEW v_compare 
  (material, volume, store, supply_price, inprice, difference)
AS
  SELECT t_material.name, t_supply.volume, t_store.name,
         v_supply_price.summ, v_inprice.summ,
         ABS(v_supply_price.summ - v_inprice.summ)
   FROM t_supply JOIN t_material
    ON t_supply.id_material = t_material.id_material 
  JOIN t_store 
    ON t_supply.id_store = t_store.id_store
  JOIN v_supply_price 
    ON t_supply.id_supply = v_supply_price.id
  JOIN v_inprice 
    ON t_supply.id_supply = v_inprice.id;