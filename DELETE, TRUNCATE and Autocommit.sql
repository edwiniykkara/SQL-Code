-- Select all columns from the table employees
SELECT * FROM employees;

-- Select all columns from the table customer_reviews
SELECT * FROM customer_reviews;

-- Retrieve the current status of autocommit mode
SELECT @@autocommit;

-- Set autocommit mode to OFF, which means transactions must be committed explicitly
SET autocommit = OFF;
-- Note: 1 (ON), 0 (OFF) (run the command 'COMMIT' separately)

-- Delete a specific row from the employees table where employee_id is 4
DELETE FROM employees
WHERE employee_id = 4;

-- Commit the transaction, saving changes made since the last commit or rollback
COMMIT;

-- Delete rows from customer_reviews where customer_review_id is between 1 and 33
DELETE FROM customer_reviews
WHERE customer_review_id BETWEEN 1 and 33;

/* Rollback the transaction, undoing changes made since the last commit
Rollback works only of autocommit is OFF 
*/
ROLLBACK;

/* Remove all rows from the customer_reviews table while keeping the table structure intact
No conditions, No rollbacks
*/
TRUNCATE customer_reviews;
