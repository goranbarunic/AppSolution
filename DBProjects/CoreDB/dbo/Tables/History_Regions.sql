CREATE TABLE [dbo].[History_Regions] (
    [RegionId]     INT          NOT NULL,
    [RegionTitle]  VARCHAR (50) NOT NULL,
    [CountryId]    INT          NOT NULL,
    [UserCreated]  VARCHAR (20) CONSTRAINT [DF_History_Regions_UserCreated] DEFAULT ('admin') NOT NULL,
    [DateCreated]  DATETIME     CONSTRAINT [DF_History_Regions_DateCreated] DEFAULT (getdate()) NOT NULL,
    [UserModified] VARCHAR (20) CONSTRAINT [DF_History_Regions_UserModified] DEFAULT (NULL) NULL,
    [DateModified] DATETIME     CONSTRAINT [DF_History_Regions_DateModified] DEFAULT (NULL) NULL,
    [ChangeType]   CHAR (1)     NOT NULL
);

