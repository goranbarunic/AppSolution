CREATE TABLE [dbo].[History_Applications] (
    [ApplicationId]    INT          NOT NULL,
    [ApplicationTitle] VARCHAR (20) NOT NULL,
    [UserCreated]      VARCHAR (20) CONSTRAINT [DF_History_Applications_UserCreated] DEFAULT ('admin') NOT NULL,
    [DateCreated]      DATETIME     CONSTRAINT [DF_History_Applications_DateCreated] DEFAULT (getdate()) NOT NULL,
    [UserModified]     VARCHAR (20) CONSTRAINT [DF_History_Applications_UserModified] DEFAULT (NULL) NULL,
    [DateModified]     DATETIME     CONSTRAINT [DF_History_Applications_DateModified] DEFAULT (NULL) NULL,
    [ChangeType]       CHAR (1)     NOT NULL
);

