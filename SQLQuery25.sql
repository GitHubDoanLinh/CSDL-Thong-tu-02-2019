USE [HoSoNoiVu]
GO

/****** Object:  Table [dbo].[Users]    Script Date: 7/1/2022 10:01:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](30) NULL,
	[PassWord] [varchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Address] [nvarchar](100) NULL,
	[PhoneNumber] [char](11) NULL,
	[Email] [char](50) NULL,
	[DateCreated] [date] NULL,
	[Active] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


