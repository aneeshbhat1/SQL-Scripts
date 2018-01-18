CREATE PROCEDURE RemoveTokenDataByUserId (
@User_Id INT)
AS
BEGIN
DELETE FROM Tokens WHERE User_Id = @User_Id
END