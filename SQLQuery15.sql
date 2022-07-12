USE [HoSoNoiVu]
GO

/****** Object:  Table [dbo].[Role]    Script Date: 7/1/2022 9:14:35 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](30) NOT NULL,
	[RoleDescription] [nvarchar](500) NULL,
	[UserCreatedId] [int] NULL,
	[CreatedDate] [date] NOT NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK__Role__8AFACE1ACE18C2C4] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


