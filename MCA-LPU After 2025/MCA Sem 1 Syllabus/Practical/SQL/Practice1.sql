use CITY;


-- CREATE TABLE students (
--     student_id INT,
--     name VARCHAR(50),
--     course VARCHAR(20),
--     marks INT,
--     age INT,
--     state VARCHAR(50)
-- );


INSERT INTO students VALUES
(1, 'Aarav Patel', 'MCA', 85, 22, 'Gujarat'),
(2, 'Priya Sharma', 'MCA', 91, 23, 'Delhi'),
(3, 'Rohan Verma', 'MCA', 78, 21, 'Maharashtra'),
(4, 'Sneha Reddy', 'MCA', 88, 22, 'Telangana'),
(5, 'Vikram Nair', 'MCA', 74, 24, 'Kerala'),
(6, 'Kavya Singh', 'MCA', 92, 23, 'Uttar Pradesh'),
(7, 'Rahul Das', 'MCA', 80, 22, 'West Bengal'),
(8, 'Ananya Iyer', 'MCA', 89, 21, 'Tamil Nadu'),
(9, 'Manish Chauhan', 'MCA', 76, 23, 'Rajasthan'),
(10, 'Neha Joseph', 'MCA', 95, 22, 'Karnataka');

Insert Into students VALUES (12, 'Priyanshu', 'MCA', 190, 20, 'Punjab');
Insert Into students VALUES (13, 'Priyanshu kumar', 'MCA', Null, 21, 'Punjab');


SELECT COUNT(*) AS total_students FROM students;
SELECT AVG(marks) AS average_marks FROM students;
SELECT COUNT(marks) AS students_above_150 FROM students WHERE marks > 150;
SELECT Max(marks) AS MaximumMarks,MIN(marks) as MinimumMarks From students;


SELECT * FROM students WHERE marks = (SELECT MAX(marks) FROM students);
--views
CREATE VIEW ABC AS SELECT * FROM students WHERE marks = (SELECT MIN(marks) FROM students);
SELECT * FROM ABC;


SELECT * FROM students WHERE marks IN ((SELECT MAX(marks) FROM students), (SELECT MIN(marks) FROM students));
-- OR
SELECT * FROM students WHERE marks = ((SELECT MAX(marks) FROM students)) OR marks= (SELECT MIN(marks) FROM students);