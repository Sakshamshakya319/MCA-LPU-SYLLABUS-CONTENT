use Practice;


CREATE TABLE Voters(
    Id INT PRIMARY KEY,
    Name varchar(20) ,
    Course varchar(20) DEFAULT 'MCA',
    AGE INT NOT NULL CHECK (AGE>18),
);

INSERT INTO Voters(Id,Name,Age) VALUES
(1,'Rahul',23),
(2,'Suraj',23),
(3,'Sachin',25),
(4,'Nikhil',26),
(5,'Ankit',27);

-- gives error 
INSERT INTO Voters(Id, Name,course , Age) VALUES(7,'Subh','BCA',23);

SELECT * FROM Voters;


--add age unique constraint
ALTER TABLE Voters ADD CONSTRAINT unique_age UNIQUE(Age);

-- --Order table

-- drop table Orders;

-- create table Orders(
--     Id int primary key,
--     Customer_Name varchar(20),
--     Quantity int check(quantity>5)
-- );

-- insert into Orders values
-- (1,'Rahul',10),
-- (2,'Suraj',16),
-- (3,'Sachin',11),
-- (4,'Nikhil',12),
-- (5,'Ankit',13);

-- --add not null constraint to quantity column
-- alter table orders add constraint chk_quantity check(quantity>5);



-- --add primary key constraint to id column
-- alter table orders add constraint pk_id primary key(id);