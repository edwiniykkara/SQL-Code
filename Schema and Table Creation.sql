CREATE SCHEMA toms_marketing_stuff;

USE toms_marketing_stuff;

CREATE TABLE publishers (
	publisher_id INT,
    publisher_name VARCHAR(65),
    PRIMARY KEY (publisher_id)
);

CREATE TABLE publisher_spend (
	publisher_id INT,
    month DATE,
    spend DECIMAL,
    PRIMARY KEY (publisher_id)
);