-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[crud_InsertRoleAuthorizations]
		@RoleId	[int],
		@AuthorizationId	[int]
	
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO RoleAuthorizations
	(
		RoleId,AuthorizationId
	)
	VALUES
	(
		@RoleId,
		@AuthorizationId
	)

END
