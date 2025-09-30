-- EXERCISE 1: DVD Rental



SELECT rating, COUNT(*) AS total_films
FROM film
GROUP BY rating;

SELECT title, rating
FROM film
WHERE rating IN ('G', 'PG-13');

SELECT title, rating, length, rental_rate
FROM film
WHERE rating IN ('G', 'PG-13')
  AND length < 120
  AND rental_rate < 3.00
ORDER BY title ASC;

UPDATE customer
SET first_name = 'Mosaab',
    last_name = 'YourLastName',
    email = 'mosaab@example.com'
WHERE customer_id = 1;

UPDATE address
SET address = '123 Your Street',
    city_id = 1,
    postal_code = '10000'
WHERE address_id = 1;


-- EXERCISE 2:


UPDATE students
SET birth_date = '1998-02-11'
WHERE first_name IN ('Lea', 'Marc') AND last_name = 'Benichou';

UPDATE students
SET last_name = 'Guez'
WHERE first_name = 'David' AND last_name = 'Grez';

DELETE FROM students
WHERE first_name = 'Lea' AND last_name = 'Benichou';

SELECT COUNT(*) AS total_students FROM students;

SELECT COUNT(*) AS born_after_2000
FROM students
WHERE birth_date > '2000-01-01';

ALTER TABLE students
ADD COLUMN math_grade INT;

UPDATE students SET math_grade = 80 WHERE id = 1;
UPDATE students SET math_grade = 90 WHERE id IN (2,4);
UPDATE students SET math_grade = 40 WHERE id = 6;

SELECT COUNT(*) AS high_grade
FROM students
WHERE math_grade > 83;

INSERT INTO students (first_name, last_name, birth_date, math_grade)
VALUES ('Omer', 'Simpson', '1998-02-11', 70);

SELECT first_name, last_name, COUNT(math_grade) AS total_grade
FROM students
GROUP BY first_name, last_name;

SELECT SUM(math_grade) AS total_sum
FROM students;

-- EXERCISE 3: 


CREATE TABLE purchases (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    item_id INT REFERENCES items(item_id),
    quantity_purchased INT
);

INSERT INTO purchases (customer_id, item_id, quantity_purchased)
VALUES
((SELECT customer_id FROM customers WHERE first_name='Scott' AND last_name='Scott'), 
 (SELECT item_id FROM items WHERE item_name='fan'), 1),
((SELECT customer_id FROM customers WHERE first_name='Melanie' AND last_name='Johnson'), 
 (SELECT item_id FROM items WHERE item_name='large desk'), 10),
((SELECT customer_id FROM customers WHERE first_name='Greg' AND last_name='Jones'), 
 (SELECT item_id FROM items WHERE item_name='small desk'), 2);

SELECT * FROM purchases;

SELECT p.*, c.first_name, c.last_name
FROM purchases p
JOIN customers c ON p.customer_id = c.customer_id;

SELECT * FROM purchases
WHERE customer_id = 5;

SELECT * FROM purchases
WHERE item_id IN (
    SELECT item_id FROM items WHERE item_name IN ('large desk','small desk')
);

SELECT c.first_name, c.last_name, i.item_name
FROM purchases p
JOIN customers c ON p.customer_id = c.customer_id
JOIN items i ON p.item_id = i.item_id;

-- INSERT INTO purchases (customer_id, quantity_purchased) VALUES (1, 1);
-- Explanation: Cannot insert because item_id is NOT NULL and foreign key requires a valid item_id.


