USE [HoSoNoiVu]
GO

/****** Object:  Table [dbo].[Muon_Vanban]    Script Date: 7/1/2022 9:14:01 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Muon_Vanban](
	[BorrowId] [int] IDENTITY(1,1) NOT NULL,
	[FileCode] [nvarchar](60) NOT NULL,
	[DocCode] [char](25) NOT NULL,
	[ReceiverId] [int] NULL,
	[ReturnTime] [date] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Muon_Vanban]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietMu__Borro__5812160E] FOREIGN KEY([BorrowId])
REFERENCES [dbo].[Muon] ([BorrowId])
GO

ALTER TABLE [dbo].[Muon_Vanban] CHECK CONSTRAINT [FK__ChiTietMu__Borro__5812160E]
GO

ALTER TABLE [dbo].[Muon_Vanban]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietMu__FileC__59063A47] FOREIGN KEY([FileCode])
REFERENCES [dbo].[HoSoLuuTru] ([FileCode])
GO

ALTER TABLE [dbo].[Muon_Vanban] CHECK CONSTRAINT [FK__ChiTietMu__FileC__59063A47]
GO


