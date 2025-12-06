-- Amazon-style orders table structure

CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    customer_id INT,
    product_id INT,
    order_status VARCHAR(50),
    dispatch_date DATE,
    delivery_date DATE,
    sla_days INT,
    delivered_within_sla BOOLEAN
);
