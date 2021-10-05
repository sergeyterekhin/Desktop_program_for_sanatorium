USE [DfSanatoriumDB]
GO

/****** Object:  Table [dbo].[apparaturavkabinke]    Script Date: 18.03.2021 2:57:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[apparaturavkabinke](
	[ID_аппаратурный_кабинет] [int] IDENTITY(1,1) NOT NULL,
	[ID_кабинета] [int] NOT NULL,
	[ID_аппаратуры] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_аппаратурный_кабинет] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[apparaturavkabinke]  WITH CHECK ADD  CONSTRAINT [FK_apparaturavkabinke_apparatura] FOREIGN KEY([ID_аппаратуры])
REFERENCES [dbo].[apparatura] ([ID_аппаратуры])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[apparaturavkabinke] CHECK CONSTRAINT [FK_apparaturavkabinke_apparatura]
GO

ALTER TABLE [dbo].[apparaturavkabinke]  WITH CHECK ADD  CONSTRAINT [FK_apparaturavkabinke_cabinet] FOREIGN KEY([ID_кабинета])
REFERENCES [dbo].[cabinet] ([ID_кабинета])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[apparaturavkabinke] CHECK CONSTRAINT [FK_apparaturavkabinke_cabinet]
GO


