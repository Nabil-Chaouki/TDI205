USE [ManagementOptionnel]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 09/12/2019 13:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Etablissements]    Script Date: 09/12/2019 13:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etablissements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Etab_Name] [nvarchar](max) NULL,
	[Etab_Desc] [nvarchar](max) NULL,
	[Etudiant_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Etablissements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Etudiants]    Script Date: 09/12/2019 13:26:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etudiants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Etud_Name] [nvarchar](max) NULL,
	[Etud_Tel] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Etudiants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Etablissements]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Etablissements_dbo.Etudiants_Etudiant_Id] FOREIGN KEY([Etudiant_Id])
REFERENCES [dbo].[Etudiants] ([Id])
GO
ALTER TABLE [dbo].[Etablissements] CHECK CONSTRAINT [FK_dbo.Etablissements_dbo.Etudiants_Etudiant_Id]
GO
