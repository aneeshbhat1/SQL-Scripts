CREATE TABLE Tokens
(
Token_Id INT IDENTITY(1,1),
User_Id INT,
AuthToken VARCHAR(50),
IssuedOn DateTime,
ExpiresOn DateTime
)