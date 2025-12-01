DELIMITER $$

CREATE FUNCTION months_old(bdate DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN TIMESTAMPDIFF(MONTH, bdate, CURDATE());
END $$

DELIMITER ;

CREATE TABLE persons1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    birthdate DATE
);


INSERT INTO persons1 (name, birthdate)
VALUES
('Kavi', '2000-05-14'),
('Arun', '1999-12-30'),
('Meena', '2002-03-02');
SELECT
    name,
    birthdate,
    months_old(birthdate) AS months_old
FROM persons1;