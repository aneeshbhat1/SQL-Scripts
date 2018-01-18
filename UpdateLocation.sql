ALTER PROCEDURE UpdateLocation(
@UserName VARCHAR(50),
@Latitude decimal(20,20),
@Longitude decimal(20,20)
)
AS
BEGIN
Update Users set Latitude = @Latitude,Longitude=@Longitude WHERE Username = @UserName
END