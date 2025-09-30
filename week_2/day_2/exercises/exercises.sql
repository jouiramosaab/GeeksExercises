--  exercises 1

-- 1
select * from items order by price asc
-- 2
select * from items where price >= 80 order by price desc 
-- 3
select first_name,last_name from customers order by first_name limit 3
-- 4
select last_name from customers order by last_name desc


-- Exercises 2

-- 1 Select all columns from customer
SELECT * 
FROM customer;

-- 2 Display names using alias full_name
SELECT first_name || ' ' || last_name AS full_name
FROM customer;

-- 3 Get all unique create_date
SELECT DISTINCT create_date
FROM customer;

-- 4 All customer details in descending order by first_name
SELECT *
FROM customer
ORDER BY first_name DESC;

-- 5 Film details ordered by rental_rate ascending
SELECT film_id, title, description, release_year, rental_rate
FROM film
ORDER BY rental_rate ASC;

-- 6 Address & phone of customers in Texas
SELECT address, phone
FROM address
WHERE district = 'Texas';

-- 7 Movies with film_id 15 or 150
SELECT *
FROM film
WHERE film_id IN (15, 150);

-- 8 Check if favorite movie exists
SELECT film_id, title, description, length, rental_rate
FROM film
WHERE title = 'Apache Divine';

-- 9 Movies starting with first 2 letters of favorite movie
SELECT film_id, title, description, length, rental_rate
FROM film
WHERE title LIKE 'Ap%';

-- 10 cheapest movies
SELECT *
FROM film
ORDER BY rental_rate ASC
LIMIT 10;

-- 11 Next 10 cheapest movies without LIMIT using window function
WITH ranked_films AS (
    SELECT
        film_id,
        title,
        rental_rate,
        ROW_NUMBER() OVER (ORDER BY rental_rate ASC) AS rn
    FROM film
)
SELECT film_id, title, rental_rate
FROM ranked_films
WHERE rn BETWEEN 11 AND 20;

-- 12 Join customer and payment
SELECT c.first_name, c.last_name, p.amount, p.payment_date
FROM customer c
INNER JOIN payment p
ON c.customer_id = p.customer_id
ORDER BY c.customer_id;

-- 13 Movies not in inventory
SELECT f.*
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
WHERE i.inventory_id IS NULL;

-- 14 Find which city is in which country
SELECT city.city, country.country
FROM city
INNER JOIN country ON city.country_id = country.country_id;

-- 15 Payments ordered by staff
SELECT c.customer_id, c.first_name, c.last_name, p.amount, p.payment_date, s.staff_id
FROM customer c
INNER JOIN payment p ON c.customer_id = p.customer_id
INNER JOIN staff s ON p.staff_id = s.staff_id
ORDER BY s.staff_id, c.customer_id;
