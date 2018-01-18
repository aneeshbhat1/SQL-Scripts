CREATE PROCEDURE UpdateTokenData (@AuthToken VARCHAR(50),@ExpiresOn DateTime)
AS
BEGIN
Update Tokens Set ExpiresOn = @ExpiresOn WHERE AuthToken = @AuthToken
END