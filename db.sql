USE [master]
GO
/****** Object:  Database [MrCode]    Script Date: 6/25/2023 7:52:26 PM ******/
CREATE DATABASE [MrCode]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MrCode', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MrCode.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MrCode_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MrCode_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MrCode] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MrCode].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MrCode] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MrCode] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MrCode] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MrCode] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MrCode] SET ARITHABORT OFF 
GO
ALTER DATABASE [MrCode] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MrCode] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MrCode] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MrCode] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MrCode] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MrCode] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MrCode] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MrCode] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MrCode] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MrCode] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MrCode] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MrCode] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MrCode] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MrCode] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MrCode] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MrCode] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MrCode] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MrCode] SET RECOVERY FULL 
GO
ALTER DATABASE [MrCode] SET  MULTI_USER 
GO
ALTER DATABASE [MrCode] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MrCode] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MrCode] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MrCode] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MrCode] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MrCode] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MrCode', N'ON'
GO
ALTER DATABASE [MrCode] SET QUERY_STORE = ON
GO
ALTER DATABASE [MrCode] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MrCode]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/25/2023 7:52:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[Password] [varchar](500) NOT NULL,
	[Username] [nvarchar](300) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Email], [Password], [Username], [IsActive]) VALUES (1, N'test@gmail.com', N'3213456', N'Mohammad', 1)
INSERT [dbo].[User] ([Id], [Email], [Password], [Username], [IsActive]) VALUES (2, N'mrcodetest@yahoo.com', N'68585679', N'Ali', 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
USE [master]
GO
ALTER DATABASE [MrCode] SET  READ_WRITE 
GO
