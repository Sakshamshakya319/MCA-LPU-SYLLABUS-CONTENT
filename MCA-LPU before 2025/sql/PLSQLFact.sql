   DECLARE @num INT;      -- Input number
   SET @num = 5;
   DECLARE @fact INT=1;       -- Variable to store factorial
   DECLARE @i int=1;         -- Loop counter
	--SET @i = 1;
BEGIN
    WHILE @i<= @num 
      SET  @fact= @fact * @i;
      SET  @i = @i + 1;
 END
    --print @num;
PRINT 'The value of the integer variable is: ' +@num;
--END

