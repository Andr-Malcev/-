/ *6 Задание */

CREATE SEQUENCE seq_messure
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_material
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_store
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_caterer
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_inprice
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_deliver
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_surplus
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_supply
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_section
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_employer
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_group
  START WITH 1
  INCREMENT BY 1;

/ *7 Задание */

INSERT INTO t_messure (id_messure, name)
  VALUES (seq_messure.NEXTVAL, 'ШТ');
INSERT INTO t_messure (id_messure, name)
  VALUES (seq_messure.NEXTVAL, 'М');
INSERT INTO t_messure (id_messure, name)
  VALUES (seq_messure.NEXTVAL, 'КГ');
INSERT INTO t_messure (id_messure, name)
  VALUES (seq_messure.NEXTVAL, 'Л');
INSERT INTO t_messure (id_messure, name)
  VALUES (seq_messure.NEXTVAL, 'Т');
-----------------------------------------------
INSERT INTO t_group (id_group, name)
  VALUES (seq_group.NEXTVAL, 'Гр 1');
INSERT INTO t_group (id_group, name)
  VALUES (seq_group.NEXTVAL, 'Гр 2');
INSERT INTO t_group (id_group, name)
  VALUES (seq_group.NEXTVAL, 'Гр 3');
INSERT INTO t_group (id_group, name)
  VALUES (seq_group.NEXTVAL, 'Гр 4');
INSERT INTO t_group (id_group, name)
  VALUES (seq_group.NEXTVAL, 'Гр 5');
-----------------------------------------------
INSERT INTO t_material (id_material, name, id_messure, id_group)
  VALUES (seq_material.NEXTVAL, 'Материал 1', 1, 1);
INSERT INTO t_material (id_material, name, id_messure, id_group)
  VALUES (seq_material.NEXTVAL, 'Материал 2', 2, 2);
INSERT INTO t_material (id_material, name, id_messure, id_group)
  VALUES (seq_material.NEXTVAL, 'Материал 3', 3, 3);
INSERT INTO t_material (id_material, name, id_messure, id_group)
  VALUES (seq_material.NEXTVAL, 'Материал 4', 4, 4);
INSERT INTO t_material (id_material, name, id_messure, id_group)
  VALUES (seq_material.NEXTVAL, 'Материал 5', 5, 5);
-----------------------------------------------
INSERT INTO t_store (id_store, name)
  VALUES (seq_store.NEXTVAL, 'Склад 1');
INSERT INTO t_store (id_store, name)
  VALUES (seq_store.NEXTVAL, 'Склад 2');
INSERT INTO t_store (id_store, name)
  VALUES (seq_store.NEXTVAL, 'Склад 3');
INSERT INTO t_store (id_store, name)
  VALUES (seq_store.NEXTVAL, 'Склад 4');
INSERT INTO t_store (id_store, name)
  VALUES (seq_store.NEXTVAL, 'Склад 5');
-----------------------------------------------
INSERT INTO t_caterer (id_caterer, name, legal_address, actual_address, phone, fax, email)
  VALUES (seq_caterer.NEXTVAL, 'Поставщик 1', 'Город, Улица, Дом, Квартира', 'Город, Улица, Дом, Квартира', 89194653176, 70953333333, 'pop1@gmail.com');
INSERT INTO t_caterer (id_caterer, name, legal_address, actual_address, phone, fax, email)
  VALUES (seq_caterer.NEXTVAL, 'Поставщик 2', 'Город, Улица, Дом, Квартира', 'Город, Улица, Дом, Квартира', 89194653177, 70953333334, 'pop2@gmail.com');
INSERT INTO t_caterer (id_caterer, name, legal_address, actual_address, phone, fax, email)
  VALUES (seq_caterer.NEXTVAL, 'Поставщик 3', 'Город, Улица, Дом, Квартира', 'Город, Улица, Дом, Квартира', 89194653178, 70953333335, 'pop3@gmail.com');
INSERT INTO t_caterer (id_caterer, name, legal_address, actual_address, phone, fax, email)
  VALUES (seq_caterer.NEXTVAL, 'Поставщик 4', 'Город, Улица, Дом, Квартира', 'Город, Улица, Дом, Квартира', 89194653179, 70953333336, 'pop4@gmail.com');
INSERT INTO t_caterer (id_caterer, name, legal_address, actual_address, phone, fax, email)
  VALUES (seq_caterer.NEXTVAL, 'Поставщик 5', 'Город, Улица, Дом, Квартира', 'Город, Улица, Дом, Квартира', 89194653170, 70953333337, 'pop5@gmail.com');
-----------------------------------------------
INSERT INTO t_inprice (id_material, price_date, price)
  VALUES (seq_inprice.NEXTVAL, '31.12.2000', 111);
INSERT INTO t_inprice (id_material, price_date, price)
  VALUES (seq_inprice.NEXTVAL, '13.01.2017', 222);
INSERT INTO t_inprice (id_material, price_date, price)
  VALUES (seq_inprice.NEXTVAL, '13.02.2018', 333);
INSERT INTO t_inprice (id_material, price_date, price)
  VALUES (seq_inprice.NEXTVAL, '13.03.2019', 444);
INSERT INTO t_inprice (id_material, price_date, price)
  VALUES (seq_inprice.NEXTVAL, '31.04.2020', 555);
