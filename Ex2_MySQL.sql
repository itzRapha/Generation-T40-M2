CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
  id_produto INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  marca VARCHAR(255),
  categoria VARCHAR(255),
   valor double NOT NULL,
  armazem INT,
  primary key (id_produto)
);

INSERT INTO tb_produtos (nome, marca, categoria, valor,armazem)
VALUES ("Cadeira Gamer", "Husky","Escritório", 869.00,1);

INSERT INTO tb_produtos (nome, marca, categoria, valor,armazem)
VALUES ("Garrafa de agua", "swal","acessório", 20.00,2);

INSERT INTO tb_produtos (nome, marca, categoria, valor,armazem)
VALUES ("celular", "sansung","eletrônico", 1800.00,2);

INSERT INTO tb_produtos (nome, marca, categoria, valor,armazem)
VALUES ("celular", "apple","eletrônico", 4800.00,2);

INSERT INTO tb_produtos (nome, marca, categoria, valor,armazem)
VALUES ("teclado", "multilazer","eletrônico", 80.00,2);

INSERT INTO tb_produtos (nome, marca, categoria, valor,armazem)
VALUES ("almofada", "ventura","casa", 30.00,1);

INSERT INTO tb_produtos (nome, marca, categoria, valor,armazem)
VALUES ("camisa", "element","roupa", 40.00,1);

INSERT INTO tb_produtos (nome, marca, categoria, valor,armazem)
VALUES ("calça", "element","roupa", 90.00,1);

select * from db_ecommerce.tb_produtos
   where valor<500.00;
select * from db_ecommerce.tb_produtos
   where valor>500.00;
   
UPDATE tb_produtos SET armazem = "2" WHERE id_produto = 2;