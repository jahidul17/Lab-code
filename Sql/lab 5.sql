use diu;

#Find all orders and the customers who placed them. Include orders without a valid customer.
select customer_lab_5.Customer_name,orders_lab_5.Order_ID,orders_lab_5.Product
from customer_lab_5
right join orders_lab_5
on customer_lab_5.Customer_ID = orders_lab_5.Customer_ID;






#List all customers and their orders. Include customers who haven’t placed any orders.
select customer_lab_5.Customer_name,orders_lab_5.Product
from customer_lab_5
left join orders_lab_5
on customer_lab_5.Customer_ID=orders_lab_5.Customer_ID




#Get the names of customers who have placed orders along with the products they ordered.
select customer_lab_5.Customer_name, orders_lab_5.Product 
from customer_lab_5
inner join orders_lab_5
on customer_lab_5.Customer_ID=orders_lab_5.Customer_ID;









#create order table and relation customer table
create table Orders_lab_5(
Order_ID int primary key,
Customer_ID int not null,
Product varchar(20),
Order_Date date,
foreign key (Customer_ID) references Customer_lab_5(Customer_ID)
);



#insert data into order table
insert into Orders_lab_5 (Order_ID, Customer_ID, Product, Order_Date) 
values (101, 1, 'Laptop','2024-10-01'),
(102, 2, 'Smartphone', '2024-10-03'),
(103, 1, 'Tablet', '2024-10-05'),
(104, 4,'Headphones', '2024-10-10'),
(105, 3,'Monitor', '2024-10-12');



#error show when insert because order id 105
insert into Orders_lab_5(Order_ID,Customer_ID,Product,Order_Date)
values(101, 1, 'Laptop','2024-10-01'),
(102, 2, 'Smartphone', '2024-10-03'),
(103, 1, 'Tablet', '2024-10-05'),
(104, 4,'Headphones', '2024-10-10'),
(105, 6, 'Monitor', '2024-10-12');




#create customer table
create table Customer_lab_5(
Customer_ID int not null,
Customer_name varchar(20),
Country varchar(20),
primary key (Customer_ID)
);

#insert into customer table
insert into Customer_lab_5(Customer_ID,Customer_name,Country)
values(1,'John Doe', 'USA'),
(2,'Alice Smith','UK'),
(3,'Bob Johnson','Canada'),
(4,'Maria Garcia','USA'),
(5,'Tom Lee','Australia');