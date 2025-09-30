
-- EXERCISE 1 BONUS: 


SELECT first_name, last_name, email, address_id
FROM customers
ORDER BY last_name ASC, first_name ASC
LIMIT 2;

DELETE FROM purchases
WHERE customer_id = (
    SELECT customer_id 
    FROM customers 
    WHERE first_name='Scott' AND last_name='Scott'
);

SELECT *
FROM customers
WHERE first_name='Scott' AND last_name='Scott';
--  Scott still exists only his purchases were deleted.

SELECT p.id AS purchase_id,
       c.first_name,
       c.last_name,
       p.item_id,
       p.quantity_purchased
FROM purchases p
LEFT JOIN customers c ON p.customer_id = c.customer_id;

SELECT p.id AS purchase_id,
       c.first_name,
       c.last_name,
       p.item_id,
       p.quantity_purchased
FROM purchases p
INNER JOIN customers c ON p.customer_id = c.customer_id;
