USE [DfSanatoriumDB]
GO

/****** Object:  Table [dbo].[sanatorium]    Script Date: 18.03.2021 2:59:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sanatorium](
	[ID_���������] [int] IDENTITY(1,1) NOT NULL,
	[������������] [nvarchar](50) NOT NULL,
	[����� ��� �����] [int] NOT NULL,
	[�����] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_���������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


