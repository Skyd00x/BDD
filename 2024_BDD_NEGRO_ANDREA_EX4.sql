SELECT COUNT(*) AS TotalReservations
FROM Reservations
WHERE DateDebut >= '2024-01-01' AND DateFin <= '2024-05-01';

SELECT COUNT(DISTINCT NumeroEtudiant) AS NombreUtilisateurs
FROM Reservations;