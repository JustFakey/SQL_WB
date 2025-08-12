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
    -- wir geben eine ID an und zählen diese hoch im ersten schritt mit Primary Key
    k_id INT AUTO_INCREMENT PRIMARY KEY,
    k_name VARCHAR(100) NOT NULL DEFAULT 'TBA',
    k_age TINYINT NOT NULL DEFAULT '-1',
    k_mail VARCHAR(100) UNIQUE DEFAULT 'TBA',
    k_pw VARCHAR(100) NOT NULL DEFAULT 'TBA'
);


-- Tabellen anzeigen

SHOW TABLES;

-- Struktur anzeigen

DESCRIBE kunde;

-- Datensätze / Zeilen füllen, PW muss immer mit SHA2 - gehasht werden

INSERT INTO kunde(k_name,k_age,k_mail,k_pw) VALUES('Meier', 28, 'meier@web.de',SHA2('meiers123',256));
INSERT INTO kunde(k_name,k_age,k_mail,k_pw) VALUES('Leizner', 61, 'Leizner@web.de',SHA2('leizi354',256));
INSERT INTO kunde(k_name,k_age,k_mail,k_pw) VALUES('LI', 26, 'Li@web.de',SHA2('lilili',256));
INSERT INTO kunde(k_name,k_age,k_mail,k_pw) VALUES('LI', 40,'Li2@web.de',SHA2('lilalunurdermannimmondschautzu',256));
INSERT INTO kunde() VALUES();


-- Tabellendaten anzeigen lassen
SELECT * FROM kunde;