USE [DfSanatoriumDB]
GO

/****** Object:  Table [dbo].[apparaturavkabinke]    Script Date: 18.03.2021 2:57:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[apparaturavkabinke](
	[ID_������������_�������] [int] IDENTITY(1,1) NOT NULL,
	[ID_��������] [int] NOT NULL,
	[ID_����������] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_������������_�������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[apparaturavkabinke]  WITH CHECK ADD  CONSTRAINT [FK_apparaturavkabinke_apparatura] FOREIGN KEY([ID_����������])
REFERENCES [dbo].[apparatura] ([ID_����������])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[apparaturavkabinke] CHECK CONSTRAINT [FK_apparaturavkabinke_apparatura]
GO

ALTER TABLE [dbo].[apparaturavkabinke]  WITH CHECK ADD  CONSTRAINT [FK_apparaturavkabinke_cabinet] FOREIGN KEY([ID_��������])
REFERENCES [dbo].[cabinet] ([ID_��������])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[apparaturavkabinke] CHECK CONSTRAINT [FK_apparaturavkabinke_cabinet]
GO


