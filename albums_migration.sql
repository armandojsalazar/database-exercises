
USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(20) NOT NULL,
    name VARCHAR(50) NOT NULL DEFAULT 'Untitled',
    release_date YEAR(4),
    sales FLOAT UNSIGNED,
    genre VARCHAR(20),
    PRIMARY KEY(id)
);
DESCRIBE albums;