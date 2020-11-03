CREATE TABLE [dbo].[Countries] (
    [CountryId]    INT          IDENTITY (1, 1) NOT NULL,
    [CountryCode]  CHAR (3)     NULL,
    [CountryTitle] VARCHAR (50) NOT NULL,
    [UserCreated]  VARCHAR (20) CONSTRAINT [df_UserCreatedCnt] DEFAULT ('admin') NOT NULL,
    [DateCreated]  DATETIME     CONSTRAINT [df_DateCreatedCnt] DEFAULT (getdate()) NOT NULL,
    [UserModified] VARCHAR (20) CONSTRAINT [df_UserModifiedCnt] DEFAULT (NULL) NULL,
    [DateModified] DATETIME     CONSTRAINT [df_DateModifiedCnt] DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([CountryId] ASC)
);


GO
CREATE TRIGGER dbo.trg_Countries
ON Countries
AFTER UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[History_Countries]
	(
		CountryId,
		CountryCode,
		CountryTitle,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
		ChangeType
    )
    SELECT
        CountryId,
		CountryCode,
		CountryTitle,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'U'
    FROM
        [dbo].[Countries]
    UNION ALL
    SELECT
       CountryId,
		CountryCode,
		CountryTitle,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'D'
    FROM
        [dbo].[Countries]
END
