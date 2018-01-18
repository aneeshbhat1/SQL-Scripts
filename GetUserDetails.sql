ALTER PROCEDURE GetUserDetails(@MobileNumber VARCHAR(50))
AS
BEGIN
SELECT * FROM USERS(nolock) WHERE MobileNumber = @MobileNumber
--AND Password = @Password
END