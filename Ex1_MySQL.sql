CREATE DATABASE db_RH;
USE db_RH;

CREATE TABLE tb_funcionaries(
  id_funcionaries INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  email VARCHAR(255),
  cargo VARCHAR(255),
  telefone INT NOT NULL,
  salario FLOAT NOT NULL,
  primary key (id_funcionaries)
);

INSERT INTO tb_funcionaries (nome, email, cargo, telefone,salario)
VALUES ("Joe Gomez", "joegomes@email.com","Auxiliar de Marketing", 94566789, 3500.00);

INSERT INTO tb_funcionaries (nome, email, cargo, telefone,salario)
VALUES ("Raiza Morais", "raizamorais@email.com","Diretora de Marketing", 91004567, 5500.00);

INSERT INTO tb_funcionaries (nome, email, cargo, telefone,salario)
VALUES ("Leticia Almeida", "leticiaalmeida@email.com","Programador Sênior", 78997896, 9500.00);

INSERT INTO tb_funcionaries (nome, email, cargo, telefone,salario)
VALUES ("Lucas Chagas", "lucaschagas@email.com","Auxiliar Administrativo", 4566789, 1500.00);

INSERT INTO tb_funcionaries (nome, email, cargo, telefone,salario)
VALUES ("Julia Pereira", "juliapereira@email.com","secretária", 56977880, 1500.00);

select * from db_RH.tb_funcionaries
   where salario< 2000;
select * from db_RH.tb_funcionaries
   where salario>2000;

UPDATE `db_RH`.`tb_funcionaries` SET `salario` = '9000' WHERE (`id_funcionaries` = '3');
UPDATE tb_funcionaries SET telefone = "100001" WHERE id_funcionaries = 1;


