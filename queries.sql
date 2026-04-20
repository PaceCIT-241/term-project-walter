SELECT * FROM Movies LIMIT 100;

SELECT M.Title, G.GenreName
FROM Movies M
JOIN Genre G ON M.GenreID = G.GenreID
LIMIT 100;

SELECT AVG(Rating) AS AvgRating
FROM Ratings;