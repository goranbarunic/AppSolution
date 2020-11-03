-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE crud_SelectAuthorizations
AS
BEGIN
	SET NOCOUNT ON;

	Select AuthorizationTitle, UserCreated, DateCreated, UserModified, DateModified
	From [AdminDB ].dbo.Authorizations

END
