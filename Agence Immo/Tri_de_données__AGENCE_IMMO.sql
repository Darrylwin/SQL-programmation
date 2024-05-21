SELECT * FROM Representant;

SELECT villeclt,nomclt FROM Client;

SELECT COUNT(*) AS `Nombre de Clients` FROM Client;

SELECT MAX(prix) AS `Maximum_des_prix_des_apparts` FROM Appartement;

-- f)

SELECT MIN(prix) AS `Minimum_des_pris_des_Apparts` FROM Appartement;

SELECT * FROM Client ORDER BY prenomclt;

SELECT * FROM Appartement
JOIN Representant
ON Appartement.Appartement_coderep = Representant.Coderep
JOIN Client
ON appartement.Appartement_codeclt = client.codeclt
WHERE Representant.nomrep = "Sfaxi" AND Representant.prenomrep = "hedi" AND client.villeclt = "France";
-- i)
SELECT AVG(prix) AS `Moyenne_des_Prix_par_Superficie`, superficie
FROM Appartement
GROUP BY superficie;

SELECT COUNT(*) AS `Nombre_Apparts_superficie_>_700`
FROM Appartement WHERE superficie > 700;

SELECT appartement.*
FROM Appartement
WHERE Prix BETWEEN 50 AND 160;

SELECT nomclt, prenomclt
FROM Client JOIN Appartement
ON Client.codeclt = Appartement.Appartement_codeclt
WHERE Appartement.prix = (SELECT MIN(prix) FROM Appartement);

                /* Arrêt à m. */

select client.*
from client join appartement
on client.codeclt = appartement.Appartement_codeclt
where appartement.superficie >= ( select AVG(superficie) from appartement) and appartement.Appartement_coderep = 'R1';

select client.*
from client join appartement
on client.codeclt = appartement.Appartement_codeclt
where appartement.appartement_coderep is not null;

select appartement.*,appartement.Appartement_coderep
from appartement  join client
on appartement.Appartement_codeclt = client.codeclt
where Appartement_coderep = Appartement_coderep;