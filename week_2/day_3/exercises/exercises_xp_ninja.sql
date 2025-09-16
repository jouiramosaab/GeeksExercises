--- exercises 1 :

SELECT r.rental_id, r.rental_date, c.first_name, c.last_name, f.title
FROM rental r
JOIN customer c ON r.customer_id = c.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
WHERE r.return_date IS NULL;

SELECT c.customer_id, c.first_name, c.last_name, COUNT(r.rental_id) AS rentals_out
FROM rental r
JOIN customer c ON r.customer_id = c.customer_id
WHERE r.return_date IS NULL
GROUP BY c.customer_id, c.first_name, c.last_name;

SELECT f.title, f.description
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE a.first_name = 'Joe' AND a.last_name = 'Swank' AND c.name = 'Action';

CREATE VIEW out_rentals AS
SELECT r.rental_id, r.rental_date, c.first_name, c.last_name, f.title
FROM rental r
JOIN customer c ON r.customer_id = c.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
WHERE r.return_date IS NULL;


-- exercises 2 : 


SELECT s.store_id, a.address, ci.city, co.country
FROM store s
JOIN address a ON s.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country co ON ci.country_id = co.country_id;


SELECT s.store_id, SUM(f.length) AS total_length_minutes
FROM inventory i
JOIN store s ON i.store_id = s.store_id
JOIN film f ON i.film_id = f.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id AND r.return_date IS NULL
WHERE r.rental_id IS NULL OR r.return_date IS NULL
GROUP BY s.store_id;

SELECT DISTINCT c.customer_id, c.first_name, c.last_name, ci.city
FROM customer c
JOIN address a ON c.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
WHERE ci.city IN (
    SELECT ci2.city
    FROM store s
    JOIN address a2 ON s.address_id = a2.address_id
    JOIN city ci2 ON a2.city_id = ci2.city_id
);

SELECT DISTINCT c.customer_id, c.first_name, c.last_name, co.country
FROM customer c
JOIN address a ON c.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country co ON ci.country_id = co.country_id
WHERE co.country IN (
    SELECT co2.country
    FROM store s
    JOIN address a2 ON s.address_id = a2.address_id
    JOIN city ci2 ON a2.city_id = ci2.city_id
    JOIN country co2 ON ci2.country_id = co2.country_id
);

SELECT f.title, f.length,
       f.length/60.0 AS hours,
       f.length/1440.0 AS days
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name <> 'Horror'
AND f.title !~* '(beast|monster|ghost|dead|zombie|undead)'
AND f.description !~* '(beast|monster|ghost|dead|zombie|undead)';

SELECT f.title, f.length,
       f.length/60.0 AS hours,
       f.length/1440.0 AS days
FROM film f;
