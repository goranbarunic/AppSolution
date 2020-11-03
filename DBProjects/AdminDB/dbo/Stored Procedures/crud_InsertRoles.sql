-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_InsertRoles
		@RoleTitle	[varchar](20),
		@UserCreated	[varchar](20),
		@DateCreated	[datetime],
		@UserModified	[varchar](20),
		@DateModified	[datetime]

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Roles
	(
		RoleTitle, UserCreated, DateCreated, UserModified, DateModified
	)
	VALUES
	(
		@RoleTitle,
		@UserCreated,
		@DateCreated,
		@UserModified,
		@DateModified
	)

END
