-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_DeleteUsers
		@AUserId	[int]	
		
AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM [AdminDB ].dbo.Users WHERE UserId = @AUserId

END
