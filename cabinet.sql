USE [DfSanatoriumDB]
GO

/****** Object:  Table [dbo].[cabinet]    Script Date: 18.03.2021 2:58:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cabinet](
	[ID_��������] [int] IDENTITY(1,1) NOT NULL,
	[��������] [nvarchar](50) NOT NULL,
	[ID_�������] [int] NOT NULL,
	[ID_����������] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_��������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[cabinet]  WITH CHECK ADD  CONSTRAINT [FK_cabinet_SotrudnikiSanatorium] FOREIGN KEY([ID_����������])
REFERENCES [dbo].[SotrudnikiSanatorium] ([ID_����������])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[cabinet] CHECK CONSTRAINT [FK_cabinet_SotrudnikiSanatorium]
GO

ALTER TABLE [dbo].[cabinet]  WITH CHECK ADD  CONSTRAINT [FK_cabinet_typeheal] FOREIGN KEY([ID_�������])
REFERENCES [dbo].[typeheal] ([ID_�������])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[cabinet] CHECK CONSTRAINT [FK_cabinet_typeheal]
GO


