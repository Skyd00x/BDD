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
VALUES ('2024-01-02', '2024-01-07', 2, 123456, 1);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('2024-02-04', '2024-02-06', 2, 123456, 6);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('2023-09-20', '2023-10-03', 1, 123457, 4);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('2023-11-30', '2023-12-01', 3, 123458, 3);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('2024-01-06', '2024-01-31', 1, 123459, 4);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('2024-01-04', '2024-02-17', 2, 123460, 5);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('2024-01-18', '2024-02-11', 2, 123462, 4);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('2024-03-13', '2024-03-21', 2, 123465, 4);

SELECT * FROM Reservations;