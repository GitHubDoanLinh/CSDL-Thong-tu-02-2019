USE [HoSoNoiVu]
GO

/****** Object:  Table [dbo].[TLPhimAmThanh]    Script Date: 7/1/2022 9:15:06 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TLPhimAmThanh](
	[AudioVideoId] [int] IDENTITY(1,1) NOT NULL,
	[OrganId] [char](13) NOT NULL,
	[ArchivesNumber] [char](50) NULL,
	[InforSign] [char](30) NULL,
	[EventId] [int] NULL,
	[MovieTitle] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[Writter] [nvarchar](100) NULL,
	[Sound] [nvarchar](100) NULL,
	[Literary] [nvarchar](100) NULL,
	[Author] [nvarchar](100) NULL,
	[Director] [nvarchar](100) NULL,
	[Editor] [nvarchar](100) NULL,
	[Recoder] [nvarchar](100) NULL,
	[RecordPlace] [nvarchar](300) NULL,
	[Language] [nvarchar](100) NULL,
	[PlayTime] [char](8) NULL,
	[Mode] [nvarchar](20) NULL,
	[Quality] [nvarchar](50) NULL,
	[Formats] [nvarchar](50) NULL,
 CONSTRAINT [PK__TLPhimAm__305A234A141D1E09] PRIMARY KEY CLUSTERED 
(
	[AudioVideoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TLPhimAmThanh]  WITH CHECK ADD  CONSTRAINT [FK__TLPhimAmT__Organ__412EB0B6] FOREIGN KEY([OrganId])
REFERENCES [dbo].[CoQuanLuuTru] ([OrganId])
GO

ALTER TABLE [dbo].[TLPhimAmThanh] CHECK CONSTRAINT [FK__TLPhimAmT__Organ__412EB0B6]
GO

ALTER TABLE [dbo].[TLPhimAmThanh]  WITH CHECK ADD  CONSTRAINT [FK_TLPhimAmThanh_Event] FOREIGN KEY([EventId])
REFERENCES [dbo].[Event] ([EventId])
GO

ALTER TABLE [dbo].[TLPhimAmThanh] CHECK CONSTRAINT [FK_TLPhimAmThanh_Event]
GO


