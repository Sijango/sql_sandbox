SELECT company_name, product_name
FROM suppliers
LEFT JOIN products ON suppliers.supplier_id = products.supplier_id

SELECT c.company_name, CONCAT(e.first_name, ' ', e.last_name)
FROM orders AS o
JOIN customers AS c USING(customer_id)
JOIN employees AS e USING(employee_id)
JOIN shippers AS s ON o.ship_via = s.shipper_id
WHERE s.company_name = 'Speedy Express' AND c.city = 'London' AND e.city = 'London'

SELECT product_name, units_in_stock, contact_name, phone
FROM products
JOIN categories USING(category_id)
JOIN suppliers USING(supplier_id)
WHERE category_name IN ('Beverages', 'Seafood') AND discontinued = 0 AND units_in_stock < 20
ORDER BY units_in_stock

SELECT contact_name, order_id
FROM customers
LEFT JOIN orders USING(customer_id)
WHERE order_id IS Null
ORDER BY contact_name