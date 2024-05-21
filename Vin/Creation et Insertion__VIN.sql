create table vin
(
    nv int not null auto_increment,
    cru varchar(30),
    mil int,
    deg int,
    primary key(nv)
);

create  table viticulteur
(
    nvt int not null auto_increment,
    nom_vt varchar(30),
    prenom_vt varchar(30),
    ville_vt varchar(30),
    primary key(nvt)
);

create table production
(
    vins_nv int,
    viticulteur_nvt int,
    foreign key(vins_nv) references vin(nv),
    foreign key(viticulteur_nvt) references viticulteur(nvt)
);

create table buveur
(
    nb int not null auto_increment,
    nom_bv varchar(30),
    prenom_bv varchar(30),
    ville_bv varchar(30),
    primary key(nb)
);

create table commande
(
    nc int not null auto_increment,
    datecde date,
    vin_nv int,
    qte int,
    buveur_nb int,
    foreign key(vin_nv) references vin(nv),
    foreign key(buveur_nb) references buveur(nb)
);

create table expedition
(
    commande_nc int not null,
    dateexp date,
    qte int,
    foreign key(commande_nc) references commande(nc)
);

insert into vin(cru,mil,deg)
values
    (
     'Londres',
     1900,
     12
    ),
    (
     "Monaco",
     1970,
     17
    ),
    (
     "Paris",
     1971,
     18
    ),
    (
    "Lyon",
     1971,
     18
    ),
    (
     'Rome',
     1980,
     20
    ),
    (
     "seattle",
     1998,
     15
    ),
    (
     'New york',
     2002,
     12
    );

insert into viticulteur(nom_vt,prenom_vt,ville_vt)
values (
        "AZOUMARO",
        "Marina-Gracia",
        "lomé"
       ),
    (
     "DOLEAGBENOU",
     "Pénielle",
     "lomé"
    ),
    (
     "Itachi",
     "UCHIWA",
     "konoha"
       ),
    (
     "KAMADO",
     "Tanjiro",
     "shonen"
       ),
    (
     "ETOH",
     "Gracia",
     "lomé"
       );

insert into buveur
values (
        1,
        "ETSE",
        "Geoffroy",
        "lomé"
       ),
    (
     2,
     "DUPONT",
     "Francois",
     "londres"
    ),
    (
     3,
     "SASUKE",
     "UCHIWA",
     "onoha"
       ),
    (4,
     "MELIODAS",
     "DIA",
     "britania"
       ),
    (
     5,
     "OLIVER",
     "ATOM",
     "Tokyo"
       ),
    (
     6,
     "EREN",
     "Yeger",
     "île de paradis"
       ),
    (7,
     "TENEGA",
     "Françoise",
     "lomé"
       );

insert into commande
values
    (
     1,
     "2022"
    )