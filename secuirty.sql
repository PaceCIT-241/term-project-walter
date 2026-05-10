USE MoviesDB;

CREATE ROLE IF NOT EXISTS movie_analyst;

GRANT SELECT ON MoviesDB.* TO movie_analyst;

CREATE USER IF NOT EXISTS 'analyst1'@'localhost' IDENTIFIED BY 'Password123!';
CREATE USER IF NOT EXISTS 'analyst2'@'localhost' IDENTIFIED BY 'Password123!';
CREATE USER IF NOT EXISTS 'analyst3'@'localhost' IDENTIFIED BY 'Password123!';

GRANT movie_analyst TO 'analyst1'@'localhost';
GRANT movie_analyst TO 'analyst2'@'localhost';
GRANT movie_analyst TO 'analyst3'@'localhost';

SET DEFAULT ROLE movie_analyst FOR
'analyst1'@'localhost',
'analyst2'@'localhost',
'analyst3'@'localhost';