-- TODO 1.3 : Inventer des données dans les nouvelles tables (tout ce qui concerne les tickets). Par contre, utiliser une requête avec insert into qui transfère les données des tables de la V0 à celles de cette nouvelle version.

INSERT INTO LesPlaces (noPlace, noRang, noZone) SELECT noPlace,noRang,noZone FROM v0_LesPlaces ;


INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (1,'How to be a parisian',25);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (2,'Je parle toute seule',25);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (3,'Les Eternels',25);

INSERT INTO LesCategories (catZone, tauxZone) VALUES ('poulailler',1);
INSERT INTO LesCategories (catZone, tauxZone) VALUES ('orchestre',1.5);
INSERT INTO LesCategories (catZone, tauxZone) VALUES ('balcon',2);

INSERT INTO LesZones (noZone, catZone) VALUES (1,'poulailler');
INSERT INTO LesZones (noZone, catZone) VALUES (2,'orchestre');
INSERT INTO LesZones (noZone, catZone) VALUES (3,'balcon');

INSERT INTO LesReductions (notype, typeReduc, tauxReduc) VALUES (1,'sans reduction',0.0)
INSERT INTO LesReductions (notype, typeReduc, tauxReduc) VALUES (2,'adherent',0.2)
INSERT INTO LesReductions (notype, typeReduc, tauxReduc) VALUES (3,'etudiant',0.2)
INSERT INTO LesReductions (notype, typeReduc, tauxReduc) VALUES (4,'scolaire',0.2)
INSERT INTO LesReductions (notype, typeReduc, tauxReduc) VALUES (5,'militaire',0.2)
INSERT INTO LesReductions (notype, typeReduc, tauxReduc) VALUES (6,'seniors',0.2)

INSERT INTO LesRepresentations (noSpec, dateRep, promoRep)  VALUES (1,'20/12/2019 14:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep)  VALUES (1,'21/12/2019 14:00',0.1);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep)  VALUES (2,'05/01/2019 14:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep)  VALUES (2,'06/01/2019 14:00',0.4);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep)  VALUES (3,'15/11/2021 14:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep)  VALUES (3,'16/11/2021 14:00',0.3);


INSERT INTO LesTickets(noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (1,'03/01/2019 14:00','06/01/2019 14:00', 1, 4, 2,2);
INSERT INTO LesTickets(noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (2,'15/12/2019 14:00','20/12/2019 14:00', 4, 3, 1,2);
INSERT INTO LesTickets(noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (3,'02/01/2019 14:00','06/01/2019 14:00', 2, 4, 2,2);
INSERT INTO LesTickets(noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (5,'14/11/2021 14:00','15/11/2021 14:00', 3, 1, 3,2);
INSERT INTO LesTickets(noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (6,'10/12/2019 14:00','20/12/2019 14:00', 1, 2, 1,2);
INSERT INTO LesTickets(noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (6,'10/12/2019 14:00','20/12/2019 14:00', 2, 2, 1,2);
INSERT INTO LesTickets(noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (6,'10/12/2019 14:00','20/12/2019 14:00', 3, 2, 1,2);
