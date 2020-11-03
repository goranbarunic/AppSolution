-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION fn_GetUserApplications 
(	
	@ApplicationId INT
)
RETURNS TABLE 
AS
RETURN 
(
	Select UserId, ApplicationId, RoleId
	From [dbo].[UserApplications]
	Where ApplicationId = @ApplicationId
)
