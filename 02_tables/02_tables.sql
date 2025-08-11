\! cls

-- DB anlegen

SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS test;

SHOW DATABASES;

USE test;

SHOW TABLES;

-- Tabelle löschen falls vorhanden
-- Nur bei Tests/entwicklung
DROP TABLE IF EXISTS kunde;
CREATE TABLE IF NOT EXISTS kunde
(   
    -- wir geben eine ID an und zählen diese hoch im ersten schritt
    k_id INT AUTO_INCREMENT PRIMARY KEY,
    k_name VARCHAR(100),
    k_age TINYINT,
    k_mail VARCHAR(100) UNIQUE
);

SHOW TABLES;

-- Struktur anzeigen

DESCRIBE kunde;

-- Datensätze / Zeilen

INSERT INTO kunde(k_name,k_age,k_mail) VALUES("Meier", 28, "meier@web.de");
INSERT INTO kunde(k_name,k_age,k_mail) VALUES("Leizner", 61, "Leizner@web.de");
INSERT INTO kunde(k_name,k_age,k_mail) VALUES("LI", 26, "Li@web.de");
INSERT INTO kunde(k_name,k_age,k_mail) VALUES("LI", 40,"Li2@web.de");
-- Tabellendaten anzeigen lassen

SELECT * FROM kunde;