CREATE DATABASE DIU
USE DIU

create table Supplier_table(
Supplier_id int not null,
Supplier_Name varchar (20) not null,
City varchar (20),
State varchar (20),
primary key(Supplier_id)
);


INSERT INTO Supplier_table (
    Supplier_id, Supplier_Name, City, State
    )
    VALUES
    (100, 'Microsoft', 'Redmond', 'Washington'),
    (200, 'Google', 'Mountain', 'California'),
    (300, 'Oracle', 'Redwood City', 'California'),
    (400, 'Kimberly-Clark', 'Irving', 'Texas'),
    (500, 'Tyson Foods', 'Springdale', 'Arkansas'),
    (600, 'SC Johnson', 'Racine', 'Wisconsin'),
    (700, 'Dole Food Company', 'Westlake Village', 'California'),
    (800, 'Flowers Foods', 'Thomasville', 'Georgia'),
    (900, 'Electronic Arts', 'Redwood City', 'California')
     ;