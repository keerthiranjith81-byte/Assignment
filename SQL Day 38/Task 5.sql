CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100)
);
CREATE TABLE order_1(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO customers (customer_name) VALUES
('Arun'),
('Priya'),
('Kavi'),
('Meena');
INSERT INTO order_1 (customer_id, order_amount) VALUES
(1, 5000),
(1, 1200),
(2, 900),
(2, 3000),
(3, 1500),
(4, 7000),
(4, 2000);

CREATE VIEW vw_total_order_1_per_customer AS
select c.customer_name,sum(o.order_amount) from customers c join order_1 o on c.customer_id=o.customer_id
group by c.customer_id,c.customer_name;
SELECT * FROM vw_total_order_1_per_customer;