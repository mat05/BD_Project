-- TODO 1.3 : Inventer des données dans les nouvelles tables (tout ce qui concerne les tickets). Par contre, utiliser une requête avec insert into qui transfère les données des tables de la V0 à celles de cette nouvelle version.
INSERT INTO LesCategories (catZone, tauxZone) VALUES ('poulailler',1);
INSERT INTO LesCategories (catZone, tauxZone) VALUES ('orchestre',1.5);
INSERT INTO LesCategories (catZone, tauxZone) VALUES ('balcon',2);

INSERT INTO LesZones (noZone, catZone) VALUES (1,'poulailler');
INSERT INTO LesZones (noZone, catZone) VALUES (2,'orchestre');
INSERT INTO LesZones (noZone, catZone) VALUES (3,'balcon');

insert into LesPlaces(noPlace, noRang, noZone) values (1, 1, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (2, 1, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (3, 1, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (4, 1, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (5, 1, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (6, 1, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (7, 1, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (8, 1, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (9, 1, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (10,1, 1);

insert into LesPlaces(noPlace, noRang, noZone) values (1, 2, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (2, 2, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (3, 2, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (4, 2, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (5, 2, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (6, 2, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (7, 2, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (8, 2, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (9, 2, 1);
insert into LesPlaces(noPlace, noRang, noZone) values (10,2, 1);

insert into LesPlaces(noPlace, noRang, noZone) values (1, 3, 2);
insert into LesPlaces(noPlace, noRang, noZone) values (2, 3, 2);
insert into LesPlaces(noPlace, noRang, noZone) values (3, 3, 2);
insert into LesPlaces(noPlace, noRang, noZone) values (4, 3, 2);
insert into LesPlaces(noPlace, noRang, noZone) values (5, 3, 2);
insert into LesPlaces(noPlace, noRang, noZone) values (6, 3, 2);
insert into LesPlaces(noPlace, noRang, noZone) values (7, 3, 2);
insert into LesPlaces(noPlace, noRang, noZone) values (8, 3, 2);
insert into LesPlaces(noPlace, noRang, noZone) values (9, 3, 2);
insert into LesPlaces(noPlace, noRang, noZone) values (10,3, 2);

insert into LesPlaces(noPlace, noRang, noZone) values (1, 4, 3);
insert into LesPlaces(noPlace, noRang, noZone) values (2, 4, 3);
insert into LesPlaces(noPlace, noRang, noZone) values (3, 4, 3);
insert into LesPlaces(noPlace, noRang, noZone) values (4, 4, 3);
insert into LesPlaces(noPlace, noRang, noZone) values (5, 4, 3);
insert into LesPlaces(noPlace, noRang, noZone) values (6, 4, 3);
insert into LesPlaces(noPlace, noRang, noZone) values (7, 4, 3);
insert into LesPlaces(noPlace, noRang, noZone) values (8, 4, 3);
insert into LesPlaces(noPlace, noRang, noZone) values (9, 4, 3);
insert into LesPlaces(noPlace, noRang, noZone) values (10,4, 3);


INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (1,'How to be a parisian',25);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (2,'Je parle toute seule',25);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (3,'Les Eternels',25);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (4,'Gad au theatre',26.50);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (5,'Tout sur Grenoble',25.30);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (6,'Confession',25);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (7,'Maintenant ou jamel',25);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (8,'Oh My Gad',25);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (9,'Sans Tambour',25);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (10,'La vie Normal',25);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (11,'12 hommes en colere',25);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (12,'Coupable',25);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (13,'Coupable2',24);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (14,'Yes Boss',39.5);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (15,'American dream',47.50);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (16,'Et puis merde!',23);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (17,'La meilleur de nous',28);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (18,'Where is bryan',33);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (19,'Elysez nous',26);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (20,'Thats life',28);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (21,'Desperade Housemen',40);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (22,'Presque',29);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (23,'Le temps de vivre',34);
INSERT INTO LesSpectacles (noSpec, nomSpec, prixBaseSpec) VALUES (24,'Hilarious',27);


INSERT INTO LesReductions (notype, typeReduc, tauxReduc) VALUES (1,'sans reduction',0.0);
INSERT INTO LesReductions (notype, typeReduc, tauxReduc) VALUES (2,'adherent',0.2);
INSERT INTO LesReductions (notype, typeReduc, tauxReduc) VALUES (3,'etudiant',0.2);
INSERT INTO LesReductions (notype, typeReduc, tauxReduc) VALUES (4,'scolaire',0.2);
INSERT INTO LesReductions (notype, typeReduc, tauxReduc) VALUES (5,'militaire',0.2);
INSERT INTO LesReductions (notype, typeReduc, tauxReduc) VALUES (6,'seniors',0.2);

INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (1,'20/12/2019 14:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (1,'21/12/2019 15:00',0.1);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (2,'05/01/2019 13:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (2,'06/01/2019 13:00',0.4);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (3,'15/11/2021 14:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (3,'16/11/2021 14:00',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (4,'12/02/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (4,'16/02/2021 15:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (4,'18/02/2021 20:00',0.1);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (4,'22/02/2021 14:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (4,'25/02/2021 13:00',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (4,'29/03/2021 18:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (5,'02/04/2021 14:00',0.1);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (5,'05/03/2021 18:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (5,'09/03/2021 21:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (5,'29/03/2021 17:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (7,'29/03/2021 19:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (6,'29/03/2021 15:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (7,'30/03/2021 11:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (7,'17/04/2021 21:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (7,'15/04/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (5,'16/03/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (4,'18/03/2021 18:00',0.1);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (2,'20/03/2021 18:00',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (3,'21/03/2021 18:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (8,'06/04/2021 22:00',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (6,'08/04/2021 18:00',0.0);

INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (2,'31/04/2021 15:00',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (6,'01/05/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (6,'08/04/2021 17:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (3,'09/04/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (6,'09/04/2021 18:00',0.0);

INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (12,'09/04/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (11,'09/04/2021 14:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (11,'09/04/2021 15:50',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (12,'10/04/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (10,'09/04/2021 20:00',0.0);

INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (3,'11/05/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (2,'09/06/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (6,'05/07/2021 13:30',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (8,'04/08/2021 16:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (9,'03/06/2021 15:00',0.0);

INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (2,'02/04/2021 21:00',0.1);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (4,'09/03/2021 12:300',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (1,'09/08/2021 18:20',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (1,'09/07/2021 18:50',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (9,'09/05/2021 18:00',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (6,'13/04/2021 18:00',0.0);

INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (9,'18/07/2021 16:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (1,'15/06/2021 18:30',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (2,'13/04/2021 19:35',0.1);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (2,'05/04/2021 14:40',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (1,'09/04/2021 18:00',0.1);

INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (10,'03/10/2021 10:45',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (11,'03/09/2021 13:00',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (11,'02/08/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (11,'03/08/2021 18:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (11,'20/04/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (10,'19/05/2021 12:20',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (12,'06/06/2021 14:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (13,'09/04/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (16,'09/04/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (14,'09/04/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (14,'20/05/2021 12:20',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (14,'07/06/2021 14:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (14,'10/04/2021 19:00',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (14,'11/04/2021 19:40',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (14,'12/04/2021 18:00',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (14,'18/07/2021 16:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (13,'15/06/2021 18:30',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (11,'13/04/2021 19:35',0.1);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (12,'05/04/2021 14:40',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (20,'09/04/2021 18:00',0.1);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (11,'19/05/2021 12:20',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (18,'06/06/2021 14:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (19,'09/04/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (18,'09/04/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (17,'09/04/2021 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (16,'20/05/2021 12:20',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (13,'07/06/2021 14:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (10,'10/04/2021 19:00',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (21,'11/04/2021 19:40',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (21,'12/04/2021 18:00',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (19,'18/07/2021 16:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (20,'15/06/2021 18:30',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (24,'05/04/2022 14:40',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (22,'09/04/2022 18:00',0.1);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (9,'23/12/2012 14:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (7,'25/12/2012 15:00',0.1);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (5,'02/01/2012 13:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (3,'07/01/2012 13:00',0.4);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (5,'16/11/2022 14:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (6,'10/11/2022 14:00',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (7,'32/02/2022 18:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (1,'26/02/2022 15:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (9,'28/02/2022 20:00',0.1);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (3,'22/02/2022 14:00',0.0);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (6,'25/02/2022 13:00',0.3);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (1,'29/03/2022 18:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (4,'02/04/2022 14:00',0.1);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (4,'05/03/2022 18:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (3,'09/03/2022 21:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (2,'29/03/2022 17:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (8,'29/03/2022 19:00',0.2);
INSERT INTO LesRepresentations (noSpec, dateRep, promoRep) VALUES (7,'29/03/2022 15:00',0.2);

INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (1,'03/01/2019 14:00','06/01/2019 13:00', 1, 4, 2,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (2,'15/12/2019 14:00','20/12/2019 14:00', 4, 3, 1,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (3,'02/01/2019 14:00','06/01/2019 13:00', 2, 4, 2,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (5,'14/11/2021 14:00','15/11/2021 14:00', 3, 1, 3,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (6,'10/12/2019 14:00','12/02/2021 18:00', 1, 2, 4,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (6,'10/12/2019 14:00','20/12/2019 14:00', 2, 2, 1,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (6,'10/12/2019 14:00','20/12/2019 14:00', 3, 2, 1,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (6,'11/12/2020 14:00','12/02/2021 18:00', 3, 2, 4,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (6,'13/02/2021 10:00','16/02/2021 15:00', 3, 2, 4,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (6,'14/10/2020 09:00','18/02/2021 20:00', 1, 3, 4,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (6,'06/01/2021 10:00','22/02/2021 14:00', 2, 3, 4,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (4,'06/01/2021 10:30','25/02/2021 13:00', 1, 2, 4,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (4,'06/01/2021 10:30','29/03/2021 18:00', 1, 2, 4,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (4,'01/04/2021 10:30','02/04/2021 14:00', 4, 2, 5,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (4,'06/04/2021 10:30','06/04/2021 22:00', 1, 2, 8,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (7,'01/01/2021 10:30','08/04/2021 18:00', 1, 2, 6,2);

INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (8,'02/01/2021 10:30','31/04/2021 15:00', 1, 2, 2,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (8,'01/05/2021 17:31','01/05/2021 18:00', 1, 2, 6,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (8,'02/01/2021 10:30','08/04/2021 18:00', 1, 2, 6,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (8,'02/01/2021 10:30','09/04/2021 18:00', 1, 2, 3,2);
INSERT INTO LesTickets (noDos, dateAchat, dateRep, noPlace, noRang, noSpec, noType) VALUES (8,'02/01/2021 10:30','09/04/2021 18:00', 1, 2, 6,2);



