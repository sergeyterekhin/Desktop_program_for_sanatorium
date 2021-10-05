USE [DfSanatoriumDB]
GO

/****** Object:  Table [dbo].[medkard]    Script Date: 18.03.2021 2:59:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[medkard](
	[ID_МедКарты] [int] IDENTITY(1,1) NOT NULL,
	[ID_болезни] [int] NOT NULL,
	[ID_Гостя] [int] NOT NULL,
	[ID_брони] [int] NOT NULL,
	[ID_Сотрудника] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_МедКарты] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[medkard]  WITH CHECK ADD  CONSTRAINT [FK_medkard_Broner] FOREIGN KEY([ID_брони])
REFERENCES [dbo].[Broner] ([ID_брони])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[medkard] CHECK CONSTRAINT [FK_medkard_Broner]
GO

ALTER TABLE [dbo].[medkard]  WITH CHECK ADD  CONSTRAINT [FK_medkard_ghostsanatorium] FOREIGN KEY([ID_Гостя])
REFERENCES [dbo].[ghostsanatorium] ([ID_Гостя])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[medkard] CHECK CONSTRAINT [FK_medkard_ghostsanatorium]
GO

ALTER TABLE [dbo].[medkard]  WITH CHECK ADD  CONSTRAINT [FK_medkard_SotrudnikiSanatorium] FOREIGN KEY([ID_Сотрудника])
REFERENCES [dbo].[SotrudnikiSanatorium] ([ID_Сотрудника])
GO

ALTER TABLE [dbo].[medkard] CHECK CONSTRAINT [FK_medkard_SotrudnikiSanatorium]
GO

ALTER TABLE [dbo].[medkard]  WITH CHECK ADD  CONSTRAINT [FK_medkard_typeheal] FOREIGN KEY([ID_болезни])
REFERENCES [dbo].[typeheal] ([ID_болезни])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[medkard] CHECK CONSTRAINT [FK_medkard_typeheal]
GO


