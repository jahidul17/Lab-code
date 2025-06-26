CREATE DATABASE testDB;
use testDB;
CREATE TABLE Students(
    student_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    department VARCHAR(30),
    admission_year INT,
    gpa float
);
INSERT INTO Students (student_id, first_name,last_name,department,admission_year,gpa)
VALUES (1,'John','Doe','Computer Science',2020,3.75),
(2,'Jane','Smith','Physics',2019,3.85),
(3,'Alice','Brown','Mathematics',2021,3.60),
(4,'Bob','Johnson','Computer Science',2022,null),
(5,'Emily','Davis','Biology',2020,3.50);

CREATE TABLE Courses(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(30),
    department VARCHAR(30)
);


INSERT INTO Courses (course_id,course_name,department)
VALUES (1,'Data Structures','Computer Science'),
(2,'Quantum Mechanice','Physics'),
(3,'Calculus III','Mathematics'),
(4,'Machine Learning','computer Science'),
(5,'Organic Chemistry','Biology');

CREATE TABLE Enrollments(
    enrollment_id INT PRIMARY KEY,
    student_id int,
    course_id int,
    enrollment_date date
);

INSERT INTO Enrollments (enrollment_id,student_id,course_id,enrollment_date)
VALUES (1,1,1,'2023-01-15'),
(2,2,2,'2023-02-20'),
(3,3,3,'2023-03-10'),
(4,4,1,'2023-04-05'),
(5,5,5,'2023-05-12'); 







