USE [HoSoNoiVu]
GO

/****** Object:  Table [dbo].[TLAnh]    Script Date: 7/1/2022 9:14:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TLAnh](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[OrganId] [char](13) NOT NULL,
	[ArchivesNumber] [nvarchar](50) NULL,
	[InforSign] [char](30) NULL,
	[EventId] [int] NULL,
	[ImageTitle] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[PhotographerId] [int] NOT NULL,
	[PhotoPlace] [nvarchar](500) NULL,
	[PhotoTime] [date] NULL,
	[color] [nvarchar](50) NULL,
	[FilmSize] [char](5) NULL,
	[Mode] [nvarchar](20) NULL,
	[Formats] [nvarchar](50) NULL,
 CONSTRAINT [PK__TLAnh__7516F70C0C58576A] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TLAnh]  WITH CHECK ADD  CONSTRAINT [FK__TLAnh__Photograp__3E52440B] FOREIGN KEY([PhotographerId])
REFERENCES [dbo].[NhiepAnhGia] ([PhotographerId])
GO

ALTER TABLE [dbo].[TLAnh] CHECK CONSTRAINT [FK__TLAnh__Photograp__3E52440B]
GO

ALTER TABLE [dbo].[TLAnh]  WITH CHECK ADD  CONSTRAINT [FK_TLAnh_Event] FOREIGN KEY([EventId])
REFERENCES [dbo].[Event] ([EventId])
GO

ALTER TABLE [dbo].[TLAnh] CHECK CONSTRAINT [FK_TLAnh_Event]
GO

ALTER TABLE [dbo].[TLAnh]  WITH CHECK ADD  CONSTRAINT [FK_TLAnh_Organ] FOREIGN KEY([OrganId])
REFERENCES [dbo].[CoQuanLuuTru] ([OrganId])
GO

ALTER TABLE [dbo].[TLAnh] CHECK CONSTRAINT [FK_TLAnh_Organ]
GO


