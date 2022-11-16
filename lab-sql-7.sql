use sakila;

-- Query 1 -- In the table actor, which are the actors whose last names are not repeated? 
SELECT MAX(first_name), last_name
FROM actor
GROUP BY last_name
HAVING COUNT(DISTINCT first_name) = 1
ORDER BY last_name;

-- Query 2 -- Which last names appear more than once? 
SELECT last_name, COUNT(*) as count
FROM actor
GROUP BY last_name
HAVING COUNT(*) >= 1;

-- Query 3 -- how many rentals were processed by each employee.
SELECT staff_id, COUNT(rental_id) as count
FROM rental
GROUP BY staff_id;

-- Query 4 --how many films were released each year
SELECT release_year, count(film_id)
FROM film
where release_year = 2006
GROUP BY release_year;

-- Query 5 -- Using the film table, find out for each rating how many films were ther
SELECT rating, COUNT(film_id) as count
FROM film
GROUP BY rating;

-- Query 6 -- mean length of the film for each rating type. Round off the average 
-- lengths to two decimal places
SELECT rating, ROUND(AVG(length), 2) as AVG 
FROM film
Group by rating;

-- Query 7 -- 
SELECT rating, ROUND(AVG(rental_duration)) as AVG
FROM film
WHERE rental_duration >=2
GROUP BY rating;




