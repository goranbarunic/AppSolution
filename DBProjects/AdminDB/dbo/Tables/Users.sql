CREATE TABLE [dbo].[Users] (
    [UserId]       INT           IDENTITY (1, 1) NOT NULL,
    [Username]     VARCHAR (100) NOT NULL,
    [Email]        VARCHAR (255) NOT NULL,
    [PasswordHash] VARCHAR (200) CONSTRAINT [df_PasswordHash] DEFAULT ('#') NOT NULL,
    [IsActive]     BIT           CONSTRAINT [df_IsActive] DEFAULT ((0)) NOT NULL,
    [IsRegistered] BIT           CONSTRAINT [df_IsRegistered] DEFAULT ((0)) NOT NULL,
    [UserCreated]  VARCHAR (20)  CONSTRAINT [df_UserCreatedUsr] DEFAULT ('admin') NOT NULL,
    [DateCreated]  DATETIME      CONSTRAINT [df_DateCreatedUsr] DEFAULT (getdate()) NOT NULL,
    [UserModified] VARCHAR (20)  CONSTRAINT [df_UserModifiedUsr] DEFAULT (NULL) NULL,
    [DateModified] DATETIME      CONSTRAINT [df_DateModifiedUsr] DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC),
    CONSTRAINT [uc_user] UNIQUE NONCLUSTERED ([Username] ASC)
);


GO
CREATE TRIGGER dbo.trg_Users
ON Users
AFTER UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[History_Users]
	(
        UserId,
		Username,
		Email,
		PasswordHash,
		IsActive,
		IsRegistered,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
		ChangeType
    )
    SELECT
        UserId,
		Username,
		Email,
		PasswordHash,
		IsActive,
		IsRegistered,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'U'
    FROM
        [dbo].[Users]
    UNION ALL
    SELECT
        UserId,
		Username,
		Email,
		PasswordHash,
		IsActive,
		IsRegistered,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'D'
    FROM
        [dbo].[Users]
END