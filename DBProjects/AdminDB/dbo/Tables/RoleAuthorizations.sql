CREATE TABLE [dbo].[RoleAuthorizations] (
    [RoleId]          INT NOT NULL,
    [AuthorizationId] INT NOT NULL,
    FOREIGN KEY ([AuthorizationId]) REFERENCES [dbo].[Authorizations] ([AuthorizationId]),
    FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([RoleId])
);

