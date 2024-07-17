USE thriftshop;

SELECT * FROM inventory;

SELECT * FROM employees;

INSERT INTO inventory VALUES 
(10,'wolf skin hat',1);

INSERT INTO inventory VALUES 
(11,'fur fox skin',1),
(12,'plaid button up shirt',8),
(13,'flannel zebra jammies', 6);

UPDATE inventory
SET number_in_stock = 0 -- we sold out
WHERE inventory_id IN (1,9);

INSERT INTO employees VALUES 
(7,'Charles','Munger','2020-03-15','Clerk',NULL),
(8,'William','Gates','2020-03-15','Clerk',NULL);

UPDATE employees
SET avg_customer_rating = 4.8
WHERE employee_id = 1;

UPDATE employees
SET avg_customer_rating = 4.6
WHERE employee_id = 2;

UPDATE employees
SET avg_customer_rating = 4.75
WHERE employee_id = 3;

UPDATE employees
SET avg_customer_rating = 4.9
WHERE employee_id = 4;

UPDATE employees
SET avg_customer_rating = 4.75
WHERE employee_id = 5;

UPDATE employees
SET avg_customer_rating = 4.2
WHERE employee_id = 6;

UPDATE employees
SET avg_customer_rating = 5.0
WHERE employee_id = 7;

UPDATE employees
SET avg_customer_rating = 5.0
WHERE employee_id = 8;