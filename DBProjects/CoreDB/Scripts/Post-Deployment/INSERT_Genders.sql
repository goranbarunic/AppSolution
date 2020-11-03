USE [CoreDB ]
GO
SET IDENTITY_INSERT [dbo].[Genders] ON 

INSERT [dbo].[Genders] ([GenderId], [GenderShort], [GenderTitle], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (1, N'M', N'Male', N'admin', CAST(N'2020-10-27T08:54:14.363' AS DateTime), NULL, NULL)
INSERT [dbo].[Genders] ([GenderId], [GenderShort], [GenderTitle], [UserCreated], [DateCreated], [UserModified], [DateModified]) VALUES (2, N'F', N'Female', N'admin', CAST(N'2020-10-27T08:54:14.363' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Genders] OFF