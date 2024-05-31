
-- Création de la table dispo.
CREATE TABLE Disponibilite(
    id_disponibilite INT AUTO_INCREMENT,
    id_materiel INT,
    date_debut DATE,
    date_fin DATE,
    PRIMARY KEY(id_disponibilite),
    FOREIGN KEY(id_materiel) REFERENCES Materiel(IdMatériel)
);

-- Modifications de la table reservation et modification des contraintes
ALTER TABLE
    Reservations
ADD
    COLUMN id_disponibilite INT,
ADD
    CONSTRAINT fk_disponibilite FOREIGN KEY (id_disponibilite) REFERENCES Disponibilite(id_disponibilite);


-- Vérification de disponibilité avant une réservation
DELIMITER //
CREATE TRIGGER before_reservation_insert
BEFORE INSERT ON Reservations
FOR EACH ROW
BEGIN
    DECLARE is_available INT;
    SELECT COUNT(*) INTO is_available
    FROM Disponibilite
    WHERE id_materiel = NEW.IdMatériel
    AND NEW.DateDebut BETWEEN date_debut AND date_fin
    AND NEW.DateFin BETWEEN date_debut AND date_fin;
    
    IF is_available = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Le matériel n''est pas disponible pour cette période.';
    END IF;
END
//

-- Vérification de disponibilité avant la création d'une réservation
CREATE TRIGGER before_reservation_update
BEFORE UPDATE ON Reservations
FOR EACH ROW
BEGIN
    DECLARE is_available INT;
    SELECT COUNT(*) INTO is_available
    FROM Disponibilite
    WHERE id_materiel = NEW.IdMatériel
    AND NEW.DateDebut BETWEEN date_debut AND date_fin
    AND NEW.DateFin BETWEEN date_debut AND date_fin;
    
    IF is_available = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Le matériel n''est pas disponible pour cette période.';
    END IF;
END
//
DELIMITER;

-- Différents tests
INSERT INTO
  disponibilite (
    id_disponibilite,
    id_materiel,
    date_debut,
    date_fin
  )
VALUES
  (1, 1, '2023-12-01', '2024-05-10'),
  (2, 2, '2024-01-01', '2024-05-16');

INSERT INTO
Reservations (
    DateDebut,
    DateFin,
    NombreArticles,
    NumeroEtudiant,
    IdMatériel
)
VALUES
    ('20240204', '20240206', 1, 123456, 1);

INSERT INTO
Reservations (
    DateDebut,
    DateFin,
    NombreArticles,
    NumeroEtudiant,
    IdMatériel
)
VALUES
    ('20240204', '20240206', 2, 123456, 6);