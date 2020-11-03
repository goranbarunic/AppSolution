CREATE TABLE [dbo].[History_Districts] (
    [DistrictId]    INT          NOT NULL,
    [RegionId]      INT          NOT NULL,
    [DistrictTitle] VARCHAR (50) NOT NULL,
    [DistrictType]  VARCHAR (20) NOT NULL,
    [UserCreated]   VARCHAR (20) CONSTRAINT [DF_History_Districts_UserCreated] DEFAULT ('admin') NOT NULL,
    [DateCreated]   DATETIME     CONSTRAINT [DF_History_Districts_DateCreated] DEFAULT (getdate()) NOT NULL,
    [UserModified]  VARCHAR (20) CONSTRAINT [DF_History_Districts_UserModified] DEFAULT (NULL) NULL,
    [DateModified]  DATETIME     CONSTRAINT [DF_History_Districts_DateModified] DEFAULT (NULL) NULL,
    [ChangeType]    CHAR (1)     NOT NULL
);

