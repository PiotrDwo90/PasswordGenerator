

  DECLARE @PasswordLengthReturn int
      set @PasswordLengthReturn  = 10
    DECLARE @AllChar as nvarchar(MAX) 
    set @AllChar = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'
	--set @AllChar = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ123456789'	/*wykluczone znaki które wygl¹daj¹ podobnie "I", "l" oraz "0", "O"*/
    declare @MyRnd as int
    declare @PasswordReturn as nvarchar(MAX) 
            set @PasswordReturn = ''
    declare @n as int 
            set @n  = 0
    while @n < @PasswordLengthReturn  begin
       set @n = @n + 1
       set @MyRnd = (SELECT ((Rand() * LEN(@AllChar)) +1))
            set @PasswordReturn = @PasswordReturn+SUBSTRING(@AllChar,@MyRnd,1)
    end

select @PasswordReturn

