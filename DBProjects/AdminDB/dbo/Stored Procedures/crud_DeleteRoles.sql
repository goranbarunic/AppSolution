-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_DeleteRoles
		@RoleId	[int]	
		
AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM [AdminDB ].dbo.Roles WHERE RoleId = @RoleId;

END
