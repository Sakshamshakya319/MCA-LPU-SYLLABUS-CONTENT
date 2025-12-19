use msdb;

create table Products
(
	ProductID int primary key,
	Name varchar(50),
	Description varchar(max),
	Cost decimal (8,2)
);

Select * from Products;

create table Sellers
(
	SellerID int primary key identity,
	Name varchar(50),
	Address varchar(max),
);

select * from Sellers;

create table Customers
(
	CustomerID int primary key identity,
	Name varchar(50),
	Address varchar(max),
);

select  * from Customers;

create table Orders
(
	OrderID int primary key identity,
	SellerID int not null references Sellers(SellerID), -- this is the foreign key.
	CustomerID int not null references Customers(CustomerID) -- this is also the foreign key.
);

Select  * from Orders;


Create table OrderDetails
(
	OrderDetailID int primary key identity,
	OrderID int not null references Orders(OrderID),
	ProductID int not null references Products(ProductID),
	Qty int default 1 check(Qty > 0)
);

Select * from OrderDetails;

Insert into Products values
(1,'Laptop','A Laptop',349.99),
(2,'Mouse','A Mouse',7.99),
(3,'Keyboard','A Keyboard',16.99),
(4,'Monitor','A Monitor',129.99);

INSERT into Sellers(Name,Address) VALUES ('John Doe','123 Main St'),
('Jane Smith','456 Elm St'),
('Bob Johnson','789 Oak Ave'),
('Alice Williams','101 Pine Rd');

INSERT INTO Customers(Name, Address) VALUES
('Tom Brown','234 Maple Ln'),
('Sara Davis','567 Cedar Dr'),
('Mike Wilson','890 Birch Ct'),
('Emily Taylor','111 Walnut Blvd');

INSERT INTO Orders(SellerID,CustomerID) VALUES
(1,1),(2,2),(3,3),(4,4);

insert into OrderDetails(OrderID, ProductID,Qty) values
(1,1,2),(2,2,1),(3,3,3),(4,4,4);

