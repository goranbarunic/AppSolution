-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_SelectUsers
AS
BEGIN
	SET NOCOUNT ON;

	Select Username, Email, PasswordHash, IsActive, IsRegistered, UserCreated, DateCreated, UserModified, DateModified
	From [AdminDB ].dbo.Users

END
