USE [DfSanatoriumDB]
GO

/****** Object:  Table [dbo].[healuser]    Script Date: 18.03.2021 2:59:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[healuser](
	[ID_���������] [int] IDENTITY(1,1) NOT NULL,
	[ID_��������] [int] NOT NULL,
	[ID_��������] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_���������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[healuser]  WITH CHECK ADD  CONSTRAINT [FK_healuser_cabinet] FOREIGN KEY([ID_��������])
REFERENCES [dbo].[cabinet] ([ID_��������])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[healuser] CHECK CONSTRAINT [FK_healuser_cabinet]
GO

ALTER TABLE [dbo].[healuser]  WITH CHECK ADD  CONSTRAINT [FK_healuser_medkard] FOREIGN KEY([ID_��������])
REFERENCES [dbo].[medkard] ([ID_��������])
GO

ALTER TABLE [dbo].[healuser] CHECK CONSTRAINT [FK_healuser_medkard]
GO


