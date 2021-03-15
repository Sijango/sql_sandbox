SELECT customer_id, order_id, freight,ship_country
FROM orders
WHERE ship_country LIKE 'N%'
ORDER BY freight DESC
LIMIT 5

SELECT first_name, last_name, home_phone, region
FROM employees
WHERE region IS Null

SELECT COUNT(*)
FROM orders
WHERE ship_region IS NOT Null

SELECT country, COUNT(*)
FROM suppliers
GROUP BY country
ORDER BY COUNT(*) DESC

