
--Develop a cursor to retrieve all records from the Order table where the status is 'Pending'. For each pending order, print the order_id and customer_name to review outstanding orders.
use Amazon;
Select * from Products;
DECLARE ProductCursor11 CURSOR FOR SELECT PID, PName, P_Category FROM Products where ProductQuantity>20;

OPEN ProductCursor11;	
DECLARE @PID INT, @PName NVARCHAR(50), @P_Category NVARCHAR(50);
FETCH NEXT FROM ProductCursor11 INTO @PID, @PName, @P_Category;
WHILE @@FETCH_STATUS = 0    
BEGIN
PRINT 'PID: ' + CAST(@PID AS NVARCHAR(10)) +', Product Name and Category: ' + @PName + ' ' + @P_Category;
-- + CAST(@EmployeeID AS NVARCHAR(10))
FETCH NEXT FROM ProductCursor11 INTO @PID, @PName, @P_Category; -- Fetch the next row
END
CLOSE ProductCursor11; 
DEALLOCATE ProductCursor11; 

