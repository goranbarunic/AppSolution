CREATE TABLE [dbo].[History_Genders] (
    [GenderId]     INT          NOT NULL,
    [GenderShort]  CHAR (1)     NOT NULL,
    [GenderTitle]  VARCHAR (20) NOT NULL,
    [UserCreated]  VARCHAR (20) CONSTRAINT [DF_History_Genders_UserCreated] DEFAULT ('admin') NOT NULL,
    [DateCreated]  DATETIME     CONSTRAINT [DF_History_Genders_DateCreated] DEFAULT (getdate()) NOT NULL,
    [UserModified] VARCHAR (20) CONSTRAINT [DF_History_Genders_UserModified] DEFAULT (NULL) NULL,
    [DateModified] DATETIME     CONSTRAINT [DF_History_Genders_DateModified] DEFAULT (NULL) NULL,
    [ChangeType]   CHAR (1)     NOT NULL
);

