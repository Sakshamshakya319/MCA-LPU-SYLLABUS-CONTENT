--print simple message
PRINT 'Hello, this is a simple message!';


--Printing message using variable
DECLARE @a VARCHAR(100);
-- Assign a value to the variable
SET @a = 'This is the value of the variable';
-- Print the value of the variable
PRINT @a;



DECLARE @num INT;
-- Assign an integer value to the variable
SET @num = 123;
-- Print the integer value after converting it to a string
print @num;
PRINT 'The value of the integer variable is: ' +cast(@num AS varchar(20));




--Taking input
DECLARE @user_input VARCHAR(100);
set @user_input= '&user_input';
    print @user_input;

  DECLARE @value1 VARCHAR(50);
  DECLARE @value2 VARCHAR(50);
  DECLARE @value3 VARCHAR(50);
  set @value1 = 'Hello'
set @value2  = 'World'
  set @value3  = 'SQL Server'
-- Concatenate values to print in one line
PRINT @value1 + ', ' + @value2 + ' - ' + @value3;



--Adding two numbers
DECLARE @a int;
DECLARE @b int;
DECLARE @Sum INT;
SET @a = 10;
SET @b = 20;
SET @Sum = @a + @b;
print @sum
PRINT 'SUM is: ' + CAST(@Sum AS VARCHAR(10));
PRINT 'SUM is: ' + CAST((@a+@b) AS VARCHAR(10));



DECLARE @value1 VARCHAR(50),@value2 VARCHAR(50), @value3 VARCHAR(50);
  set @value1 = 'Hello'
set @value2  = 'World'
  set @value3  = 'SQL Server'
-- Concatenate values to print in one line
PRINT @value1 + ', ' + @value2 + ' - ' + @value3;


create database D2420g2
use D2420g2

create table student(id int,name varchar(30))
declare @a int;
declare @b varchar(30);
set @a=102;
set @b='Isha';
insert into student values(@a,@b);

select * from student

select * from student where id=@a;

update student set name='shilpa' where id=@a

select * from student





