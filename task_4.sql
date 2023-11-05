SELECT
    C.name AS customer_name,
    SUM(OI.quantity * OI.unit_price) AS total_purchase_amount
FROM Customers C
    LEFT JOIN Orders O ON C.customer_id = O.customer_id
    LEFT JOIN Order_Items OI ON O.order_id = OI.order_id
GROUP BY
    C.customer_id,
    customer_name
ORDER BY
    total_purchase_amount DESC
LIMIT 5;