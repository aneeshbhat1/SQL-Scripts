CREATE PROCEDURE GetLocation(@UserName VARCHAR(50))
AS
BEGIN
SELECT Username,Latitude,Longitude FROM Users(nolock) WHERE Username = @UserName
END