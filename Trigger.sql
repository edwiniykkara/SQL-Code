SELECT * FROM inventory;

SELECT * FROM customer_purchases;

SELECT * FROM customers;

CREATE TRIGGER purchaseUpdateInventory
AFTER INSERT ON customer_purchases
FOR EACH ROW
	UPDATE inventory
		-- substracting an item for each purchase
        SET number_in_stock = number_in_stock - 1
        WHERE inventory_id - NEW.inventory_id;

INSERT INTO customer_purchases VALUES
(15,2,2),  -- inventory_id = 2
(16,5,6)  -- inventory_id = 6
;