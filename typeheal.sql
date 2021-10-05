USE [DfSanatoriumDB]
GO

/****** Object:  Table [dbo].[typeheal]    Script Date: 18.03.2021 3:00:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[typeheal](
	[ID_болезни] [int] IDENTITY(1,1) NOT NULL,
	[Болезнь] [nvarchar](50) NOT NULL,
	[Свойства] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_болезни] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


