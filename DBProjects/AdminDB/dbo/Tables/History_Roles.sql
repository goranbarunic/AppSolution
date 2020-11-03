CREATE TABLE [dbo].[History_Roles] (
    [RoleId]       INT          NOT NULL,
    [RoleTitle]    VARCHAR (20) NOT NULL,
    [UserCreated]  VARCHAR (20) CONSTRAINT [DF_History_Roles_UserCreated] DEFAULT ('admin') NOT NULL,
    [DateCreated]  DATETIME     CONSTRAINT [DF_History_Roles_DateCreated] DEFAULT (getdate()) NOT NULL,
    [UserModified] VARCHAR (20) CONSTRAINT [DF_History_Roles_UserModified] DEFAULT (NULL) NULL,
    [DateModified] DATETIME     CONSTRAINT [DF_History_Roles_DateModified] DEFAULT (NULL) NULL,
    [ChangeType]   CHAR (1)     NOT NULL
);

