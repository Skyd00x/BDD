CREATE TABLE Utilisateurs(
	NumeroEtudiant INT, 
	Nom VARCHAR(50),
	Prenom VARCHAR(50),
	Email VARCHAR(75),
	PRIMARY KEY(NumeroEtudiant)
);

INSERT INTO Utilisateurs (NumeroEtudiant, Nom, Prenom, Email)
VALUES (123456, 'Dupont', 'Jean', 'jean.dupont@etu.univ-tours.fr');
INSERT INTO Utilisateurs (NumeroEtudiant, Nom, Prenom, Email)
VALUES (123457, 'Mino', 'Christophe', 'christophe.mino@etu.univ-tours.fr');
INSERT INTO Utilisateurs (NumeroEtudiant, Nom, Prenom, Email)
VALUES (123458, 'Chicho', 'Marc', 'marc.chicho@etu.univ-tours.fr');
INSERT INTO Utilisateurs (NumeroEtudiant, Nom, Prenom, Email)
VALUES (123459, 'Tuto', 'Fréd', 'fred.tuto@etu.univ-tours.fr');
INSERT INTO Utilisateurs (NumeroEtudiant, Nom, Prenom, Email)
VALUES (123460, 'Negro', 'Andrea', 'alex.bourcier@etu.univ-tours.fr');
INSERT INTO Utilisateurs (NumeroEtudiant, Nom, Prenom, Email)
VALUES (123461, 'Dupont', 'toto', 'toto.dupont@etu.univ-tours.fr');
INSERT INTO Utilisateurs (NumeroEtudiant, Nom, Prenom, Email)
VALUES (123462, 'Yvan', 'Yvan', 'yvan.yvan@etu.univ-tours.fr');
INSERT INTO Utilisateurs (NumeroEtudiant, Nom, Prenom, Email)
VALUES (123463, 'Rido', 'Charlotte', 'rido.charlotte@etu.univ-tours.fr');
INSERT INTO Utilisateurs (NumeroEtudiant, Nom, Prenom, Email)
VALUES (123464, 'Filo', 'Juliette', 'filo.juliette@etu.univ-tours.fr');
INSERT INTO Utilisateurs (NumeroEtudiant, Nom, Prenom, Email)
VALUES (123465, 'Lemoine', 'Lilou', 'lemoine.lilou@etu.univ-tours.fr');

SELECT * FROM Utilisateurs;