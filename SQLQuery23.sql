USE [HoSoNoiVu]
GO

/****** Object:  Table [dbo].[VanBan]    Script Date: 7/1/2022 9:15:40 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VanBan](
	[DocCode] [char](25) NOT NULL,
	[OrganId] [char](13) NOT NULL,
	[FondId] [char](13) NOT NULL,
	[FileCatalog] [char](10) NOT NULL,
	[FileNotation] [nvarchar](20) NOT NULL,
	[DocOrdinal] [char](4) NULL,
	[DocTypeId] [int] NULL,
	[CodeNumber] [char](11) NULL,
	[CodeNotation] [char](30) NULL,
	[IssuedDate] [date] NULL,
	[OrganName] [nvarchar](200) NULL,
	[Subjects] [nvarchar](500) NULL,
	[Language] [nvarchar](100) NULL,
	[PageAmount] [char](4) NULL,
	[Description] [nvarchar](500) NULL,
	[InforSign] [char](30) NULL,
	[KeywordId] [int] NULL,
	[Mode] [nvarchar](20) NULL,
	[ConfidenceLevel] [nvarchar](30) NOT NULL,
	[AutographId] [int] NOT NULL,
	[Formats] [nvarchar](50) NULL,
 CONSTRAINT [PK__VanBan__7C6400C0D6BA3E45] PRIMARY KEY CLUSTERED 
(
	[DocCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[VanBan]  WITH CHECK ADD  CONSTRAINT [FK__VanBan__Autograp__35BCFE0A] FOREIGN KEY([AutographId])
REFERENCES [dbo].[ButTich] ([AutographId])
GO

ALTER TABLE [dbo].[VanBan] CHECK CONSTRAINT [FK__VanBan__Autograp__35BCFE0A]
GO

ALTER TABLE [dbo].[VanBan]  WITH CHECK ADD  CONSTRAINT [FK__VanBan__FondId__32E0915F] FOREIGN KEY([FondId])
REFERENCES [dbo].[Phong] ([FondId])
GO

ALTER TABLE [dbo].[VanBan] CHECK CONSTRAINT [FK__VanBan__FondId__32E0915F]
GO

ALTER TABLE [dbo].[VanBan]  WITH CHECK ADD  CONSTRAINT [FK__VanBan__OrganId__34C8D9D1] FOREIGN KEY([OrganId])
REFERENCES [dbo].[CoQuanLuuTru] ([OrganId])
GO

ALTER TABLE [dbo].[VanBan] CHECK CONSTRAINT [FK__VanBan__OrganId__34C8D9D1]
GO

ALTER TABLE [dbo].[VanBan]  WITH CHECK ADD  CONSTRAINT [FK_VanBan_KeyWord] FOREIGN KEY([KeywordId])
REFERENCES [dbo].[KeyWord] ([KeyWordId])
GO

ALTER TABLE [dbo].[VanBan] CHECK CONSTRAINT [FK_VanBan_KeyWord]
GO

ALTER TABLE [dbo].[VanBan]  WITH CHECK ADD  CONSTRAINT [FK_VanBan_LoaiVanBan] FOREIGN KEY([DocTypeId])
REFERENCES [dbo].[LoaiVanBan] ([DocTypeId])
GO

ALTER TABLE [dbo].[VanBan] CHECK CONSTRAINT [FK_VanBan_LoaiVanBan]
GO


