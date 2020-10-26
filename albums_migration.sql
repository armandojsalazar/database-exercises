
USE codeup_test_db;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(20),
    name VARCHAR(20),
    release_date INT (4),
    sales FLOAT(8),
    genre VARCHAR(20),
    PRIMARY KEY(id)
);
DESCRIBE albums;