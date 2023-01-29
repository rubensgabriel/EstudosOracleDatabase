CREATE TABLE tbl_livro
(ID_LIVRO SMALLINT IDENTITY PRIMARY KEY,
Nome_Livro VARCHAR(70) NOT NULL,
ISBN13 CHAR(13),
ISBN10 CHAR(10),
ID_Categoria SMALLINT,
ID_Autor SMALLINT NOT NULL,
ID_Editora SMALLINT,
Data_Pub DATE NOT NULL,
Preco_livro DECIMAL(6,2) NOT NULL
)

SELECT * FROM tbl_livro

CREATE TABLE tbl_autores
(ID_Autor SMALLINT,
Nome_Autor VARCHAR(40) NOT NULL,
Sobrenome_Autor VARCHAR(60)
CONSTRAINT pk_ID_Autor PRIMARY KEY (ID_AUTOR)
)

CREATE TABLE tbl_categorias (
ID_Categoria SMALLINT PRIMARY KEY,
Categoria VARCHAR(30) NOT NULL
)

CREATE TABLE tbl_editoras (
ID_Editora SMALLINT PRIMARY KEY IDENTITY,
Nome_Editora VARCHAR(50) NOT NULL
)

USE Testes
CREATE TABLE tbl_teste_identidade
(ID_Teste SMALLINT PRIMARY KEY IDENTITY(10,2),
Valor SMALLINT NOT NULL
)

INSERT INTO tbl_teste_identidade (valor) VALUES (10);
INSERT INTO tbl_teste_identidade (valor) VALUES (20);
INSERT INTO tbl_teste_identidade (valor) VALUES (30);
INSERT INTO tbl_teste_identidade (valor) VALUES (40);

SELECT * FROM tbl_teste_identidade

SELECT IDENT_CURRENT('tbl_teste_identidade');

DBCC CHECKIDENT (tbl_teste_identidade, RESEED, 149);

INSERT INTO tbl_teste_identidade (valor) VALUES (70);