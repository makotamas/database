-- 1. feladat
select first_name, last_name from sakila.actor;

-- 2. feladat
-- a.)
select concat(first_name, ' ', last_name) as 'Actor name'
from sakila.actor;

-- b.)
select actor_id, first_name, last_name
from sakila.actor
where first_name = 'JOE';

-- c.)
select * 
from sakila.actor
where last_name like '%gen%';

-- d.)
select *
from sakila.actor
where last_name like '%li%'
order by 3, 2;

-- 3. feladat
select count(distinct last_name)
from sakila.actor;

-- 4. feladat
select last_name, count(last_name) as name_count
from sakila.actor
group by last_name
having count(last_name) > 1;

-- 5. feladat
select country_id, country
from sakila.country
where country in ('China', 'Afghanistan', 'Israel');

-- 6. feladat
select avg(sakila.film.length) as avg_lenght
from sakila.film;

-- 7. feladat
select first_name, last_name, address
from sakila.staff
join sakila.address using (address_id);

-- 8. feladat
select first_name, last_name, amount
from sakila.customer
join sakila.payment using (customer_id)
limit 10;

-- 9. feladat
select title, first_name, last_name
from sakila.film
join sakila.film_actor using (film_id)
join sakila.actor using (actor_id)
limit 20;






