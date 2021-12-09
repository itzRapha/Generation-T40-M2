CREATE DATABASE DB_rede_social_g3;
USE DB_rede_social_g3;

CREATE TABLE tb_usuario(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(15) NOT NULL
);

CREATE TABLE tb_tema(
	id INT NOT NULL  AUTO_INCREMENT PRIMARY KEY,
    curso VARCHAR(15),
    Pts_ensinar INT,
    Pts_aprender INT    
);

CREATE TABLE tb_postagem(
	id INT NOT NULL  AUTO_INCREMENT PRIMARY KEY,
	aprender VARCHAR(15),
    ensinar VARCHAR(15),
    didatica BOOLEAN,
    pontos_ex INT,
    fk_usuario INT,
    fk_tema INT,
    FOREIGN KEY(fk_usuario) REFERENCES tb_usuario(id),
	FOREIGN KEY(fk_tema) REFERENCES tb_tema(id)
);


