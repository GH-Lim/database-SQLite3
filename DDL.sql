-- DDL Data Definition Language
/*

*/
DROP TABLE classmates;
CREATE TABLE classmates (
    name TEXT,
    age INT,
    address TEXT
);

DROP TABLE classmates;
CREATE TABLE classmates (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INT NOT NULL,
    address TEXT NOT NULL
);

DROP TABLE classmates;
CREATE TABLE classmates (
    name TEXT NOT NULL,
    age INT NOT NULL,
    address TEXT NOT NULL
);

CREATE TABLE tests (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE articles(
    title TEXT NOT NULL,
    content TEXT NOT NULL
);
INSERT INTO articles VALUES ('1번째 글', 'hello database');
ALTER TABLE articles RENAME TO news;
ALTER TABLE news ADD COLUMN created_at DATETIME NOT NULL;
ALTER TABLE news ADD COLUMN created_at DATETIME;
INSERT INTO news VALUES ('title','content', datetime('now', 'localtime'));
ALTER TABLE news ADD COLUMN subtitle TEXT NOT NULL DEFAULT 1;

