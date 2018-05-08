DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
	-- Columns
	ItemID INT NOT NULL AUTO_INCREMENT,
	ProductName VARCHAR(200) NULL,
	DepartmentName VARCHAR(200) NULL,
	Price INT(6) DEFAULT 0,
	StockQuantity INT (6) NOT NULL,
  
  PRIMARY KEY (ItemID)
);

select * from products;

-- 10 sample products
INSERT INTO products (ProductName, departmentName, price, stockQuantity) values ("Miosoft SOAR DVD", "Miosoft Ed", 12, 5);
INSERT INTO products (ProductName, departmentName, price, stockQuantity) values ("Starter Architect", "DSA® Suite", 5000, 5);
INSERT INTO products (ProductName, departmentName, price, stockQuantity) values ("Extended SOAR Pack", "DSA® Suite", 1000, 5);
INSERT INTO products (ProductName, departmentName, price, stockQuantity) values ("Customization Pack", "Config & Dev", 6000, 5);
INSERT INTO products (ProductName, departmentName, price, stockQuantity) values ("Extended HR/Payroll", "HR Management", 7000, 5);
INSERT INTO products (ProductName, departmentName, price, stockQuantity) values ("Runtime SOAR Server", "Databases", 30000, 5);
INSERT INTO products (ProductName, departmentName, price, stockQuantity) values ("Standard Runtime CAL", "Databases", 50000, 5);
INSERT INTO products (ProductName, departmentName, price, stockQuantity) values ("Full User License", "Miosoft Ed", 3000, 5);
INSERT INTO products (ProductName, departmentName, price, stockQuantity) values ("Limited User License", "Miosoft Ed", 300, 5);
INSERT INTO products (ProductName, departmentName, price, stockQuantity) values ("Self Serve User CAL", "Miosoft Ed", 60, 5);

SELECT * FROM products;