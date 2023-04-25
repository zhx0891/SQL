use lesson_3;
-- Отсортируйте данные по полю заработная плата (salary) в порядке:

# убывания
SELECT * FROM staff ORDER BY salary desc;

# возрастания
SELECT * FROM staff ORDER BY salary;



-- Выведите 5 максимальных заработных плат 
select distinct  salary  FROM staff ORDER BY salary desc limit 5;



-- Посчитайте суммарную зарплату  по каждой специальности
select post, sum(salary) as total_salary from staff group by post;



-- Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.

SELECT COUNT(*) FROM staff WHERE post = 'Рабочий' and  age between 24 and 49;



-- Найдите количество специальностей

select count(distinct post) from staff;




-- Выведите специальности, у которых средний возраст сотрудников меньше 30 лет
use lesson_3;
select post from staff  
group by post
HAVING AVG(age) < 30;
