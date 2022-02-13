CREATE TABLE "elements" (
  "id" INTEGER,
  "parent" INTEGER,
  "name" TEXT NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT),
  FOREIGN KEY("parent") REFERENCES "elements"("id")
);
