CREATE PROCEDURE SaveTokenData (
@User_Id INT,
@IssuedOn DateTime,
@ExpiresOn DateTime,
@AuthToken VARCHAR(50))
AS
BEGIN
INSERT INTO Tokens Values(@User_Id,@AuthToken,@IssuedOn,@ExpiresOn)
END