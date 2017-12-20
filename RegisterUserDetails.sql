ALTER PROCEDURE RegisterUserDetails(
@Name VARCHAR(30),
@UserName VARCHAR(30),
@Password NVARCHAR(40),
@MobileNumber VARCHAR(20),
@VehicleType VARCHAR(10),
@LicenseNumber VARCHAR(20),
@ReferredBy VARCHAR(20),
@ReferralCode VARCHAR(10),
@CashbackEarned INT)
AS
BEGIN
DECLARE @salt UNIQUEIDENTIFIER=NEWID()
INSERT INTO Users VALUES(@Name,@UserName,@MobileNumber,@VehicleType,@LicenseNumber,@ReferredBy,0,0,0,0,@ReferralCode,HASHBYTES('SHA2_512', @Password+CAST(@salt AS NVARCHAR(36))),@salt,0)
Update Users Set CashbackEarned = CashbackEarned + @CashbackEarned WHERE User_Id = @ReferredBy
END