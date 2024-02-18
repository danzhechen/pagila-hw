/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */
SELECT country.country, SUM(payment.amount) AS profit
FROM customer
INNER JOIN rental ON rental.customer_id = customer.customer_id
INNER JOIN payment ON payment.rental_id = rental.rental_id
INNER JOIN address ON address.address_id = customer.address_id
INNER JOIN city ON city.city_id = address.city_id
INNER JOIN country ON country.country_id = city.country_id
GROUP BY country.country
ORDER BY country.country ASC;
