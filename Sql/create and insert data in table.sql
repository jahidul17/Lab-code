CREATE DATABASE DIU;
USE DIU;

create table Employees(
Employee_id int not null,
Fist_Name varchar(20) not null,
Last_Name varchar (20),
Salary int,
primary key(Employee_id)
);


INSERT INTO employees (
    Employee_id, Last_Name, Fist_Name, Salary
    )
    VALUES
    (1014, 'Murray', 'Keith', 25000),
    (1015, 'Branson', 'John', 15000),
    (1016, 'Martin', 'Richard', 5000) ;
