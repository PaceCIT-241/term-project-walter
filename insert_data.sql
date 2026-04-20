-- Genres
INSERT INTO Genre VALUES (1, 'Action'), (2, 'Comedy'), (3, 'Drama');

-- Movies
INSERT INTO Movies VALUES 
(1, 'Inception', 2010, 1),
(2, 'Superbad', 2007, 2),
(3, 'The Pursuit of Happyness', 2006, 3);

-- Actors
INSERT INTO Actors VALUES
(1, 'Leonardo DiCaprio'),
(2, 'Jonah Hill'),
(3, 'Will Smith');

-- MovieActor
INSERT INTO MovieActor VALUES
(1, 1),
(2, 2),
(3, 3);

-- Ratings
INSERT INTO Ratings VALUES
(1, 1, 8.8),
(2, 2, 7.6),
(3, 3, 8.0);