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
    DOB date default getdate(),
    DeptID int NOT NULL
);


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

Insert Into Student values(12501,'Abhishek','M',getdate(),1);
Insert Into Student values(12502,'Suraj','M',getdate(),2);
Insert Into Student values(12503,'Ankit','M',getdate(),3),
                          (12504,'Saurabh','M',getdate(),4),
						  (12505,'Neha','F',getdate(),5),
                          (12506,'Pooja','F',getdate(),1);


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

--Right Hand join examples.
SELECT * FROM Faculty f RIGHT JOIN Department d ON f.DeptID=d.DeptID;

--Right Hand join examples with where clause.
SELECT * FROM Faculty f RIGHT JOIN Department d ON f.DeptID=d.DeptID WHERE f.FacultyName LIKE '%a%' OR d.Location LIKE '%Level%';

--Left Hand join examples.
SELECT * FROM Faculty f LEFT JOIN Department d ON f.DeptID=d.DeptID; 

--Inner Join Example with student table and department table.
SELECT * FROM Student S INNER JOIN Department d ON s.DeptID=d.DeptID;

Select * FROM student s;
select * from department d;
Select s.StudentID , d.DeptID From Student LEFT Join Department On s.studentid=d.DeptID;

