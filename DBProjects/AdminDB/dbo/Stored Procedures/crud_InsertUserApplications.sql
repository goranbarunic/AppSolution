-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_InsertUserApplications
		@UserId [int],
		@ApplicationId [int],
		@RoleId [int]

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO UserApplications
	(
		UserId, ApplicationId, RoleId
	)
	VALUES
	(
		@UserId,
		@ApplicationId,
		@RoleId
	)

END
