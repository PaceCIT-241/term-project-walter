CREATE TABLE Genre (
    GenreID INT PRIMARY KEY,
    GenreName VARCHAR(50)
);

CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(100),
    ReleaseYear INT,
    GenreID INT,
    FOREIGN KEY (GenreID) REFERENCES Genre(GenreID)
);

CREATE TABLE Actors (
    ActorID INT PRIMARY KEY,
    ActorName VARCHAR(100)
);

CREATE TABLE MovieActor (
    MovieID INT,
    ActorID INT,
    PRIMARY KEY (MovieID, ActorID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (ActorID) REFERENCES Actors(ActorID)
);

CREATE TABLE Ratings (
    RatingID INT PRIMARY KEY,
    MovieID INT,
    Rating DECIMAL(3,1),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);