use endterm;

CREATE TABLE lpu(
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    City VARCHAR(40),
    Salary INT,
    DOJ DATE
);

select * from lpu;

INSERT INTO lpu VALUES
(101,'Rajesh Kumar','Delhi',55000,'2020-02-12'),
(102,'Simran Kaur','Amritsar',72000,NULL),
(103,'Arjun Mehta',NULL,95000,'2019-11-15'),
(104,'Priya Sharma','Chennai',NULL,'2022-03-18'),
(105,'Tara',NULL,NULL,NULL);


--update command
UPDATE lpu SET Salary = 65000 WHERE EmpName = 'Rajesh Kumar';
UPDATE lpu SET Salary = 50000 WHERE Salary IS NULL;
UPDATE lpu SET City = 'Mumbai', Salary = 75000 WHERE EmpID = 105;


--rename
EXEC sp_rename 'lpu', 'employee';

--Aggregate functions
SELECT COUNT(*) AS TotalEmployees FROM employee;

SELECT AVG(Salary) AS AvgSalary FROM employee;

SELECT MAX(Salary) AS HighestSalary FROM employee;

SELECT MIN(Salary) AS LowestSalary FROM employee;

SELECT SUM(Salary) AS TotalSalaryPaid FROM employee;


--another table
CREATE TABLE Customers(
    CustID INT PRIMARY KEY,
    CustName VARCHAR(50),
    City VARCHAR(40) NULL
);

INSERT INTO Customers VALUES
(1,'Raman','Delhi'),
(2,'Neha',NULL),
(3,'Karan','Mumbai'),
(4,'Tina','Chennai');

CREATE TABLE Orders(
    OrderID INT PRIMARY KEY,
    CustID INT NULL,
    Amount INT NULL     -- INR
);

INSERT INTO Orders VALUES
(101,1,5000),
(102,1,3500),
(103,3,NULL),
(104,NULL,2000);

--Joins
SELECT c.CustName, c.City, o.Amount FROM Customers c INNER JOIN Orders o ON c.CustID = o.CustID;

SELECT c.CustName, c.City, o.Amount FROM Customers c LEFT JOIN Orders o ON c.CustID = o.CustID;

SELECT c.CustName, c.City, o.Amount FROM Customers c RIGHT JOIN Orders o ON c.CustID = o.CustID;

SELECT c.CustName, c.City, o.Amount FROM Customers c FULL JOIN Orders o ON c.CustID = o.CustID;

--views
CREATE VIEW lpustudents AS SELECT EmpName, City, Salary  FROM Employee WHERE City='Delhi';

select  * from lpustudents;

CREATE VIEW studentsData AS SELECT EmpName, City, Salary FROM Employee WHERE City IS NULL;

select * from studentsData;

-- joins with views
CREATE VIEW CustomerOrderView AS SELECT c.CustName, c.City, o.Amount FROM Customers c LEFT JOIN Orders o ON c.CustID = o.CustID;

select * from CustomerOrderView;

--Constraints
CREATE TABLE Student1(
    RollNo INT NOT NULL ,
    Name VARCHAR(50)
);

ALTER TABLE Student1
ADD CONSTRAINT pk_roll PRIMARY KEY (RollNo);


