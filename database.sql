CREATE DATABASE IF NOT EXISTS studentdb;

USE studentdb;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    year INT NOT NULL
);

CREATE USER IF NOT EXISTS 'studentuser'@'localhost' IDENTIFIED BY 'studentpass';
GRANT ALL PRIVILEGES ON studentdb.* TO 'studentuser'@'localhost';
FLUSH PRIVILEGES;

INSERT INTO students (name, email, year) VALUES ('Test User', 'test@mail.com', 2);

SELECT * FROM students;
