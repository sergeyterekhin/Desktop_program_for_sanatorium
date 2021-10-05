USE [DfSanatoriumDB]
GO

/****** Object:  Table [dbo].[SotrudnikiSanatorium]    Script Date: 18.03.2021 2:59:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SotrudnikiSanatorium](
	[ID_����������] [int] IDENTITY(1,1) NOT NULL,
	[ID_��������] [int] NOT NULL,
	[ID_���������] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_����������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SotrudnikiSanatorium]  WITH CHECK ADD  CONSTRAINT [FK_SotrudnikiSanatorium_allpersonal] FOREIGN KEY([ID_��������])
REFERENCES [dbo].[allpersonal] ([ID_��������])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[SotrudnikiSanatorium] CHECK CONSTRAINT [FK_SotrudnikiSanatorium_allpersonal]
GO

ALTER TABLE [dbo].[SotrudnikiSanatorium]  WITH CHECK ADD  CONSTRAINT [FK_SotrudnikiSanatorium_sanatorium] FOREIGN KEY([ID_���������])
REFERENCES [dbo].[sanatorium] ([ID_���������])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[SotrudnikiSanatorium] CHECK CONSTRAINT [FK_SotrudnikiSanatorium_sanatorium]
GO


