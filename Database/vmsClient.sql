USE [master]
GO
/****** Object:  Database [vmsClient]    Script Date: 02/24/2011 07:47:12 ******/
CREATE DATABASE [vmsClient] ON  PRIMARY 
( NAME = N'vmsDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\vmsDatabase.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'vmsDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\vmsDatabase_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [vmsClient] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [vmsClient].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [vmsClient] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [vmsClient] SET ANSI_NULLS OFF
GO
ALTER DATABASE [vmsClient] SET ANSI_PADDING OFF
GO
ALTER DATABASE [vmsClient] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [vmsClient] SET ARITHABORT OFF
GO
ALTER DATABASE [vmsClient] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [vmsClient] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [vmsClient] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [vmsClient] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [vmsClient] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [vmsClient] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [vmsClient] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [vmsClient] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [vmsClient] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [vmsClient] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [vmsClient] SET  DISABLE_BROKER
GO
ALTER DATABASE [vmsClient] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [vmsClient] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [vmsClient] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [vmsClient] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [vmsClient] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [vmsClient] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [vmsClient] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [vmsClient] SET  READ_WRITE
GO
ALTER DATABASE [vmsClient] SET RECOVERY SIMPLE
GO
ALTER DATABASE [vmsClient] SET  MULTI_USER
GO
ALTER DATABASE [vmsClient] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [vmsClient] SET DB_CHAINING OFF
GO
USE [vmsClient]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 02/24/2011 07:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [bigint] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[FullName] [nvarchar](100) NULL,
	[Initials] [nchar](10) NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [nvarchar](20) NULL,
	[Longtitude] [float] NULL,
	[Latitude] [float] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupProduct]    Script Date: 02/24/2011 07:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupProduct](
	[GroupProduct] [bigint] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_GroupProduct] PRIMARY KEY CLUSTERED 
(
	[GroupProduct] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fleet]    Script Date: 02/24/2011 07:47:14 ******/
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
/****** Object:  Table [dbo].[Vehicle]    Script Date: 02/24/2011 07:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[NumPlate] [nvarchar](20) NOT NULL,
	[EIN] [nchar](30) NULL,
	[VIN] [nchar](30) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[Tonage] [float] NULL,
	[Year] [int] NULL,
	[Type] [nvarchar](50) NULL,
	[Capacity] [float] NULL,
	[FleetID] [bigint] NULL,
 CONSTRAINT [PK_Vehicle_1] PRIMARY KEY CLUSTERED 
(
	[NumPlate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 02/24/2011 07:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] NOT NULL,
	[Name] [nchar](10) NULL,
	[GroupID] [bigint] NULL,
	[Description] [nchar](10) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 02/24/2011 07:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[ID] [bigint] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[BirthDay] [date] NULL,
	[IDCard] [nvarchar](16) NULL,
	[LicenceType] [nchar](2) NULL,
	[FleetID] [bigint] NULL,
	[IsForeman] [bit] NULL,
	[IsDeputy] [bit] NULL,
	[IsActive] [bit] NULL,
	[ImageFile] [nvarchar](50) NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleTracking]    Script Date: 02/24/2011 07:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleTracking](
	[ID] [bigint] NOT NULL,
	[VehicleNumPlate] [nvarchar](20) NULL,
	[DriverID] [bigint] NULL,
	[ProductID] [bigint] NULL,
	[TimeStamp] [datetime] NULL,
	[IsCompleted] [nchar](10) NULL,
	[CustomerID] [bigint] NULL,
 CONSTRAINT [PK_VehicleTracking] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Vehicle_Fleet]    Script Date: 02/24/2011 07:47:14 ******/
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_Fleet] FOREIGN KEY([FleetID])
REFERENCES [dbo].[Fleet] ([ID])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_Fleet]
GO
/****** Object:  ForeignKey [FK_Product_GroupProduct]    Script Date: 02/24/2011 07:47:14 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_GroupProduct] FOREIGN KEY([GroupID])
REFERENCES [dbo].[GroupProduct] ([GroupProduct])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_GroupProduct]
GO
/****** Object:  ForeignKey [FK_Driver_Fleet]    Script Date: 02/24/2011 07:47:14 ******/
ALTER TABLE [dbo].[Driver]  WITH CHECK ADD  CONSTRAINT [FK_Driver_Fleet] FOREIGN KEY([FleetID])
REFERENCES [dbo].[Fleet] ([ID])
GO
ALTER TABLE [dbo].[Driver] CHECK CONSTRAINT [FK_Driver_Fleet]
GO
/****** Object:  ForeignKey [FK_VehicleTracking_Customer]    Script Date: 02/24/2011 07:47:14 ******/
ALTER TABLE [dbo].[VehicleTracking]  WITH CHECK ADD  CONSTRAINT [FK_VehicleTracking_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[VehicleTracking] CHECK CONSTRAINT [FK_VehicleTracking_Customer]
GO
/****** Object:  ForeignKey [FK_VehicleTracking_Driver]    Script Date: 02/24/2011 07:47:14 ******/
ALTER TABLE [dbo].[VehicleTracking]  WITH CHECK ADD  CONSTRAINT [FK_VehicleTracking_Driver] FOREIGN KEY([DriverID])
REFERENCES [dbo].[Driver] ([ID])
GO
ALTER TABLE [dbo].[VehicleTracking] CHECK CONSTRAINT [FK_VehicleTracking_Driver]
GO
/****** Object:  ForeignKey [FK_VehicleTracking_Product]    Script Date: 02/24/2011 07:47:14 ******/
ALTER TABLE [dbo].[VehicleTracking]  WITH CHECK ADD  CONSTRAINT [FK_VehicleTracking_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[VehicleTracking] CHECK CONSTRAINT [FK_VehicleTracking_Product]
GO
/****** Object:  ForeignKey [FK_VehicleTracking_Vehicle]    Script Date: 02/24/2011 07:47:14 ******/
ALTER TABLE [dbo].[VehicleTracking]  WITH CHECK ADD  CONSTRAINT [FK_VehicleTracking_Vehicle] FOREIGN KEY([VehicleNumPlate])
REFERENCES [dbo].[Vehicle] ([NumPlate])
GO
ALTER TABLE [dbo].[VehicleTracking] CHECK CONSTRAINT [FK_VehicleTracking_Vehicle]
GO
