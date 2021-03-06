USE [master]
GO
/****** Object:  Database [vmsDatabase]    Script Date: 01/11/2011 16:51:29 ******/
CREATE DATABASE [vmsDatabase] ON  PRIMARY 
( NAME = N'vmsDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\vmsDatabase.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'vmsDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\vmsDatabase_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [vmsDatabase] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [vmsDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [vmsDatabase] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [vmsDatabase] SET ANSI_NULLS OFF
GO
ALTER DATABASE [vmsDatabase] SET ANSI_PADDING OFF
GO
ALTER DATABASE [vmsDatabase] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [vmsDatabase] SET ARITHABORT OFF
GO
ALTER DATABASE [vmsDatabase] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [vmsDatabase] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [vmsDatabase] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [vmsDatabase] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [vmsDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [vmsDatabase] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [vmsDatabase] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [vmsDatabase] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [vmsDatabase] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [vmsDatabase] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [vmsDatabase] SET  DISABLE_BROKER
GO
ALTER DATABASE [vmsDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [vmsDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [vmsDatabase] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [vmsDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [vmsDatabase] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [vmsDatabase] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [vmsDatabase] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [vmsDatabase] SET  READ_WRITE
GO
ALTER DATABASE [vmsDatabase] SET RECOVERY SIMPLE
GO
ALTER DATABASE [vmsDatabase] SET  MULTI_USER
GO
ALTER DATABASE [vmsDatabase] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [vmsDatabase] SET DB_CHAINING OFF
GO
USE [vmsDatabase]
GO
/****** Object:  Table [dbo].[VehicleTracking]    Script Date: 01/11/2011 16:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleTracking](
	[ID] [bigint] NOT NULL,
	[VehicleID] [bigint] NULL,
	[DriverID] [bigint] NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[Fuel] [float] NULL,
	[Status] [int] NULL,
	[ProductID] [bigint] NULL,
	[TimeStamp] [datetime] NULL,
	[SensorStatus] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 01/11/2011 16:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[ID] [nchar](10) NOT NULL,
	[NumPlate] [nchar](10) NULL,
	[EIN] [nchar](10) NULL,
	[VIN] [nchar](10) NULL,
	[Manufacturer] [nchar](10) NULL,
	[Tonage] [nchar](10) NULL,
	[Year] [nchar](10) NULL,
	[Type] [nchar](10) NULL,
	[Capacity] [nchar](10) NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 01/11/2011 16:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] NULL,
	[Name] [nchar](10) NULL,
	[GroupID] [bigint] NULL,
	[Description] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupProduct]    Script Date: 01/11/2011 16:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupProduct](
	[GroupProduct] [bigint] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fleet]    Script Date: 01/11/2011 16:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fleet](
	[ID] [bigint] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](200) NULL,
	[Established] [date] NULL,
 CONSTRAINT [PK_Fleet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 01/11/2011 16:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[ID] [bigint] NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[BirthDay] [date] NULL,
	[IDCard] [nvarchar](16) NULL,
	[LicenceType] [nchar](2) NULL,
	[FleetID] [bigint] NULL,
	[IsForeman] [bit] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 01/11/2011 16:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [bigint] NULL,
	[Name] [nvarchar](50) NULL,
	[FullName] [nvarchar](100) NULL,
	[Initials] [nchar](10) NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [nvarchar](20) NULL,
	[Longtitude] [float] NULL,
	[Latitude] [float] NULL
) ON [PRIMARY]
GO
