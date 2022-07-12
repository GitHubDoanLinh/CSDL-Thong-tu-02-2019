USE [HoSoNoiVu]
GO

/****** Object:  Table [dbo].[NhiepAnhGia]    Script Date: 7/1/2022 9:14:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NhiepAnhGia](
	[PhotographerId] [int] IDENTITY(1,1) NOT NULL,
	[PhotographerFirstName] [nvarchar](50) NULL,
	[PhotographerLastName] [nvarchar](50) NULL,
 CONSTRAINT [PK__NhiepAnh__40725A5DBEB437E9] PRIMARY KEY CLUSTERED 
(
	[PhotographerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


