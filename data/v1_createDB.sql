create table LesSpectacles
(   noSpec integer not null,
    nomSpec varchar(50) not null,
    prixBaseSpec decimal(6, 2) not null,
    constraint PK_SP primary key (noSpec),
    constraint CK_SP check (prixBaseSpec >= 0)
);

-- prix rep est calculer dasn la vue
create table LesRepresentations (
    noSpec integer not null,
    dateRep date not null,
    promoRep decimal (4,2) not null,
    constraint PK_REP primary key (noSpec, dateRep),
    constraint CK_REP_PR check (promoRep >= 0 and promoRep <= 1),
    constraint FK_NS foreign key  (noSpec) references  LesSpectacles(noSpec)
);

create table LesCategories (
    catZone varchar (50) not null,
    tauxZone decimal (4,2) not null,
    constraint PK_CAT primary key (catZone),
    constraint CK_CAT_TZ check (tauxZone >= 0),
    constraint CK_CAT_CZ check (catZone in ('orchestre', 'balcon', 'poulailler'))
);

create table LesZones (
    noZone integer not null,
    catZone varchar (50) not null,
    constraint PK_ZN primary key (noZone),
    constraint CK_ZN check (noZone > 0),
    constraint FK_CT foreign key (catZone) references  LesCategories(catZone)
);

create table LesReductions (
    notype integer not null ,
    typeReduc varchar(50) not null ,
    tauxReduc decimal(6,2) ,
    constraint PK_RD primary key (notype),
    constraint CK_TR check ( tauxReduc >= 0 ),
    constraint CK_RD check (typeReduc in  ('sans reduction','adherent','etudiant', 'scolaire' , 'militaire', 'seniors' ))
);
PRAGMA foreign_keys = true;
create table LesTickets (
    noTicket integer primary key autoincrement,
    noDos integer not null,
    dateAchat date not null,
    dateRep date not null ,
    noPlace integer not null,
    noRang integer not null,
    noSpec integer not null,
    noType integer not null,
    constraint CK_TK_ check (noTicket > 0 ),
    constraint CK_TK_TR check (noType >= 0 ),
    constraint CK_TK_DT check (dateAchat < dateRep),
    constraint FK_TK_NS foreign key  (noSpec) references  LesSpectacles(noSpec),
    constraint FK_TK_PL foreign key  (noPlace,noRang) references  LesPlaces(noPlace,noRang),
    constraint FK_TK_NT foreign key  (noType) references  LesReductions(notype),
    constraint FK_TK_ND foreign key  (noSpec,dateRep) references LesRepresentations (noSpec, dateRep)
);

create table LesPlaces(
    noPlace integer,
    noRang  integer,
    noZone  integer not null,
    constraint PK_LP primary key (noPlace, noRang),
    constraint CK_PL_NP check (noPlace > 0),
    constraint CK_PL_NR check (noRang > 0),
    constraint FK_nC foreign key (noZone) references LesZones(noZone)
    );

create table LesVentes (
    noDos integer primary key ,
    noSpec integer not null,
    dateRep date not null,
    constraint FK_V_NS foreign key  (noSpec) references  LesTickets(noSpec),
    constraint FK_V_DR foreign key  (dateRep) references  LesRepresentations(dateRep)
    );

create view P1_LesRepresentations
AS
    SELECT noSpec, dateRep, promoRep, nbPlacesDispos, prixRep
FROM(SELECT noSpec, dateRep, count(*) as nbPlacesDispos
     FROM LesRepresentations CROSS JOIN LesPlaces
     WHERE (noSpec, dateRep, noPlace, noRang) not in (SELECT distinct noSpec, dateRep, noPlace, noRang
     FROM LesTickets)
     GROUP BY noSpec, dateRep) JOIN(
SELECt noSpec, dateRep,promoRep, (prixBaseSpec*(1 - promoRep)) as prixRep
FROM LesRepresentations JOIN LesSpectacles using (noSpec)) USING(noSpec, dateRep);

CREATE VIEW P1_LesReservations
AS
    SELECT noSpec, dateRep, count (*) AS nbPlacesReserver
    FROM LesTickets
    GROUP BY noSpec, dateRep;

CREATE VIEW P2_LesRepresentations
AS
    SELECT noSpec, nomSpec, dateRep, promoRep, prixRep
    FROM P1_LesRepresentations join LesSpectacles using (noSPec)
    WHERE (noSpec, dateRep) not in ( SELECT DISTINCT noSpec,dateRep
                                     FROM LesTickets);

CREATE VIEW P2_LesSpectacles
AS
    SELECT S.noSpec,nomSpec,dateRep, nbPlacesReserver
    FROM P1_LesReservations join LesSpectacles S using (noSPec)
    GROUP BY noSpec, dateRep;

CREATE VIEW P1_LesTickets
AS
    SELECT noTicket,noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType,  (prixTicketRed * tauxZone) as prixTicket
    FROM
        (SELECT  noTicket,noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType, prixRep * (1 - tauxReduc) as prixTicketRed
        FROM  LesReductions JOIN (SELECT noTicket,noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType, prixRep
                                        FROM LesTickets
                                        JOIN P1_LesRepresentations
                                        USING (noSpec,dateRep))
        USING (noType))
        JOIN ( SELECT noPlace, noRang, tauxZone
        FROM LesPlaces JOIN (SELECT noZone, tauxZone
                             FROM LesZones
                             JOIN LesCategories
                             USING (catZone))
        USING (noZone))
    USING (noPlace, noRang);

CREATE VIEW P1_LesVentes
AS
    SELECT noDos, noSpec, dateRep, sum(prixTicket) as totalDos
    FROM P1_LesTickets JOIN LesVentes using(noDos, dateRep, noSpec)
    GROUP BY noDos, noSpec, dateRep;

-- TODO 3.3 : Ajouter les éléments nécessaires pour créer le trigger (attention, syntaxe SQLite différent qu'Oracle)
-- TODO 3.3.1 : trigger des qu'on insert un ticket on insert sont numero d'achat et sa date dachat dans la table les ventes