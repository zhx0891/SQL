-- Создайте таблицу с мобильными телефонами
DROP TABLE IF EXISTS phones;
CREATE TABLE phones (id INT NOT NULL, product_name VARCHAR(45), manufacturer VARCHAR(100), product_count INT, price INT, PRIMARY KEY(id));

INSERT INTO phones (id, product_name, manufacturer, product_count, price)
VALUES
(1, 'Galaxy s9', 'Samsung', 5, 50000),
(2, 'Galaxy s8', 'Samsung', '4', 45000),
(3, 'IPhone 8', 'Apple', 7, 70000),
(4, 'IPhone 9', 'Apple', 9, 150000),
(5, 'Redmi 7', 'XIAOMI', 16, 16000);

-- Выведите название, производителя и цену для товара количество которого больше 2
select product_name, manufacturer, price from phones where product_count > 2;
-- Выведите весь ассортимент Samsung 
select product_name from phones where manufacturer = 'Samsung';
-- Вывести товары в которых есть упоминание Iphone
select  id, product_name, manufacturer, price from phones where product_name like 'Iphone%';
-- Вывести товары в которых есть упоминание Samsung
select  id, product_name, manufacturer, price from phones where product_name  or manufacturer like 'Samsung%';
-- Вывести товары в которых есть цифры
select  id, product_name, manufacturer, price from phones where product_name  REGEXP ('[[:digit:]]');
-- Вывести товары в которых есть цифра 8
select  id, product_name, manufacturer, price from phones where product_name regexp '8' ;