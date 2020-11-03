CREATE TABLE [dbo].[Regions] (
    [RegionId]     INT          IDENTITY (1, 1) NOT NULL,
    [RegionTitle]  VARCHAR (50) NOT NULL,
    [CountryId]    INT          NOT NULL,
    [UserCreated]  VARCHAR (20) CONSTRAINT [df_UserCreatedRge] DEFAULT ('admin') NOT NULL,
    [DateCreated]  DATETIME     CONSTRAINT [df_DateCreatedRge] DEFAULT (getdate()) NOT NULL,
    [UserModified] VARCHAR (20) CONSTRAINT [df_UserModifiedRge] DEFAULT (NULL) NULL,
    [DateModified] DATETIME     CONSTRAINT [df_DateModifiedRge] DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([RegionId] ASC),
    FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Countries] ([CountryId])
);


GO
CREATE TRIGGER dbo.trg_Regions
ON Regions
AFTER UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[History_Regions]
	(
		RegionId,
		RegionTitle,
		CountryId,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
		ChangeType
    )
    SELECT
		RegionId,
		RegionTitle,
		CountryId,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'U'
    FROM
        [dbo].[Regions]
    UNION ALL
    SELECT
		RegionId,
		RegionTitle,
		CountryId,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'D'
    FROM
        [dbo].[Regions]
END
