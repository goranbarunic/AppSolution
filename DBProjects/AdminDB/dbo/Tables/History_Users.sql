CREATE TABLE [dbo].[History_Users] (
    [UserId]       INT           NOT NULL,
    [Username]     VARCHAR (100) NOT NULL,
    [Email]        VARCHAR (255) NOT NULL,
    [PasswordHash] VARCHAR (200) CONSTRAINT [DF_History_Users_PasswordHash] DEFAULT ('#') NOT NULL,
    [IsActive]     BIT           CONSTRAINT [DF_History_Users_IsActive] DEFAULT ((0)) NOT NULL,
    [IsRegistered] BIT           CONSTRAINT [DF_History_Users_IsRegistered] DEFAULT ((0)) NOT NULL,
    [UserCreated]  VARCHAR (20)  CONSTRAINT [DF_History_Users_UserCreated] DEFAULT ('admin') NOT NULL,
    [DateCreated]  DATETIME      CONSTRAINT [DF_History_Users_DateCreated] DEFAULT (getdate()) NOT NULL,
    [UserModified] VARCHAR (20)  CONSTRAINT [DF_History_Users_UserModified] DEFAULT (NULL) NULL,
    [DateModified] DATETIME      CONSTRAINT [DF_History_Users_DateModified] DEFAULT (NULL) NULL,
    [ChangeType]   CHAR (1)      NOT NULL
);

