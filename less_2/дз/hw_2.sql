DROP DATABASE IF EXISTS lesson_2;
CREATE DATABASE lesson_2;
USE lesson_2;
-- 1. Используя операторы языка SQL, создайте таблицу “sales”. Заполните ее данными.
CREATE TABLE sales 
(id serial,
order_date DATE,
count_product int
);
insert sales (id, order_date, count_product)
values 
(1,  "2022-01-01", 156),
(2,  "2022-01-02", 180),
(3,  "2022-01-03", 19),
(4,  "2022-01-01", 124),
(5,  "2022-01-01", 341);

-- 2. Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва. 

SELECT 
	id AS 'id_заказа',
	CASE 
		WHEN count_product < 100 THEN 'маленький заказ'
		WHEN count_product BETWEEN 100 AND 300 THEN 'Средний заказ'
		WHEN count_product > 100 THEN 'Большой заказ'
		ELSE 'Не определено'
	END AS 'Тип заказа'	
FROM sales;

-- 3. Создайте таблицу “orders”, заполните ее значениями


CREATE TABLE orders 
(id serial,
employed_id char(10),
amount double,
order_status char(10)
);
insert orders 
values 
(1,  "e03", 15.00, "OPEN" ),
(2,  "e01", 25.50, "OPEN"),
(3,  "e05", 100.70, "CLOSED"),
(4,  "e02", 22.00, "OPEN"),
(5,  "e04", 9.50, "CANCELED");

-- Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status

SELECT 
	id AS 'Номер заказа',
	CASE order_status 
		WHEN 'OPEN' THEN 'Order is in open state' 
		WHEN 'CLOSED' THEN 'Order is closed'
		WHEN 'CANCELED' THEN 'Order is canceled'
		ELSE 'Не указана'
	END AS 'Full_Order_Status'	
FROM orders;


