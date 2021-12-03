create table LesRepresentations (
    nomSpec varchar(50) not null,
    dateRep date not null,
    promoRep decimal (4,2) not null,
    prixRep decimal (6,2) not null,
    constraint PK_REP primary key (nomSpec, dateRep),
    constraint CK_REP_PR check (prixRep >= 0),
    constraint CK_REP_PR check (promoRep >= 0 and promoRep <=1)
);


create table LesSpectacle
(   noSpec integer not null,
    nomSpec varchar(50) not null,
    prixBaseSpec decimal(6, 2) not null,
    constraint PK_SP primary key  (noSpec),
    constraint CK_SP check (prixBaseSpec >= 0)
);

create table LesZones (
    noZone integer not null,
    catZone varchar (50) not null,
    constraint PK_ZN primary key (noZone),
    constraint CK_ZN check (noZone > 0)
    );

create table LesCategories (
    catZone varchar (50) not null,
    tauxZone decimal (4,2) not null,
    constraint PK_CAT primary key (catZone),
    constraint CK_CAT_TZ check (tauxZone >= 0),
    constraint CK_CAT_CZ check (catZone in ('orchestre', 'balcon', 'poulailler'))
);

create table LesTickets (
    noTicket integer not null,
    dateAchat date not null,
    dateRep date not null ,
    noPlace integer not null,
    nomSpec varchar(50) not null,
    typeReduc decimal (6,2),
    constraint PK_TK primary key(noTicket),
    constraint CK_TK_ check (noTicket > 0 ),
    constraint CK_TK_TR check ( typeReduc >= 0 ),
    constraint CK_TK_DT check (dateAchat < dateRep)

);
create table LesReduction (
    type varchar(50) not null ,
    typeReduc integer not null ,
    tauxReduc decimal(6,2),
    constraint PK_RD primary key (type),
    constraint CK_TR check ( tauxReduc >= 0 ),
    constraint CK_RD check (type in  ('sans reduction','adherent','etudiant', 'scolaire' , 'militaire', 'seniors' ))
             );


create table LesPlaces (
    noPlace integer,
    noRang  integer,
    noZone  integer not null,
    constraint PK_LP primary key (noPlace, noRang),
    constraint CK_PL_NP check (noPlace > 0),
    constraint CK_PL_NR check (noRang > 0)
    );

create table LesVentes (
    noDoss    integer not null,
    noTicket  integer not null,
    prixTotal decimal(6, 2),
    constraint PK_LV primary key (noDoss),
    constraint FK_LV foreign key (noTicket) references LesTickets(noTicket),
    constraint CK_LV_NA check ( noDoss > 0 ),
    constraint CK_LV_PT check ( prixTotal >= 0)
);


create view LesRepresentations
AS
    SELECT nomSpec , dateRep , count(*) as nbPlaceDispo
    from LesRepresentations join LesSpectacle on noSpec natural left outer join
        (select noSpec, noRang, noPlace, dateRep from LesRepresentations
          cross JOIN LesPlaces join LesSpectacle on noSpec natural join LesZones
            where (noSpec , noRang , noPlace , dateRep) not in
                  (select noSpec, noRang,noPlace , dateRep FROM LesTickets ))
    GROUP BY nomSpec, dateRep;


create view Montant_Total
AS


-- TODO 3.3 : Ajouter les éléments nécessaires pour créer le trigger (attention, syntaxe SQLite différent qu'Oracl
