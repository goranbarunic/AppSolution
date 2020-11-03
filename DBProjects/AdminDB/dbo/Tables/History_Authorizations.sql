CREATE TABLE [dbo].[History_Authorizations] (
    [AuthorizationId]    INT          NOT NULL,
    [AuthorizationTitle] VARCHAR (20) NOT NULL,
    [UserCreated]        VARCHAR (20) CONSTRAINT [DF_History_Authorizations_UserCreated] DEFAULT ('admin') NOT NULL,
    [DateCreated]        DATETIME     CONSTRAINT [DF_History_Authorizations_DateCreated] DEFAULT (getdate()) NOT NULL,
    [UserModified]       VARCHAR (20) CONSTRAINT [DF_History_Authorizations_UserModified] DEFAULT (NULL) NULL,
    [DateModified]       DATETIME     CONSTRAINT [DF_History_Authorizations_DateModified] DEFAULT (NULL) NULL,
    [ChangeType]         CHAR (1)     NOT NULL
);

