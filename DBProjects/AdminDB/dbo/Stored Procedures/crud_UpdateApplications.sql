-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_UpdateApplications
		@ApplicationTitle	[varchar](20),
		@UserCreated	[varchar](20),
		@DateCreated	[datetime],
		@UserModified	[varchar](20),
		@DateModified	[datetime]

AS
BEGIN
	SET NOCOUNT ON;

	Update Applications
	SET
		ApplicationTitle = @ApplicationTitle, 
		UserCreated = @UserCreated, 
		DateCreated = @DateCreated, 
		UserModified = @UserModified, 
		DateModified = @DateModified

END
