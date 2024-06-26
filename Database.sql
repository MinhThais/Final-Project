USE [master]
GO
/****** Object:  Database [Apple-T_Store]    Script Date: 4/27/2024 2:33:26 PM ******/
CREATE DATABASE [Apple-T_Store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Apple-T_Store', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Apple-T_Store.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Apple-T_Store_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Apple-T_Store_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Apple-T_Store] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Apple-T_Store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Apple-T_Store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Apple-T_Store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Apple-T_Store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Apple-T_Store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Apple-T_Store] SET ARITHABORT OFF 
GO
ALTER DATABASE [Apple-T_Store] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Apple-T_Store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Apple-T_Store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Apple-T_Store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Apple-T_Store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Apple-T_Store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Apple-T_Store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Apple-T_Store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Apple-T_Store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Apple-T_Store] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Apple-T_Store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Apple-T_Store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Apple-T_Store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Apple-T_Store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Apple-T_Store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Apple-T_Store] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Apple-T_Store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Apple-T_Store] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Apple-T_Store] SET  MULTI_USER 
GO
ALTER DATABASE [Apple-T_Store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Apple-T_Store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Apple-T_Store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Apple-T_Store] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Apple-T_Store] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Apple-T_Store] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Apple-T_Store] SET QUERY_STORE = ON
GO
ALTER DATABASE [Apple-T_Store] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Apple-T_Store]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/27/2024 2:33:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 4/27/2024 2:33:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[account_username] [nvarchar](20) NOT NULL,
	[account_email] [nvarchar](max) NOT NULL,
	[account_password] [nvarchar](max) NOT NULL,
	[account_confirm_password] [nvarchar](max) NOT NULL,
	[account_phone] [nvarchar](10) NULL,
	[account_address] [nvarchar](max) NULL,
	[account_birthday] [datetime2](7) NULL,
	[account_gender] [nvarchar](max) NULL,
	[token] [nvarchar](max) NULL,
	[refesh_token] [nvarchar](max) NULL,
	[refesh_token_exprytime] [datetime2](7) NOT NULL,
	[reset_password_token] [nvarchar](max) NULL,
	[reset_password_exprytime] [datetime2](7) NOT NULL,
	[account_status] [int] NOT NULL,
	[role] [nvarchar](max) NOT NULL,
	[account_avatar] [nvarchar](max) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 4/27/2024 2:33:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[brand_id] [int] IDENTITY(1,1) NOT NULL,
	[brand_name] [nvarchar](max) NOT NULL,
	[brand_email] [nvarchar](max) NOT NULL,
	[brand_address] [nvarchar](max) NOT NULL,
	[brand_phone] [nvarchar](max) NOT NULL,
	[brand_status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart_details]    Script Date: 4/27/2024 2:33:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart_details](
	[cd_id] [int] IDENTITY(1,1) NOT NULL,
	[cd_quantity] [int] NOT NULL,
	[cd_product_image] [nvarchar](max) NULL,
	[cd_product_name] [nvarchar](max) NULL,
	[cd_product_price] [float] NULL,
	[cd_cart_id] [int] NOT NULL,
	[cd_product_id] [int] NOT NULL,
 CONSTRAINT [PK_Cart_details] PRIMARY KEY CLUSTERED 
(
	[cd_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 4/27/2024 2:33:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[cart_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 4/27/2024 2:33:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uri] [nvarchar](max) NOT NULL,
	[i_product_id] [int] NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_details]    Script Date: 4/27/2024 2:33:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_details](
	[od_id] [int] IDENTITY(1,1) NOT NULL,
	[od_quantity] [int] NOT NULL,
	[od_product_price] [float] NOT NULL,
	[od_order_id] [int] NOT NULL,
	[od_product_id] [int] NOT NULL,
	[product_image] [nvarchar](max) NULL,
	[product_name] [nvarchar](max) NULL,
	[product_price] [float] NULL,
 CONSTRAINT [PK_Order_details] PRIMARY KEY CLUSTERED 
(
	[od_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/27/2024 2:33:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[order_date] [datetime2](7) NOT NULL,
	[delivery_date] [datetime2](7) NULL,
	[order_address] [nvarchar](max) NOT NULL,
	[order_phone] [nvarchar](max) NOT NULL,
	[order_quantity] [int] NOT NULL,
	[order_note] [nvarchar](max) NULL,
	[order_status] [nvarchar](max) NULL,
	[order_payment] [nvarchar](max) NOT NULL,
	[order_total_price] [float] NOT NULL,
	[o_account_id] [int] NOT NULL,
	[account_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/27/2024 2:33:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](max) NOT NULL,
	[product_quantity_stock] [int] NOT NULL,
	[product_original_price] [float] NOT NULL,
	[product_sell_price] [float] NOT NULL,
	[product_description] [nvarchar](max) NULL,
	[product_image] [nvarchar](max) NULL,
	[product_import_date] [datetime2](7) NULL,
	[product_status] [nvarchar](max) NULL,
	[p_brand_id] [int] NOT NULL,
	[brand_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240426071658_Migrations', N'7.0.0')
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([account_id], [account_username], [account_email], [account_password], [account_confirm_password], [account_phone], [account_address], [account_birthday], [account_gender], [token], [refesh_token], [refesh_token_exprytime], [reset_password_token], [reset_password_exprytime], [account_status], [role], [account_avatar]) VALUES (1, N'Admin', N'minhthai164@gmail.com', N'$2a$11$m1U98MO4WTNcR6Ln8OEPq.DaDuCVo4HR0McIl.ewH2vpOp4/6F5yu', N'$2a$11$m1U98MO4WTNcR6Ln8OEPq.DaDuCVo4HR0McIl.ewH2vpOp4/6F5yu', N'0917951699', N'Can Tho', CAST(N'2002-05-01T00:00:00.0000000' AS DateTime2), N'Female', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiQWRtaW4iLCJ1bmlxdWVfbmFtZSI6IkFkbWluIiwibmJmIjoxNzE0MTk5OTU1LCJleHAiOjE3MTQxOTk5NjQsImlhdCI6MTcxNDE5OTk1NX0.mpXUFThvsASeA1P8EZgFvdPi2GQi8JZa4MAVjedKn5I', N'km34t23nqzOq8s51hfczM3AquFCXeHFCspkEM2jW5gy1xvd/Smo9zrk5uTtC/Hy838YouxvwkH0dn6LgXiLCvA==', CAST(N'2024-05-02T13:39:15.1602618' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'Admin', N'default-avatar.jpg')
INSERT [dbo].[Accounts] ([account_id], [account_username], [account_email], [account_password], [account_confirm_password], [account_phone], [account_address], [account_birthday], [account_gender], [token], [refesh_token], [refesh_token_exprytime], [reset_password_token], [reset_password_exprytime], [account_status], [role], [account_avatar]) VALUES (2, N'Manager1', N'Manager@gmail.com', N'$2a$11$5SggWLMKYGD0L/.7.ugs9.Zpj.kw2owXivY.XEqauDvgewR3OFTCO', N'$2a$11$U9shDO8io4tZ3BnjkYcBtuSD7rP0CNBrRZbxDzEm.Whz1AYpKgc0q', N'0986745698', N'Ho Chi Minh', CAST(N'2004-06-08T00:00:00.0000000' AS DateTime2), N'Male', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiTWFuYWdlciIsInVuaXF1ZV9uYW1lIjoiTWFuYWdlcjEiLCJuYmYiOjE3MTQxODkwNDgsImV4cCI6MTcxNDE4OTA1OCwiaWF0IjoxNzE0MTg5MDQ4fQ.cGrGEhBenT3RSpuBxQZ4yEcafs-I483y-SWhqAZOIcg', N'GK2UNvh6ul0JLbkHlr2YQURbnN6syH2BPVJI2kMugA5G/6qgTuGz9mL+10jTp5MIb5rCXsdb7O4fVSMqHAqiFg==', CAST(N'2024-05-02T10:37:28.7240766' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'Manager', N'default-avatar.jpg')
INSERT [dbo].[Accounts] ([account_id], [account_username], [account_email], [account_password], [account_confirm_password], [account_phone], [account_address], [account_birthday], [account_gender], [token], [refesh_token], [refesh_token_exprytime], [reset_password_token], [reset_password_exprytime], [account_status], [role], [account_avatar]) VALUES (3, N'Cus1', N'thaimhmgcc200064@gmail.com', N'$2a$11$M0rzMeb7XvuakklhIvos7OYKi4DeSdffDddPUR5FkfRYAsmz2HnHC', N'$2a$11$yqk0qtO3vxnZLg9S46k95e.ohH28YV6fM4bKRF7xbdQvAb8hXcQpi', N'0917951645', N'Can Tho', CAST(N'2003-11-06T00:00:00.0000000' AS DateTime2), N'Male', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJ1bmlxdWVfbmFtZSI6IkN1czEiLCJuYmYiOjE3MTQxODk2MzQsImV4cCI6MTcxNDE4OTY0NCwiaWF0IjoxNzE0MTg5NjM0fQ.HhMctLVwwGDa7NHoFnIxlSkcTzQTVd7LU4Vv2bhQpZE', N'JUe/jkDvP9XOLL/6+0J0MgEmIRNHtasBPwxfCCuHRc3a1R9mcU9k6mPGCMkr3u8/QItBNGyQ/+qYfAPSumpGZw==', CAST(N'2024-05-02T10:47:14.5671460' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'Customer', N'default-avatar.jpg')
INSERT [dbo].[Accounts] ([account_id], [account_username], [account_email], [account_password], [account_confirm_password], [account_phone], [account_address], [account_birthday], [account_gender], [token], [refesh_token], [refesh_token_exprytime], [reset_password_token], [reset_password_exprytime], [account_status], [role], [account_avatar]) VALUES (4, N'Cus2', N'Cus2@gmail.com', N'$2a$11$Bvv.1PMja/.MlK5fT5Hr0.5Eal0q4V9oclp8JTWImrF7U1Ryzel7.', N'$2a$11$SD.aUimFHnSYTXOBBXj3B.aKji521IBax6RsjRU/KUstjcR4KAIqW', N'0925745698', N'Kien Giang', CAST(N'2004-06-30T00:00:00.0000000' AS DateTime2), N'Female', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJ1bmlxdWVfbmFtZSI6IkN1czIiLCJuYmYiOjE3MTQxODg5OTgsImV4cCI6MTcxNDE4OTAwOCwiaWF0IjoxNzE0MTg4OTk4fQ.f9YcDcAlq61UXjXMlP7-tQKSEDmk5mxRUcNUXuQccSw', N'goMtR7bPIGzAs7BTmu8XRk+cQ+EGo202QbBI2swTHXuhA10myCkYIBITRTwIkKiZmxhOCBtItYY2FNOHkhAv1A==', CAST(N'2024-05-02T10:36:38.7678929' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'Customer', N'default-avatar.jpg')
INSERT [dbo].[Accounts] ([account_id], [account_username], [account_email], [account_password], [account_confirm_password], [account_phone], [account_address], [account_birthday], [account_gender], [token], [refesh_token], [refesh_token_exprytime], [reset_password_token], [reset_password_exprytime], [account_status], [role], [account_avatar]) VALUES (5, N'Cus3', N'cus3@gmail.com', N'$2a$11$2Z3sAn/t6IKmdXjA3Z0muOk2dIMeT1xYVKfQv2mK5v36hAURhUl1e', N'$2a$11$8nZRP1ke4aKEudCbFTOH8OwEW/8st5i1cd0cchCSQTNvjyrPfnaAK', N'0254922158', N'Ca Mau', CAST(N'2005-02-09T00:00:00.0000000' AS DateTime2), N'Male', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJ1bmlxdWVfbmFtZSI6IkN1czMiLCJuYmYiOjE3MTQxNDAyNTAsImV4cCI6MTcxNDE0MDI2MCwiaWF0IjoxNzE0MTQwMjUwfQ.XZQn46KbLoYN73fM_vMLab6My5jvmwQd-GrjZSrKOMQ', N'WpdqQLZC3o5nkG28L9gT2deZVcVZvYQNV4kzH+9Qn3kM4d3jG7SIS3WO6N2dUWRa267xAPGhG0f6DRlFvH7Kzg==', CAST(N'2024-05-01T21:04:10.1662926' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'Customer', N'default-avatar.jpg')
INSERT [dbo].[Accounts] ([account_id], [account_username], [account_email], [account_password], [account_confirm_password], [account_phone], [account_address], [account_birthday], [account_gender], [token], [refesh_token], [refesh_token_exprytime], [reset_password_token], [reset_password_exprytime], [account_status], [role], [account_avatar]) VALUES (6, N'Cus4 ', N'Cus4@gmail.com', N'$2a$11$cmbFFBdpwFAiKkENpq6KnOdMXy8WSp8nFAB1bRicztl5kvEPjgorG', N'$2a$11$cmbFFBdpwFAiKkENpq6KnOdMXy8WSp8nFAB1bRicztl5kvEPjgorG', N'0556874699', N'Dong Thap', CAST(N'1998-06-26T00:00:00.0000000' AS DateTime2), N'Male', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'Cutsomer', N'default-avatar.jpg')
INSERT [dbo].[Accounts] ([account_id], [account_username], [account_email], [account_password], [account_confirm_password], [account_phone], [account_address], [account_birthday], [account_gender], [token], [refesh_token], [refesh_token_exprytime], [reset_password_token], [reset_password_exprytime], [account_status], [role], [account_avatar]) VALUES (7, N'Cus5', N'thaimhmgcc200064@fpt.edu.vn', N'$2a$11$na4Bi1927v8b0XUBug6jaO.03U5lpvxZNgYCZ.2DW4zGAuJEKlSn6', N'$2a$11$5xWjOXTHlQ/mnr3s6xKLPuha83TmzKkzBjd8/OLTHNMCu8/ncP/jK', N'0557789547', N'Dong Thap', CAST(N'2001-07-26T00:00:00.0000000' AS DateTime2), N'Male', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJ1bmlxdWVfbmFtZSI6IkN1czUiLCJuYmYiOjE3MTQxODk3NDcsImV4cCI6MTcxNDE4OTc1NywiaWF0IjoxNzE0MTg5NzQ3fQ.qpVRBM-u_MwB4PF-3e4YUwYvpEObjFSVSlqjUIqHkkU', N'XfuzuNBwpDjacPuZhoggiYbdFmo7vwj5ZgeKfmi7F1yyzsPDmkSK72DuHorvrzLD7KFNGZ7vTN0/77we+YIArw==', CAST(N'2024-05-02T10:49:07.7039102' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'Customer', N'default-avatar.jpg')
INSERT [dbo].[Accounts] ([account_id], [account_username], [account_email], [account_password], [account_confirm_password], [account_phone], [account_address], [account_birthday], [account_gender], [token], [refesh_token], [refesh_token_exprytime], [reset_password_token], [reset_password_exprytime], [account_status], [role], [account_avatar]) VALUES (8, N'Cus6', N'Cus6@gmail.com', N'$2a$11$PlwYbX0v.WW9YtqitYQ11.NsU52PEwA7LiojLVZuenvGSlvLf5xka', N'$2a$11$XSp1Qd7MzfDhSlf6Bmd4x.0gxHzUYvv/YbHOM0OTwcNUEKUi81CeO', N'0266578956', N'Tien Giang', CAST(N'2000-07-19T00:00:00.0000000' AS DateTime2), N'Male', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'Customer', N'default-avatar.jpg')
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([brand_id], [brand_name], [brand_email], [brand_address], [brand_phone], [brand_status]) VALUES (1, N'Apple', N'Apple@gmail.com', N'Ho Chi Minh', N'0987654832', N'Yes')
INSERT [dbo].[Brands] ([brand_id], [brand_name], [brand_email], [brand_address], [brand_phone], [brand_status]) VALUES (2, N'Samsung', N'SamSung@gmail.com', N'Da Nang', N'0897519638', N'Yes')
INSERT [dbo].[Brands] ([brand_id], [brand_name], [brand_email], [brand_address], [brand_phone], [brand_status]) VALUES (3, N'Oppo', N'Oppo@gmail.com', N'Can Tho', N'0912777899', N'Yes')
INSERT [dbo].[Brands] ([brand_id], [brand_name], [brand_email], [brand_address], [brand_phone], [brand_status]) VALUES (4, N'Xiaomi', N'Xiaomi@gmail.com', N'Hai Phong', N'0897568457', N'Yes')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([cart_id], [account_id]) VALUES (1, 1)
INSERT [dbo].[Carts] ([cart_id], [account_id]) VALUES (2, 2)
INSERT [dbo].[Carts] ([cart_id], [account_id]) VALUES (3, 3)
INSERT [dbo].[Carts] ([cart_id], [account_id]) VALUES (4, 4)
INSERT [dbo].[Carts] ([cart_id], [account_id]) VALUES (5, 5)
INSERT [dbo].[Carts] ([cart_id], [account_id]) VALUES (6, 6)
INSERT [dbo].[Carts] ([cart_id], [account_id]) VALUES (7, 7)
INSERT [dbo].[Carts] ([cart_id], [account_id]) VALUES (8, 8)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (10, N'Samsung Galaxy S24 Ultra-1.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (11, N'Samsung Galaxy S24 Ultra-2.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (12, N'Samsung Galaxy S24 Ultra-3.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (13, N'Samsung Galaxy S24 Ultra-1.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (14, N'Samsung Galaxy S24 Ultra-1.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (15, N'Samsung Galaxy S24 Ultra-2.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (16, N'Samsung Galaxy S24 Ultra-3.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (17, N'Samsung Galaxy S24 Ultra-1.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (18, N'Samsung Galaxy S24 Ultra-1.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (19, N'Samsung Galaxy S24 Ultra-2.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (20, N'Samsung Galaxy S24 Ultra-3.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (21, N'Samsung Galaxy S24 Ultra-1.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (22, N'Samsung Galaxy S24 Ultra-1.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (23, N'Samsung Galaxy S24 Ultra-2.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (24, N'Samsung Galaxy S24 Ultra-3.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (25, N'Samsung Galaxy S24 Ultra-1.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (26, N'Samsung Galaxy S24 Ultra-1.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (27, N'Samsung Galaxy S24 Ultra-2.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (28, N'Samsung Galaxy S24 Ultra-3.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (29, N'Samsung Galaxy S24 Ultra-2.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (30, N'Samsung Galaxy S24 Ultra-1.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (31, N'Samsung Galaxy S24 Ultra-2.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (32, N'Samsung Galaxy S24 Ultra-3.webp', 2)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (33, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (34, N'oppo-find-x3-pro-xanh-2.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (35, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (36, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (37, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (38, N'oppo-find-x3-pro-xanh-2.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (39, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (40, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (41, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (42, N'oppo-find-x3-pro-xanh-2.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (43, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (44, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (45, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (46, N'oppo-find-x3-pro-xanh-2.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (47, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (48, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (49, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (50, N'oppo-find-x3-pro-xanh-2.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (51, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (52, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (53, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (54, N'oppo-find-x3-pro-xanh-2.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (55, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (56, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (57, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (58, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (59, N'oppo-find-x3-pro-xanh-2.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (60, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (61, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (62, N'Samsung Galaxy S24 Ultra-1.webp', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (63, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (64, N'oppo-find-x3-pro-xanh-2.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (65, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (66, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (67, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (68, N'oppo-find-x3-pro-xanh-2.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (69, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (70, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (71, N'oppo-find-x3-pro-xanh-2.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (72, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (73, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (74, N'oppo-find-x3-pro-xanh-2.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (75, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (76, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (77, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (78, N'oppo-find-x3-pro-xanh-2.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (79, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (80, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (81, N'oppo-find-x3-pro-xanh-2 - Copy.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (82, N'oppo-find-x3-pro-xanh-3 - Copy.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (83, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (84, N'oppo-find-x3-pro-xanh-2.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (85, N'oppo-find-x3-pro-xanh-3.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (86, N'oppo-find-x3-pro-xanh-1.jpg', 3)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (106, N'iphone15pro-1.png', 5)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (107, N'iphone15pro-2.jpg', 5)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (108, N'iphone15pro3.png', 5)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (109, N'iphone15pro-4.png', 5)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (110, N'iphone15pro-1.png', 5)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (111, N'iphone15pro-1.png', 5)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (112, N'iphone15pro-2.jpg', 5)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (113, N'iphone15pro3.png', 5)
INSERT [dbo].[Images] ([id], [uri], [i_product_id]) VALUES (114, N'iphone15pro-4.png', 5)
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_details] ON 

INSERT [dbo].[Order_details] ([od_id], [od_quantity], [od_product_price], [od_order_id], [od_product_id], [product_image], [product_name], [product_price]) VALUES (2, 1, 1000, 2, 2, NULL, NULL, NULL)
INSERT [dbo].[Order_details] ([od_id], [od_quantity], [od_product_price], [od_order_id], [od_product_id], [product_image], [product_name], [product_price]) VALUES (3, 1, 1260, 3, 5, NULL, NULL, NULL)
INSERT [dbo].[Order_details] ([od_id], [od_quantity], [od_product_price], [od_order_id], [od_product_id], [product_image], [product_name], [product_price]) VALUES (4, 1, 1000, 4, 2, NULL, NULL, NULL)
INSERT [dbo].[Order_details] ([od_id], [od_quantity], [od_product_price], [od_order_id], [od_product_id], [product_image], [product_name], [product_price]) VALUES (5, 1, 1000, 5, 2, NULL, NULL, NULL)
INSERT [dbo].[Order_details] ([od_id], [od_quantity], [od_product_price], [od_order_id], [od_product_id], [product_image], [product_name], [product_price]) VALUES (6, 1, 850, 6, 3, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Order_details] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([order_id], [order_date], [delivery_date], [order_address], [order_phone], [order_quantity], [order_note], [order_status], [order_payment], [order_total_price], [o_account_id], [account_name]) VALUES (1, CAST(N'2024-04-26T20:20:31.0811846' AS DateTime2), CAST(N'2024-04-26T20:48:32.0539842' AS DateTime2), N'Vinh Long', N'0556874699', 1, N'Ship to Vinh Long', N'Canceled', N'Cash on Delivery', 1260, 6, NULL)
INSERT [dbo].[Orders] ([order_id], [order_date], [delivery_date], [order_address], [order_phone], [order_quantity], [order_note], [order_status], [order_payment], [order_total_price], [o_account_id], [account_name]) VALUES (2, CAST(N'2024-04-26T20:34:01.8534714' AS DateTime2), CAST(N'2024-04-26T20:34:54.0386932' AS DateTime2), N'Vinh Long', N'0556874699', 1, N'Ship to Vinh Long', N'Delivering', N'Cash on Delivery', 1000, 6, NULL)
INSERT [dbo].[Orders] ([order_id], [order_date], [delivery_date], [order_address], [order_phone], [order_quantity], [order_note], [order_status], [order_payment], [order_total_price], [o_account_id], [account_name]) VALUES (3, CAST(N'2024-04-27T10:36:16.5801701' AS DateTime2), CAST(N'2024-04-27T10:43:15.7589041' AS DateTime2), N'Can Tho', N'0917951645', 1, N'Ship to Can Tho
', N'Delivering', N'Cash on Delivery', 1260, 3, NULL)
INSERT [dbo].[Orders] ([order_id], [order_date], [delivery_date], [order_address], [order_phone], [order_quantity], [order_note], [order_status], [order_payment], [order_total_price], [o_account_id], [account_name]) VALUES (4, CAST(N'2024-04-27T10:37:08.1983133' AS DateTime2), CAST(N'2024-04-27T10:55:10.1479200' AS DateTime2), N'Kien Giang', N'0925745698', 1, N'Ship to Kien Giang', N'Canceled', N'Cash on Delivery', 1000, 4, NULL)
INSERT [dbo].[Orders] ([order_id], [order_date], [delivery_date], [order_address], [order_phone], [order_quantity], [order_note], [order_status], [order_payment], [order_total_price], [o_account_id], [account_name]) VALUES (5, CAST(N'2024-04-27T10:49:38.7607696' AS DateTime2), CAST(N'2024-04-27T10:49:55.0995171' AS DateTime2), N'Dong Thap', N'0557789547', 1, N'Ship to Dong Thap
', N'Delivering', N'Cash on Delivery', 1000, 7, NULL)
INSERT [dbo].[Orders] ([order_id], [order_date], [delivery_date], [order_address], [order_phone], [order_quantity], [order_note], [order_status], [order_payment], [order_total_price], [o_account_id], [account_name]) VALUES (6, CAST(N'2024-04-27T10:53:18.0287349' AS DateTime2), CAST(N'2024-04-27T10:56:08.1106269' AS DateTime2), N'Dong Thap', N'0557789547', 1, N'Ship to Dong Thap', N'Canceled', N'Cash on Delivery', 850, 7, NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([product_id], [product_name], [product_quantity_stock], [product_original_price], [product_sell_price], [product_description], [product_image], [product_import_date], [product_status], [p_brand_id], [brand_name]) VALUES (2, N'Samsung Galaxy S24 Ultra', 98, 900, 1000, N'Screen Size: 6.8 inches - Chipset: Snapdragon 8 Gen 3 for Galaxy - RAM: 12 GB - Memory: 256 GB - Operating system: Android 14 - Pin: 5000 mAh', N'Samsung Galaxy S24 Ultra-1.webp', CAST(N'2024-04-26T14:30:02.0695976' AS DateTime2), N'Yes', 2, NULL)
INSERT [dbo].[Products] ([product_id], [product_name], [product_quantity_stock], [product_original_price], [product_sell_price], [product_description], [product_image], [product_import_date], [product_status], [p_brand_id], [brand_name]) VALUES (3, N'Oppo Find X3 Pro', 100, 700, 850, N'Screen Size: 6.7 inches - Chipset: Snapdragon 888 RAM: 12 GB - Memory: 256 GB - Operating system: Android 11 - Pin: 4500 mAh', N'oppo-find-x3-pro-4.jpg', CAST(N'2024-04-26T14:47:11.7225208' AS DateTime2), N'Yes', 3, NULL)
INSERT [dbo].[Products] ([product_id], [product_name], [product_quantity_stock], [product_original_price], [product_sell_price], [product_description], [product_image], [product_import_date], [product_status], [p_brand_id], [brand_name]) VALUES (5, N'Iphone 15 Pro', 99, 1000, 1260, N'Screen Size: 6.1 inches - Chipset: Apple A17 Pro 6 cores - RAM: 8 GB - Memory: 128 GB - Operating system: iOS 17 - Pin: 3274 mAh
', N'iphone15pro-1.png', CAST(N'2024-04-27T10:35:11.4248793' AS DateTime2), N'Yes', 1, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
/****** Object:  Index [IX_Cart_details_cd_cart_id]    Script Date: 4/27/2024 2:33:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Cart_details_cd_cart_id] ON [dbo].[Cart_details]
(
	[cd_cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cart_details_cd_product_id]    Script Date: 4/27/2024 2:33:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Cart_details_cd_product_id] ON [dbo].[Cart_details]
(
	[cd_product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Carts_account_id]    Script Date: 4/27/2024 2:33:27 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Carts_account_id] ON [dbo].[Carts]
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Images_i_product_id]    Script Date: 4/27/2024 2:33:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Images_i_product_id] ON [dbo].[Images]
(
	[i_product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Order_details_od_order_id]    Script Date: 4/27/2024 2:33:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Order_details_od_order_id] ON [dbo].[Order_details]
(
	[od_order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Order_details_od_product_id]    Script Date: 4/27/2024 2:33:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Order_details_od_product_id] ON [dbo].[Order_details]
(
	[od_product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_o_account_id]    Script Date: 4/27/2024 2:33:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_o_account_id] ON [dbo].[Orders]
(
	[o_account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_p_brand_id]    Script Date: 4/27/2024 2:33:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_p_brand_id] ON [dbo].[Products]
(
	[p_brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cart_details]  WITH CHECK ADD  CONSTRAINT [FK_Cart_details_Carts_cd_cart_id] FOREIGN KEY([cd_cart_id])
REFERENCES [dbo].[Carts] ([cart_id])
GO
ALTER TABLE [dbo].[Cart_details] CHECK CONSTRAINT [FK_Cart_details_Carts_cd_cart_id]
GO
ALTER TABLE [dbo].[Cart_details]  WITH CHECK ADD  CONSTRAINT [FK_Cart_details_Products_cd_product_id] FOREIGN KEY([cd_product_id])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Cart_details] CHECK CONSTRAINT [FK_Cart_details_Products_cd_product_id]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Accounts_account_id] FOREIGN KEY([account_id])
REFERENCES [dbo].[Accounts] ([account_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Accounts_account_id]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Products_i_product_id] FOREIGN KEY([i_product_id])
REFERENCES [dbo].[Products] ([product_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Products_i_product_id]
GO
ALTER TABLE [dbo].[Order_details]  WITH CHECK ADD  CONSTRAINT [FK_Order_details_Orders_od_order_id] FOREIGN KEY([od_order_id])
REFERENCES [dbo].[Orders] ([order_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order_details] CHECK CONSTRAINT [FK_Order_details_Orders_od_order_id]
GO
ALTER TABLE [dbo].[Order_details]  WITH CHECK ADD  CONSTRAINT [FK_Order_details_Products_od_product_id] FOREIGN KEY([od_product_id])
REFERENCES [dbo].[Products] ([product_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order_details] CHECK CONSTRAINT [FK_Order_details_Products_od_product_id]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts_o_account_id] FOREIGN KEY([o_account_id])
REFERENCES [dbo].[Accounts] ([account_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts_o_account_id]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_p_brand_id] FOREIGN KEY([p_brand_id])
REFERENCES [dbo].[Brands] ([brand_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_p_brand_id]
GO
USE [master]
GO
ALTER DATABASE [Apple-T_Store] SET  READ_WRITE 
GO
