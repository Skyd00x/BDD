SELECT Utilisateurs.*
FROM Utilisateurs 
JOIN Reservations ON Utilisateurs.NumeroEtudiant = Reservations.NumeroEtudiant;

SELECT Materiel.*
FROM Materiel 
JOIN Reservations ON Materiel.IdMatériel = Reservations.IdMatériel
JOIN Utilisateurs ON Reservations.NumeroEtudiant = Utilisateurs.NumeroEtudiant
WHERE Utilisateurs.NumeroEtudiant = 123456;