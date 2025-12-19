use UniversityDB;


Create Table Department(
    DeptID Int Primary Key,
	DeptName varchar(50) Unique not null,
	Location varchar(20)
);

Select * from Department;


Create Table Faculty(
    FacultyID Int Primary Key,
    FacultyName varchar(233) not null,
    Email varchar(255) Unique,
    DeptID Int Not Null,
    Salary Int Check(Salary>=20000),
);
select * from Faculty;


Create Table Student(
    StudentID int Primary key,
    StudentName Varchar(235) NOT NULL,
    Gender char(2) check(Gender='M' or Gender='F') NOT NULL,
    DOB date default  getdate(),
    DeptID int NOT NULL
);

--add marks coloumn in student table.
ALTER table Student add Marks int Check(Marks>=0 AND Marks<=100);
--add column attendence in student table
ALTER table Student add attendence int Check(attendence>=0 AND attendence<=100);

Select * from Student;


Create Table Course(
    CourseID int Primary Key,
    CourseName varchar(233) NOT NULL,
    Credits int Check(credits>0 AND credits<=5),
    DeptID int NOT NULL
);



Select * from Course;


Create Table Enrollment(
    StudentID int,
    CourseID int,
    EnrollDate Date,
    Grade char(2)
);

Select * from Enrollment;

--Table Data

Insert Into Department Values(1, 'Artificial Intelligence', 'BLOCK 38 Level 2');
Insert Into Department Values(2, 'Machine Learning', 'BLOCK 38 Level 6');
Insert Into Department Values(3, 'Data Structre For C++', 'BLOCK 38 Level 7');
Insert Into Department Values(4, 'Data Structre For Java', 'BLOCK 38 Level 6');
Insert Into Department Values(5, 'Linux Operating System', 'BLOCK 38 Level 6');
Insert Into Department Values(6, 'Database Systems', 'BLOCK 38 Level 6');

Insert Into Faculty values(101,'Aabid','aabid@lpu.co.in',5,56000);
Insert Into Faculty values(102,'Raj','Raj@lpu.co.in',3,59000);
Insert Into Faculty values(103,'Shakespear','Shakespear@lpu.co.in',4,50000);
Insert Into Faculty values(104,'Libin','Libin@lpu.co.in',2,67000);
Insert Into Faculty values(105,'Varun','Varun@lpu.co.in',1,78000);

Insert Into Student values(12501,'Abhishek','M','1999-12-12',1);
Insert Into Student values(12502,'Suraj','M','2001-09-11',2);
Insert Into Student values(12503,'Ankit','M','2003-02-12',3),
                          (12504,'Saurabh','M','2001-09-11',4),
						  (12505,'Neha','F','2003-02-12',5),
                          (12506,'Pooja','F','2001-09-11',1);
--add marks for each student
update Student set marks=85 where StudentID=12501;
update Student set marks=90 where StudentID=12502;
update Student set marks=78 where StudentID=12503;
update Student set marks=88 where StudentID=12504;
update Student set marks=92 where StudentID=12505;
update Student set marks=81 where StudentID=12506;

--add attendence for each student
update Student set attendence=90 where StudentID=12501;
update Student set attendence=85 where StudentID=12502;
update Student set attendence=88 where StudentID=12503;
update Student set attendence=92 where StudentID=12504;
update Student set attendence=95 where StudentID=12505;
update Student set attendence=80 where StudentID=12506;


Insert Into Course values(515,'Database Management Systems',4,1),
                         (516,'Operating Systems',3,2),
						 (517,'Computer Networks',4,3),
						 (518,'Software Engineering',3,4),
						 (519,'Compiler Design',4,5),
                         (520,'Web Technologies',3,1),
						 (521,'Artificial Intelligence',4,2),
						 (522,'Machine Learning',3,3),
						 (523,'Data Structures and Algorithms',4,4),
						 (524,'Digital Logic Design',3,5);

Insert Into Enrollment values(12501,515,'2020-09-12','A'),
                             (12502,516,'2020-09-13','B+'),
							 (12503,517,'2020-09-14','C'),
							 (12504,518,'2020-09-15','A+'),
							 (12505,519,'2020-09-16','B'),
							 (12506,520,'2020-09-17','A');

