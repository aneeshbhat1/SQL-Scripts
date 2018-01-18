ALTER PROCEDURE Registeruserdetails(@Name                  VARCHAR(30), 
                                    @UserName              VARCHAR(30), 
                                    @Password              NVARCHAR(40), 
                                    @MobileNumber          VARCHAR(20), 
                                    @Gender                VARCHAR(10), 
                                    @PaytmRegisteredNumber VARCHAR(20), 
                                    @RegistrationType      VARCHAR(20), 
                                    @VehicleType           VARCHAR(10), 
                                    @VehicleCategory       VARCHAR(20), 
                                    @RegistrationNo        VARCHAR(50), 
                                    @LicenseNumber         VARCHAR(20), 
                                    @ReferredBy            VARCHAR(20), 
                                    @ReferralCode          VARCHAR(10), 
                                    @CashbackEarned        INT) 
AS 
  BEGIN 
      DECLARE @salt UNIQUEIDENTIFIER=Newid() 

      INSERT INTO users 
      VALUES     (@Name, 
                  @UserName, 
                  @MobileNumber, 
                  @Gender, 
                  @PaytmRegisteredNumber, 
                  @RegistrationType, 
                  @VehicleType, 
                  @VehicleCategory, 
                  @RegistrationNo, 
                  @LicenseNumber, 
                  @ReferredBy, 
                  0, 
                  0, 
                  0, 
                  0, 
                  @ReferralCode, 
                  Hashbytes('SHA2_512', @Password + Cast(@salt AS NVARCHAR(36))) 
                  , 
                  @salt, 
                  0) 

      UPDATE users 
      SET    cashbackearned = cashbackearned + @CashbackEarned 
      WHERE  user_id = @ReferredBy 
  END 