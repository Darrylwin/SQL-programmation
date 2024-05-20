select * from departement;

select * from departement join employe on departement.id_dep = employe.departement_id order by salaire;

select * from employe;

select * from employe where sexe = "Masculin" or sexe =  "masculin" or sexe = "M" or sexe = "m";

select employe.date_naissance, employe.nom_emp from employe where date_naissance > "2000-01-01";

select * from employe where sexe = "Féminin";

select * from employe where salaire > 500000;

select * from employe where date_naissance < "1973-12-31";

select * from employe where salaire between 200000 and 300000;

select * from employe where nom_emp like 'A%';

select * from employe where nom_emp like '%A';

select * from employe where prenom_emp like '%c%';

select salaire from employe where nom_emp = "AJAVON";

select employe.nom_emp, employe.prenom_emp, departement.nom_dep, employe.departement_id
from departement join employe
on employe.departement_id = departement.id_dep;

select *
from employe join departement
on employe.departement_id = departement.id_dep
where nom_dep = 'MARETING';

select COUNT(*) as `Nombre Total d'employés`
from employe;

select COUNT(*) as `Nombre d'employe du departement v°1`, departement.nom_dep
from employe join departement
on departement.id_dep = employe.departement_id
where (select departement.id_dep from departement where id_dep = departement_id)
group by departement.nom_dep;


select departement.nom_dep, count(*) as "Nombre d'employe v°2"
from employe join departement
on departement.id_dep = employe.departement_id
group by departement.nom_dep;


select AVG(salaire) as `Salaire moyen des employés`
from employe;

select employe.*
from employe
where employe.salaire > (select AVG(salaire) from employe) order by id_emp;

select * from employe
where salaire = (select MIN(salaire) from employe);

select * from employe
where salaire = (select MAX(salaire) from employe);

delete from employe
where date_naissance < "1964-01-01";

select * from employe;

select COUNT(*) as "Nombre d'employe par sexe", sexe
from employe
group by sexe;