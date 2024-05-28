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

-- j)
SELECT COUNT(*) AS `Nombre_Apparts_superficie_>_700`
FROM Appartement WHERE superficie > 700;

-- k)
SELECT appartement.*
FROM Appartement
WHERE Prix BETWEEN 50 AND 160;

-- l)
SELECT nomclt, prenomclt
FROM Client JOIN Appartement
ON Client.codeclt = Appartement.Appartement_codeclt
WHERE Appartement.prix = (SELECT MIN(prix) FROM Appartement);
        -- ou
SELECT C.nomclt, C.prenomclt
FROM client C JOIN appartement A
ON C.codeclt = A.Appartement_codeclt
WHERE A.prix = (SELECT MIN(prix) FROM appartement);

-- m)
select client.*
from client join appartement on client.codeclt = appartement.Appartement_codeclt
join Representant on representant.coderep = appartement.Appartement_coderep
where appartement.superficie >= ( select AVG(superficie) from appartement)
and representant.nomrep = "Tounsi";

-- n)
select client.*
from client join appartement
on client.codeclt = appartement.Appartement_codeclt
where appartement.appartement_coderep is null;
            -- ou
SELECT *
FROM client
WHERE codeclt NOT IN (SELECT codeclt FROM appartement);

select appartement.*,appartement.Appartement_coderep
from appartement  join client
on appartement.Appartement_codeclt = client.codeclt
where Appartement_coderep = Appartement_coderep;

-- o)
SELECT appartement.ref, appartement.superficie, appartement.prix
FROM appartement
WHERE Appartement_codeclt in (SELECT Appartement_codeclt from appartement group by appartement.Appartement_codeclt having COUNT(*) > 1);