USE adLister_exercise;


SELECT user_email as 'Email'
FROM users as u
         JOIN ads as a ON a.users_id = u.id
WHERE a.id = #GIVEN ads id;
;

SELECT c.type as 'Category'
FROM ads_category as ac
JOIN category AS c on ac.category_id = c.id
WHERE ac.ads_id = #Given ads id;
;

SELECT *
FROM ads AS a
JOIN ads_category ac on a.id = ac.ads_id
JOIN category c on ac.category_id = c.id
WHERE c.id = #All the category ids
;