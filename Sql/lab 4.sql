use diu;
#Find customers who purchased more than 5 items in total.

SELECT SalesID , SUM(Quantity)
FROM labfour
GROUP BY SalesID
HAVING SUM(Quantity) > 5;






#Find the total quantity of products sold by each customer
select CustomerName, sum(Quantity) 
from labfour
group by CustomerName;




#What is the minimum and maximum price per unit of the sold products?
select min(PricePerUnit),max(PricePerUnit)
from labfour;




#What is the average price per unit of the sold products?
select avg(PricePerUnit)
from labfour;





#What is the total revenue generated?
select sum(Quantity*PricePerUnit)
from labfour;






#How many sales were recorded?

select count(*)
from labfour;













INSERT INTO labfour (SalesID, CustomerName, Product, Quantity, PricePerUnit, SalesDate)
VALUES
(1, 'Alice', 'Laptop', 2, 70.00, '2024-01-15'),
(2, 'Bob', 'Smartphone', 3, 300.00, '2024-01-20'),
(3, 'Alice', 'Headphones', 1, 50.00, '2024-01-25'),
(4, 'Charlie', 'Monitor', 2, 150.00, '2024-02-01'),
(5, 'Alice', 'Keyboard', 4, 25.00, '2024-02-10'),
(6, 'Bob', 'Laptop', 1, 70.00, '2024-02-15'),
(7, 'Charlie', 'Mouse', 5, 20.00, '2024-03-01');























CREATE TABLE LabFour (
    SalesID int,
    CustomerName varchar(20),
    Product varchar(20),
    Quantity int,
    PricePerUnit int,
    SalesDate date

);


