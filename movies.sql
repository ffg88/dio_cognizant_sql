CREATE DATABASE movies_control;

USE movies_control;

CREATE TABLE movies(
	id INT PRIMARY KEY AUTO_INCREMENT,
    type INT NOT NULL,
    name VARCHAR(30) NOT NULL,
    total_ep INT,
    atual_ep INT,
    last_view DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO movies (type, name, total_ep, atual_ep) VALUES (
	0,
    "Friends",
    10,
    1
);

INSERT INTO movies (type, name) VALUES (
	1,
    "Avengers"
);

UPDATE movies SET atual_ep = 3, last_view = CURRENT_TIMESTAMP WHERE movies.id = 1;

INSERT INTO movies (type, name, total_ep, atual_ep) VALUES (0, "Breaking Bad", 20, 1), (1, "Fight Club", NULL, NULL), (1, "Taxi Driver", NULL, NULL);

DELETE FROM movies WHERE id = 4;

SELECT * FROM movies;