USE [DfSanatoriumDB]
GO

/****** Object:  Table [dbo].[medkard]    Script Date: 18.03.2021 2:59:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[medkard](
	[ID_��������] [int] IDENTITY(1,1) NOT NULL,
	[ID_�������] [int] NOT NULL,
	[ID_�����] [int] NOT NULL,
	[ID_�����] [int] NOT NULL,
	[ID_����������] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_��������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[medkard]  WITH CHECK ADD  CONSTRAINT [FK_medkard_Broner] FOREIGN KEY([ID_�����])
REFERENCES [dbo].[Broner] ([ID_�����])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[medkard] CHECK CONSTRAINT [FK_medkard_Broner]
GO

ALTER TABLE [dbo].[medkard]  WITH CHECK ADD  CONSTRAINT [FK_medkard_ghostsanatorium] FOREIGN KEY([ID_�����])
REFERENCES [dbo].[ghostsanatorium] ([ID_�����])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[medkard] CHECK CONSTRAINT [FK_medkard_ghostsanatorium]
GO

ALTER TABLE [dbo].[medkard]  WITH CHECK ADD  CONSTRAINT [FK_medkard_SotrudnikiSanatorium] FOREIGN KEY([ID_����������])
REFERENCES [dbo].[SotrudnikiSanatorium] ([ID_����������])
GO

ALTER TABLE [dbo].[medkard] CHECK CONSTRAINT [FK_medkard_SotrudnikiSanatorium]
GO

ALTER TABLE [dbo].[medkard]  WITH CHECK ADD  CONSTRAINT [FK_medkard_typeheal] FOREIGN KEY([ID_�������])
REFERENCES [dbo].[typeheal] ([ID_�������])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[medkard] CHECK CONSTRAINT [FK_medkard_typeheal]
GO


