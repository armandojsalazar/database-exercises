USE codeup_test_db;

SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

SELECT year
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre
FROM albums
WHERE name = 'Nevermind';

SELECT name
FROM album
WHERE year = 1990;

SELECT name
FROM albums
WHERE sales = <20.0;

SELECT name
FROM albums
WHERE genre = 'Rock';