USE MoviesDB;

CREATE OR REPLACE VIEW HighRatedMovies AS
SELECT
    m.Title,
    g.GenreName,
    r.IMDbRating,
    r.NumVotes
FROM Movies m
JOIN Genres g ON m.GenreID = g.GenreID
JOIN Ratings r ON m.MovieID = r.MovieID
WHERE r.IMDbRating >= 8.0
ORDER BY r.IMDbRating DESC;