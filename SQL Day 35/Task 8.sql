CREATE TABLE employees2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    username VARCHAR(100)
);

INSERT INTO employees2 (first_name, last_name) VALUES
('Arun', 'Kumar'),
('Arun', 'Kumar'),
('Arun', 'Kanna'),
('Bala', 'Ravi'),
('Bala', 'R'),
('Kavi', 'Balan'),
('Kavi', 'Balan'),
('Kavi', 'Balan');
UPDATE employees e
JOIN (
    SELECT 
        id,
        CONCAT(
            LOWER(first_name), '.',
            LOWER(SUBSTRING(last_name, 1, 1)),
            LPAD(
                ROW_NUMBER() OVER (
                    PARTITION BY LOWER(first_name), LOWER(SUBSTRING(last_name, 1, 1))
                    ORDER BY id
                ) - 1,
                2,
                '0'
            )
        ) AS generated_username
    FROM employees
) x ON e.id = x.id
SET e.username = x.generated_username;