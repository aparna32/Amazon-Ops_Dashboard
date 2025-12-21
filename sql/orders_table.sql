-- Amazon-style orders table (fact table)

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    order_status VARCHAR(20),
    dispatch_date DATE,
    delivery_date DATE
);
