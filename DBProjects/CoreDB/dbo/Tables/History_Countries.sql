CREATE TABLE [dbo].[History_Countries] (
    [CountryId]    INT          NOT NULL,
    [CountryCode]  CHAR (3)     NULL,
    [CountryTitle] VARCHAR (50) NOT NULL,
    [UserCreated]  VARCHAR (20) CONSTRAINT [DF_History_Countries_UserCreated] DEFAULT ('admin') NOT NULL,
    [DateCreated]  DATETIME     CONSTRAINT [DF_History_Countries_DateCreated] DEFAULT (getdate()) NOT NULL,
    [UserModified] VARCHAR (20) CONSTRAINT [DF_History_Countries_UserModified] DEFAULT (NULL) NULL,
    [DateModified] DATETIME     CONSTRAINT [DF_History_Countries_DateModified] DEFAULT (NULL) NULL,
    [ChangeType]   CHAR (1)     NOT NULL
);

