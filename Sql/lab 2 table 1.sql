CREATE DATABASE DIU
USE DIU

create table Employee_Table(
Employee_number int not null,
Last_Name varchar (20),
Fist_Name varchar(20) not null,
Salary int,
Dept_id int,
primary key(Employee_number)
);


INSERT INTO Employee_Table (
    Employee_number, Last_Name, Fist_Name, Salary,Dept_id
    )
    VALUES
    (1001, 'Smith', 'John', 62000,500),
    (1002, 'Anderson', 'Jane', 57500,500),
    (1003, 'Everest', 'Brad', 71000,501),
    (1004, 'Horvath', 'Jack', 42000,501) ;
