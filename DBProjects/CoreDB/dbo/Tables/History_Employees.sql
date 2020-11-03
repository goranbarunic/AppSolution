CREATE TABLE [dbo].[History_Employees] (
    [EmployeeId]       INT           NOT NULL,
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
    [UserCreated]      VARCHAR (20)  CONSTRAINT [DF_History_Employees_UserCreated] DEFAULT ('admin') NOT NULL,
    [DateCreated]      DATETIME      CONSTRAINT [DF_History_Employees_DateCreated] DEFAULT (getdate()) NOT NULL,
    [UserModified]     VARCHAR (20)  CONSTRAINT [DF_History_Employees_UserModified] DEFAULT (NULL) NULL,
    [DateModified]     DATETIME      CONSTRAINT [DF_History_Employees_DateModified] DEFAULT (NULL) NULL,
    [ChangeType]       CHAR (1)      NOT NULL
);

