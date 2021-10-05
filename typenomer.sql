USE [DfSanatoriumDB]
GO

/****** Object:  Table [dbo].[typenomer]    Script Date: 18.03.2021 3:00:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[typenomer](
	[ID_Номер] [int] IDENTITY(1,1) NOT NULL,
	[Количество_кроватей] [int] NOT NULL,
	[Человек_максимум] [int] NOT NULL,
	[Название_Номера] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


