CREATE TABLE [dbo].[UserApplications] (
    [UserId]        INT NOT NULL,
    [ApplicationId] INT NOT NULL,
    [RoleId]        INT NOT NULL,
    FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Applications] ([ApplicationId]),
    FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([RoleId]),
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId])
);

