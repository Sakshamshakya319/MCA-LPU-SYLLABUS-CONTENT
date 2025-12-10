--constraints

use LPU;

Create table student231(
id int primary key,
name varchar(20),
city varchar(60)
);

INSERT INTO student231 VALUES (1,'Rahul','Pune');
INSERT INTO student231 VALUES (2,'Sachin','Mumbai');
INSERT INTO student231 VALUES (3,'Amit','Delhi');

create table course432(
    id int primary key,
    name varchar(240),
    age int,
    course varchar(230) DEFAULT 'MCA' 
);

INSERT INTO course432 VALUES(1,'Rohan',20);
INSERT INTO course432 VALUES(2,'mohit',23);
INSERT INTO course432 VALUES(3,'keshav',25);