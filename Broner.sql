USE [DfSanatoriumDB]
GO

/****** Object:  Table [dbo].[Broner]    Script Date: 18.03.2021 2:57:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Broner](
	[ID_брони] [int] IDENTITY(1,1) NOT NULL,
	[Время прибытия] [datetime] NOT NULL,
	[Время отбытия] [datetime] NOT NULL,
	[ID_Номер] [int] NOT NULL,
	[ID_санатория] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_брони] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Broner]  WITH CHECK ADD  CONSTRAINT [FK_Broner_sanatorium] FOREIGN KEY([ID_санатория])
REFERENCES [dbo].[sanatorium] ([ID_санатория])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Broner] CHECK CONSTRAINT [FK_Broner_sanatorium]
GO

ALTER TABLE [dbo].[Broner]  WITH CHECK ADD  CONSTRAINT [FK_Broner_typenomer] FOREIGN KEY([ID_Номер])
REFERENCES [dbo].[typenomer] ([ID_Номер])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Broner] CHECK CONSTRAINT [FK_Broner_typenomer]
GO


