use Saloon;
--Having Clause
--Group By

CREATE TABLE Customer
(
    customer_id INT PRIMARY KEY,
    name        VARCHAR(50),
    address     VARCHAR(50),
    phone_no    BIGINT
);



INSERT INTO Customer
VALUES (1, 'Sarvesh', 'Pune', 9876543210),
       (2, 'Rahul', 'Mumbai', 9876543211),
       (3, 'Shubham', 'Nagpur', 9876543212),
       (4, 'Amit', 'Delhi', 9876543213),
       (5, 'Ankit', 'Bangalore', 9876543214),
       (6, 'Priya', 'Chennai', 9876543215),
       (7, 'Sneha', 'Kolkata', 9876543216),
       (8, 'Deepak', 'Hyderabad', 9876543217),
       (9, 'Vikas', 'Surat', 9876543218),
       (10, 'Gauri', 'Jaipur', 9876543219),
       (11, 'Rohan', 'Indore', 9876543220),
       (12, 'Meena', 'Lucknow', 9876543221),
       (13, 'Pooja', 'Patna', 9876543222),
       (14, 'Sagar', 'Nashik', 9876543223),
       (15, 'Kiran', 'Chandigarh', 9876543224);

select *
from Customer;

CREATE TABLE Employee
(
    employee_id     INT PRIMARY KEY,
    name            VARCHAR(50),
    salary          FLOAT,
    gender          CHAR(1) CHECK (gender IN ('M', 'F')),
    date_of_joining DATE
);

INSERT INTO Employee
VALUES (1, 'Suresh', 30000, 'M', '2021-01-01'),
       (2, 'Mahesh', 35000, 'M', '2021-02-01'),
       (3, 'Ramesh', 40000, 'M', '2021-03-01'),
       (4, 'Priya', 45000, 'F', '2021-04-01'),
       (5, 'Anjali', 50000, 'F', '2021-05-01'),
       (6, 'Kiran', 32000, 'M', '2021-06-01'),
       (7, 'Pooja', 36000, 'F', '2021-07-01'),
       (8, 'Asha', 38000, 'F', '2021-08-01'),
       (9, 'Vivek', 42000, 'M', '2021-09-01'),
       (10, 'Rita', 43000, 'F', '2021-10-01'),
       (11, 'Kamlesh', 39000, 'M', '2021-11-01'),
       (12, 'Archana', 44000, 'F', '2021-12-01'),
       (13, 'Gopal', 41000, 'M', '2022-01-01'),
       (14, 'Swati', 37000, 'F', '2022-02-01'),
       (15, 'Harsh', 46000, 'M', '2022-03-01');

select *
from Employee;

CREATE TABLE Service
(
    service_id   INT PRIMARY KEY,
    service_name VARCHAR(50),
    price        FLOAT
);

INSERT INTO Service
VALUES (1, 'Haircut', 300),
       (2, 'Shaving', 150),
       (3, 'Facial', 800),
       (4, 'Massage', 1200),
       (5, 'Hair Spa', 900),
       (6, 'Cleanup', 400),
       (7, 'Bleach', 500),
       (8, 'Threading', 80),
       (9, 'Waxing', 600),
       (10, 'Pedicure', 700),
       (11, 'Manicure', 650),
       (12, 'Hair Coloring', 1500),
       (13, 'Straightening', 5000),
       (14, 'Keratin Treatment', 4500),
       (15, 'Beard Styling', 350);

Select *
from Service;

CREATE TABLE Appointment
(
    appointment_id      INT PRIMARY KEY,
    customer_id         INT,
    employee_id         INT,
    service_id          INT,
    date_of_appointment DATE
);

INSERT INTO Appointment
VALUES (1, 1, 1, 1, '2023-01-01'),
       (2, 2, 2, 2, '2023-01-02'),
       (3, 3, 3, 3, '2023-01-03'),
       (4, 4, 4, 4, '2023-01-04'),
       (5, 5, 5, 5, '2023-01-05'),
       (6, 6, 6, 6, '2023-01-06'),
       (7, 7, 7, 7, '2023-01-07'),
       (8, 8, 8, 8, '2023-01-08'),
       (9, 9, 9, 9, '2023-01-09'),
       (10, 10, 10, 10, '2023-01-10'),
       (11, 11, 11, 11, '2023-01-11'),
       (12, 12, 12, 12, '2023-01-12'),
       (13, 13, 13, 13, '2023-01-13'),
       (14, 14, 14, 14, '2023-01-14'),
       (15, 15, 15, 15, '2023-01-15');

select *
from Appointment;

CREATE TABLE Payment
(
    payment_id      INT PRIMARY KEY,
    appointment_id  INT,
    amount_paid     FLOAT,
    date_of_payment DATE
);

