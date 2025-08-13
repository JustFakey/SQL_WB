-- Hauptthema "SELECT" _02.Select
-- Select Befehle

-- Thema 1: Basic select

-- Alles Abfragen:
/*SELECT 
*
FROM 

test.contacts;*/

-- Nur eine gewisse spalte abfragen:
-- SELECT
-- k_id,  #jegliche Spalte, die gegeben ist, kann hier abgefragt werden
-- k_email,
-- k_city
-- FROM test.contacts
-- WHERE city = 'Berlin' #Hier wird gesagt, dass nur Kunden die Berlin angegeben haben als Stadt
-- WHERE city LIKE 'Fra%' #sucht nach Kunden, die in einer Stadt wohnen die mit "Fra" anfängt "%" ist hier ein platzhalter
-- ORDER BY name ASC (wird aufsteigend nach namen sortiert)
-- ORDER BY name DESC (wird absteigend nach namen sortiert)
-- AS = einen Alias für den genannten text erstellen (Ändert die Überschriften)

SELECT
name AS Name,
email,
city
FROM languages.contacts
WHERE city LIKE '%lin'
ORDER BY name DESC
;