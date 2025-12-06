CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    sla_days INT
);

INSERT INTO products VALUES
(501, 'Laptop', 'Electronics', 3),
(502, 'Keyboard', 'Electronics', 2),
(503, 'Headphones', 'Electronics', 2),
(504, 'Tablet', 'Electronics', 4);
