USE [GestionProjets]
GO
/****** Object:  UserDefinedFunction [dbo].[NombresTaches]    Script Date: 03/12/2019 17:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[NombresTaches](@Id_Projets int)
returns int
as
Begin
	Declare @NombreTaches int;
	Select @NombreTaches=COUNT(*) from Taches where @Id_Projets=projet_Id;
	return @NombreTaches
End
GO
/****** Object:  UserDefinedFunction [dbo].[Statistique]    Script Date: 03/12/2019 17:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[Statistique](@Id_Projets int)
returns @Statistique Table(Code Varchar(50),Titre Varchar(255),Nombre int)
as
Begin
Declare @NombreTaches int
Declare @NombreStagiaires int
Declare @NomProjet Varchar(255)
Select @NomProjet=Titre from Projets Where Id_Projets=@Id_Projets
Select @NombreTaches=COUNT(*) from Projets p,Tache t where t.Projets_Id=p.Id_Projets
insert into @Statistique values('Nombre_Tache','Nombre des taches du Projets'+@NomProjet,@NombreTaches)
return
end
GO
/****** Object:  Table [dbo].[Projets]    Script Date: 03/12/2019 17:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projets](
	[Id_Projets] [int] NOT NULL,
	[Titre] [varchar](30) NULL,
	[Nombre_Jours_Realisation] [int] NULL,
 CONSTRAINT [Pk_Projets] PRIMARY KEY CLUSTERED 
(
	[Id_Projets] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [ProjetsId] UNIQUE NONCLUSTERED 
(
	[Id_Projets] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[GrandProjet]    Script Date: 03/12/2019 17:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [dbo].[GrandProjet](@Nombre_Jours_Min int)
returns Table
as
	return Select * from Projets Where Nombre_Jours_Realisation>@Nombre_Jours_Min

GO
/****** Object:  Table [dbo].[Stagiaires]    Script Date: 03/12/2019 17:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stagiaires](
	[Id_Stagiaire] [int] NOT NULL,
	[Nom] [varchar](30) NULL,
	[Prenom] [varchar](30) NULL,
	[Cin] [varchar](30) NULL,
	[Ville] [varchar](30) NULL,
	[Date_Naissance] [date] NULL,
	[E_Mail] [varchar](30) NULL,
	[Tel_Fixe] [int] NULL,
	[Tel_Portable] [int] NULL,
 CONSTRAINT [Pk_Stagiaire] PRIMARY KEY CLUSTERED 
(
	[Id_Stagiaire] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [StagiareId] UNIQUE NONCLUSTERED 
(
	[Id_Stagiaire] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tache]    Script Date: 03/12/2019 17:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tache](
	[Id_Tache] [int] NOT NULL,
	[Titre] [varchar](30) NULL,
	[Projets_Id] [int] NULL,
	[Nombre_Jours_Realisation] [int] NULL,
 CONSTRAINT [Pk_Tache] PRIMARY KEY CLUSTERED 
(
	[Id_Tache] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [TacheId] UNIQUE NONCLUSTERED 
(
	[Id_Tache] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TachesStagiaires]    Script Date: 03/12/2019 17:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TachesStagiaires](
	[Stagiaire_Id] [int] NULL,
	[Tache_Id] [int] NULL,
	[Date_Debut] [date] NULL,
	[Date_Fin] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tache]  WITH CHECK ADD  CONSTRAINT [FK_Projets_Tache] FOREIGN KEY([Projets_Id])
REFERENCES [dbo].[Projets] ([Id_Projets])
GO
ALTER TABLE [dbo].[Tache] CHECK CONSTRAINT [FK_Projets_Tache]
GO
ALTER TABLE [dbo].[TachesStagiaires]  WITH CHECK ADD  CONSTRAINT [FK_StagiaireTache_Stagiaire] FOREIGN KEY([Stagiaire_Id])
REFERENCES [dbo].[Stagiaires] ([Id_Stagiaire])
GO
ALTER TABLE [dbo].[TachesStagiaires] CHECK CONSTRAINT [FK_StagiaireTache_Stagiaire]
GO
ALTER TABLE [dbo].[TachesStagiaires]  WITH CHECK ADD  CONSTRAINT [FK_TacheStagiaire_Tache] FOREIGN KEY([Tache_Id])
REFERENCES [dbo].[Tache] ([Id_Tache])
GO
ALTER TABLE [dbo].[TachesStagiaires] CHECK CONSTRAINT [FK_TacheStagiaire_Tache]
GO