--Update the salary of a faculty member whose department is “Machine Learning” by 10%.


update Faculty set Salary= Salary*1.1 where DeptID=(select DeptID from Department where DeptName='Machine Learning');

--Delete all students who belong to a department that no longer exists in the Department table.

delete from Student where DeptID not in (select DeptID from Department);

--Add a new column PhoneNo to the Faculty table and update values for all existing faculty.
alter table faculty add phone_no VARCHAR(20);
--add phone number for each faculty
update Faculty set phone_no = '9876543210' where facultyID = 101;
update Faculty set phone_no = '9876543211' where facultyID = 102;
update Faculty set phone_no = '9876543212' where facultyID = 103;
update Faculty set phone_no = '9876543213' where facultyID = 104;
update Faculty set phone_no = '9876543214' where facultyID = 105;


--Change the course name Database Systems to Advanced Database Systems.
update Course set CourseName ='Advanced Database Systems' where CourseID=515;

-- Create views for all tables

create view ct_view as select s.StudentName,c.CourseName,s.Gender,c.Credits from Student s,Course c where StudentID in (101,102,103);


--Right Hand Join
Select * from Faculty f Right JOIN  Department d ON f.DeptID=d.DeptID;




--Left hand Join
Select * from Faculty f Left JOIN  Department d ON f.DeptID=f.DeptID;


--character Functions.
Select ASCII(DeptName) as DepartmentName from Department;
Select ASCII('g') as val;

Select CHARINDEX('t','Welcome to Practice DBMS') as characterindex;
SELECT CONCAT('Database', ' Management System') as combine;
select concat(CourseID,' ',CourseName) from Course;

select concat(F.FacultyID, ' ', F.FacultyName, ' teaches ', C.CourseName) from Faculty F JOIN Course C ON F.DeptID = C.DeptID;

--Cursor
DECLARE STCursor1 CURSOR FOR SELECT StudentName FROM Student;
OPEN STCursor1;
DECLARE @STName VARCHAR(100);
FETCH NEXT FROM STCursor1 INTO @STName;
WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Student Name is: ' + @STName;
    FETCH NEXT FROM STCursor1 INTO @STName;
END
--Select * from STCursor;
CLOSE STCursor1;
DEALLOCATE STCursor1;

--stored procedure for each students whose makrs are more then 90 then want to give them extra 5 marks as bonus.
GO
CREATE PROCEDURE AddBonusMarks
AS
BEGIN
    DECLARE @StudentID INT, @CurrentMarks INT, @NewMarks INT;
    DECLARE StudentCursor CURSOR FOR
    SELECT StudentID, Marks FROM Student WHERE Marks > 90;
    OPEN StudentCursor;
    FETCH NEXT FROM StudentCursor INTO @StudentID, @CurrentMarks;
    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @NewMarks = @CurrentMarks + 5;
        IF @NewMarks > 100
        BEGIN
            SET @NewMarks = 100;
        END
        UPDATE Student SET Marks = @NewMarks WHERE StudentID = @StudentID;
        FETCH NEXT FROM StudentCursor INTO @StudentID, @CurrentMarks;
    END
    CLOSE StudentCursor;
    DEALLOCATE StudentCursor;
END;
GO

--execute the procedure
EXEC AddBonusMarks;

--verify the updated marks
SELECT StudentID, StudentName, Marks FROM Student WHERE Marks > 90;



DECLARE
    @n INT = 5,       -- set your number here
    @i INT = 1,
    @fact BIGINT = 1;

IF @n < 0
BEGIN
    PRINT 'Factorial is not defined for negative numbers.';
END
ELSE
BEGIN
    WHILE @i <= @n
    BEGIN
        SET @fact = @fact * @i;
        SET @i = @i + 1;
    END;

    PRINT 'Factorial of ' + CAST(@n AS VARCHAR(20)) + ' is: ' + CAST(@fact AS VARCHAR(50));
END;


--