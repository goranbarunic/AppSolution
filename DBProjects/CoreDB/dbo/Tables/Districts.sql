CREATE TABLE [dbo].[Districts] (
    [DistrictId]    INT          IDENTITY (1, 1) NOT NULL,
    [RegionId]      INT          NOT NULL,
    [DistrictTitle] VARCHAR (50) NOT NULL,
    [DistrictType]  VARCHAR (20) NOT NULL,
    [UserCreated]   VARCHAR (20) CONSTRAINT [df_UserCreatedDis] DEFAULT ('admin') NOT NULL,
    [DateCreated]   DATETIME     CONSTRAINT [df_DateCreatedDis] DEFAULT (getdate()) NOT NULL,
    [UserModified]  VARCHAR (20) CONSTRAINT [df_UserModifiedDis] DEFAULT (NULL) NULL,
    [DateModified]  DATETIME     CONSTRAINT [df_DateModifiedDis] DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([DistrictId] ASC),
    CONSTRAINT [FK_Districts_RegionId] FOREIGN KEY ([RegionId]) REFERENCES [dbo].[Regions] ([RegionId])
);


GO
CREATE TRIGGER dbo.trg_Districts
ON Districts
AFTER UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[History_Districts]
	(
		DistrictId,
		RegionId,
		DistrictTitle,
		DistrictType,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
		ChangeType
    )
    SELECT
        DistrictId,
		RegionId,
		DistrictTitle,
		DistrictType,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'U'
    FROM
        [dbo].[Districts]
    UNION ALL
    SELECT
        DistrictId,
		RegionId,
		DistrictTitle,
		DistrictType,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'D'
    FROM
        [dbo].[Districts]
END
