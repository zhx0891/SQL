drop database if exists lesson_3;
create database lesson_3;
use lesson_3;
drop table if exists tb1;
create table  tb1 (id INT(8) ZEROFILL);
insert into tb1 values (5);
insert into tb1 values (50444);
alter table tb1 add collect JSON;
INSERT INTO tb1 VALUES(1, '{"first": "Hello", "second": "World"}');
 
-- SELECT * FROM tb1;
-- SELECT collect->>"$.first" FROM tb1;  -- Получить значение по ключу "first" - "Hello"
-- SELECT collect->>"$.second" FROM tb1;  -- Получить значение по ключу "second" - "World"


-- CURRENT_TIMESTAMP возвращает текущую дату и время
-- COMMENT - комментарий к объекту

DROP TABLE IF EXISTS products;

CREATE TABLE products (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255) COMMENT 'Название',
	description TEXT COMMENT 'Описание',
	price DECIMAL (11,2) COMMENT 'Цена',
	catalog_id INT UNSIGNED,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Товарные позиции';


INSERT INTO products
(name, description, price, catalog_id)
VALUES
('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров,
основанных на платформе Intel.', 7890.00, 1),
('Intel Core i5-7400', 'Процессор для настольных персональных компьютеров,
основанных на платформе Intel.', 12700.00, 1),
('AMD FX-8320E', 'Процессор для настольных персональных компьютеров,
основанных на платформе AMD.', 4780.00, 1),
('AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных
на платформе AMD.', 7120.00, 1),
('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370,
Socket 1151-V2, DDR4, ATX', 19310.00, 2),
('Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket
1151-V2, DDR4, mATX', 4790.00, 2),
('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket
1151, DDR4, mATX', 5060.00, 2);


CREATE TABLE users (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255) COMMENT 'Имя покупателя',
	birthday_at DATE COMMENT 'Дата рождения',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';
INSERT INTO users (name, birthday_at)
 VALUES
	('Геннадий', '1990-10-05'),
	('Наталья', '1984-11-12'),
	('Александр', '1985-05-20'),
	('Сергей', '1988-02-14'),
	('Иван', '2001-01-12'),
	('Мария', '2002-08-29');