-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[crud_DeleteApplications]
		@ApplicationId	[int]	
		
AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM [AdminDB ].dbo.Applications WHERE ApplicationId = @ApplicationId;

END
