CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
	id_classe INT NOT NULL AUTO_INCREMENT,
	classe VARCHAR(20) NOT NULL,
	arma VARCHAR(20) NOT NULL,
	regiao VARCHAR(20) NOT NULL,
	PRIMARY KEY(id_classe)
);

CREATE TABLE tb_personagem(
	email VARCHAR(30) PRIMARY KEY,
	nome VARCHAR(20)NOT NULL,
	experiencia INT NULL DEFAULT 0,
	vida INT NOT NULL,
	defesa INT NOT NULL,
	ataque INT NOT NULL,
    fk_classe INT DEFAULT 1,
    FOREIGN KEY(fk_classe) REFERENCES tb_classe(id_classe)
);


INSERT INTO tb_classe (classe,arma,regiao)
VALUES 
("Novato","Adaga Simples","São Paulo"),
("Mago","Cajado","Manaus"),
("Arqueiro","Arco e Flecha","Recife"),
("Pistoleiro","Pistola","Rio de Janeiro");


INSERT INTO tb_personagem(email,nome,experiencia,vida,defesa,ataque,fk_classe)
VALUES 
("bia@email.com","tempestade",900,700,1900,5000,2),
("carlos@email.com","lua",7500,100,1200,1000,4),
("carla@email.com","xinélo",1500,1100,2000,500,3),
("felipe@email.com","predador",1060,20,4006,3030,2),
("Clarissa@email.com","Estrela",100,40,1560,230,1);


SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa > 1000 AND defesa < 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "C%";

SELECT nome, classe FROM tb_personagem INNER JOIN tb_classe
ON tb_personagem.fk_classe = tb_classe.id_classe ;

SELECT * FROM tb_personagem INNER JOIN tb_classe
ON  tb_personagem .fK_classe = tb_classe.id_classe 
WHERE Tb_classe.classe = "Mago";


