CREATE TABLE [dbo].[Roles] (
    [RoleId]       INT          IDENTITY (1, 1) NOT NULL,
    [RoleTitle]    VARCHAR (20) NOT NULL,
    [UserCreated]  VARCHAR (20) CONSTRAINT [df_UserCreatedrls] DEFAULT ('admin') NOT NULL,
    [DateCreated]  DATETIME     CONSTRAINT [df_DateCreatedrls] DEFAULT (getdate()) NOT NULL,
    [UserModified] VARCHAR (20) CONSTRAINT [df_UserModifiedrls] DEFAULT (NULL) NULL,
    [DateModified] DATETIME     CONSTRAINT [df_DateModifiedrls] DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([RoleId] ASC)
);


GO
CREATE TRIGGER dbo.trg_Roles
ON Roles
AFTER UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[History_Roles]
	(
        RoleId,
		RoleTitle,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
		ChangeType
    )
    SELECT
        RoleId,
		RoleTitle,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'U'
    FROM
        [dbo].[Roles]
    UNION ALL
    SELECT
        RoleId,
		RoleTitle,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'D'
    FROM
        [dbo].[Roles]
END