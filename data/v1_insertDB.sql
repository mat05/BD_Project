-- TODO 1.3 : Inventer des données dans les nouvelles tables (tout ce qui concerne les tickets). Par contre, utiliser une requête avec insert into qui transfère les données des tables de la V0 à celles de cette nouvelle version.

INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) SELECT noSpec,nomSpec,prixBaseSpec from V0_LesRepresentations;

INSERT INTO LesPlaces (noPlace, noRang, noZone) SELECT noPlace,noRang,noZone FROM v0_LesPlaces ;

/*
INSERT INTO LesCategories(catZone, tauxZone) VALUES ('orchestre',1);
INSERT INTO LesCategories(catZone, tauxZone) VALUES ('orchestre',1);
INSERT INTO LesCategories(catZone, tauxZone) VALUES ('orchestre',1);
INSERT INTO LesCategories(catZone, tauxZone) VALUES ('orchestre',1);
INSERT INTO LesCategories(catZone, tauxZone) VALUES ('orchestre',1);
INSERT INTO LesCategories(catZone, tauxZone) VALUES ('orchestre',1);
INSERT INTO LesCategories(catZone, tauxZone) VALUES ('orchestre',1);
INSERT INTO LesCategories(catZone, tauxZone) VALUES ('orchestre',1);
INSERT INTO LesCategories(catZone, tauxZone) VALUES ('orchestre',1);

 */

INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (1,'How to be a parisian',25);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (2,'How to be a parisian',25.0);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (3,'How to be a parisian',25.5);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (4,'How to be a parisian',25);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (5,'How to be a parisian',25);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (6,'Tout sur Grenoble',23);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (7,'Tout sur Grenoble',23);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (8,'Tout sur Grenoble',23);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (9,'Tout sur Grenoble',23);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (10,'Tout sur Grenoble',23);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (11,'Papa est en haut',25);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (12,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (13,'Papa est en haut',26);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (14,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (15,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (16,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (17,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (18,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (19,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (20,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (21,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (22,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (23,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (24,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (25,'Papa est en haut',28);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (26,'Papa est en haut',28);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (27,'Papa est en haut',28);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (28,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (29,'Papa est en haut',28);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (30,'Papa est en haut',28);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (31,'Papa est en haut',28);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (32,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (33,'Papa est en haut',28);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (34,'Papa est en haut',26);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (35,'Papa est en haut',28);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (36,'Papa est en haut',28);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (37,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (38,'Papa est en haut',26);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (39,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (40,'Papa est en haut',28);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (41,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (42,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (43,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (44,'Papa est en haut',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (45,'Tout sur Grenoble',27);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (46,'Tout sur Grenoble',28);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (47,'Tout sur Grenoble',28);
INSERT INTO LesSpectacles(noSpec, nomSpec, prixBaseSpec) VALUES (48,'Tout sur Grenoble',27);


INSERT INTO LesTickets(noTicket, dateAchat, dateRep, noPlace, noRang, noSpec,typeReduc) VALUES (1,'20/12/2019 14:00', null, 1, null,1);
