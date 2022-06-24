-- criar um banco de dados
CREATE DATABASE db_generation_game_online;

-- indica o banco de dados a ser utilizado/manipulado
USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT auto_increment,
    nome_classes VARCHAR(255),
    PRIMARY KEY(id)
);

SELECT * FROM tb_classes; 

INSERT INTO tb_classes(nome_classes)VALUES("Naruto");
INSERT INTO tb_classes(nome_classes)VALUES("Goku");
INSERT INTO tb_classes(nome_classes)VALUES("Tsubasa");
INSERT INTO tb_classes(nome_classes)VALUES("Projeto Zeta");
INSERT INTO tb_classes(nome_classes)VALUES("Super Onze");



-- criação da tabela de funcionarios
CREATE TABLE tb_personagens(
	
	id BIGINT auto_increment,
    nome VARCHAR(255),
    anime VARCHAR(255),
    poder INT,
   classes_id bigint,
    
    PRIMARY KEY(id),
    FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id;

SELECT * FROM tb_personagens;
SELECT * FROM tb_personagens WHERE poder > 2000;
SELECT * FROM tb_personagens WHERE poder < 2000;

INSERT INTO tb_personagens(nome, poder, anime, classes_id)VALUES("Anime",20000,1,1);
INSERT INTO tb_personagens(nome, poder, anime, classes_id)VALUES("Anime",195000,2,2);
INSERT INTO tb_personagens(nome, poder, anime, classes_id)VALUES("Desenho",2200,3,3);
INSERT INTO tb_personagens(nome, poder, anime, classes_id)VALUES("Desenho",23000,4,4);
INSERT INTO tb_personagens(nome, poder, anime, classes_id)VALUES("Desenho",2300,5,5);
INSERT INTO tb_personagens(nome, poder, anime, classes_id)VALUES("Desenho",2250,6,6);
INSERT INTO tb_personagens(nome, poder, anime, classes_id)VALUES("Desenho",2330,7,7);
INSERT INTO tb_personagens(nome, poder, anime, classes_id)VALUES("Desenho",2660,8,8);


