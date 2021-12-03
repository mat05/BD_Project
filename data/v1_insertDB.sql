-- TODO 1.3 : Inventer des données dans les nouvelles tables (tout ce qui concerne les tickets). Par contre, utiliser une requête avec insert into qui transfère les données des tables de la V0 à celles de cette nouvelle version.
INSERT INTO LesRepresentations (nomSpec, dateRep, PromoRep,prixRep) SELECT nomSpec, dateRep, promoRep, prixBaseSpec
FROM V0_LesRepresentations;

/*INSERT INTO LesPlaces (noPlace, noRang, noZone) SELECT noPlace,noRang,noZone FROM v0_LesPlaces */
