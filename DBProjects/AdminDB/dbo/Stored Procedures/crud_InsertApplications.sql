-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_InsertApplications
		@ApplicationTitle	[varchar](20),
		@UserCreated	[varchar](20),
		@DateCreated	[datetime],
		@UserModified	[varchar](20),
		@DateModified	[datetime]

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Applications
	(
		ApplicationTitle, UserCreated, DateCreated, UserModified, DateModified
	)
	VALUES
	(
		@ApplicationTitle,
		@UserCreated,
		@DateCreated,
		@UserModified,
		@DateModified
	)

END
