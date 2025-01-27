USE [master]
GO
/****** Object:  Database [GestionStagiaireEtGroupe]    Script Date: 27/11/2019 08:57:40 ******/
CREATE DATABASE [GestionStagiaireEtGroupe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GestionStagiaireEtGroupe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\GestionStagiaireEtGroupe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GestionStagiaireEtGroupe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\GestionStagiaireEtGroupe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GestionStagiaireEtGroupe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET ARITHABORT OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET  MULTI_USER 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET QUERY_STORE = OFF
GO
USE [GestionStagiaireEtGroupe]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [GestionStagiaireEtGroupe]
GO
/****** Object:  User [anas_login]    Script Date: 27/11/2019 08:57:41 ******/
CREATE USER [anas_login] FOR LOGIN [anas_login] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Groupe]    Script Date: 27/11/2019 08:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groupe](
	[Id] [int] NOT NULL,
	[Nom] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[stagiaire]    Script Date: 27/11/2019 08:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stagiaire](
	[Id] [int] NOT NULL,
	[Nom] [varchar](30) NULL,
	[Prenom] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [GestionStagiaireEtGroupe] SET  READ_WRITE 
GO
