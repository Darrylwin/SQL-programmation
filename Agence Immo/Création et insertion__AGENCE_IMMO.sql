CREATE TABLE Client
(
    codeclt VARCHAR(30),
    nomclt VARCHAR(30),
    prenomclt VARCHAR(30),
    villeclt VARCHAR(30),
    PRIMARY KEY(codeclt)
);

CREATE TABLE Representant
(
    coderep VARCHAR(30),
    nomrep VARCHAR(30),
    prenomrep VARCHAR(30),
    PRIMARY KEY(coderep)
);

CREATE TABLE Appartement
(
    ref VARCHAR(30),
    superficie BIGINT,
    prix BIGINT,
    Appartement_coderep VARCHAR(30),
    Appartement_codeclt VARCHAR(30),
    PRIMARY KEY(ref),
    FOREIGN KEY(Appartement_codeclt) REFERENCES Client(codeclt),
    FOREIGN KEY(Appartement_coderep) REFERENCES Representant(coderep)
);

INSERT INTO Client
VALUES
(
    "C1","jerbi","Ali","Tunis"
),
(
    "C2","ayadi","Sami","Sfax"
),
(
    "C3","zayida","Hela","Sousse"
);

INSERT INTO Representant
VALUES
(
    "R1","Tounsi","Ala"
),
(
    "R2","Sfaxi","hedi"
),
(
    "R3","Gabsi","amine"
);

INSERT INTO Appartement
VALUES
(
    "A1",500,100,"R2","C1"
),
(
    "A2",700,50,"R1","C1"
),
(
    "A3",900,150,"R2","C3"
);
