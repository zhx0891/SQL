drop database if exists lesson_2_1;
CREATE DATABASE lesson_2_1;
USE lesson_2_1;
drop table if exists buyers;
CREATE TABLE buyers 
(id INT PRIMARY KEY AUTO_INCREMENT,
name char(20),
phone char(20)
);
insert buyers
values
 (1, "Петров Себастьян", "34322"),
 (2, "Себастьянов Пётр", "34522"),
 (3, "Лола Сакс", "39322");
 
drop table if exists orders;
create table orders
(id serial,
 товар char(50),
 buyer_id int,
 foreign key (buyer_id)
 references buyers(id)
);
insert orders
values 
(1, "wood", 2),
(2, "iron", 1),
(3, "tabacco", 3);