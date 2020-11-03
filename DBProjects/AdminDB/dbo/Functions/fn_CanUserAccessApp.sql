-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION fn_CanUserAccessApp 
(
	@UserId INT, 
	@ApplicationId INT
)
RETURNS bit
AS
BEGIN
	declare
	@test bit

	IF  not exists (SELECT UserId, ApplicationId
         FROM [dbo].[UserApplications]
         WHERE UserId = @UserId and @ApplicationId = ApplicationId) 
	set	@test = 0	
	
	ELSE
	set	@test = 1

	RETURN @test

END
