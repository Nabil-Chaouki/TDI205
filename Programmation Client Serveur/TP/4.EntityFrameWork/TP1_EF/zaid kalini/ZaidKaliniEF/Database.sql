USE [Etablissement]
GO
/****** Object:  Table [dbo].[Formateur]    Script Date: 04/12/2019 10:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formateur](
	[IdFormateur] [int] NOT NULL,
	[Nom] [nvarchar](50) NULL,
	[Prenom] [nvarchar](50) NULL,
	[Tele] [nvarchar](50) NULL,
 CONSTRAINT [PK_Formateur] PRIMARY KEY CLUSTERED 
(
	[IdFormateur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Groupe]    Script Date: 04/12/2019 10:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groupe](
	[Num_de_groupe] [int] NOT NULL,
	[Nom_de_groupe] [nvarchar](50) NULL,
 CONSTRAINT [PK_Groupe] PRIMARY KEY CLUSTERED 
(
	[Num_de_groupe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GroupeFormateur]    Script Date: 04/12/2019 10:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupeFormateur](
	[Num_de_groupe] [int] NULL,
	[IdFormateur] [int] NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[GroupeFormateur]  WITH CHECK ADD  CONSTRAINT [FK_GroupeFormateur_Formateur] FOREIGN KEY([IdFormateur])
REFERENCES [dbo].[Formateur] ([IdFormateur])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupeFormateur] CHECK CONSTRAINT [FK_GroupeFormateur_Formateur]
GO
ALTER TABLE [dbo].[GroupeFormateur]  WITH CHECK ADD  CONSTRAINT [FK_GroupeFormateur_Groupe] FOREIGN KEY([Num_de_groupe])
REFERENCES [dbo].[Groupe] ([Num_de_groupe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GroupeFormateur] CHECK CONSTRAINT [FK_GroupeFormateur_Groupe]
GO
