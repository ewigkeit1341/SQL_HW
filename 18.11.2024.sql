//Выведите минимальный рейтинг покупателя среди сделавших заказ в мае 2022 года:
SELECT MIN(customers.rating) AS minrating
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
WHERE orders.order_date BETWEEN '2022-05-01' AND '2022-05-31'

//Выведите продавцов, которые оформили заказ на наибольшую сумму в период с марта по май 2022 года:
SELECT orders.seller_id AS sellid, SUM(orders.amount) AS amt
FROM orders
WHERE orders.order_date BETWEEN '2022-03-01' AND '2022-05-31'
GROUP BY orders.seller_id
ORDER BY amt DESC
LIMIT 1;



















