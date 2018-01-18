CREATE PROCEDURE RemoveTokenDataByTokenId (
@AuthToken VARCHAR(50))
AS
BEGIN
DELETE FROM Tokens WHERE AuthToken = @AuthToken
END