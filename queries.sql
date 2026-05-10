USE MoviesDB;

-- Top 100 rows from each table
SELECT * FROM Genres LIMIT 100;
SELECT * FROM Movies LIMIT 100;
SELECT * FROM Actors LIMIT 100;
SELECT * FROM MovieActor LIMIT 100;
SELECT * FROM Ratings LIMIT 100;

-- Join query
SELECT
    m.Title,
    g.GenreName,
    r.IMDbRating,
    r.NumVotes
FROM Movies m
JOIN Genres g ON m.GenreID = g.GenreID
JOIN Ratings r ON m.MovieID = r.MovieID
ORDER BY r.IMDbRating DESC
LIMIT 100;

-- Aggregate query
SELECT
    g.GenreName,
    ROUND(AVG(r.IMDbRating), 2) AS AverageRating
FROM Movies m
JOIN Genres g ON m.GenreID = g.GenreID
JOIN Ratings r ON m.MovieID = r.MovieID
GROUP BY g.GenreName
ORDER BY AverageRating DESC;