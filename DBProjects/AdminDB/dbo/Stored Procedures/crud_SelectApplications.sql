-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_SelectApplications
AS
BEGIN
	SET NOCOUNT ON;

	Select ApplicationTitle, UserCreated, DateCreated, UserModified, DateModified
	From [AdminDB ].dbo.Applications

END
