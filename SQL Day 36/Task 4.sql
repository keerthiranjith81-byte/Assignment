CREATE TABLE sentences (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sentence VARCHAR(255)
);
INSERT INTO sentences (sentence)
VALUES
('This is a bad day'),
('He is a bad person'),
('The weather is bad but getting better');

select 
sentence,
replace(sentence,"bad","good") from sentences;