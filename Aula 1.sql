CREATE TABLE Pai
(ID_Pai SMALLINT PRIMARY KEY,
Nome_Pai VARCHAR(50)
)

CREATE TABLE Filho
(ID_Filho SMALLINT IDENTITY PRIMARY KEY,
Nome_Filho VARCHAR(50),
ID_Pai SMALLINT,
CONSTRAINT fk_id_pai FOREIGN KEY(ID_Pai)
REFERENCES Pai(ID_Pai)
ON DELETE CASCADE
)

INSERT INTO Pai
VALUES (1,'Joao'), (2,'Mario'), (3,'Renato'), (4,'Emerson'),(5, 'André')

SELECT * FROM Pai;

INSERT INTO Filho (Nome_Filho, ID_Pai)
VALUES ('João',1), ('Mário',1), ('Renato',3), ('Emerson',4), ('André',3);

SELECT * FROM Filho;

SELECT Pai.ID_Pai, Pai.Nome_Pai, Filho.ID_Filho, Filho.Nome_Filho
FROM Filho
INNER JOIN Pai
ON Filho.ID_Pai = Pai.ID_Pai;

DELETE FROM Filho
WHERE Nome_Filho = 'Renato';

SELECT Nome_Pai, Nome_Filho
FROM Filho
INNER JOIN Pai
ON Filho.ID_Pai = Pai.ID_Pai;

DELETE FROM Pai
WHERE Nome_Pai = 'Renato';

DELETE FROM Pai

SELECT * FROM Pai

DROP TABLE FILHO

DROP TABLE PAI

CREATE TABLE Pai
(ID_Pai SMALLINT PRIMARY KEY,
Nome_Pai VARCHAR(50))

CREATE TABLE Filho (
 ID_Filho SMALLINT IDENTITY PRIMARY KEY,
 Nome_Filho VARCHAR(50),
 ID_Pai SMALLINT,
 CONSTRAINT fk_id_pai FOREIGN KEY (ID_Pai)
 REFERENCES Pai(ID_Pai)
 ON DELETE SET NULL
)


INSERT INTO Pai
VALUES(1,'João'),(2,'Mário'),(3,'Renato'),(4,'Emerson'),(5,'André')

SELECT * FROM PAI

INSERT INTO Filho
VALUES
('Joãozin',1),('Marinho',1),('Renatin',3),('Eminho',4),('André',3);

DELETE FROM Pai
WHERE Nome_Pai = 'Renato';

DROP TABLE FILHO

DROP TABLE PAI;

SELECT * FROM PAI;

CREATE TABLE Pai
(ID_Pai SMALLINT PRIMARY KEY,
Nome_Pai VARCHAR(50));

CREATE TABLE Filho (
 ID_Filho SMALLINT IDENTITY PRIMARY KEY,
 Nome_Filho VARCHAR(50),
 ID_Pai SMALLINT,
 CONSTRAINT fk_id_pai FOREIGN KEY (ID_Pai)
 REFERENCES Pai(ID_Pai)
 ON DELETE NO ACTION
);

SELECT * FROM PAI

USE Biblioteca

