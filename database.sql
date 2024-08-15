create database revstore;

use revstore;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    country VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE transactions (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    product_name VARCHAR(255),
    product_category VARCHAR(100),
    payment_type VARCHAR(50),
    qty INT,
    price DECIMAL(10, 2),
    datetime DATETIME,
    ecommerce_website_name VARCHAR(255),
    payment_txn_id VARCHAR(100),
    payment_txn_success CHAR(1),
    failure_reason VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

select * from transactions;
