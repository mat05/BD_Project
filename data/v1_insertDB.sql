-- TODO 1.3 : Inventer des données dans les nouvelles tables (tout ce qui concerne les tickets). Par contre, utiliser une requête avec insert into qui transfère les données des tables de la V0 à celles de cette nouvelle version.
INSERT INTO LesRepresentations (nomSpec, dateRep, PromoRep,prixRep)
select nomSpec, dateRep, promoRep, prixBaseSpec
from V0_LesRepresentations