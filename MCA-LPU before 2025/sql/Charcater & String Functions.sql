--SQL Server in-built String or Character functions
use school;
select * from courses;
SELECT ASCII(CName) AS NumCodeOfFirstChar FROM courses;  --Return the ASCII value of the first character in "CName":
select ASCII('G') as val;
SELECT CHAR(65) AS CodeToCharacter; --Return the character based on the number code 65:
SELECT CHAR(TeacherID) AS CodeToCharacter from courses; --Return the character based on the number code 65:

--charindex('character','string')
SELECT CHARINDEX('t','Welcome to the class of DBMS') AS MatchPosition; --Search for "t" in specified string and return position
SELECT CHARINDEX('s','Welcome to the class of DBMS') AS CharacterPosition; --Search for "s" in specified string and return position
SELECT CONCAT('Database', ' Management System') as combine;	--Add two strings together. Also, it will not conisder space if not given otherwise

--SQL Server Concat With + 
 SELECT 'Database' + ' Management System' as combine1; 
 select concat(Cname,' ',CourseID) from courses;
 select concat(TeacherID,'                ',TName) from courses;


SELECT CONCAT_WS('.','www','lpu', 'in');			--Add strings together. Use '.' to separate the concatenated string values
SELECT LEFT('Database', 3) AS ExtractString;		--Extract 3 characters from a string (starting from left)
SELECT LEFT(CName,3) AS ExtractString from courses; --Extract 3 characters from a string (starting from left)
select right('database',3) as rightstring;
SELECT RIGHT('welcome', 3) AS ExtractString;   --Extract 3 characters from a string (starting from right)


SELECT LOWER('LEARN SQL');		--Convert the text to lower-case
SELECT UPPER('learn sql');		--Convert the text to upper-case


SELECT NCHAR(65) AS NumberCodeToUnicode;		--Return the Unicode character based on the number code 65
SELECT PATINDEX('%cation%', 'APPLICATIONS');	--Return the position of a pattern in a string
SELECT REPLACE('Manpreet', 'M', 'H');			--Replace "T" with "M"
SELECT REPLICATE('SQL SERVER ', 5);				--Repeat a string
SELECT REVERSE('Welcome');						--Reverse a string


SELECT RTRIM('SQL Server     ') AS RightTrimmedString; --Remove trailing spaces from a string
SELECT TRIM('     SQL Server     ') AS TrimmedString; --Remove leading and trailing spaces from a string

--SELECT DATALENGTH('University'); /*Return the length of an expression (in bytes):*/
--SELECT LEN('School of Computer Application'); /*Return the length of the string*/
SELECT QUOTENAME('abcdef');   --Return a Unicode string with bracket delimiters (default)


		
SELECT STR(185);					--Convert to String. Return a number as a string
SELECT STUFF('SCA Subjects', 1, 5, 'Computer');   --Replace. Delete 3 characters from a string, starting in position 1, and then insert "HTML" in position 1
SELECT SUBSTRING('SQL Server', 1, 3) AS ExtractString;   --Extract 3 characters from a string, starting in position 1*/



/*SELECT TRANSLATE('3*[2+1]/{8-4}', '[]{}', '()()');/*Return the string from the first argument AFTER the characters specified in the second argument 
are translated into the characters specified in the third argument:*/

--SELECT UNICODE('Jalandhar'); 



