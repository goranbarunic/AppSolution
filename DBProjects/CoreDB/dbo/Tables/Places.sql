CREATE TABLE [dbo].[Places] (
    [PlaceId]           INT           IDENTITY (1, 1) NOT NULL,
    [PlaceNationalCode] VARCHAR (20)  NULL,
    [PlaceTitle]        VARCHAR (255) NOT NULL,
    [DistrictId]        INT           NOT NULL,
    [RegionId]          INT           NOT NULL,
    [UserCreated]       VARCHAR (20)  CONSTRAINT [df_UserCreatedPlc] DEFAULT ('admin') NOT NULL,
    [DateCreated]       DATETIME      CONSTRAINT [df_DateCreatedPlc] DEFAULT (getdate()) NOT NULL,
    [UserModified]      VARCHAR (20)  CONSTRAINT [df_UserModifiedPlc] DEFAULT (NULL) NULL,
    [DateModified]      DATETIME      CONSTRAINT [df_DateModifiedPlc] DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([PlaceId] ASC),
    FOREIGN KEY ([RegionId]) REFERENCES [dbo].[Regions] ([RegionId]),
    CONSTRAINT [FK_Places_DistrictId] FOREIGN KEY ([DistrictId]) REFERENCES [dbo].[Districts] ([DistrictId])
);


GO
CREATE TRIGGER dbo.trg_Places
ON Places
AFTER UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[History_Places]
	(
		PlaceId,
		PlaceNationalCode,
		PlaceTitle,
		DistrictId,
		RegionId,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
		ChangeType
    )
    SELECT
        PlaceId,
		PlaceNationalCode,
		PlaceTitle,
		DistrictId,
		RegionId,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'U'
    FROM
        [dbo].[Places]
    UNION ALL
    SELECT
        PlaceId,
		PlaceNationalCode,
		PlaceTitle,
		DistrictId,
		RegionId,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'D'
    FROM
        [dbo].[Places]
END
