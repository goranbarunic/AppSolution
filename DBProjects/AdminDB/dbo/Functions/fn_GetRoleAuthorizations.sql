-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION fn_GetRoleAuthorizations 
(	
	@RoleId INT
)
RETURNS TABLE 
AS
RETURN 
(
	Select RoleId, AuthorizationId
	From [dbo].[RoleAuthorizations]
	Where RoleId = @RoleId
)
