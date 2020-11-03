CREATE TABLE [dbo].[Employees] (
    [EmployeeId]       INT           IDENTITY (1, 1) NOT NULL,
    [Username]         VARCHAR (20)  NOT NULL,
    [Firstname]        VARCHAR (100) NOT NULL,
    [Lastname]         VARCHAR (100) NOT NULL,
    [NationalIdNumber] VARCHAR (20)  NOT NULL,
    [NationalIdType]   INT           NOT NULL,
    [GenderId]         INT           NOT NULL,
    [Birthdate]        DATE          NULL,
    [Address]          VARCHAR (100) NULL,
    [PlaceId]          INT           NOT NULL,
    [CountryId]        INT           NOT NULL,
    [UserCreated]      VARCHAR (20)  CONSTRAINT [df_UserCreatedEmp] DEFAULT ('admin') NOT NULL,
    [DateCreated]      DATETIME      CONSTRAINT [df_DateCreatedEmp] DEFAULT (getdate()) NOT NULL,
    [UserModified]     VARCHAR (20)  CONSTRAINT [df_UserModifiedEmp] DEFAULT (NULL) NULL,
    [DateModified]     DATETIME      CONSTRAINT [df_DateModifiedEmp] DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([EmployeeId] ASC),
    FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Countries] ([CountryId]),
    FOREIGN KEY ([GenderId]) REFERENCES [dbo].[Genders] ([GenderId]),
    FOREIGN KEY ([NationalIdType]) REFERENCES [dbo].[NationalIdTypes] ([NationalIdTypeId]),
    FOREIGN KEY ([PlaceId]) REFERENCES [dbo].[Places] ([PlaceId])
);


GO
CREATE TRIGGER dbo.trg_Employees
ON Employees
AFTER UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[History_Employees]
	(
		EmployeeId,
		Username,
		Firstname,
		Lastname,
		NationalIdNumber,
		NationalIdType,
		GenderId,
		Birthdate,
		Address,
		PlaceId,
		CountryId,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
		ChangeType
    )
    SELECT
        EmployeeId,
		Username,
		Firstname,
		Lastname,
		NationalIdNumber,
		NationalIdType,
		GenderId,
		Birthdate,
		Address,
		PlaceId,
		CountryId,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'U'
    FROM
       [dbo].[Employees]
    UNION ALL
    SELECT
        EmployeeId,
		Username,
		Firstname,
		Lastname,
		NationalIdNumber,
		NationalIdType,
		GenderId,
		Birthdate,
		Address,
		PlaceId,
		CountryId,
		UserCreated,
		DateCreated,
		UserModified,
		DateModified,
        'D'
    FROM
        [dbo].[Employees]
END
