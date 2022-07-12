USE [HoSoNoiVu]
GO

/****** Object:  Table [dbo].[TLPhimAmThanh_TLDiKem]    Script Date: 7/1/2022 9:15:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TLPhimAmThanh_TLDiKem](
	[DocAttachedId] [int] NOT NULL,
	[AudioVideoId] [int] NOT NULL,
	[DocAttached] [varbinary](max) NOT NULL,
	[Extension] [char](4) NULL,
 CONSTRAINT [PK_TLPhimAmThanh_TLDiKem] PRIMARY KEY CLUSTERED 
(
	[DocAttachedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[TLPhimAmThanh_TLDiKem]  WITH CHECK ADD  CONSTRAINT [FK_TLPhimAmThanh_TLDiKem_TLPhimAmThanh] FOREIGN KEY([AudioVideoId])
REFERENCES [dbo].[TLPhimAmThanh] ([AudioVideoId])
GO

ALTER TABLE [dbo].[TLPhimAmThanh_TLDiKem] CHECK CONSTRAINT [FK_TLPhimAmThanh_TLDiKem_TLPhimAmThanh]
GO


