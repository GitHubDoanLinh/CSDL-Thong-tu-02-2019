USE [HoSoNoiVu]
GO

/****** Object:  Table [dbo].[Phong]    Script Date: 7/1/2022 9:14:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Phong](
	[OrganId] [char](13) NOT NULL,
	[FondId] [char](13) NOT NULL,
	[FondName] [nvarchar](200) NULL,
	[FondHistory] [nvarchar](max) NULL,
	[ArchivesTime] [nvarchar](30) NULL,
	[PaperTotal] [int] NULL,
	[PaperDigital] [int] NULL,
	[KeyGroups] [nvarchar](300) NULL,
	[OtherTypes] [nvarchar](300) NULL,
	[Language] [nvarchar](100) NULL,
	[LookupTools] [nvarchar](50) NULL,
	[CopyNumber] [int] NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Fond] PRIMARY KEY CLUSTERED 
(
	[FondId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Phong]  WITH CHECK ADD FOREIGN KEY([OrganId])
REFERENCES [dbo].[CoQuanLuuTru] ([OrganId])
GO


