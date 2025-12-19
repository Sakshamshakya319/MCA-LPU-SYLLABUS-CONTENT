use Netflix;
Select *
from Employees;
Select *
from Salary;


--Inner Join
Select *
from Employees e;
Select *
from Salary sl;
SELECT e.EmpID, e.EmpName, e.Salary, e.departmentNo, sl.name, sl.country
FROM Employees e
         JOIN Salary sl ON e.EmpID = sl.Empid;



Select *
from Employees;
Select *
from Salary;
update Salary
set Empid=125
where name = 'BOB'
   or Name = 'Smith';

--Left Outer Join
Select *
from Employees;
Select *
from Salary;
--Select e.EmpID, sl12.name from Employees LEFT JOIN Salary ON e.EmpID = Sl12.Empid;
SELECT employees.EmpName, Salary.name
FROM Employees
         LEFT JOIN
     Salary ON Employees.EmpID = Salary.Empid;

SELECT employees.EmpName, Salary.name
FROM Salary
         LEFT JOIN
     Employees ON Employees.EmpID = Salary.Empid;

SELECT Employees.EmpName, Salary.name
FROM Employees
         RIGHT JOIN
     Salary ON Employees.EmpID = Salary.Empid;

--Right Outer Join
Select *
from Employees;
Select *
from Salary;
SELECT Employees.EmpName, Salary.name
FROM Employees
         RIGHT JOIN
     Salary ON Employees.EmpID = Salary.Empid;


--Full Outer Join
SELECT Employees.EmpName, Employees.EmpID, Salary.Empid, Salary.name
FROM Employees
         FULL JOIN
     Salary ON Employees.EmpID = Salary.Empid;




