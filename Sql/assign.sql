create database assignment;
use assignment;

create table Employees(
Employee_id int not null,
Full_Name varchar(30) not null,
DepartmentID int,
Salary int,
primary key(Employee_id)
);

INSERT INTO employees (
    Employee_id,Full_Name,DepartmentID,Salary
    )
    VALUES
    (1, 'John Smith', 101, 50000),
    (2, 'Jane Doe', 102, 60000),
    (3, 'Michael Lee', 103, 55000),
    (4, 'Sarah Brown', Null, 48000) ;
    
create table Departments(
DepartmentID int not null,
DepartmentName varchar(30),
primary key(DepartmentID)
);

insert into Departments(
DepartmentID,DepartmentName
)
values
(101,'Human Resources'),
(102,'Finance'),
(103,'IT'),
(104,'Marketing');

create table Projects(
ProjectID int not null,
ProjectName varchar(20),
EmployeeID int,
primary key (ProjectID)
);

insert into Projects(
ProjectID,ProjectName,EmployeeID
)
values
(201,'Website Redesign',3),
(202,'Annual Report',2),
(203,'Employee Portal',1),
(204,'Marketing Plan',null);



#1. Retrieve the names of employees along with their department names.
select Employees.Full_Name,Departments.DepartmentName
from Employees,Departments
where Employees.DepartmentID=Departments.DepartmentID;


#List all employees and their department names, including employees without a
select Employees.Full_Name,Departments.DepartmentName
from employees left join Departments
on Employees.DepartmentID=Departments.DepartmentID;


#List all departments and the employees working in them, including departments with no employees.
select Departments.DepartmentName,employees.Full_Name
from Departments left join employees
on Departments.DepartmentID=Employees.DepartmentID;

#4.Find pairs of employees working in the same department.




#5. Retrieve the names of employees, their project names, and department names.
select Employees.Full_Name,Projects.ProjectName,Departments.DepartmentName
from Employees left join Projects
on Employees.Employee_id=Projects.EmployeeID
left join Departments
on Employees.DepartmentID=Departments.DepartmentID;


#6. Find the total salary of employees in each department.
select Departments.DepartmentName, sum(Employees.Salary)
from Employees left join Departments
on Employees.DepartmentID=Departments.DepartmentID
group by Departments.DepartmentName;


#Create a list of all possible pairs of employees and departments.
select Employees.Employee_id,Employees.Full_Name,Departments.DepartmentID,Departments.DepartmentName,





