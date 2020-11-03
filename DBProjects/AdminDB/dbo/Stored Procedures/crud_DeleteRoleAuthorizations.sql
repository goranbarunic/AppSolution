-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_DeleteRoleAuthorizations
		@RoleId	[int],
		@AuthorizationId	[int]
AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM [AdminDB ].dbo.RoleAuthorizations WHERE RoleId = @RoleId and AuthorizationId = @AuthorizationId

END
