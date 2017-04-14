﻿/* 1 Задание */

CREATE TABLE t_messure (
  id_messure INT NOT NULL,
  name NVARCHAR2(20) NOT NULL,
  CONSTRAINT pk_messure
    PRIMARY KEY (id_messure) 
);

  CREATE TABLE t_material (
    id_material INT NOT NULL,
    name NVARCHAR2(50) NOT NULL,
    id_messure INT NOT NULL,
    CONSTRAINT pk_material
      PRIMARY KEY (id_material),
    CONSTRAINT fk_material_messure
      FOREIGN KEY (id_messure) 
    REFERENCES t_messure(id_messure)
);

 CREATE TABLE t_inprice (
    id_material INT NOT NULL,
    price_date DATE NOT NULL,
    price NUMBER(10, 2) CHECK (price >= 0),
    CONSTRAINT fk_inprice_material
      FOREIGN KEY (id_material) 
    REFERENCES t_material (id_material) ON DELETE CASCADE 
);

CREATE TABLE t_employer (
  id_employer INT NOT NULL,
  surname NVARCHAR2(20) NOT NULL,
  name NVARCHAR2(20) NOT NULL,
  father_name NVARCHAR2(20) NOT NULL,
  CONSTRAINT pk_employer
    PRIMARY KEY (id_employer)
);

CREATE TABLE t_section (
  id_section INT NOT NULL,
  name NVARCHAR2(20) NOT NULL,
  id_employer INT NOT NULL,
  CONSTRAINT pk_section
    PRIMARY KEY (id_section),
  CONSTRAINT fk_section_employer
    FOREIGN KEY (id_employer)
  REFERENCES t_employer(id_employer) ON DELETE CASCADE
);

CREATE TABLE t_store (
  id_store INT NOT NULL,
  name NVARCHAR2(20) NOT NULL,
  CONSTRAINT pk_store
    PRIMARY KEY (id_store)
);

CREATE TABLE t_caterer (
 id_caterer INT NOT NULL,
 name NVARCHAR2(20) NOT NULL,
 address NVARCHAR2(20) NOT NULL,
 phone NUMBER(11) NOT NULL,
 fax NUMBER(11) NOT NULL,
 CONSTRAINT pk_caterer
  PRIMARY KEY (id_caterer)
);

CREATE TABLE t_supply (
  id_supply INT NOT NULL,
  id_caterer INT NOT NULL,
  id_material INT NOT NULL,
  id_store INT NOT NULL,
  supply_date DATE NOT NULL,
  volume INT NOT NULL,
  CONSTRAINT pk_supply
    PRIMARY KEY (id_supply),
  CONSTRAINT fk_supply_caterer
    FOREIGN KEY (id_caterer)
      REFERENCES t_caterer(id_caterer) ON DELETE CASCADE,
  CONSTRAINT fk_supply_material
    FOREIGN KEY (id_material)
      REFERENCES t_material(id_material) ON DELETE CASCADE,
  CONSTRAINT fk_supply_store
    FOREIGN KEY (id_store)
      REFERENCES t_store(id_store) ON DELETE CASCADE
);

CREATE TABLE t_surplus(
  id_material INT NOT NULL,
  id_store INT NOT NULL,
  volume INT NOT NULL,
  CONSTRAINT fk_surplus_material
    FOREIGN KEY (id_material)
      REFERENCES t_material(id_material) ON DELETE CASCADE,
  CONSTRAINT fk_surplus_store
    FOREIGN KEY (id_store) 
      REFERENCES t_store(id_store) ON DELETE CASCADE

);

CREATE TABLE t_deliver (
  id_deliver INT NOT NULL,
  id_section INT NOT NULL,
  id_material INT NOT NULL,
  id_store INT NOT NULL,
  deliver_data DATE NOT NULL,
    CONSTRAINT pk_deliver
      PRIMARY KEY (id_deliver),
    CONSTRAINT fk_deliver_section
      FOREIGN KEY (id_section)
        REFERENCES t_section(id_section) ON DELETE CASCADE,
    CONSTRAINT fk_deliver_material
      FOREIGN KEY (id_material)
        REFERENCES t_maretial(id_material) ON DELETE CASCADE,
    CONSTRAINT fk_deliver_store
      FOREIGN KEY  (id_store)
        REFERENCES t_store(id_store) ON DELETE CASCADE
);

/* 2 Задание */

ALTER TABLE t_caterer 
	DROP COLUMN address;
ALTER TABLE t_caterer
  ADD (legal_address NVARCHAR2(30) NOT NULL,
	  actual_address NVARCHAR2(30) NOT NULL,
	  email NVARCHAR2(20) NOT NULL
);

/* 3 Задание */

ALTER TABLE t_inprice
  ADD CONSTRAINT pk_inprice
	  PRIMARY KEY (id_material, price_date);

/* 4 Задание */

 CREATE TABLE t_group (
  id_group INT NOT NULL,
  name NVARCHAR2(30) NOT NULL,
  CONSTRAINT pk_group 
    PRIMARY KEY (id_group)
  );
ALTER TABLE T_MATERIAL
  ADD id_group INT
  ADD CONSTRAINT fk_material_group
    FOREIGN KEY (id_group) 
      REFERENCES t_group(id_group) ON DELETE SET NULL;

/* 5 Задание */

ALTER TABLE t_section
  MODIFY (NAME NVARCHAR2(30));
ALTER TABLE T_SUPPLY
  MODIFY (volume INT CHECK (volume >= 0));


 