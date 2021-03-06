USE [master]
GO

/****** Object:  Database [HoSoNoiVu]    Script Date: 7/1/2022 9:08:32 AM ******/
CREATE DATABASE [HoSoNoiVu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HoSoNoiVu', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HoSoNoiVu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HoSoNoiVu_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HoSoNoiVu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HoSoNoiVu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [HoSoNoiVu] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET ARITHABORT OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [HoSoNoiVu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [HoSoNoiVu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET  ENABLE_BROKER 
GO

ALTER DATABASE [HoSoNoiVu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [HoSoNoiVu] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET RECOVERY FULL 
GO

ALTER DATABASE [HoSoNoiVu] SET  MULTI_USER 
GO

ALTER DATABASE [HoSoNoiVu] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [HoSoNoiVu] SET DB_CHAINING OFF 
GO

ALTER DATABASE [HoSoNoiVu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [HoSoNoiVu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [HoSoNoiVu] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [HoSoNoiVu] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [HoSoNoiVu] SET QUERY_STORE = OFF
GO

ALTER DATABASE [HoSoNoiVu] SET  READ_WRITE 
GO


