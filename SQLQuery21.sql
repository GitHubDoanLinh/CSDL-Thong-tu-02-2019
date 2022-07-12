USE [HoSoNoiVu]
GO

/****** Object:  Table [dbo].[User_Roles]    Script Date: 7/1/2022 9:15:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User_Roles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[AuthorizerId] [int] NOT NULL,
 CONSTRAINT [PK_User_Roles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[User_Roles]  WITH CHECK ADD  CONSTRAINT [FK_User_Roles_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO

ALTER TABLE [dbo].[User_Roles] CHECK CONSTRAINT [FK_User_Roles_Role]
GO

ALTER TABLE [dbo].[User_Roles]  WITH CHECK ADD  CONSTRAINT [FK_User_Roles_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO

ALTER TABLE [dbo].[User_Roles] CHECK CONSTRAINT [FK_User_Roles_User]
GO


