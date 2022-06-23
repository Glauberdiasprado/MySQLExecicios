CREATE DATABASE db_ecommerce;
USE db_ecommerce;


CREATE TABLE tb_produtos(

	id BIGINT auto_increment,
    
produto VARCHAR(255),
    valor INT,
categoria VARCHAR(255),
   qestoque INT,
	
    
    PRIMARY KEY(id)
);



SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE salario > 500;
SELECT * FROM tb_produtos WHERE salario < 500;

UPDATE tb_produtos
SET valor = "Nike shox"
WHERE id = 3;

INSERT INTO tb_produtos(produto, valor, categoria, qestoque)VALUES("Nike shoxSupreme", 6000, "Tenis", 08);

