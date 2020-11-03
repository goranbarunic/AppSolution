-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_UpdateUsers
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

	Update Users
	SET
		Username =  @Username,
		Email =  @Email,
		PasswordHash = @PasswordHash,
		IsActive = @IsActive,
		IsRegistered = @IsRegistered,
		UserCreated = @UserCreated,
		DateCreated = @DateCreated,
		UserModified = @UserModified,
		DateModified = @DateModified

END
