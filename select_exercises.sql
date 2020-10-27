USE codeup_test_db;

SELECT 'All Pink Floyd Albums' AS 'Info';
SELECT *
FROM albums
WHERE artist = 'Pink Floyd';

SELECT 'Release date for Sgt Peppers Lonely Hearts Club Band' AS 'Info';
SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'Genre of Album names Nevermind' AS 'Info';
SELECT genre
FROM albums
WHERE name = 'Nevermind';

SELECT 'Albums released in the 1990s' AS 'Info';
SELECT name, release_date
FROM albums
WHERE release_date BETWEEN 1990 and 1999;

SELECT 'Albums with sales less than 20.0 million sales' AS 'Info';
SELECT name
FROM albums
WHERE sales < 20;

SELECT 'Albums with the Genre of Rock' AS 'Info';
SELECT name
FROM albums
WHERE genre = 'Rock';