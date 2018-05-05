DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
	-- Columns
    item_id SMALLINT(5) AUTO_INCREMENT NOT NULL,
	product_name VARCHAR(200) NOT NULL,
    department_name VARCHAR(200) NOT NULL,
    price INT(5) DEFAULT 0,
	stock_quantity TINYINT(3) NOT NULL,
    PRIMARY KEY(item_id)
);

-- 10 sample products
INSERT INTO products (product_name, department_name, price, stock_quantity) values ("2018 Miosoft Apprenticeship Sequel DVD", "Miosoft Education", 12, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ("Starter Pack ", "DSA® Solution Suite", 5000, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ("Extended Pack", "DSA® Solution Suite", 1000, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ("Customization Pack", "Configuration and Development", 6000, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ("Extended Human Resources and Payroll ", "Human Resource Management", 7000, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ("Miosoft SQLL Server 2019 Standard Edition Runtime Server License ", "Databases", 30000, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ("Miosoft SQLL Server 2019 Standard Edition Runtime Client Access Licenses", "Databases", 50000, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ("Full User License", "Miosoft Education", 3000, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ("Limited User License", "Miosoft Education", 300, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) values ("Self Serve User Client Access Licenses", "Miosoft Education", 60, 5);

SELECT * FROM products;