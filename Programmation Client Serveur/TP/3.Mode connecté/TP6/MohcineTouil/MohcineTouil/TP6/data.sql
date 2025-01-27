USE [GestionStagaire]
GO
/****** Object:  Table [dbo].[Stagaire]    Script Date: 26/11/2019 17:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stagaire](
	[id] [int] NOT NULL,
	[nom] [nvarchar](20) NULL,
	[cin] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
