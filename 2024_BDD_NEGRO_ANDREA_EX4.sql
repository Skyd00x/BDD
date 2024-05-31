SELECT COUNT(*) AS TotalReservations
FROM Reservations
WHERE DateDebut >= '20240101' AND DateFin <= '20240501';

SELECT COUNT(DISTINCT NumeroEtudiant) AS NombreUtilisateurs
FROM Reservations
WHERE IdMatériel = 4;