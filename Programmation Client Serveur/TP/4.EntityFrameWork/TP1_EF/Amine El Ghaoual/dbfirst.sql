USE [Admins]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 06/12/2019 10:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[Id] [int] NOT NULL,
	[nom] [nchar](10) NULL,
	[prenom] [nchar](10) NULL,
	[age] [nchar](10) NULL,
	[password] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
