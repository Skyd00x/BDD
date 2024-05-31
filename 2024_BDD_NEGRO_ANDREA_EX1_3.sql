CREATE TABLE Reservations(
	IdReservations INT AUTO_INCREMENT,
	DateDebut VARCHAR(50),
	DateFin VARCHAR(50),
	NombreArticles INT,
	NumeroEtudiant INT NOT NULL,
    IdMatériel INT NOT NULL,
	PRIMARY KEY(IdReservations),
	FOREIGN KEY(NumeroEtudiant) REFERENCES Utilisateurs(NumeroEtudiant),
    FOREIGN KEY(IdMatériel) REFERENCES Materiel(IdMatériel)
);

INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('20240102', '20240107', 2, 123456, 1);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('20240204', '20240206', 2, 123456, 6);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('20230920', '20231003', 1, 123457, 4);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('20231130', '20231201', 3, 123458, 3);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('20240106', '20240131', 1, 123459, 4);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('20240104', '20240217', 2, 123460, 5);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('20240118', '20240211', 2, 123462, 4);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('20240313', '20240321', 2, 123465, 4);

SELECT * FROM Reservations;