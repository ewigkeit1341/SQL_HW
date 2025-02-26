//1. Вывести имя продавца и сумму его заказов:
SELECT sellers.name AS seller_name, SUM(orders.amount) AS total_orders
FROM sellers
JOIN orders ON sellers.seller_id = orders.seller_id
GROUP BY sellers.name;

//Вывести имя клиента и сумму его заказов:
SELECT clients.name AS client_name, SUM(orders.amount) AS total_orders
FROM clients
JOIN orders ON clients.client_id = orders.client_id
GROUP BY clients.name;

//Вывести всех продавцов, включая тех, у кого нет заказов:
SELECT sellers.name AS seller_name, SUM(orders.amount) AS total_orders
FROM sellers
LEFT JOIN orders ON sellers.seller_id = orders.seller_id
GROUP BY sellers.name;

//Вывести все заказы, включая информацию о продавцах, даже если не все продавцы сделали заказы:
SELECT orders.*, sellers.name AS seller_name
FROM orders
LEFT JOIN sellers ON orders.seller_id = sellers.seller_id;

//Вывести продавцов и их начальников:
SELECT sellers.name AS seller_name, managers.name AS manager_name
FROM sellers
JOIN managers ON sellers.manager_id = managers.manager_id;

//Найти всех клиентов из города "Москва" и суммы их заказов:
SELECT clients.name AS client_name, SUM(orders.amount) AS total_orders
FROM clients
JOIN orders ON clients.client_id = orders.client_id
WHERE clients.city = 'Москва'
GROUP BY clients.name;


//Найти всех продавцов из города "Сочи" и их заказы, если таковые имеются:
SELECT sellers.name AS seller_name, orders.*
FROM sellers
LEFT JOIN orders ON sellers.seller_id = orders.seller_id
WHERE sellers.city = 'Сочи';

//Найти всех клиентов с заказами выше 5000 и информацию о продавцах, которые их обслуживали:
SELECT clients.name AS client_name, orders.amount, sellers.name AS seller_name
FROM clients
JOIN orders ON clients.client_id = orders.client_id
JOIN sellers ON orders.seller_id = sellers.seller_id
WHERE orders.amount > 5000;

//Найти всех продавцов, у которых есть начальники:
SELECT sellers.name AS seller_name, managers.name AS manager_name
FROM sellers
JOIN managers ON sellers.manager_id = managers.manager_id;

//Вывести пары покупателей и обслуживших их продавцов из одного города:
SELECT clients.name AS client_name, sellers.name AS seller_name
FROM clients
JOIN orders ON clients.client_id = orders.client_id
JOIN sellers ON orders.seller_id = sellers.seller_id
WHERE clients.city = sellers.city;



