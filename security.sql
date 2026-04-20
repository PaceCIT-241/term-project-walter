CREATE ROLE movie_read;

GRANT SELECT ON MoviesDB.* TO movie_read;

CREATE USER 'viewer'@'localhost' IDENTIFIED BY 'password';

GRANT movie_read TO 'viewer'@'localhost';