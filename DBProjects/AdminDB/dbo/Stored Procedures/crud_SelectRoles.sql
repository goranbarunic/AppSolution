-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_SelectRoles
AS
BEGIN
	SET NOCOUNT ON;

	Select RoleTitle, UserCreated, DateCreated, UserModified, DateModified
	From [AdminDB ].dbo.Roles

END
