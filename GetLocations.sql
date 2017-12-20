ALTER PROCEDURE GetLocations
AS
BEGIN
SELECT Username,Latitude,Longitude FROM Users(nolock)
END