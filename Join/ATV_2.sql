CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT AUTO_INCREMENT PRIMARY KEY,
	tipo VARCHAR(20) NOT NULL,
	tamanho VARCHAR(20) NOT NULL,
    fatias INT
);

CREATE TABLE tb_pizza (	
	id_pizza INT NOT NULL AUTO_INCREMENT AUTO_INCREMENT PRIMARY KEY,
	nomePizza VARCHAR(20)NOT NULL,
	borda BOOLEAN,
	valor  DECIMAL(5,2),
    fk_categoria INT,
    FOREIGN KEY(fk_categoria) REFERENCES tb_categoria(id_categoria)
);


INSERT INTO tb_categoria(tipo,tamanho,fatias) VALUES
("Doce","Brotinho",4),
("Doce","Grande",10),
("Salgada","Brotinho",4),
("Salgada","Média",8),
("Salgada","Grande",10);

INSERT INTO tb_pizza(NomePizza,borda,Valor,fk_categoria) VALUES
("Vegetariana",TRUE,36.90,4),
("Baina",FALSE,40.90,5),
("Calabresa",TRUE,30.90,3),
("Brigadeiro",TRUE,20.90,1),
("Chocolate Branco",FALSE,35.90,2),
("Muçarela",TRUE,35.90,5),
("Confete",FALSE,21.90,1),
("Portuguesa",TRUE,32.90,3);

SELECT * FROM Tb_pizza WHERE Valor > 45;

SELECT * FROM Tb_pizza WHERE Valor > 29 AND Valor<60;

SELECT * FROM Tb_pizza WHERE NomePizza LIKE "C%";

-- Fatias
SELECT * FROM Tb_pizza INNER JOIN Tb_categoria
ON Tb_pizza.fK_categoria = Tb_categoria.id_categoria 
WHERE Tb_categoria.fatias <10;

-- Salgadas
SELECT * FROM Tb_pizza INNER JOIN Tb_categoria
ON Tb_pizza.fK_categoria = Tb_categoria.iD_categoria 
WHERE Tb_categoria.iD_categoria = "Salgada";
