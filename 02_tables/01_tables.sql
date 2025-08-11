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
    k_name VARCHAR(45),
    k_age TINYINT
);

SHOW TABLES;

-- Struktur anzeigen

DESCRIBE kunde;