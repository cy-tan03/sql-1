create database interviewQuest;
use interviewQuest;

-- Create customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50)
);
-- Create employees table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    position VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);
-- Create inventories table
CREATE TABLE inventories (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    quantity INT,
    price DECIMAL(10, 2)
);

-- Create sales table
CREATE TABLE sales (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
    FOREIGN KEY (product_id) REFERENCES inventories (product_id)
);



-- Create orders table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    customer_id INT NOT NULL,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);


-- Insert data into the employees table
INSERT INTO employees (name, position, department, salary) VALUES('John', 'Manager', 'Sales', 60000.00),('Jane', 'Salesperson', 'Sales', 45000.00),('Bob', 'Technician', 'Support', 55000.00);

-- Insert data into the customers table
INSERT INTO customers (customer_name, city) VALUES('C1', 'New York'),('C2', 'Penang'),('C3', 'Perak');

-- Insert data into the inventories table
INSERT INTO inventories (product_name, quantity, price) VALUES('Product A', 100, 20.99),('Product B', 50, 15.99),('Product C', 75, 10.99);

-- Insert data into the orders table
INSERT INTO orders (order_date, customer_id, total_amount) VALUES('2023-10-01', 1, 100.50),('2023-10-02', 2, 75.25),('2023-10-03', 1, 50.75);

-- Insert data into the sales table
INSERT INTO sales (customer_id, product_id, quantity, sale_date) VALUES(1, 1, 5, '2023-10-01'),(2, 2, 3, '2023-10-02'),(1, 3, 2, '2023-10-03');
