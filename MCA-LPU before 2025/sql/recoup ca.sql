use ecommerce;


-- Task 1: Online Retail Transaction System- An e-commerce company needs to manage customers, orders, products, and payments.
--
-- Tasks:
-- Create SQL tables with primary key and 2 constraints.
-- Implement RIGHT and LEFT to generate reports.
-- Create a view for monthly sales summary
-- Use transaction control (COMMIT, ROLLBACK, SAVEPOINT).

--use foreign key.
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) CHECK (LEN(phone) >= 10)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price FLOAT CHECK (price > 0)
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE DEFAULT GETDATE(),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE OrderItems (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT CHECK (quantity > 0),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    amount_paid FLOAT CHECK (amount_paid > 0),
    payment_date DATE DEFAULT GETDATE(),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
-- Insert sample data
INSERT INTO Customers VALUES (1, 'Alice', 'alice@gmail.com',9838392839),
                             (2, 'Bob', 'bob@gmail.com', 9848392839),
                             (3, 'Charlie', 'charlie@gmail.com', 9858392839);

INSERT INTO Products VALUES (1, 'Laptop', 1000),
                            (2, 'Smartphone', 500),
                            (3, 'Headphones', 100);

INSERT INTO Orders VALUES (1, 1, '2024-01-10'),
                            (2, 2, '2024-01-11'),
                            (3, 1, '2024-01-12');

INSERT INTO OrderItems VALUES (1, 1, 1, 1),
                               (2, 1, 3, 2),
                               (3, 2, 2, 1),
                               (4, 3, 1, 1),
                               (5, 3, 2, 1);

INSERT INTO Payments VALUES (1, 1, 1200, '2024-01-15'),
                                (2, 2, 500, '2024-01-16'),
                                (3, 3, 1500, '2024-01-17');

select * from Customers;
select * from Products;
select * from Orders;
select * from OrderItems;
select * from Payments;

-- LEFT JOIN to get all customers and their orders
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

-- RIGHT JOIN to get all orders and their customers
SELECT o.order_id, o.order_date, c.customer_id, c.name
FROM Orders o
RIGHT JOIN Customers c ON o.customer_id = c.customer_id;

-- Create a view for monthly sales summary as simple views.
CREATE VIEW MonthlySalesSummary AS
SELECT
    MONTH(o.order_date) AS SaleMonth,
    SUM(oi.quantity * p.price) AS TotalSales
FROM Orders o
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY MONTH(o.order_date);

select * from MonthlySalesSummary;


--need a simple view for my exam



-- Transaction Control
BEGIN TRANSACTION;
SAVEPOINT BeforeNewOrder;
-- Insert a new order
INSERT INTO Orders VALUES (4, 3, '2024-01-20');
INSERT INTO OrderItems VALUES (6, 4, 2, 1);
INSERT INTO Payments VALUES (4, 4, 500, '2024-01-21');
-- Rollback to savepoint if needed
ROLLBACK TRANSACTION To BeforeNewOrder;
-- Commit the transaction
COMMIT TRANSACTION;
-- Verify the rollback
SELECT * FROM Orders WHERE order_id = 4;
SELECT * FROM OrderItems WHERE order_item_id = 6;
SELECT * FROM Payments WHERE payment_id = 4;
-- The above SELECT statements should return no rows if the rollback was successful.

