USE [HoSoNoiVu]
GO

/****** Object:  Table [dbo].[HoSoLuuTru]    Script Date: 7/1/2022 9:13:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HoSoLuuTru](
	[FileCode] [nvarchar](60) NOT NULL,
	[OrganId] [char](13) NOT NULL,
	[FondId] [char](13) NOT NULL,
	[FileCatalog] [char](10) NULL,
	[FileNotation] [nvarchar](20) NULL,
	[Warehouse_Shelf_Id] [int] NOT NULL,
	[Title] [nvarchar](1000) NULL,
	[Maintenance] [nvarchar](100) NULL,
	[Rights] [nvarchar](30) NULL,
	[Language] [nvarchar](100) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[TotalDoc] [int] NULL,
	[Description] [nvarchar](2000) NULL,
	[InforSign] [nvarchar](30) NULL,
	[Keyword] [nvarchar](100) NULL,
	[NumberSheet] [int] NULL,
	[PageNumber] [int] NULL,
	[Formats] [nvarchar](30) NULL,
 CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED 
(
	[FileCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[HoSoLuuTru]  WITH CHECK ADD  CONSTRAINT [FK__HoSoLuuTr__FondI__29572725] FOREIGN KEY([FondId])
REFERENCES [dbo].[Phong] ([FondId])
GO

ALTER TABLE [dbo].[HoSoLuuTru] CHECK CONSTRAINT [FK__HoSoLuuTr__FondI__29572725]
GO

ALTER TABLE [dbo].[HoSoLuuTru]  WITH CHECK ADD  CONSTRAINT [FK__HoSoLuuTr__Organ__2A4B4B5E] FOREIGN KEY([OrganId])
REFERENCES [dbo].[CoQuanLuuTru] ([OrganId])
GO

ALTER TABLE [dbo].[HoSoLuuTru] CHECK CONSTRAINT [FK__HoSoLuuTr__Organ__2A4B4B5E]
GO

ALTER TABLE [dbo].[HoSoLuuTru]  WITH CHECK ADD  CONSTRAINT [FK_HoSoLuuTru_Warehouse_Shelf] FOREIGN KEY([Warehouse_Shelf_Id])
REFERENCES [dbo].[Warehouse_Shelf] ([Warehouse_Shelf_Id])
GO

ALTER TABLE [dbo].[HoSoLuuTru] CHECK CONSTRAINT [FK_HoSoLuuTru_Warehouse_Shelf]
GO


