/*SQL Server has many built-in functions.
This reference contains string, numeric, date, 
conversion, and some advanced functions in SQL Server.*/
/* ********************************************************* */
/*SQL inbuilt Numeric Functions & Aggregate Functions*/
SELECT Abs(-243.5) AS AbsNum; 
SELECT CEILING(25.75) AS CeilValue;			--Return the smallest integer value that is greater than or equal to a number:
SELECT CEILING(-13.5) AS CeilValue; 
SELECT FLOOR(25.75) AS FloorValue;			--Return the largest integer value that is equal to or less than 25.75
SELECT FLOOR(-13.5) AS FloorValue;
SELECT FLOOR(25) AS FloorValue; 
SELECT LOG(2);			--Return the natural logarithm of 2
SELECT LOG(2, 4);		--Return the natural logarithm of 2 to a specified base (4)
SELECT PI() AS PIValue; 
SELECT POWER(4, 2);			--Return 4 raised to the second power
SELECT ROUND(235.415, 2) AS RoundValue;			--Round the number to 2 decimal places
SELECT SIGN(-255.5);			--Return the sign of a number
SELECT SIGN(255.5);
SELECT SQRT(64); 
SELECT SQUARE(64);
SELECT RAND();		--Return a random decimal number (no seed value - so it returns a completely random number >= 0 and <1)




SELECT COS(2);
SELECT COS(PI());	--Return the cosine of a number:
SELECT COT(6);		--Return the cotangent of a number
SELECT COT(-2); 
SELECT DEGREES(1.5);	--Convert a radian value into degrees:
SELECT DEGREES(PI()*2); 
SELECT EXP(1);			--Return e raised to the power of 1
SELECT EXP(2); 
SELECT LOG10(2);		--Return the base-10 logarithm of 2
SELECT LOG10(4.5); 
SELECT RADIANS(-45);
SELECT RAND(6);					--Return a random decimal number (with seed value of 6)
SELECT RAND()*(10-5)+5;			--Return a random decimal number >= 5 and <10
SELECT FLOOR(RAND()*(10-5+1)+5);	--Return a random number >= 5 and <=10

/*This function will return one of the following:
    If number > 0, it returns 1
    If number = 0, it returns 0
    If number < 0, it returns -1  */
SELECT SIN(2);		--Return the sine of a number
SELECT SIN(-1);
SELECT TAN(1.75);		--Return the tangent of a number
SELECT TAN(-3); 




SELECT RADIANS(180);			--Convert a degree value into radians
SELECT ACOS(0.25);				--Return the arc cosine of a number
SELECT ACOS(-0.8);
/*The ACOS() function returns the arc cosine of a number.

The specified number must be between -1 to 1, otherwise this function returns NULL. */
SELECT ASIN(0.25); 
SELECT ATAN(2.5); /*The ATAN() function returns the arc tangent of a number.*/
SELECT ATN2(0.50, 1); 
SELECT ATN2(-0.8, 2); 



--Aggregate Functions::::
use netflix;
Select * from Employees;
Select SUM(SALARY) as TOTAL from employees;
SELECT AVG(Salary) AS Salary FROM Employees; 
Select SUM(SALARY) from employees where EMPID IN(132, 123);
Select SUM(SALARY) from employees where EMPID = 129 OR EMPID=131;   --With AND, it will yield NULL
SELECT * FROM Employees WHERE Salary > (SELECT AVG(Salary) FROM Employees);
SELECT COUNT(EmpID) AS NoOfEmployees FROM Employees; 
Select EmpID, EmpName from Employees where SALARY< (Select MAX(SALARY) from Employees)


use Amazon;
Select * from Products;
--What is the total items ordered
SELECT SUM(ProductQuantity) AS TotalItemsOrdered FROM Products; 

--Compute the average unit price maintained for the products
Select AVG(ProductQuantity) as QuantityAverage from Products where PName='Grocery';

insert into Products values(11, 'Makeup', 'Lipsticks', 20), (12, 'Grocery', 'Pulses', 30), (13, 'Medicines', 'Injections', 10), (14, 'Grocery', 'Oils', 30), (15, 'Makeup', 'Serums', 5);

--Analyse the total number of Records in the table
--What are teh maximum and minimum quantities and unit prices
--How many unique products are existing in the table
Select * from Products;
select count (*)as NumberOfRecords from products;
Select distinct PName from Products;
select count(distinct PName) from products;
Select Max(ProductQuantity) from Products;
Select Max(ProductQuantity) from Products where PName='Grocery';

Select Min(ProductQuantity) from Products;
Select Min(ProductQuantity) from Products where PName='Grocery';
Select * from Products where ProductQuantity>= (Select COUNT(ProductQuantity) from Products);
Select * from Products where ProductQuantity<= (Select COUNT(ProductQuantity) from Products);

-- Having Clause
use netflix;
Select * from Employees;
Select EmpName, avg(Salary)from Employees group by EmpNamehaving avg(Salary)> 50000;





