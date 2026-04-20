-- Top 100 movies
SELECT * FROM Movies LIMIT 100;

-- Join Movies and Genre
SELECT M.Title, G.GenreName
FROM Movies M
JOIN Genre G ON M.GenreID = G.GenreID
LIMIT 100;

-- Average rating
SELECT AVG(Rating) AS AvgRating
FROM Ratings;
