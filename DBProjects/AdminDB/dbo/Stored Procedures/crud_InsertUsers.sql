-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_InsertUsers
		@Username	    [varchar](100),
		@Email	        [varchar](255),
		@PasswordHash	[varchar](200),
		@IsActive	    [bit],
		@IsRegistered	[bit],
		@UserCreated	[varchar](20),
		@DateCreated	[datetime],
		@UserModified	[varchar](20),
		@DateModified	[datetime]

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Users
	(
		Username, Email, PasswordHash, IsActive, IsRegistered, UserCreated, DateCreated, UserModified, DateModified
	)
	VALUES
	(
		@Username,
		@Email,
		@PasswordHash,
		@IsActive,
		@IsRegistered,
		@UserCreated,
		@DateCreated,
		@UserModified,
		@DateModified
	)

END
