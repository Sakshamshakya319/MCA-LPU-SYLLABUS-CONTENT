use EcommerceDB;

create table Netflix(
	ID int,
    Name varchar(200),
    Course varchar(100),
    Phone Int,
    SMarks decimal(5,2) 
    );

Insert Into Netflix (ID, Name, Course, Phone, SMarks) values (101, 'Raju','BCA',94743934,78.00),
                                                             (102,'Soheil','MBA',937448500,90.00),
                                                             (103,'Aayush','Architecture',847458747,89.00),
                                                             (104,'Saksham','MCA',84375494,99.00),
                                                             (105,'Suyash','Agri',987484,60.00),
                                                             (106,'Sonu','Law',88948489,78.00);

Select  * from  Netflix;



-- Numeric Aggregate Functions
select sum(SMarks) as Total_Smarks from Netflix;
select avg(SMarks) as Avg_Smarks from Netflix;
select max(SMarks) as Max_Smarks from Netflix;
select min(SMarks) as Min_Smarks from Netflix;
select count(*) as Count_of_students from Netflix where SMarks>80;

select ceiling(SMarks) as Ceeil from Netflix;
select floor(SMarks) as Floored from Netflix;
select log(SMarks) as Logged from Netflix;
select power(SMarks,2) as Powered from Netflix;
select sin(SMarks) as Sinned from Netflix;
