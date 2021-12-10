-- Pour chaque tickets inseré on insere automatiquement le noDos et les informations de la représentation
CREATE TRIGGER IF NOT EXISTS trigger_lesVentes
    AFTER INSERT
    ON LesTickets
    WHEN new.noDos not in (select noDos from LesVentes)
    BEGIN
       INSERT INTO LesVentes(noDos, dateRep, noSpec) VALUES (new.noDos, new.dateRep, new.noSpec);
    END /



