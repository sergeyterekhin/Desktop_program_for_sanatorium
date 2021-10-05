USE [DfSanatoriumDB]
GO

/****** Object:  Table [dbo].[Broner]    Script Date: 18.03.2021 2:57:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Broner](
	[ID_�����] [int] IDENTITY(1,1) NOT NULL,
	[����� ��������] [datetime] NOT NULL,
	[����� �������] [datetime] NOT NULL,
	[ID_�����] [int] NOT NULL,
	[ID_���������] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_�����] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Broner]  WITH CHECK ADD  CONSTRAINT [FK_Broner_sanatorium] FOREIGN KEY([ID_���������])
REFERENCES [dbo].[sanatorium] ([ID_���������])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Broner] CHECK CONSTRAINT [FK_Broner_sanatorium]
GO

ALTER TABLE [dbo].[Broner]  WITH CHECK ADD  CONSTRAINT [FK_Broner_typenomer] FOREIGN KEY([ID_�����])
REFERENCES [dbo].[typenomer] ([ID_�����])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Broner] CHECK CONSTRAINT [FK_Broner_typenomer]
GO


