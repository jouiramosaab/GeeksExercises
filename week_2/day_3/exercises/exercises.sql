-- Exercise 1: DVD Rental


SELECT * FROM language;


SELECT f.title, f.description, l.name AS language_name
FROM film f
INNER JOIN language l ON f.language_id = l.language_id;


SELECT f.title, f.description, l.name AS language_name
FROM language l
LEFT JOIN film f ON f.language_id = l.language_id;


CREATE TABLE new_film(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO new_film(name) VALUES 
('Movie1'), 
('Movie2'), 
('Movie3');


CREATE TABLE customer_review(
    review_id SERIAL PRIMARY KEY,
    film_id INT REFERENCES new_film(id) ON DELETE CASCADE,
    language_id INT REFERENCES language(language_id),
    title VARCHAR(100),
    score INT CHECK (score BETWEEN 1 AND 10),
    review_text TEXT,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO customer_review(film_id, language_id, title, score, review_text)
VALUES
(1, 1, 'Amazing!', 9, 'Loved it!'),
(2, 2, 'Not bad', 7, 'It was okay.');


DELETE FROM new_film WHERE id = 1;
-- حذف فيلم عندو مراجعة (ON DELETE CASCADE يحذف المراجعات تلقائياً)


-- Exercise 2: DVD Rental



UPDATE film
SET language_id = 2
WHERE film_id = 3;


SELECT
    tc.table_name,
    kcu.column_name,
    ccu.table_name AS foreign_table_name,
    ccu.column_name AS foreign_column_name
FROM 
    information_schema.table_constraints AS tc 
JOIN 
    information_schema.key_column_usage AS kcu
    ON tc.constraint_name = kcu.constraint_name
JOIN 
    information_schema.constraint_column_usage AS ccu
    ON ccu.constraint_name = tc.constraint_name
WHERE constraint_type = 'FOREIGN KEY' AND tc.table_name='customer';

DROP TABLE customer_review;

SELECT COUNT(*) AS outstanding_rentals
FROM rental
WHERE return_date IS NULL;

SELECT f.title, r.rental_rate
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
WHERE r.return_date IS NULL
ORDER BY r.rental_rate DESC
LIMIT 30;


SELECT f.title
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
WHERE f.description ILIKE '%sumo wrestler%'
AND a.first_name = 'Penelope' AND a.last_name = 'Monroe';

SELECT title
FROM film
WHERE length < 60
AND rating = 'R';

SELECT f.title
FROM rental r
JOIN customer c ON r.customer_id = c.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
WHERE c.first_name = 'Matthew' AND c.last_name = 'Mahan'
AND r.amount > 4
AND r.return_date BETWEEN '2005-07-28' AND '2005-08-01';

SELECT f.title
FROM rental r
JOIN customer c ON r.customer_id = c.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
WHERE c.first_name = 'Matthew' AND c.last_name = 'Mahan'
AND (f.title ILIKE '%boat%' OR f.description ILIKE '%boat%')
ORDER BY f.replacement_cost DESC
LIMIT 1;
