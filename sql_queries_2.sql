USE sakila;

#Select all the actors with the first name ‘Scarlett’
SELECT * FROM actor
WHERE first_name = 'Scarlett';

#Select all the actors with the last name ‘Johansson’.
SELECT * FROM actor
WHERE last_name = 'Johansson';

#How many films (movies) are available for rent?
SELECT COUNT(film_id) FROM inventory;

#How many films have been rented?
SELECT COUNT(rental_id) FROM rental;

#What is the shortest and longest rental period?
SELECT 
	MIN(DATEDIFF(return_date, rental_date)),
    MAX(DATEDIFF(return_date, rental_date))
FROM rental;

#What are the shortest and longest movie duration?
#Name the values max_duration and min_duration.
SELECT 
	MAX(length) AS max_duration,
    MIN(length) AS min_duration
FROM film;

#What's the average movie duration?
SELECT AVG(`length`) FROM film;

#What's the average movie duration expressed in format (hours, minutes)?
SELECT CONCAT(FLOOR(AVG(length) / 60), ' hour & ', AVG(length) MOD 60, ' minutes')
AS average_movie_duration
FROM film;

#How many movies are longer than 3 hours?
SELECT COUNT(title)
FROM film
WHERE length > 180;

SELECT email FROM customer;

#Get the name and email formatted. 
#Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT CONCAT(first_name, ' ', last_name, ' - ', LOWER(email))
FROM customer;

#What's the length of the longest film title?
SELECT MAX(LENGTH(title)) AS longest_title_length 
FROM film;









