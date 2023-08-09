CREATE DATABASE CinemaReservation;
USE CinemaReservation;

-- Création des tables
CREATE TABLE Client (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(50),
    Prenom VARCHAR(50)
);

CREATE TABLE Film (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Titre VARCHAR(100),
    Duree INT
);

CREATE TABLE Cinema (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(50),
    Adresse VARCHAR(100)
);

CREATE TABLE Salle (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    CinemaID INT,
    Nom VARCHAR(50),
    Capacite INT,
    FOREIGN KEY (CinemaID) REFERENCES Cinema(ID)
);

CREATE TABLE Seance (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FilmID INT,
    SalleID INT,
    DateHeure DATETIME,
    FOREIGN KEY (FilmID) REFERENCES Film(ID),
    FOREIGN KEY (SalleID) REFERENCES Salle(ID)
);

CREATE TABLE Tarif (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Type VARCHAR(20),
    Montant DECIMAL(5, 2)
);

CREATE TABLE Reservation (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT,
    SeanceID INT,
    NombrePlaces INT,
    TarifID INT,
    FOREIGN KEY (ClientID) REFERENCES Client(ID),
    FOREIGN KEY (SeanceID) REFERENCES Seance(ID),
    FOREIGN KEY (TarifID) REFERENCES Tarif(ID)
);

CREATE TABLE Utilisateur (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NomUtilisateur VARCHAR(50),
    MotDePasse VARCHAR(50),
    Role VARCHAR(20),
    CinemaID INT,
    FOREIGN KEY (CinemaID) REFERENCES Cinema(ID)
);


-- Insertion de données factices
INSERT INTO Client (ID, Nom, Prenom)
VALUES (1, 'Dupont', 'Jean'),
       (2, 'Martin', 'Sophie');
       (3, 'Tervil', 'Ilan');
       (4, 'Dubois', 'Jean');

INSERT INTO Film (ID, Titre, Duree)
VALUES (1, 'Avengers: Endgame', 180),
       (2, 'Inception', 148);

INSERT INTO Cinema (ID, Nom, Adresse)
VALUES (1, 'Cinema Central', '123 Rue du Cinéma'),
       (2, 'Cinema Paradis', '456 Avenue des Films');

INSERT INTO Salle (ID, CinemaID, Nom, Capacite)
VALUES (1, 1, 'Salle A', 100),
       (2, 1, 'Salle B', 80),
       (3, 2, 'Salle 1', 120),
       (4, 2, 'Salle 2', 90);

INSERT INTO Seance (ID, FilmID, SalleID, DateHeure)
VALUES (1, 1, 1, '2023-08-10 18:00:00'),
       (2, 2, 2, '2023-08-11 15:30:00');

INSERT INTO Tarif (ID, Type, Montant)
VALUES (1, 'Plein tarif', 9.20),
       (2, 'Étudiant', 7.60),
       (3, 'Moins de 14 ans', 5.90);

INSERT INTO Utilisateur (ID, NomUtilisateur, MotDePasse, Role, CinemaID)
VALUES (1, 'admin_central', 'motdepasse', 'Admin', 1),
       (2, 'admin_paradis', '123456', 'Admin', 2);
       (3, 'user_paradis', 'azertyuiop', 'User', 2);
       (4, 'user_central', 'azertyuiop', 'User', 1);

INSERT INTO Reservation (ID, ClientID, SeanceID, NombrePlaces, TarifID)
VALUES (1, 1, 1, 3, 1),
       (2, 2, 2, 2, 2);


-- Se préparer à save la BDD
mysql> exit
where mysqldump
E:\laragon\bin\mysql\mysql-8.0.30-winx64\bin\mysqldump.exe

-- Save Database
mysqldump -u root cinemareservation > sauvegarde.sql

-- Select each tables for divide in files into folder.
mysqldump -u root cinemareservation > tables_cinema.sql cinema
mysqldump -u root cinemareservation > tables_client.sql client
mysqldump -u root cinemareservation > tables_film.sql film
mysqldump -u root cinemareservation > tables_salle.sql salle
mysqldump -u root cinemareservation > tables_seance.sql seance
mysqldump -u root cinemareservation > tables_tarif.sql tarif
mysqldump -u root cinemareservation > tables_reservation.sql reservation
mysqldump -u root cinemareservation > tables_utilisateur.sql utilisateur

-- Select each insert into of database
-- utiliser l'option --no-create-info pour exclure les définitions de table, et 
-- l'option --skip-triggers pour exclure les instructions relatives aux déclencheurs (triggers) :
mysqldump -u root cinemareservation --no-create-info --skip-triggers > insert_into.sql

-- Select each table of database
mysqldump -u root cinemareservation --no-data --skip-triggers > alter_tables.sql

