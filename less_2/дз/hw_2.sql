DROP DATABASE IF EXISTS lesson_2;
CREATE DATABASE lesson_2;
USE lesson_2;
CREATE TABLE sales 
(id int PRIMARY KEY auto_increment,
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

CREATE TABLE orders 
(id int PRIMARY KEY auto_increment,
employed_id int,
count_product CHAR,
amount TIME,
order_status char(10)
);
insert orders 
values 
(1,  "e03", "15.00", "OPEN" ),
(2,  "e01", "25.50", "OPEN"),
(3,  "e05", "100.70", "CLOSED"),
(4,  "e02", "15.00", "OPEN"),
(5,  "e04", "15.00", "CANCELED");
