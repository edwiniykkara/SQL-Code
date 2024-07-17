SELECT
    category.name AS category_number,
    actor.first_name,
    actor.last_name
FROM category
	INNER JOIN film_category
		ON category.category_id = film_category.category_id
    INNER JOIN film
		ON film_category.film_id = film.film_id
	INNER JOIN film_actor
		ON film.film_id = film_actor.film_id
	INNER JOIN actor
		ON film_actor.actor_id = actor.actor_id
