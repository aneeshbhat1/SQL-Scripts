CREATE PROCEDURE GetTokenData
AS
BEGIN
SELECT * from Tokens(nolock)
END