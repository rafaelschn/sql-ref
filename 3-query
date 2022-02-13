CREATE VIEW view_elements_level AS
  WITH RECURSIVE
    rec(id, parent, level) 
    AS (
      SELECT elements.id, elements.parent, 1 FROM elements 
      UNION ALL 
      SELECT rec.id, e.parent, level+1 FROM rec INNER JOIN elements e ON rec.parent = e.id WHERE rec.parent IS NOT NULL LIMIT 10000
    )
  SELECT * FROM rec WHERE parent IS NULL ORDER BY level, id;

SELECT id, level FROM view_elements_level;

CREATE VIEW view_elements_attr AS
  WITH RECURSIVE
    rec(id, parent, attr) 
    AS (
      SELECT elements.id, elements.parent, attr FROM elements 
      UNION ALL 
      SELECT rec.id, e.parent, e.attr FROM rec INNER JOIN elements e ON rec.parent = e.id WHERE rec.attr IS NULL AND rec.parent IS NOT NULL LIMIT 10000
    )
  SELECT * FROM rec WHERE (attr is NOT NULL) OR (attr IS NULL AND parent IS NULL) ORDER BY id;

SELECT id, attr FROM view_elements_attr;
