Use LPU;

CREATE TABLE LPU (
   student_id INT,
   student_name VARCHAR(50),
   age INT,
   department VARCHAR(50),
   marks INT,
   Doa DATE,
   Doe DATE,
   Email VARCHAR(255),
);

INSERT INTO LPU
    (student_id, student_name, age, department, marks, Doa, Doe,Email)
VALUES
    (1, 'Aarav Sharma', 20, 'SCA', 8.5,'2023-07-15', '2023-07-16', 'eab@gmail.com'),
    (2, 'Shubham', 19, 'B.Pharma', 4.7, '2023-07-16', '2023-07-17','saaw@gmail.com');

SELECT * FROM MCA;   --table name changed from lpu to MCA.



--Rename table name using Store procedure(sp_rename).
EXEC sp_rename 'LPU','MCA';

--Rename Columns using store_procedure.
EXEC sp_rename 'MCA.Student_id','ROll Number','COLUMN';

--Insert Data from old table to New Table.
--Method 1:

CREATE TABLE Employee(
   Emp_id INT,
   Emp_name VARCHAR(50),
   age INT,
);

Insert INTO Employee(Emp_id,Emp_name,age) 
  VALUES (1,'ABC',23),
  (2,'XYZ',25);

SELECT * FROM Employee;

CREATE TABLE Employee2(Emp_id INT,Emp_name VARCHAR(50),age INT) SELECT * FROM Employee;


SELECT Emp_id,Emp_name,age INTO Employee4 FROM Employee;

SELECT * from Employee4;


Drop TABLE Employee3;