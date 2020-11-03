-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_InsertAuthorizations
		@AuthorizationTitle	[varchar](20),
		@UserCreated	[varchar](20),
		@DateCreated	[datetime],
		@UserModified	[varchar](20),
		@DateModified	[datetime]

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Authorizations
	(
		AuthorizationTitle, UserCreated, DateCreated, UserModified, DateModified
	)
	VALUES
	(
		@AuthorizationTitle,
		@UserCreated,
		@DateCreated,
		@UserModified,
		@DateModified
	)

END
