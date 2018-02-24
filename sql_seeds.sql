DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
item_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(35) NULL,
department_name VARCHAR(20) NULL,
price DECIMAL(10, 4) NULL,
stock_quantity INT(11) NULL,
PRIMARY KEY (item_id)
);

SELECT * FROM products;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Bose Headphones", "Electronics", 149.99, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("MacBook Pro", "Electronics", 1499.99, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Keurig Coffee Maker", "Home/Kitchen", 39.99, 1000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Corn Husker's Hand Lotion", "Cosmetics", 4.99, 500);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("MASSIVE dog bed", "Home/Kitchen", 19.99, 25);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("MAC Eyeliner", "Cosmetics", 24.99, 500);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("PlayStation 4 PRO", "Peasant Electronics", 399.99, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("XboX One Whatever", "Peasant Electronics", 499.99, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Custom Build Gaming Computer", "Master Race Electronics", 999.99, 1000);

UPDATE products SET department_name = "True Electronics" WHERE item_id = 9;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Electric Toothbrush", "Cosmetics", 4.99, 50);
