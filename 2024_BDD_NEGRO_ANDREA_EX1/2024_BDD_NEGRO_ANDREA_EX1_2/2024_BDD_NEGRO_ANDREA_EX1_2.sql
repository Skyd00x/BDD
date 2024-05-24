CREATE TABLE Materiel(
	IdMatériel INT AUTO_INCREMENT,
	NomMateriel VARCHAR(50),
	Desription VARCHAR(255),
	Quantite INT,
	PRIMARY KEY(IdMatériel)
);

INSERT INTO Materiel (NomMateriel, Desription, Quantite)
VALUES ('Ordinateur', 'Ordinateur portable Dell', 5);
INSERT INTO Materiel (NomMateriel, Desription, Quantite)
VALUES ('Projecteur', 'Projecteur Epson', 3);
INSERT INTO Materiel (NomMateriel, Desription, Quantite)
VALUES ('Tableau blanc', 'Tableau blanc magnetique', 2);
INSERT INTO Materiel (NomMateriel, Desription, Quantite)
VALUES ('Imprimante', 'Imprimante laser HP', 17);
INSERT INTO Materiel (NomMateriel, Desription, Quantite)
VALUES ('Scanner', 'Scanner Canon', 2);
INSERT INTO Materiel (NomMateriel, Desription, Quantite)
VALUES ('Souris', 'Souris sans fil Logitech', 10);
INSERT INTO Materiel (NomMateriel, Desription, Quantite)
VALUES ('Clavier', 'Clavier mecanique', 8);
INSERT INTO Materiel (NomMateriel, Desription, Quantite)
VALUES ('Ecran', 'Ecran 24 pouces Samsung', 5);
INSERT INTO Materiel (NomMateriel, Desription, Quantite)
VALUES ('Casque', 'Casque audio Bose', 7);
INSERT INTO Materiel (NomMateriel, Desription, Quantite)
VALUES ('Webcam', 'Webcam HD Logitech', 6);

SELECT * FROM Materiel;