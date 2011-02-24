USE [master]
GO
/****** Object:  Database [vmsServer]    Script Date: 02/24/2011 07:47:47 ******/
CREATE DATABASE [vmsServer] ON  PRIMARY 
( NAME = N'vmsServer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\vmsServer.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'vmsServer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\vmsServer_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [vmsServer] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [vmsServer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [vmsServer] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [vmsServer] SET ANSI_NULLS OFF
GO
ALTER DATABASE [vmsServer] SET ANSI_PADDING OFF
GO
ALTER DATABASE [vmsServer] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [vmsServer] SET ARITHABORT OFF
GO
ALTER DATABASE [vmsServer] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [vmsServer] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [vmsServer] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [vmsServer] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [vmsServer] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [vmsServer] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [vmsServer] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [vmsServer] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [vmsServer] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [vmsServer] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [vmsServer] SET  DISABLE_BROKER
GO
ALTER DATABASE [vmsServer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [vmsServer] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [vmsServer] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [vmsServer] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [vmsServer] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [vmsServer] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [vmsServer] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [vmsServer] SET  READ_WRITE
GO
ALTER DATABASE [vmsServer] SET RECOVERY SIMPLE
GO
ALTER DATABASE [vmsServer] SET  MULTI_USER
GO
ALTER DATABASE [vmsServer] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [vmsServer] SET DB_CHAINING OFF
GO
USE [vmsServer]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 02/24/2011 07:47:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Module](
	[ModuleNumber] [nchar](11) NOT NULL,
	[ModuleType] [nchar](10) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[ModuleNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemLog]    Script Date: 02/24/2011 07:47:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemLog](
	[LogValue] [nvarchar](max) NULL,
	[Time] [datetime] NULL,
	[Type] [nvarchar](50) NULL,
	[LogID] [bigint] NOT NULL,
	[Source] [nvarchar](max) NULL,
	[StackTrace] [nvarchar](max) NULL,
 CONSTRAINT [PK_SystemLog] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tracking]    Script Date: 02/24/2011 07:47:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tracking](
	[TrackingID] [bigint] NOT NULL,
	[ModuleID] [nchar](11) NULL,
	[Longtitude] [float] NULL,
	[Latitude] [float] NULL,
	[Speed] [float] NULL,
	[FuelLevel] [float] NULL,
	[Time] [datetime] NULL,
 CONSTRAINT [PK_Tracking] PRIMARY KEY CLUSTERED 
(
	[TrackingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 02/24/2011 07:47:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[SessionID] [bigint] NULL,
	[TrackingID] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Tracking_Module]    Script Date: 02/24/2011 07:47:48 ******/
ALTER TABLE [dbo].[Tracking]  WITH CHECK ADD  CONSTRAINT [FK_Tracking_Module] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[Module] ([ModuleNumber])
GO
ALTER TABLE [dbo].[Tracking] CHECK CONSTRAINT [FK_Tracking_Module]
GO
/****** Object:  ForeignKey [FK_Session_Tracking]    Script Date: 02/24/2011 07:47:48 ******/
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Tracking] FOREIGN KEY([TrackingID])
REFERENCES [dbo].[Tracking] ([TrackingID])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Tracking]
GO