INSERT INTO Payment
VALUES (1, 1, 300, '2023-01-01'),
       (2, 2, 150, '2023-01-02'),
       (3, 3, 800, '2023-01-03'),
       (4, 4, 1200, '2023-01-04'),
       (5, 5, 900, '2023-01-05'),
       (6, 6, 400, '2023-01-06'),
       (7, 7, 500, '2023-01-07'),
       (8, 8, 80, '2023-01-08'),
       (9, 9, 600, '2023-01-09'),
       (10, 10, 700, '2023-01-10'),
       (11, 11, 650, '2023-01-11'),
       (12, 12, 1500, '2023-01-12'),
       (13, 13, 5000, '2023-01-13'),
       (14, 14, 4500, '2023-01-14'),
       (15, 15, 350, '2023-01-15');

select * from Payment;


--GROUP BY
--Having Clause

SELECT price, COUNT(*) AS total_services
FROM Service
GROUP BY price;

SELECT gender, AVG(monthly_salary) AS avg_salary
FROM Employee
GROUP BY gender
ORDER BY gender;

SELECT price, COUNT(*) AS total_services
FROM Service
GROUP BY price
HAVING COUNT(*) > 1;

SELECT appointment_id, SUM(amount_paid) AS total_amount
FROM Payment
GROUP BY appointment_id;

SELECT gender, SUM(monthly_salary) AS total_salary
FROM Employee
GROUP BY gender
HAVING SUM(monthly_salary) > 100000;


--print simple message
PRINT 'Hello, this is a simple message!';


--Printing message using variable
DECLARE @a VARCHAR(100);
-- Assign a value to the variable
SET @a = 'This is the value of the variable';
-- Print the value of the variable
PRINT @a;



DECLARE @num INT;
-- Assign an integer value to the variable
SET @num = 123;
-- Print the integer value after converting it to a string
print @num;
PRINT 'The value of the integer variable is: ' +cast(@num AS varchar(20));




--Taking input
DECLARE @user_input VARCHAR(100);
set @user_input= '&user_input';
    print @user_input;

  DECLARE @value1 VARCHAR(50);
  DECLARE @value2 VARCHAR(50);
  DECLARE @value3 VARCHAR(50);
  set @value1 = 'Hello'
set @value2  = 'World'
  set @value3  = 'SQL Server'
-- Concatenate values to print in one line
PRINT @value1 + ', ' + @value2 + ' - ' + @value3;



--Adding two numbers
DECLARE @a int;
DECLARE @b int;
DECLARE @Sum INT;
SET @a = 10;
SET @b = 20;
SET @Sum = @a + @b;
print @sum
PRINT 'SUM is: ' + CAST(@Sum AS VARCHAR(10));
PRINT 'SUM is: ' + CAST((@a+@b) AS VARCHAR(10));



DECLARE @value1 VARCHAR(50),@value2 VARCHAR(50), @value3 VARCHAR(50);
  set @value1 = 'Hello'
set @value2  = 'World'
  set @value3  = 'SQL Server'
-- Concatenate values to print in one line
PRINT @value1 + ', ' + @value2 + ' - ' + @value3;



create table student(id int,name varchar(30))
declare @a int;
declare @b varchar(30);
set @a=102;
set @b='Isha';
insert into student values(@a,@b);

select * from student

select * from student where id=@a;

update student set name='shilpa' where id=@a

select * from student



PRINT 'Hello, this is a simple message!';

DECLARE @msg VARCHAR(100);
SET @msg = 'This is the value of the variable';
PRINT @msg;

DECLARE @num INT = 123;
PRINT 'The value of @num is: ' + CAST(@num AS VARCHAR(20));

DECLARE @value1 VARCHAR(50) = 'Hello';
DECLARE @value2 VARCHAR(50) = 'World';
DECLARE @value3 VARCHAR(50) = 'SQL Server';
PRINT @value1 + ', ' + @value2 + ' - ' + @value3;

DECLARE @user_input VARCHAR(100) = 'Sample User Input';
PRINT 'User Input: ' + @user_input;

DECLARE @a INT = 10, @b INT = 20, @sum INT;
SET @sum = @a + @b;
PRINT 'Sum is: ' + CAST(@sum AS VARCHAR(10));

CREATE TABLE student(id INT, name VARCHAR(30));

DECLARE @sid INT = 102;
DECLARE @sname VARCHAR(30) = 'Isha';
INSERT INTO student VALUES(@sid, @sname);

SELECT * FROM student;

UPDATE student SET name = 'Shilpa' WHERE id = @sid;

SELECT * FROM student;
