USE MoviesDB;

-- Insert one genre so the Movies table can reference it.
INSERT IGNORE INTO Genres (GenreName)
VALUES ('Action');

-- Insert movies from the CSV.
INSERT INTO Movies (Title, ReleaseYear, GenreID)
SELECT
    movie_title,
    title_year,
    1
FROM RawMovies
WHERE movie_title IS NOT NULL;

-- Insert actors from the three actor columns.
INSERT IGNORE INTO Actors (ActorName)
SELECT actor_1_name
FROM RawMovies
WHERE actor_1_name IS NOT NULL;

INSERT IGNORE INTO Actors (ActorName)
SELECT actor_2_name
FROM RawMovies
WHERE actor_2_name IS NOT NULL;

INSERT IGNORE INTO Actors (ActorName)
SELECT actor_3_name
FROM RawMovies
WHERE actor_3_name IS NOT NULL;

-- Insert ratings.
INSERT INTO Ratings (MovieID, IMDbRating, NumVotes)
SELECT
    m.MovieID,
    r.imdb_score,
    r.num_voted_users
FROM RawMovies r
JOIN Movies m
  ON TRIM(r.movie_title) = TRIM(m.Title);

-- Link movies to the first actor.
INSERT IGNORE INTO MovieActor (MovieID, ActorID)
SELECT
    m.MovieID,
    a.ActorID
FROM RawMovies r
JOIN Movies m
  ON TRIM(r.movie_title) = TRIM(m.Title)
JOIN Actors a
  ON TRIM(r.actor_1_name) = TRIM(a.ActorName)
WHERE r.actor_1_name IS NOT NULL;