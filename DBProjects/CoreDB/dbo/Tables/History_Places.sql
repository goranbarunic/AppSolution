CREATE TABLE [dbo].[History_Places] (
    [PlaceId]           INT           NOT NULL,
    [PlaceNationalCode] VARCHAR (20)  NULL,
    [PlaceTitle]        VARCHAR (255) NOT NULL,
    [DistrictId]        INT           NOT NULL,
    [RegionId]          INT           NOT NULL,
    [UserCreated]       VARCHAR (20)  CONSTRAINT [DF_History_Places_UserCreated] DEFAULT ('admin') NOT NULL,
    [DateCreated]       DATETIME      CONSTRAINT [DF_History_Places_DateCreated] DEFAULT (getdate()) NOT NULL,
    [UserModified]      VARCHAR (20)  CONSTRAINT [DF_History_Places_UserModified] DEFAULT (NULL) NULL,
    [DateModified]      DATETIME      CONSTRAINT [DF_History_Places_DateModified] DEFAULT (NULL) NULL,
    [ChangeType]        CHAR (1)      NOT NULL
);

