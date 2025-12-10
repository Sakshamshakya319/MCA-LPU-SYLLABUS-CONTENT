CREATE TABLE Bank(
    Bid INT,
    BName VARCHAR(150),
    BAddress VARCHAR(100)
);

Insert Into Bank VALUES (123,'Null','Delhi');

SELECT Bid, BName from Bank;

--singlw row
UPDATE Bank SET BName = 'Null' WHERE Bid = '122';
--multiple rows
UPDATE Bank SET BName = 'SBI' WHERE Bid= 121;

UPDATE Bank SET BAddress = 'Phagwara' WHERE Bid='121';


UPDATE Bank SET BAddress = 'Null' where BAddress='Delhi';

Select Bid , BName from Bank WHERE Bid=121 OR Bid=123;

SELECT *  FROM Bank WHERE Bid = 123;

--update using (OR and & commands)
UPDATE Bank SET BName='Axis' where Bid = 122 or Bid=123;
--UPDATE Bank SET BName='Axis' where Bid = 122 and Bid=123; it will not work because only single row can update the Bname at a time.

--LIKE CLAUSE...

