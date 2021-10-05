USE [DfSanatoriumDB]
GO

/****** Object:  Table [dbo].[healsanatoriums]    Script Date: 18.03.2021 2:59:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[healsanatoriums](
	[ID_���������_���������] [int] IDENTITY(1,1) NOT NULL,
	[ID_���������] [int] NOT NULL,
	[ID_�������] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_���������_���������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[healsanatoriums]  WITH CHECK ADD  CONSTRAINT [FK_healsanatoriums_sanatorium] FOREIGN KEY([ID_���������])
REFERENCES [dbo].[sanatorium] ([ID_���������])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[healsanatoriums] CHECK CONSTRAINT [FK_healsanatoriums_sanatorium]
GO

ALTER TABLE [dbo].[healsanatoriums]  WITH CHECK ADD  CONSTRAINT [FK_healsanatoriums_typeheal] FOREIGN KEY([ID_�������])
REFERENCES [dbo].[typeheal] ([ID_�������])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[healsanatoriums] CHECK CONSTRAINT [FK_healsanatoriums_typeheal]
GO


