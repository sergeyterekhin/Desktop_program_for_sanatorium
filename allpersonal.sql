USE [DfSanatoriumDB]
GO

/****** Object:  Table [dbo].[allpersonal]    Script Date: 18.03.2021 2:56:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[allpersonal](
	[ID_ЛечВрача] [int] IDENTITY(1,1) NOT NULL,
	[ID_санатория] [int] NOT NULL,
	[ID_должности] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ЛечВрача] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[allpersonal]  WITH CHECK ADD  CONSTRAINT [FK_allpersonal_doljnost] FOREIGN KEY([ID_должности])
REFERENCES [dbo].[doljnost] ([ID_должности])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[allpersonal] CHECK CONSTRAINT [FK_allpersonal_doljnost]
GO

ALTER TABLE [dbo].[allpersonal]  WITH CHECK ADD  CONSTRAINT [FK_allpersonal_personal] FOREIGN KEY([ID_санатория])
REFERENCES [dbo].[personal] ([ID_работника])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[allpersonal] CHECK CONSTRAINT [FK_allpersonal_personal]
GO


