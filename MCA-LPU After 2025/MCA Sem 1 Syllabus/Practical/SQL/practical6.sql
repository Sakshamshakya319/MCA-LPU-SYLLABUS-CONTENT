use LPU;
-- Distinct
-- Top
-- Group By
-- Aggregate Functions

-- Create employee table (no constraints)
CREATE TABLE employee (
    emp_id INT,
    name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    department VARCHAR(50),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    state VARCHAR(50)
);


INSERT INTO employee VALUES
(1, 'Aarav Sharma', 'Male', 28, 'IT', 'Software Engineer', 65000.00, 'Bengaluru', 'Karnataka'),
(2, 'Priya Patel', 'Female', 32, 'HR', 'HR Manager', 72000.00, 'Ahmedabad', 'Gujarat'),
(3, 'Rohan Mehta', 'Male', 26, 'Finance', 'Accountant', 55000.00, 'Mumbai', 'Maharashtra'),
(4, 'Sneha Reddy', 'Female', 30, 'Marketing', 'Marketing Executive', 60000.00, 'Hyderabad', 'Telangana'),
(5, 'Vikram Singh', 'Male', 35, 'Operations', 'Operations Manager', 80000.00, 'Delhi', 'Delhi'),
(6, 'Kavya Nair', 'Female', 27, 'Design', 'UI/UX Designer', 58000.00, 'Kochi', 'Kerala'),
(7, 'Rahul Verma', 'Male', 29, 'Sales', 'Sales Executive', 50000.00, 'Pune', 'Maharashtra'),
(8, 'Ananya Iyer', 'Female', 31, 'IT', 'System Analyst', 70000.00, 'Chennai', 'Tamil Nadu'),
(9, 'Manish Chauhan', 'Male', 33, 'Admin', 'Office Administrator', 48000.00, 'Jaipur', 'Rajasthan'),
(10, 'Neha Das', 'Female', 25, 'Support', 'Customer Support', 45000.00, 'Kolkata', 'West Bengal'),
(11, 'Rohan Mehta', 'Male', 22, 'Operations', 'Accountant', 51000.00, 'Punjab', 'Odisha');

Select * from employee where age BETWEEN 28 and 30;
Select * from employee where salary BETWEEN 72000.00 and 90000.00;
Select * from employee where salary NOT BETWEEN 72000.00 and 90000.00;

SELECT name, sum(salary) as TotalSalary from employee GROUP BY name;
SELECT emp_id, count(name), sum(salary) as TotalSalary from employee GROUP BY emp_id;

--set primary key constrainst

--alter column to not null of emp_id to be NOT NUll

ALTER TABLE employee ADD CONSTRAINT pk1 PRIMARY KEY(emp_id);

ALTER TABLE employee ADD CONSTRAINT pk1 PRIMARY KEY(name); -- no other column can have primary key constraints


select * from employee;

alter table employee alter COLUMN age int NOT NULL;
alter table employee alter column name varchar(50) NULL;


INSERT INTO employee VALUES
(13, NULL, 'Male', 22, 'Operations', 'Accountant', 51000.00, 'Punjab', 'Odisha');

alter table employee drop CONSTRAINT pk1;