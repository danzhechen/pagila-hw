/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */
SELECT film_id, title, film.language_id, language.name
FROM film
INNER JOIN language ON film.language_id = language.language_id
WHERE language.name = 'English' AND (film.title LIKE 'K%' OR film.title LIKE 'Q%')
GROUP BY film_id, film.language_id, language.name
ORDER BY title ASC;
