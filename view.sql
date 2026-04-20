CREATE VIEW HighRatedMovies AS
SELECT M.Title, R.Rating
FROM Movies M
JOIN Ratings R ON M.MovieID = R.MovieID
WHERE R.Rating > 8;