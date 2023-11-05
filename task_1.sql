
SELECT Customers.name AS customer_name, COUNT(Orders.order_id) AS total_orders
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
GROUP BY Customers.customer_id, Customers.name
ORDER BY total_orders DESC;
