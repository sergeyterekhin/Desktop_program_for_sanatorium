USE [DfSanatoriumDB]
GO

/****** Object:  Table [dbo].[healsanatoriums]    Script Date: 18.03.2021 2:59:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[healsanatoriums](
	[ID_лечебного_санатория] [int] IDENTITY(1,1) NOT NULL,
	[ID_санатория] [int] NOT NULL,
	[ID_болезни] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_лечебного_санатория] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[healsanatoriums]  WITH CHECK ADD  CONSTRAINT [FK_healsanatoriums_sanatorium] FOREIGN KEY([ID_санатория])
REFERENCES [dbo].[sanatorium] ([ID_санатория])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[healsanatoriums] CHECK CONSTRAINT [FK_healsanatoriums_sanatorium]
GO

ALTER TABLE [dbo].[healsanatoriums]  WITH CHECK ADD  CONSTRAINT [FK_healsanatoriums_typeheal] FOREIGN KEY([ID_болезни])
REFERENCES [dbo].[typeheal] ([ID_болезни])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[healsanatoriums] CHECK CONSTRAINT [FK_healsanatoriums_typeheal]
GO


