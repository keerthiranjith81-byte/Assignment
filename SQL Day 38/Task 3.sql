CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    stock INT
);

INSERT INTO products (product_name, price, stock) VALUES
('Laptop', 55000.00, 10),
('Mouse', 500.00, 50),
('Keyboard', 1200.00, 30),
('Monitor', 8000.00, 15),
('Headphone', 1500.00, 25);


DELIMITER $$

CREATE PROCEDURE sp_get_product_details(IN pid INT)
BEGIN
    SELECT product_id, product_name, price, stock
    FROM products
    WHERE product_id = pid;
END $$

DELIMITER ;


call sp_get_product_details(3);