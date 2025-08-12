-- Hauptthema "SELECT" _01.Select
\! cls;

-- DB wechseln

SHOW DATABASES;

USE test;

DROP TABLE IF EXISTS test.contacts;

CREATE TABLE test.contacts (
    k_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    k_name VARCHAR(100),
    k_adress VARCHAR(255),
    k_phone VARCHAR(20),
    k_email VARCHAR(100),
    k_age INT,
    k_state VARCHAR(50),
    k_city VARCHAR(100)
);

DESCRIBE test.contacts;


INSERT INTO test.contacts (k_name, k_adress, k_phone, k_email, k_age, k_state, k_city)
VALUES
('Sophia Müller', 'Musterstraße 1', '01234/56789', 'sophia.mueller@example.de', 25, 'Nordrhein-Westfalen', 'Köln'),
('Noah Schmidt', 'Hauptstraße 2', '0221/123456', 'noah.schmidt@example.de', 30, 'Nordrhein-Westfalen', 'Düsseldorf'),
('Emilia Weber', 'Bahnhofstraße 3', '030/987654', 'emilia.weber@example.de', 28, 'Berlin', 'Berlin'),
('Leon Klein', 'Schulstraße 4', '040/111111', 'leon.klein@example.de', 32, 'Hamburg', 'Hamburg'),
('Mia Fischer', 'Marktstraße 5', '0911/222222', 'mia.fischer@example.de', 26, 'Bayern', 'Nürnberg'),
('Matteo Braun', 'Friedrichstraße 6', '0711/333333', 'matteo.braun@example.de', 29, 'Baden-Württemberg', 'Stuttgart'),
('Hanna Meier', 'Königstraße 7', '0231/444444', 'hanna.meier@example.de', 27, 'Nordrhein-Westfalen', 'Dortmund'),
('Paul Becker', 'Bahnhofsplatz 8', '0611/555555', 'paul.becker@example.de', 31, 'Hessen', 'Frankfurt'),
('Ella Hoffmann', 'Rathausstraße 9', '0211/666666', 'ella.hoffmann@example.de', 24, 'Nordrhein-Westfalen', 'Düsseldorf'),
('Liam Schäfer', 'Schlossstraße 10', '089/777777', 'liam.schaefer@example.de', 33, 'Bayern', 'München'),
('Lina Schneider', 'Friedrich-Ebert-Straße 11', '0228/888888', 'lina.schneider@example.de', 25, 'Nordrhein-Westfalen', 'Bonn'),
('Elias Müller', 'Kurfürstenstraße 12', '030/999999', 'elias.mueller@example.de', 30, 'Berlin', 'Berlin'),
('Klara Fuchs', 'Hauptstraße 13', '0711/000000', 'klara.fuchs@example.de', 28, 'Baden-Württemberg', 'Stuttgart'),
('Louis Peters', 'Marktstraße 14', '040/111111', 'louis.peters@example.de', 32, 'Hamburg', 'Hamburg'),
('Ida Weber', 'Bahnhofstraße 15', '0911/222222', 'ida.weber@example.de', 26, 'Bayern', 'Nürnberg'),
('Finn Hansen', 'Friedrichstraße 16', '0711/333333', 'finn.hansen@example.de', 29, 'Baden-Württemberg', 'Stuttgart'),
('Mathilda Schmid', 'Königstraße 17', '0231/444444', 'mathilda.schmid@example.de', 27, 'Nordrhein-Westfalen', 'Dortmund'),
('Emil Schneider', 'Bahnhofsplatz 18', '0611/555555', 'emil.schneider@example.de', 31, 'Hessen', 'Frankfurt'),
('Emma Hoffmann', 'Rathausstraße 19', '0211/666666', 'emma.hoffmann@example.de', 24, 'Nordrhein-Westfalen', 'Düsseldorf'),
('Henry Schäfer', 'Schlossstraße 20', '089/777777', 'henry.schaefer@example.de', 33, 'Bayern', 'München'),
('Lia Fuchs', 'Friedrich-Ebert-Straße 21', '0228/888888', 'lia.fuchs@example.de', 25, 'Nordrhein-Westfalen', 'Bonn'),
('Oskar Müller', 'Kurfürstenstraße 22', '030/999999', 'oskar.mueller@example.de', 30, 'Berlin', 'Berlin'),
('Mila Peters', 'Hauptstraße 23', '0711/000000', 'mila.peters@example.de', 28, 'Baden-Württemberg', 'Stuttgart'),
('Daniel Hansen', 'Marktstraße 24', '040/111111', 'daniel.hansen@example.de', 32, 'Hamburg', 'Hamburg'),
('Frieda Weber', 'Bahnhofstraße 25', '0911/222222', 'frieda.weber@example.de', 26, 'Bayern', 'Nürnberg'),
('Sebastian Braun', 'Friedrichstraße 26', '0711/333333', 'sebastian.braun@example.de', 29, 'Baden-Württemberg', 'Stuttgart'),
('Julia Meier', 'Königstraße 27', '0231/444444', 'julia.meier@example.de', 27, 'Nordrhein-Westfalen', 'Dortmund'),
('Alexander Becker', 'Bahnhofsplatz 28', '0611/555555', 'alexander.becker@example.de', 31, 'Hessen', 'Frankfurt'),
('Sarah Hoffmann', 'Rathausstraße 29', '0211/666666', 'sarah.hoffmann@example.de', 24, 'Nordrhein-Westfalen', 'Düsseldorf'),
('Maximilian Schäfer', 'Schlossstraße 30', '089/777777', 'maximilian.schaefer@example.de', 33, 'Bayern', 'München'),
('Lisa Schneider', 'Friedrich-Ebert-Straße 31', '0228/888888', 'lisa.schneider@example.de', 25, 'Nordrhein-Westfalen', 'Bonn'),
('Lukas Müller', 'Kurfürstenstraße 32', '030/999999', 'lukas.mueller@example.de', 30, 'Berlin', 'Berlin'),
('Katharina Fuchs', 'Hauptstraße 33', '0711/000000', 'katharina.fuchs@example.de', 28, 'Baden-Württemberg', 'Stuttgart'),
('Benjamin Peters', 'Marktstraße 34', '040/111111', 'benjamin.peters@example.de', 32, 'Hamburg', 'Hamburg'),
('Marie Weber', 'Bahnhofstraße 35', '0911/222222', 'marie.weber@example.de', 26, 'Bayern', 'Nürnberg'),
('Christian Braun', 'Friedrichstraße 36', '0711/333333', 'christian.braun@example.de', 29, 'Baden-Württemberg', 'Stuttgart'),
('Anna Meier', 'Königstraße 37', '0231/444444', 'anna.meier@example.de', 27, 'Nordrhein-Westfalen', 'Dortmund'),
('Stefan Becker', 'Bahnhofsplatz 38', '0611/555555', 'stefan.becker@example.de', 31, 'Hessen', 'Frankfurt'),
('Jasmin Hoffmann', 'Rathausstraße 39', '0211/666666', 'jasmin.hoffmann@example.de', 24, 'Nordrhein-Westfalen', 'Düsseldorf'),
('Michael Schäfer', 'Schlossstraße 40', '089/777777', 'michael.schaefer@example.de', 33, 'Bayern', 'München'),
('Sandra Schneider', 'Friedrich-Ebert-Straße 41', '0228/888888', 'sandra.schneider@example.de', 25, 'Nordrhein-Westfalen', 'Bonn'),
('Thomas Müller', 'Kurfürstenstraße 42', '030/999999', 'thomas.mueller@example.de', 30, 'Berlin', 'Berlin'),
('Christine Fuchs', 'Hauptstraße 43', '0711/000000', 'christine.fuchs@example.de', 28, 'Baden-Württemberg', 'Stuttgart'),
('Jan Peters', 'Marktstraße 44', '040/111111', 'jan.peters@example.de', 32, 'Hamburg', 'Hamburg'),
('Frank Weber', 'Bahnhofstraße 45', '0911/222222', 'frank.weber@example.de', 26, 'Bayern', 'Nürnberg'),
('Wolfgang Braun', 'Friedrichstraße 46', '0711/333333', 'wolfgang.braun@example.de', 29, 'Baden-Württemberg', 'Stuttgart'),
('Petra Meier', 'Königstraße 47', '0231/444444', 'petra.meier@example.de', 27, 'Nordrhein-Westfalen', 'Dortmund'),
('Andreas Becker', 'Bahnhofsplatz 48', '0611/555555', 'andreas.becker@example.de', 31, 'Hessen', 'Frankfurt'),
('Sabine Hoffmann', 'Rathausstraße 49', '0211/666666', 'sabine.hoffmann@example.de', 24, 'Nordrhein-Westfalen', 'Düsseldorf'),
('Hans Schäfer', 'Schlossstraße 50', '089/777777', 'hans.schaefer@example.de', 33, 'Bayern', 'München');

SELECT * FROM test.contacts;