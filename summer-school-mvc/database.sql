USE [master]
GO
/****** Object:  Database [SummerSchoolMVC]    Script Date: 7/11/2016 2:39:39 PM ******/
CREATE DATABASE [SummerSchoolMVC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SummerSchoolMVC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SummerSchoolMVC.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SummerSchoolMVC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SummerSchoolMVC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SummerSchoolMVC] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SummerSchoolMVC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SummerSchoolMVC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET ARITHABORT OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SummerSchoolMVC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SummerSchoolMVC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SummerSchoolMVC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SummerSchoolMVC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SummerSchoolMVC] SET  MULTI_USER 
GO
ALTER DATABASE [SummerSchoolMVC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SummerSchoolMVC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SummerSchoolMVC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SummerSchoolMVC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SummerSchoolMVC] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SummerSchoolMVC]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 7/11/2016 2:39:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[EnrollmentFee] [money] NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [SummerSchoolMVC] SET  READ_WRITE 
GO
