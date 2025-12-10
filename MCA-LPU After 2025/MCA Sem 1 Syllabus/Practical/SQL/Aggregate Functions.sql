--Aggregate Functions

use School;
select * from courses;

select count(CourseID) from courses;		--Does not consider NULL values
Select count(TName) as TeachersCount from courses;
select count(CourseID) as CountOfCourses from courses;		--Gives the output as value
Select count(CName) from Courses;
Select avg(CourseID) from courses;
select sum(TeacherID) from courses;
select sum(TeacherID) as SUMMATION from courses;

--For example, You want to sum up the salary column as Total
Select SUM(SALARY) AS TotalSalary FROM EMPLOYEES;

--Task: Obtain the employee table and sum of total salaries paid to employees
SELECT MIN(TeacherID) as OldestTeache FROM Courses;
SELECT MAX(TeacherID) AS YoungestTeacher FROM Courses;


