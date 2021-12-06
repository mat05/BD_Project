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
    notype varchar(50) not null ,
    typeReduc integer not null ,
    tauxReduc decimal(6,2),
    constraint PK_RD primary key (notype),
    constraint CK_TR check ( tauxReduc >= 0 ),
    constraint CK_RD check (notype in  ('sans reduction','adherent','etudiant', 'scolaire' , 'militaire', 'seniors' ))
);

create table LesTickets (
    noTicket integer not null,
    dateAchat date not null,
    dateRep date not null ,
    noPlace integer not null,
    noRang integer not null,
    noSpec integer not null,
    typeReduc decimal (6,2),
    constraint PK_TK primary key(noTicket),
    constraint CK_TK_ check (noTicket > 0 ),
    constraint CK_TK_TR check (typeReduc >= 0 ),
    constraint CK_TK_DT check (dateAchat < dateRep)
);

create table LesPlaces (
    noPlace integer,
    noRang  integer,
    noZone  integer not null,
    constraint PK_LP primary key (noPlace, noRang),
    constraint CK_PL_NP check (noPlace > 0),
    constraint CK_PL_NR check (noRang > 0)
    );

create table Lesventes (
    noDos integer,
    nomSpec varchar(50) not null,
    dateRep date not null,
    constraint PK_LP primary key (noDos)
    );

create view P1_LesRepresentations
AS
    SELECT noSpec , dateRep, promoRep, (prixBaseSpec*(1 - promoRep)) as prixRep, count(*) as nbPlacesDispo
    FROM LesRepresentations JOIN LesSpectacles on noSpec natural left outer join
        (SELECT noSpec, noRang, noPlace, dateRep ,(prixBaseSpec * (1-promoRep)) as prixRep from LesRepresentations
          CROSS JOIN LesPlaces join LesSpectacles ON noSpec NATURAL JOIN LesZones
            where (noSpec , noRang , noPlace , dateRep) not in
                  (select noSpec, noRang,noPlace , dateRep FROM LesTickets ))
    GROUP BY nomSpec, dateRep, prixRep;

CREATE VIEW LesReservations
AS
    SELECT noSpec, dateRep, count (noPlace,noRang) AS nbPlacesReserver
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
    SELECT noSpec,nomSpec,dateRep, nbPlacesReserver
    FROM LesReservations join LesSpectacles using (noSPec)
    GROUP BY noSpec, dateRep;



-- TODO 3.3 : Ajouter les éléments nécessaires pour créer le trigger (attention, syntaxe SQLite différent qu'Oracle)
