CREATE DATABASE IF NOT EXISTS companydb;

USE companydb;

CREATE TABLE employees(
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR (45) DEFAULT NULL,
    salary INT(5) DEFAULT NULL,
    PRIMARY KEY (id)
);

DESCRIBE employees;

INSERT INTO employees VALUES 
(1, 'Marcos', '1000'),
(2, 'Jhon', '500'),
(3, 'Maria', '2000'),
(4, 'Salaz', '5000');