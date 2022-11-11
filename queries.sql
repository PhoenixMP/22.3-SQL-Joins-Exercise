--1)
SELECT *
FROM owners
    FULL JOIN vehicles ON vehicles.owner_id = owners.id;
--2)
SELECT first_name,
    last_name,
    COUNT(*) AS "count"
FROM owners
    JOIN vehicles ON vehicles.owner_id = owners.id
GROUP BY owners.id
ORDER BY first_name;
--3)
SELECT first_name,
    last_name,
    round(avg(v.price)) AS average_price,
    COUNT(o.id) AS "count"
FROM owners o
    JOIN vehicles v ON v.owner_id = o.id
GROUP BY o.id
HAVING avg(v.price) > 10000
    AND COUNT(o.id) > 1
ORDER BY first_name DESC;