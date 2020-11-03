CREATE TABLE [dbo].[Applications] (
    [ApplicationId]    INT          IDENTITY (1, 1) NOT NULL,
    [ApplicationTitle] VARCHAR (20) NOT NULL,
    [UserCreated]      VARCHAR (20) CONSTRAINT [df_UserCreated] DEFAULT ('admin') NOT NULL,
    [DateCreated]      DATETIME     CONSTRAINT [df_DateCreated] DEFAULT (getdate()) NOT NULL,
    [UserModified]     VARCHAR (20) CONSTRAINT [df_UserModified] DEFAULT (NULL) NULL,
    [DateModified]     DATETIME     CONSTRAINT [df_DateModified] DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([ApplicationId] ASC)
);


GO
CREATE TRIGGER dbo.trg_Applications
ON Applications
AFTER UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[History_Applications]
	(
        ApplicationId,
		ApplicationTitle,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
		ChangeType
    )
    SELECT
        ApplicationId,
		ApplicationTitle,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'U'
    FROM
        [dbo].[Applications]
    UNION ALL
    SELECT
       ApplicationId,
		ApplicationTitle,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'D'
    FROM
        [dbo].[Applications];
END