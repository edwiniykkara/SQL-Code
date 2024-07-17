-- Use the database named candystore
USE candystore;

-- Remove the column named hourly_wage from the table employees
ALTER TABLE employees
DROP COLUMN hourly_wage;

-- Add a new column named avg_customer_rating to the table employees, with a decimal format (2 digits before the decimal point, 1 digit after)
ALTER TABLE employees
ADD COLUMN avg_customer_rating DECIMAL(2,1);

-- Drop (delete) the table named candy_products from the current database
DROP TABLE candy_products;

-- Drop (delete) the schema (database schema) named candystore_old
DROP SCHEMA candystore_old;
