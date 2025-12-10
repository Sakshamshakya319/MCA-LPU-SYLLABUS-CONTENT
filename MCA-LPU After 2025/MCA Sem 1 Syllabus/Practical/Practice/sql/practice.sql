use LPU;

CREATE TABLE Employee (
    EmpID INT,  
    Name VARCHAR(50) NOT NULL,
    Phone VARCHAR(15),
    City VARCHAR(30),
    Department VARCHAR(30),
    Age INT 
);


ALTER TABLE Employee
ADD Email VARCHAR(50);


EXEC sp_rename 'Employee.Email', 'EmailID', 'COLUMN';


ALTER TABLE Employee
DROP COLUMN EmailID;


INSERT INTO Employee (Name, Phone, City, Department, Age)
VALUES 
(1,'Rahul Sharma', '9876543210', 'Delhi', 'IT', 28),
(2,'Priya Verma', '9123456789', 'Mumbai', 'HR', 26),
(3,'Amit Singh', '9988776655', 'Lucknow', 'Finance', 32),
(4,'Neha Gupta', '9097809090', 'Bangalore', 'Marketing', 24),
(5,'shubham Gupta', '9090909873', 'Bangalore', 'CMO', 28),
(6,'Arjun Mehta', '9812345678', 'Jaipur', 'Sales', 30);



--Single Row
UPDATE Employee SET City = 'Hyderabad' WHERE Name = 'Rahul Sharma';
--Multiple Rows update
update Employee SET City ='Chennai', Department='CEO', Age=34 where name='priya verma';
--Delete Rows using Both Condition And  Operator.
DELETE from Employee WHERE City ='Jaipur' AND Name='Arjun Mehta';
DELETE from Employee WHERE City ='Lucknow' OR Name='Amit Singh';



DELETE FROM Employee WHERE Name = 'Neha Gupta';



SELECT * FROM Employee;


                        


SELECT * FROM Employee
WHERE City = 'Mumbai';


SELECT * FROM Employee
ORDER BY Age DESC;


SELECT COUNT(*) AS TotalEmployees FROM Employee;


SELECT DISTINCT City FROM Employee;