-----------------------------------------------
INSERT INTO t_employer (id_employer, surname, name, father_name)
  VALUES (seq_employer.NEXTVAL,'Фамилия', 'Имя', 'Отчество');
INSERT INTO t_employer (id_employer, price_date, price)
  VALUES (seq_employer.NEXTVAL, 'Фамилия', 'Имя', 'Отчество');
INSERT INTO t_employer (id_employer, price_date, price)
  VALUES (seq_employer.NEXTVAL, 'Фамилия', 'Имя', 'Отчество');
INSERT INTO t_employer (id_employer, price_date, price)
  VALUES (seq_employer.NEXTVAL, 'Фамилия', 'Имя', 'Отчество');
INSERT INTO t_employer (id_employer, price_date, price)
  VALUES (seq_employer.NEXTVAL, 'Фамилия', 'Имя', 'Отчество');
-----------------------------------------------
INSERT INTO t_section (id_section, name, id_employer)
  VALUES (seq_section.NEXTVAL,'Цех 1', 1);
INSERT INTO t_section (id_section, price_date, price)
  VALUES (seq_section.NEXTVAL, 'Цех 2', 2);
INSERT INTO t_section (id_section, price_date, price)
  VALUES (seq_section.NEXTVAL, 'Цех 3', 3);
INSERT INTO t_section (id_section, price_date, price)
  VALUES (seq_section.NEXTVAL, 'Цех 4', 4);
INSERT INTO t_section (id_section, price_date, price)
  VALUES (seq_section.NEXTVAL, 'Цех 5', 5);
-----------------------------------------------
INSERT INTO t_surplus (id_material, id_store, volume)
  VALUES (seq_surplus.NEXTVAL, 1, 1, 5);
INSERT INTO t_surplus (id_material, id_store, volume)
  VALUES (seq_surplus.NEXTVAL, 2, 2, 6);
INSERT INTO t_surplus (id_material, id_store, volume)
  VALUES (seq_surplus.NEXTVAL, 3, 3, 7);
INSERT INTO t_surplus (id_material, id_store, volume)
  VALUES (seq_surplus.NEXTVAL, 3, 3, 8);
INSERT INTO t_surplus (id_material, id_store, volume)
  VALUES (seq_surplus.NEXTVAL, 3, 3, 9);
-----------------------------------------------
INSERT INTO t_supply (id_supply, id_caterer, id_material, id_store, supply_date, volume)
  VALUES (seq_supply.NEXTVAL, 1, 1, 1, SYSDATE, 10);
INSERT INTO t_supply (id_supply, id_caterer, id_material, id_store, supply_date, volume)
  VALUES (seq_supply.NEXTVAL, 2, 2, 2, SYSDATE, 11);
INSERT INTO t_supply (id_supply, id_caterer, id_material, id_store, supply_date, volume)
  VALUES (seq_supply.NEXTVAL, 3, 3, 3, SYSDATE, 12);
INSERT INTO t_supply (id_supply, id_caterer, id_material, id_store, supply_date, volume)
  VALUES (seq_supply.NEXTVAL, 4, 4, 4, SYSDATE, 13);
INSERT INTO t_supply (id_supply, id_caterer, id_material, id_store, supply_date, volume)
  VALUES (seq_supply.NEXTVAL, 5, 5, 5, SYSDATE, 14);
-----------------------------------------------
INSERT INTO t_deliver (id_deliver, id_section, id_material, id_store, deliver_data)
  VALUES (seq_deliver.NEXTVAL, 1, 1, 1, SYSDATE);
INSERT INTO t_deliver (id_deliver, id_section, id_material, id_store, deliver_data)
  VALUES (seq_deliver.NEXTVAL, 2, 2, 2, SYSDATE);
INSERT INTO t_deliver (id_deliver, id_section, id_material, id_store, deliver_data)
  VALUES (seq_deliver.NEXTVAL, 3, 3, 3, SYSDATE);
INSERT INTO t_deliver (id_deliver, id_section, id_material, id_store, deliver_data)
  VALUES (seq_deliver.NEXTVAL, 4, 4, 4, SYSDATE);
INSERT INTO t_deliver (id_deliver, id_section, id_material, id_store, deliver_data)
  VALUES (seq_deliver.NEXTVAL, 5, 5, 5, SYSDATE);

/ *8 Задание */

DELETE FROM t_inprice 
  WHERE price_date < '31.12.2000';

/ *9 Задание */

ALTER TABLE t_material
  DROP CONSTRAINT fk_material_messure;
ALTER TABLE t_material 
  ADD CONSTRAINT fk_material_messure
    FOREIGN KEY (id_messure)
      REFERENCES t_messure(id_messure) ON DELETE SET NULL;
ALTER TABLE t_material
  MODIFY (id_messure INT NULL);
DELETE FROM t_messure
  WHERE NAME LIKE '-';

/ *10 Задание */

UPDATE t_surplus
  SET VOLUME = 0
    WHERE id_store LIKE 1;

/ *12 Задание */

UPDATE t_caterer
  SET phone = 89094567486
    WHERE NAME LIKE 'Поставщик 1';

/ *13 Задание */

UPDATE t_inprice
  SET price = 0.85 * price
    WHERE price_date LIKE '%2017%'

