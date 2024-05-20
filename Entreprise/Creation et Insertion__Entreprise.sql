CREATE  TABLE departement
(
    nom_dep varchar(30),
    id_dep int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id_dep)
);

CREATE TABLE employe
(
    id_emp int,
    nom_emp varchar(50),
    prenom_emp varchar(30),
    date_naissance date,
    salaire float,
    sexe varchar(30),
    departement_id int,
    PRIMARY KEY(id_emp),
    FOREIGN KEY(departement_id) REFERENCES departement(id_dep)
);

ALTER  TABLE employe
MODIFY id_emp int not null auto_increment;

describe employe;

INSERT INTO departement
VALUES
    (
     'Jeux vidéos',
     1
    ),
    ('Maintenance',
     2),
    (
     'Comptabilité',
     3
    ),
    (
     'Physique',
     4
    ),
    (
     'Tests',
     5
    );

SELECT * from departement;

INSERT INTO employe
VALUES
    (
     1,
     "LABOU",
     "Marc-léon",
     "2005-05-09",
     35000,
     "Masculin",
     1
    ),
    (
     2,
     "DJEGLE",
     "Hope",
     "1999-11-29",
     46000,
     "Masculin",
     3
    ),
    (
     3,
     "GNAGAN",
     "Josué",
     "2006-06-12",
     33000,
     "Masculin",
     4
    ),
    (
     4,
     "KEKEH",
     "Marxell",
     "2003-09-18",
     34000,
     "Masculin",
     2
    ),
    (
     5,
     "KOUA",
     "Kévin",
     "2005-06-17",
     35000,
     "Masculin",
     5
    ),
    (
     6,
     "LOGOSSOU",
     "Darryl-win",
     "2005-03-10",
     200000,
     "Masculin",
     1
    ),
    (
     7,
     "ETOH",
     "Mawunyo",
     "2005-06-23",
     185000,
     "Féminin",
     1
    ),
    (
     8,
     "AZOUMARO",
     "Marina-Gracia",
     "2005-07-09",
     172000,
     "Féminin",
     5
    ),
    (
     9,
     "NOVIVO",
     "Laetitia",
     "2006-04-28",
     176000,
     "Féminin",
     2
    ),
    (
     10,
     'TENEGA',
     'Françoise',
     '2005-04-13',
     182000,
     'Féminin',
     5
    );

SELECT * FROM employe;