SELECT DISTINCT Utilisateurs.*
FROM Utilisateurs
JOIN Reservations ON Utilisateurs.NumeroEtudiant = Reservations.NumeroEtudiant;


SELECT Materiel.*
FROM Materiel
LEFT JOIN Reservations ON Materiel.IdMatériel = Reservations.IdMatériel
WHERE Reservations.IdMatériel IS NULL;


SELECT Materiel.*, COUNT(*) as NombreEmprunts
FROM Materiel
JOIN Reservations ON Materiel.IdMatériel = Reservations.IdMatériel
GROUP BY Materiel.IdMatériel
HAVING COUNT(*) > 3;


SELECT Utilisateurs.*, COUNT(*) as NombreEmprunts
FROM Utilisateurs
JOIN Reservations ON Utilisateurs.NumeroEtudiant = Reservations.NumeroEtudiant
GROUP BY Utilisateurs.NumeroEtudiant;