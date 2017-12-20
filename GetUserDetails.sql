ALTER PROCEDURE GetUserDetails(@UserName VARCHAR(50))
AS
BEGIN
SELECT * FROM USERS(nolock) WHERE Username = @UserName
--AND Password = @Password
END