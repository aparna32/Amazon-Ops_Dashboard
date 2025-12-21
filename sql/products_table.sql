CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    sla_days INT
);

INSERT INTO products (product_id, product_name, category, sla_days) VALUES
(501,'Laptop','Electronics',3),
(502,'Keyboard','Electronics',2),
(503,'Headphones','Electronics',2),
(504,'Tablet','Electronics',4),
(505,'Smartwatch','Electronics',3),
(506,'Wireless Mouse','Electronics',2),
(507,'Monitor','Electronics',4),
(508,'Webcam','Electronics',3),
(509,'External Hard Drive','Electronics',3),
(510,'USB Hub','Electronics',2),

(601,'Office Chair','Furniture',5),
(602,'Study Table','Furniture',6),
(603,'Bookshelf','Furniture',7),
(604,'Filing Cabinet','Furniture',6),
(605,'Desk Lamp','Furniture',4),
(606,'Footrest','Furniture',5),
(607,'Drawer Unit','Furniture',6),
(608,'Whiteboard','Furniture',5),

(701,'Water Bottle','Accessories',2),
(702,'Backpack','Accessories',3),
(703,'Notebook Set','Accessories',2),
(704,'Pen Holder','Accessories',1),
(705,'Lunch Box','Accessories',2),
(706,'Mouse Pad','Accessories',1),
(707,'Desk Organizer','Accessories',2);
