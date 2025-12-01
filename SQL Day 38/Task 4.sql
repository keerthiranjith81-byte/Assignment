CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    qty INT,
    price DECIMAL(10,2)
);

INSERT INTO orders (product_name, qty, price) VALUES
('Laptop', 2, 55000.00),
('Mouse', 5, 500.00),
('Keyboard', 3, 1200.00),
('Monitor', 1, 8000.00);

DELIMITER $$

CREATE FUNCTION fn_total_price(qty INT, price DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN qty * price;
END $$

DELIMITER ;

SELECT 
    product_name,
    qty,
    price,
    fn_total_price(qty, price) AS total_price
FROM orders;