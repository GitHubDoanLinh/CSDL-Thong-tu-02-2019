USE [HoSoNoiVu]
GO

/****** Object:  Table [dbo].[Warehouse_Shelf]    Script Date: 7/1/2022 9:15:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Warehouse_Shelf](
	[Warehouse_Shelf_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ParrentId] [int] NULL,
 CONSTRAINT [PK_Warehouse_Shelf] PRIMARY KEY CLUSTERED 
(
	[Warehouse_Shelf_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


