SELECT 
    name,
    DATEDIFF(
        IF(
            DATE_FORMAT(CURDATE(), '%m-%d') <= DATE_FORMAT(birthdate, '%m-%d'),
            CONCAT(YEAR(CURDATE()), '-', DATE_FORMAT(birthdate, '%m-%d')),
            CONCAT(YEAR(CURDATE()) + 1, '-', DATE_FORMAT(birthdate, '%m-%d'))
        ),
        CURDATE()
    ) AS days_until_next_birthday
FROM persons;