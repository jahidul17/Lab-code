CREATE DATABASE testDB;
use testdb;
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(100),
    salary DECIMAL(10, 2)
);
