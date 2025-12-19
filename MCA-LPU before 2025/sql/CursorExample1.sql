-- Sample table
use Taran;
CREATE TABLE StudentCursor (
    SID INT,
    SName VARCHAR(100)
);

-- Insert sample data
INSERT INTO StudentCursor VALUES (11, 'Aman'), (12, 'Taran'), (13, 'Ajay');
Select * from StudentCursor;
-- Cursor example
DECLARE STCursor1 CURSOR FOR SELECT SName FROM StudentCursor;
OPEN STCursor1;
DECLARE @STName VARCHAR(100); 
FETCH NEXT FROM STCursor1 INTO @STName; 
WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Student Name is: ' + @STName;
    FETCH NEXT FROM STCursor1 INTO @STName;
END
--Select * from STCursor;
CLOSE STCursor1;
DEALLOCATE STCursor1;




