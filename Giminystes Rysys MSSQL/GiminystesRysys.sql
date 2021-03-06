USE [master]
GO
/****** Object:  Database [Gimine]    Script Date: 2020-03-01 18:19:04 ******/
CREATE DATABASE [Gimine]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gimine', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Gimine.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Gimine_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Gimine_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Gimine] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gimine].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Gimine] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Gimine] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Gimine] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Gimine] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Gimine] SET ARITHABORT OFF 
GO
ALTER DATABASE [Gimine] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Gimine] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Gimine] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Gimine] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Gimine] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Gimine] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Gimine] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Gimine] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Gimine] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Gimine] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Gimine] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Gimine] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Gimine] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Gimine] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Gimine] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Gimine] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Gimine] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Gimine] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Gimine] SET  MULTI_USER 
GO
ALTER DATABASE [Gimine] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Gimine] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Gimine] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Gimine] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Gimine] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Gimine] SET QUERY_STORE = OFF
GO
USE [Gimine]
GO
/****** Object:  Table [dbo].[GiminstesRysys]    Script Date: 2020-03-01 18:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiminstesRysys](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rysysId] [int] NOT NULL,
	[zmogusId] [int] NOT NULL,
 CONSTRAINT [PK_GiminstesRysys] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rysys]    Script Date: 2020-03-01 18:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rysys](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[asmensKodas1] [bigint] NOT NULL,
	[asmensKodas2] [bigint] NOT NULL,
	[tipasId] [int] NOT NULL,
 CONSTRAINT [PK_Rysys] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipas]    Script Date: 2020-03-01 18:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipas] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tipas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zmogus]    Script Date: 2020-03-01 18:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zmogus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vardas] [varchar](50) NOT NULL,
	[pavarde] [varchar](50) NOT NULL,
	[asmensKodas] [bigint] NOT NULL,
	[gimimoMetai] [int] NOT NULL,
 CONSTRAINT [PK_Zmogus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GiminstesRysys] ON 

INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (1, 1, 1)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (2, 5, 1)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (3, 28, 1)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (4, 22, 1)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (5, 23, 1)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (6, 24, 1)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (7, 4, 6)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (8, 14, 6)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (9, 3, 5)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (10, 12, 5)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (11, 13, 5)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (12, 18, 11)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (13, 8, 3)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (14, 25, 3)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (15, 26, 3)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (16, 27, 3)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (17, 16, 7)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (18, 9, 4)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (19, 10, 4)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (20, 2, 4)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (21, 19, 8)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (22, 20, 8)
INSERT [dbo].[GiminstesRysys] ([id], [rysysId], [zmogusId]) VALUES (23, 21, 10)
SET IDENTITY_INSERT [dbo].[GiminstesRysys] OFF
SET IDENTITY_INSERT [dbo].[Rysys] ON 

INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (1, 34512120106, 4450505001, 1)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (2, 47006120124, 37105250321, 1)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (3, 37105250321, 36502270524, 2)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (4, 36502270524, 46608170512, 1)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (5, 34512120106, 37105250321, 3)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (8, 44505050014, 37105250321, 3)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (9, 47006120124, 48902200124, 3)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (10, 47006120124, 49011281111, 3)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (12, 37105250321, 48902200124, 3)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (13, 37105250321, 49011281111, 3)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (14, 36502270524, 39107140258, 3)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (16, 46608170512, 39107140258, 3)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (18, 39107140258, 49403010325, 1)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (19, 48902200124, 49011281111, 2)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (20, 48902200124, 39107140258, 5)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (21, 49011281111, 39107140258, 5)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (22, 34512120106, 48902200124, 4)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (23, 34512120106, 49011281111, 4)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (24, 34512120106, 39107140258, 4)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (25, 44505050014, 48902200124, 4)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (26, 44505050014, 49011281111, 4)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (27, 44505050014, 39107140258, 4)
INSERT [dbo].[Rysys] ([id], [asmensKodas1], [asmensKodas2], [tipasId]) VALUES (28, 34512120106, 36502270524, 3)
SET IDENTITY_INSERT [dbo].[Rysys] OFF
SET IDENTITY_INSERT [dbo].[Tipas] ON 

INSERT [dbo].[Tipas] ([id], [tipas]) VALUES (1, N'Santuoka')
INSERT [dbo].[Tipas] ([id], [tipas]) VALUES (2, N'Brolis/Sese')
INSERT [dbo].[Tipas] ([id], [tipas]) VALUES (3, N'Tevas/Vaikas')
INSERT [dbo].[Tipas] ([id], [tipas]) VALUES (4, N'Senelis/Anukas')
INSERT [dbo].[Tipas] ([id], [tipas]) VALUES (5, N'Pusbrolis/Pussesere')
INSERT [dbo].[Tipas] ([id], [tipas]) VALUES (6, N'Brolenas/Seserenas')
SET IDENTITY_INSERT [dbo].[Tipas] OFF
SET IDENTITY_INSERT [dbo].[Zmogus] ON 

INSERT [dbo].[Zmogus] ([id], [vardas], [pavarde], [asmensKodas], [gimimoMetai]) VALUES (1, N'Petras', N'Petraitis', 34512120106, 1945)
INSERT [dbo].[Zmogus] ([id], [vardas], [pavarde], [asmensKodas], [gimimoMetai]) VALUES (3, N'Stase', N'Petraitiene', 44505050014, 1945)
INSERT [dbo].[Zmogus] ([id], [vardas], [pavarde], [asmensKodas], [gimimoMetai]) VALUES (4, N'Egle', N'Petraitiene', 47006120124, 1970)
INSERT [dbo].[Zmogus] ([id], [vardas], [pavarde], [asmensKodas], [gimimoMetai]) VALUES (5, N'Jonas', N'Petraitis', 37105250321, 1971)
INSERT [dbo].[Zmogus] ([id], [vardas], [pavarde], [asmensKodas], [gimimoMetai]) VALUES (6, N'Lukas', N'Petraitis', 36502270524, 1965)
INSERT [dbo].[Zmogus] ([id], [vardas], [pavarde], [asmensKodas], [gimimoMetai]) VALUES (7, N'Karolina', N'Petraitiene', 46608170512, 1966)
INSERT [dbo].[Zmogus] ([id], [vardas], [pavarde], [asmensKodas], [gimimoMetai]) VALUES (8, N'Ugne', N'Petraityte', 48902200124, 1989)
INSERT [dbo].[Zmogus] ([id], [vardas], [pavarde], [asmensKodas], [gimimoMetai]) VALUES (10, N'Viktorija', N'Petraityte', 49011281111, 1990)
INSERT [dbo].[Zmogus] ([id], [vardas], [pavarde], [asmensKodas], [gimimoMetai]) VALUES (11, N'Tomas', N'Petraitis', 39107140258, 1991)
INSERT [dbo].[Zmogus] ([id], [vardas], [pavarde], [asmensKodas], [gimimoMetai]) VALUES (13, N'Deimate', N'Petraitiene', 49403010325, 1994)
SET IDENTITY_INSERT [dbo].[Zmogus] OFF
ALTER TABLE [dbo].[GiminstesRysys]  WITH CHECK ADD  CONSTRAINT [FK_GiminstesRysys_Rysys] FOREIGN KEY([rysysId])
REFERENCES [dbo].[Rysys] ([id])
GO
ALTER TABLE [dbo].[GiminstesRysys] CHECK CONSTRAINT [FK_GiminstesRysys_Rysys]
GO
ALTER TABLE [dbo].[GiminstesRysys]  WITH CHECK ADD  CONSTRAINT [FK_GiminstesRysys_Zmogus] FOREIGN KEY([zmogusId])
REFERENCES [dbo].[Zmogus] ([id])
GO
ALTER TABLE [dbo].[GiminstesRysys] CHECK CONSTRAINT [FK_GiminstesRysys_Zmogus]
GO
ALTER TABLE [dbo].[Rysys]  WITH CHECK ADD  CONSTRAINT [FK_Rysys_Tipas] FOREIGN KEY([tipasId])
REFERENCES [dbo].[Tipas] ([id])
GO
ALTER TABLE [dbo].[Rysys] CHECK CONSTRAINT [FK_Rysys_Tipas]
GO
/****** Object:  StoredProcedure [dbo].[GetRysys]    Script Date: 2020-03-01 18:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRysys]
	@AK1 bigint,
	@AK2 bigint
AS
BEGIN
	SELECT 1 FROM 
	(SELECT Zmogus.vardas, Zmogus.pavarde FROM Zmogus WHERE Zmogus.asmensKodas = @AK1) AS col1,
	(SELECT Zmogus.vardas, Zmogus.pavarde FROM Zmogus WHERE Zmogus.asmensKodas = @AK2 ) AS Col2,
	(SELECT tipas FROM Tipas WHERE Tipas.id IN (Select tipasId FROM Rysys WHERE asmensKodas1 = @AK1 AND asmensKodas2 = @AK2)) AS Col3
END
GO
USE [master]
GO
ALTER DATABASE [Gimine] SET  READ_WRITE 
GO
