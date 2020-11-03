-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_DeleteAuthorizations
		@AuthorizationId	[int]	
		
AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM [AdminDB ].dbo.Authorizations WHERE AuthorizationId = @AuthorizationId;

END
