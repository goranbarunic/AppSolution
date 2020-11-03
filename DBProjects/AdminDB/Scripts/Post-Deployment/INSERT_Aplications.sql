USE [AdminDB ]
GO
SET IDENTITY_INSERT [dbo].[Applications] ON 

INSERT [dbo].[Applications] ([ApplicationId], [ApplicationTitle], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (1, N'ConsoleApp', N'admin', CAST(N'2020-10-20T11:59:04.597' AS DateTime), NULL, NULL)
INSERT [dbo].[Applications] ([ApplicationId], [ApplicationTitle], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (2, N'WpfApp', N'admin', CAST(N'2020-10-20T12:00:22.620' AS DateTime), NULL, NULL)
INSERT [dbo].[Applications] ([ApplicationId], [ApplicationTitle], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (3, N'WCFApp', N'admin', CAST(N'2020-10-20T12:00:22.620' AS DateTime), NULL, NULL)
INSERT [dbo].[Applications] ([ApplicationId], [ApplicationTitle], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (4, N'NetCoreApp', N'admin', CAST(N'2020-10-20T12:00:22.620' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Applications] OFF