USE `lo8e_sql2`;

INSERT INTO klassen (klas_code, slb_code, cohort, opleiding_code) VALUES 
("lo9e-amo1", "rs001", "2019", "amo"),
("lo9e-amo2", "vlt03", "2019", "amo"),
("lo9e-amo3", "bkr02", "2019", "amo");

INSERT INTO studenten (ov_nummer, achternaam, tussenvoegsel, voornaam, geboortedatum, postcode, plaats, gewicht, lengte, inschrijvings_datum) VALUES
("96969", "kawashima", "", "ryuta", "1959-05-23", "2169XD", "japan", "69", "1.30", "01-01-1970"),
("94202", "joosten", "van", "hans", "1969-04-20", "4209CX", "voorhout", "420", "1.69", "01-01-1986"),
("96921", "hanzen", "van", "joost", "2019-06-09", "6667XC", "monster", "21", "1.666", "01-01-1900"),
("96669", "kees", "van", "kees", "1959-05-23", "2169XD", "friesland", "6.9", "1.30", "01-01-1960");

INSERT INTO klassen_studenten (ov_nummer, klas_code) VALUES
("96969", "lo9e-amo1"),
("94202", "lo9e-amo2"),
("96921", "lo9e-amo3"),
("96669", "lo9e-amo");

UPDATE studenten 
SET geboortedatum = "1869-04-20"
WHERE ov_nummer = "96969";

UPDATE studenten
SET actief = false
WHERE inschrijvings_datum <= "1-1-2017";