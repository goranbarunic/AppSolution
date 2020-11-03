CREATE TABLE [dbo].[NationalIdTypes] (
    [NationalIdTypeId]    INT           IDENTITY (1, 1) NOT NULL,
    [NationalIdTypeTitle] VARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([NationalIdTypeId] ASC)
);

