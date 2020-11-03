CREATE TABLE [dbo].[Genders] (
    [GenderId]     INT          IDENTITY (1, 1) NOT NULL,
    [GenderShort]  CHAR (1)     NOT NULL,
    [GenderTitle]  VARCHAR (20) NOT NULL,
    [UserCreated]  VARCHAR (20) CONSTRAINT [df_UserCreatedGen] DEFAULT ('admin') NOT NULL,
    [DateCreated]  DATETIME     CONSTRAINT [df_DateCreatedGen] DEFAULT (getdate()) NOT NULL,
    [UserModified] VARCHAR (20) CONSTRAINT [df_UserModifiedGen] DEFAULT (NULL) NULL,
    [DateModified] DATETIME     CONSTRAINT [df_DateModifiedGen] DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([GenderId] ASC)
);


GO
CREATE TRIGGER dbo.trg_Genders
ON Genders
AFTER UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[History_Genders]
	(
		GenderId,
		GenderShort,
		GenderTitle,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
		ChangeType
    )
    SELECT
        GenderId,
		GenderShort,
		GenderTitle,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'U'
    FROM
       [dbo].[Genders]
    UNION ALL
    SELECT
        GenderId,
		GenderShort,
		GenderTitle,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'D'
    FROM
        [dbo].[Genders]
END
