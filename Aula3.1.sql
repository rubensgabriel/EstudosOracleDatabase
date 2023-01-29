CREATE TABLE tbl_pessoas
(codigo SMALLINT IDENTITY PRIMARY KEY,
nome VARCHAR(30) not null,
nascimento DATE,
sexo CHAR(1),
peso DECIMAL(5,2),
altura DECIMAL(3,2),
nacionalidade VARCHAR(20) DEFAULT 'Brasil'
)

ALTER TABLE tbl_pessoas
ADD profissao VARCHAR(10)

ALTER TABLE tbl_pessoas
DROP COLUMN profissao

ALTER TABLE tbl_pessoas
ALTER COLUMN profissao VARCHAR(30)

USE Testes

INSERT INTO tbl_pessoas
(nome, profissao, nascimento, sexo, peso, altura, nacionalidade)
VALUES('Ana', 'Professor', '1985-02-01', 'F', '78,5', '1,80', 'Brasil')

SELECT * FROM tbl_pessoas

insert into tbl_pessoas
(nome, profissao, nascimento, sexo, peso, altura, nacionalidade)
values 
('Carla', 'Analista','1992-08-01', 'F', '55.8', '1.77', 'Brasil');

insert into tbl_pessoas
(nome, profissao, nascimento, sexo, peso, altura, nacionalidade)
values 
('Rodrigo', 'Professor','1977-07-28', 'M', '80.8', '1.80', default),
('Diego', 'Motorista','1960-10-10', 'M', '90.5', '1.90', 'Uruguai'),
('Anderson', 'Advogado','1965-09-10', 'F', '75.8', '1.75', 'Argentina');


INSERT INTO tbl_editoras (Nome_Editora) VALUES ('Prentice Hall');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('O´Reilly');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('Microsoft Press');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('Wiley');
INSERT INTO tbl_editoras (Nome_Editora) VALUES ('McGraw-Hill Education');

INSERT INTO tbl_autores
VALUES
(1, 'Daniel', 'Barret'),
(2, 'Gerald', 'Carter'),
(3, 'Mark', 'Sobell'),
(4, 'William', 'Stanek'),
(5, 'Richard', 'Blum'),
(6, 'Jostein', 'Gaarder'),
(7, 'Umberto', 'Eco'),
(8, 'Neil', 'De Grasse Tyson'),
(9, 'Stephen', 'Hawking'),
(10, 'Stephen', 'Jay Gould'),
(11, 'Charles', 'Darwin'),
(12, 'Alan', 'Turing'),
(13, 'Simon', 'Monk'),
(14, 'Paul', 'Scherz');

INSERT INTO tbl_categorias
VALUES
(1, 'Tecnologia'),
(2, 'História'),
(3, 'Literatura'),
(4, 'Astronomia'),
(5, 'Botânica');