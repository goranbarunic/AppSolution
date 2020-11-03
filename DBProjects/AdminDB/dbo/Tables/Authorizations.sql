CREATE TABLE [dbo].[Authorizations] (
    [AuthorizationId]    INT          IDENTITY (1, 1) NOT NULL,
    [AuthorizationTitle] VARCHAR (20) NOT NULL,
    [UserCreated]        VARCHAR (20) CONSTRAINT [df_UserCreatedatz] DEFAULT ('admin') NOT NULL,
    [DateCreated]        DATETIME     CONSTRAINT [df_DateCreatedatz] DEFAULT (getdate()) NOT NULL,
    [UserModified]       VARCHAR (20) CONSTRAINT [df_UserModifiedatz] DEFAULT (NULL) NULL,
    [DateModified]       DATETIME     CONSTRAINT [df_DateModifiedatz] DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([AuthorizationId] ASC)
);


GO
CREATE TRIGGER dbo.trg_Authorizations
ON Authorizations
AFTER UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[History_Authorizations]
	(
        AuthorizationId,
		AuthorizationTitle,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
		ChangeType
    )
    SELECT
        AuthorizationId,
		AuthorizationTitle,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'U'
    FROM
        [dbo].[Authorizations]
    UNION ALL
    SELECT
        AuthorizationId,
		AuthorizationTitle,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'D'
    FROM
        [dbo].[Authorizations]
END