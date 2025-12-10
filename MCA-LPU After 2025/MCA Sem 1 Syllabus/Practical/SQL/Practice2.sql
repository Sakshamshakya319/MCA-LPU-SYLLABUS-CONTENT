CREATE DATABASE Uni;
use Uni;

CREATE TABLE SCA (
   student_id INT,
   student_name VARCHAR(50),
   age INT,
   department VARCHAR(50),
   marks INT,
   Doa DATE,
   Doe DATE,
   Email VARCHAR(255),
);

INSERT INTO SCA
    (student_id, student_name, age, department, marks, Doa, Doe,Email)
VALUES
    (1, 'Aarav Sharma', 20, 'SCA', 8.5,'2023-07-15', '2023-07-16', 'eab@gmail.com'),
    (2, 'Shubham', 19, 'B.Pharma', 4.7, '2023-07-16', '2023-07-17','saaw@gmail.com');


--drop columns
-- ALTER TABLE SCA DROP COLUMN Doe,Email;

select * from SCA;

/*
 alter the datatype of student_id from int to float,
 alter the datatype of student_name from varchar(50) to varchar(150).
*/

--Alter columns datatypes..
ALTER TABLE SCA ALTER COLUMN student_id FLOAT;
-- ALTER TABLE SCA ALTER COLUMN marks FLOAT;

--Alter datatype size.
ALTER TABLE SCA ALTER COLUMN student_name VARCHAR(100);

ALTER TABLE [SCA]
ALTER COLUMN marks DECIMAL(3,2);


--Drop Table
DROP TABLE SCA;

--Drop Database; (DDL COMMAND)
DROP DATABASE City;

--Truncate Table (DDL COMMAND)
TRUNCATE TABLE SCA;

--Delete from table ( DML COMMAND)
DELETE FROM SCA;
--To Delete single record from table.
DELETE FROM SCA WHERE student_id = 1;