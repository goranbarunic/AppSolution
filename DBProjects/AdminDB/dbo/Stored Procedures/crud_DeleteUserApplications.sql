-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_DeleteUserApplications
		@UserId [int],
		@ApplicationId [int],
		@RoleId [int]
		
AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM [AdminDB ].dbo.UserApplications 
	WHERE UserId = @UserId and ApplicationId = @ApplicationId and RoleId = @RoleId;

END
