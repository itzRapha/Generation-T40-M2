CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_aluno(
  id_aluno INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  Série VARCHAR(255),
  classe INT,
  NomeResponsavel VARCHAR(255),
  Notas FLOAT NOT NULL,
  primary key (id_aluno)
);

INSERT INTO tb_aluno (nome,Série,classe,NomeResponsavel,Notas)
VALUES ("Augusto Lacerda Ferreira", "Fundamental 1","2", "Juliana Lacerda Ferreira" ,6.8);

INSERT INTO tb_aluno (nome,Série,classe,NomeResponsavel,Notas)
VALUES ("João Gomez", "Fundamental 2","6", "Luan Gomez" ,7.8);

INSERT INTO tb_aluno (nome,Série,classe,NomeResponsavel,Notas)
VALUES ("Flavia Santana Ferraz", "Ensino Médio","1", "Gustavo Santana Ferraz" ,8.8);

INSERT INTO tb_aluno (nome,Série,classe,NomeResponsavel,Notas)
VALUES ("Julio Santana Ferraz", "Ensino Médio","2", "Gustavo Santana Ferraz" ,5.5);

INSERT INTO tb_aluno (nome,Série,classe,NomeResponsavel,Notas)
VALUES ("Alice Pereira", "Fundamental 1","4", "Amanda Pereira" ,6.5);

INSERT INTO tb_aluno (nome,Série,classe,NomeResponsavel,Notas)
VALUES ("Raphael Henrique dos Santos", "Fundamental 2","8", "Daniela dos Santos" ,9.3);

INSERT INTO tb_aluno (nome,Série,classe,NomeResponsavel,Notas)
VALUES ("Maria Luana da Silva", "Fundamental 1","3", "Moacir da Silva" ,3.7);

INSERT INTO tb_aluno (nome,Série,classe,NomeResponsavel,Notas)
VALUES ("Gabriela de Albuquerque Machado", "Fundamental 2","6", "Felipe Albuquerque Machado" ,4.2);

select * from db_escola.tb_aluno
   where Notas< 7;
select * from db_escola.tb_aluno
   where Notas> 7;
   
UPDATE tb_aluno SET classe = "9" WHERE id_aluno = 6;

select * from tb_aluno;