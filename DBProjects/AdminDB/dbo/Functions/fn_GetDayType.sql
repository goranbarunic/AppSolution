-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION fn_GetDayType 
(
	@Date DATETIME
)
RETURNS int
AS
BEGIN	
	RETURN (SELECT FORMAT(@Date, 'dddd'))
END
