ALTER PROCEDURE AuthenticateUser(@UserName VARCHAR(30),@Password NVARCHAR(40))
AS
BEGIN
SELECT User_Id FROM USERS WHERE Username = @UserName AND Password = HASHBYTES('SHA2_512', @Password+CAST(Salt AS NVARCHAR(36)))
END