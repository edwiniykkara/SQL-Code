CREATE TABLE inventory
SELECT
	inventory_id,
    film_id,
    store_id
FROM inventory_non_normalized
ORDER BY inventory_id;

CREATE TABLE film
SELECT DISTINCT
    film_id,
    title,
    description,
    release_year,
    rating,
    rental_rate
FROM inventory_non_normalized
ORDER BY film_id;

CREATE TABLE store
SELECT DISTINCT
    store_id,
    store_manager_first_name,
    store_manager_last_name,
    store_address,
    store_city,
    store_district
FROM inventory_non_normalized;

