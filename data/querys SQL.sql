-- VERIFICACION AL DEVOLVER LA PELICULA

create table if not exists verify
select f.film_id, f.title, f.rental_days, i.inventory_id, r.rental_id, r.rent_days, 
case when f.rental_days > r.rent_days then 'pay'
else 'ok'
end
as penalty
from film as f
inner join inventory as i
on f.film_id = i.film_id
inner join rental as r
on i.inventory_id = r.inventory_id;
select * from verify;



-- CREO TABLA CON EL CALCULO DE MULTA AL DEVOLVER LA PELICULA FUERA DE PLAZO
-- 1.5 POR CADA DIA DE RETRASO

create table if not exists punishments
select v.rental_id, v.rent_days, v.penalty,
(rental_days - rent_days) * 1.5 as punishment
from verify as v
where penalty = 'pay';
select * from punishments;



-- LAS 5 PELÍCULAS QUE MAS SE ALQUILAN

select r.rental_id, f.film_id, f.title,
count(f.film_id) as summatory
from rental as r
inner join inventory as i
on r.inventory_id = i.inventory_id
inner join film as f
on i.film_id = f.film_id
group by f.title
order by count(f.film_id) desc limit 5;



-- EL DIA QUE MAS PELICULAS SE ALQUILARON Y CUANTAS

select r.rental_date, count(r.rental_date) as count
from rental as r
group by r.rental_date
order by count(r.rental_date) desc limit 1;



-- RECAUDACION POR CATEGORIAS

select c.name, sum(f.rental_price) as price
from category as c
inner join old_hdd as o
on c.category_id = o.category_id
inner join film as f
on o.film_id = f.film_id
inner join inventory as i
on f.film_id = i.film_id
inner join rental as r
on i.inventory_id = r.inventory_id
group by c.name
order by sum(rental_price) desc;



-- NUMERO DE PELICULAS EN LAS QUE HA PARTICIPADO CADA ACTOR

select a.name, count(f.title) as count
from actor as a
inner join old_hdd as o
on a.actor_id = o.actor_id
inner join film as f
on o.film_id = f.film_id
group by a.name
order by count(f.title) desc;



-- NUMERO DE PELICULAS POR CATEGORIA

select c.name, count(i.inventory_id) as number
from category as c
inner join  old_hdd as o
on c.category_id = o.category_id
inner join film as f
on o.film_id = f.film_id
inner join inventory as i
on f.film_id = i.film_id
group by c.category_id
order by count(i.inventory_id) desc;



-- PELICULAS MENOS ALQUILADAS

select f.title, count(r.rental_id) as number
from rental as r
inner join inventory as i
on r.inventory_id = i.inventory_id
inner join film as f
on i.film_id = f.film_id
group by f.title
order by count(r.rental_id) asc;



-- RECAUDACION POR PELICULA

select f.title, sum(f.rental_price) as suma
from rental as r
inner join inventory as i
on r.inventory_id = i.inventory_id
inner join film as f
on i.film_id = f.film_id
group by f.title
order by suma desc;



-- PELICULA MAS ALQUILADA DE LA CATEGORIA HORROR

select f.title, count(r.rental_id) as number, c.name
from rental as r
inner join inventory as i
on r.inventory_id = i.inventory_id
inner join film as f
on i.film_id = f.film_id
inner join old_hdd as o
on f.film_id = f.film_id
inner join category as c
on o.category_id = c.category_id
where c.name = 'horror'
group by f.title
order by number desc;