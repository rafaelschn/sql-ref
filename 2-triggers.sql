DROP TRIGGER IF EXISTS trigger_name;

CREATE TRIGGER IF NOT EXISTS trigger_name 
   AFTER INSERT 
   ON users
BEGIN
 INSERT INTO users_mirror (id, name) VALUES (new.id, new.name);
END;

CREATE TRIGGER IF NOT EXISTS trigger_name 
   AFTER UPDATE
   ON users
BEGIN
 UPDATE users_mirror SET name = new.name WHERE id = new.id;
END;

CREATE TRIGGER IF NOT EXISTS trigger_name 
   AFTER DELETE
   ON users
BEGIN
 DELETE FROM users_mirror WHERE id = old.id;
END;
