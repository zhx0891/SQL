SELECT * FROM products ORDER BY id; -- Запрос сортирует результат выборки по полю id

-- Чтобы отсортировать таблицу по каталогам, 
-- в рамках каждого каталога, по цене, мы можем указать
-- после ключевого слова ORDER BY сначала поле catalog_id, а затем поле price:

SELECT id, catalog_id, price, name FROM products ORDER BY catalog_id desc , price ;

SELECT * FROM products
ORDER BY name
LIMIT 2 OFFSET 1;


SELECT DISTINCT catalog_id FROM products ORDER BY catalog_id;
SELECT catalog_id FROM products GROUP BY catalog_id;

SELECT 
	id, name, 
	SUBSTRING(birthday_at, 1, 3) AS decade 
FROM users
order BY decade;

SELECT COUNT(*), 
	SUBSTRING(birthday_at, 1, 3) AS decade
FROM users
GROUP BY decade;

SELECT
	COUNT(*) AS total,
	SUBSTRING(birthday_at, 1, 3) AS decade
FROM users
GROUP BY decade
ORDER BY total DESC;


SELECT
	GROUP_CONCAT(name),
	SUBSTRING(birthday_at, 1, 3) AS decade
FROM users
GROUP BY decade;

SELECT
	GROUP_CONCAT(name SEPARATOR '|'),
	SUBSTRING(birthday_at, 1, 3) AS decade
FROM users
GROUP BY decade;


SELECT
	GROUP_CONCAT(name ORDER BY name desc  SEPARATOR ' * '),
	SUBSTRING(birthday_at, 1, 3) AS decade
FROM users
GROUP BY decade;