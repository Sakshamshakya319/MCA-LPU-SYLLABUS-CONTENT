use Practice;

create TABLE Emp(
    Emp_id INT,
    Emp_name VARCHAR(100),
    Emp_city VARCHAR(100),
    Emp_Salary INT,
    Age INT,
);

INSERT INTO Emp (Emp_id, Emp_name, Emp_city, Emp_Salary, Age)
VALUES (1, 'Rahul Sharma', 'Delhi', 50000, 28),
       (2, 'Priya Verma', 'Mumbai', 60000, 26),
       (3, 'Amit Singh', 'Lucknow', 55000, 32),
       (4, 'Neha Gupta', 'Bangalore', 52000, 24),
       (5, 'Arjun Mehta', 'Jaipur', 58000, 30),
       (6, 'Shubham', 'Ludhiana', 45000,23);

Select Emp_id, Name, Age, email FROM Employee;

Update Emp set Emp_city='Kanpur' where Emp_name='Arjun Mehta';

Delete from Emp WHERE Emp_name='Neha Gupta';

Select * from Emp ORDER BY Emp_Salary ASC;

EXEC sp_rename 'Emp', 'Employee';

EXEC sp_rename 'Employee.Emp_name', 'Name', 'COLUMN';

Alter TABLE Employee add email varchar(200);

update employee set email='rahul@info.com' where name ='Rahul Sharma';



Alter TABLE Employee drop  column email;

--update

-- UPDATE Employee
-- SET Emp_city = 'Hyderabad'
-- WHERE Department = 'IT' AND Age > 25;


-- UPDATE Employee
-- SET Department = 'HR'
-- WHERE City = 'Delhi' OR City = 'Mumbai';


-- --delete
-- DELETE FROM Employee
-- WHERE Department = 'Sales' AND Age < 22;

-- DELETE FROM Employee
-- WHERE City = 'Jaipur' OR City = 'Lucknow';
