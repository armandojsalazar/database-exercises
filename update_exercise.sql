USE codeup_test_db

SELECT name
FROM albums;
UPDATE albums
SET sales = sales * 10;

SELECT name
FROM albums
WHERE release_date = 1980;
UPDATE albums
SET release_date = 1980
WHERE release_date = 1800;

SELECT name
FROM albums
WHERE artist = 'Micheal Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Micheal Jackson'