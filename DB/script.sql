USE [Team5_AD]
GO
ALTER TABLE [dbo].[StockCard] DROP CONSTRAINT [FK_StockCard_Inventory]
GO
ALTER TABLE [dbo].[ShortageDetails] DROP CONSTRAINT [FK_ShortageDetails_Shortage]
GO
ALTER TABLE [dbo].[ShortageDetails] DROP CONSTRAINT [FK_ShortageDetails_Inventory]
GO
ALTER TABLE [dbo].[Shortage] DROP CONSTRAINT [FK_Shortage_Department]
GO
ALTER TABLE [dbo].[Retrieval] DROP CONSTRAINT [FK_Retrieval_Inventory]
GO
ALTER TABLE [dbo].[Retrieval] DROP CONSTRAINT [FK_Retrieval_Department]
GO
ALTER TABLE [dbo].[RequisitionDetails] DROP CONSTRAINT [FK_RequisitionDetails_Requisition]
GO
ALTER TABLE [dbo].[RequisitionDetails] DROP CONSTRAINT [FK_RequisitionDetails_Inventory]
GO
ALTER TABLE [dbo].[Requisition] DROP CONSTRAINT [FK_Requisition_User]
GO
ALTER TABLE [dbo].[Requisition] DROP CONSTRAINT [FK_Requisition_Department]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Inventory]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Supplier]
GO
ALTER TABLE [dbo].[ItemPrice] DROP CONSTRAINT [FK_ItemPrice_Supplier]
GO
ALTER TABLE [dbo].[ItemPrice] DROP CONSTRAINT [FK_ItemPrice_Inventory]
GO
ALTER TABLE [dbo].[Inventory] DROP CONSTRAINT [FK_Inventory_Category]
GO
ALTER TABLE [dbo].[DiscrepancyDetails] DROP CONSTRAINT [FK_DiscrepancyDetails_Inventory]
GO
ALTER TABLE [dbo].[DiscrepancyDetails] DROP CONSTRAINT [FK_DiscrepancyDetails_Discrepancy]
GO
ALTER TABLE [dbo].[Discrepancy] DROP CONSTRAINT [FK_Discrepancy_User]
GO
ALTER TABLE [dbo].[DisbursementDetails] DROP CONSTRAINT [FK_DisbursementDetails_Inventory]
GO
ALTER TABLE [dbo].[DisbursementDetails] DROP CONSTRAINT [FK_DisbursementDetails_DisbursementDetails]
GO
ALTER TABLE [dbo].[Disbursement] DROP CONSTRAINT [FK_Disbursement_User]
GO
ALTER TABLE [dbo].[Disbursement] DROP CONSTRAINT [FK_Disbursement_Department]
GO
ALTER TABLE [dbo].[Department] DROP CONSTRAINT [FK_Department_CollectionPoint]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[Supplier]
GO
/****** Object:  Table [dbo].[StockCard]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[StockCard]
GO
/****** Object:  Table [dbo].[ShortageDetails]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[ShortageDetails]
GO
/****** Object:  Table [dbo].[Shortage]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[Shortage]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[Retrieval]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[Retrieval]
GO
/****** Object:  Table [dbo].[RequisitionDetails]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[RequisitionDetails]
GO
/****** Object:  Table [dbo].[Requisition]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[Requisition]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[OrderDetails]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[ItemPrice]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[ItemPrice]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[Inventory]
GO
/****** Object:  Table [dbo].[DiscrepancyDetails]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[DiscrepancyDetails]
GO
/****** Object:  Table [dbo].[Discrepancy]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[Discrepancy]
GO
/****** Object:  Table [dbo].[DisbursementDetails]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[DisbursementDetails]
GO
/****** Object:  Table [dbo].[Disbursement]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[Disbursement]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[Department]
GO
/****** Object:  Table [dbo].[CollectionPoint]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[CollectionPoint]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2016/9/9 17:28:50 ******/
DROP TABLE [dbo].[Category]
GO
USE [master]
GO
/****** Object:  Database [Team5_AD]    Script Date: 2016/9/9 17:28:50 ******/
DROP DATABASE [Team5_AD]
GO
/****** Object:  Database [Team5_AD]    Script Date: 2016/9/9 17:28:50 ******/
CREATE DATABASE [Team5_AD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Team5_AD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Team5_AD.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Team5_AD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Team5_AD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Team5_AD] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Team5_AD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Team5_AD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Team5_AD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Team5_AD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Team5_AD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Team5_AD] SET ARITHABORT OFF 
GO
ALTER DATABASE [Team5_AD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Team5_AD] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Team5_AD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Team5_AD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Team5_AD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Team5_AD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Team5_AD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Team5_AD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Team5_AD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Team5_AD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Team5_AD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Team5_AD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Team5_AD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Team5_AD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Team5_AD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Team5_AD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Team5_AD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Team5_AD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Team5_AD] SET RECOVERY FULL 
GO
ALTER DATABASE [Team5_AD] SET  MULTI_USER 
GO
ALTER DATABASE [Team5_AD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Team5_AD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Team5_AD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Team5_AD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Team5_AD', N'ON'
GO
USE [Team5_AD]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [varchar](20) NOT NULL,
	[imgUrl] [varchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CollectionPoint]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CollectionPoint](
	[collectionPointID] [int] IDENTITY(1,1) NOT NULL,
	[collectionPointName] [varchar](30) NOT NULL,
	[collectionTime] [varchar](10) NOT NULL,
 CONSTRAINT [PK_CollectionPoint] PRIMARY KEY CLUSTERED 
(
	[collectionPointID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[departmentCode] [varchar](10) NOT NULL,
	[name] [varchar](25) NOT NULL,
	[contactName] [varchar](25) NOT NULL,
	[phoneNo] [varchar](10) NOT NULL,
	[fax] [varchar](10) NULL,
	[headName] [varchar](25) NOT NULL,
	[collectionPointID] [int] NOT NULL,
	[representativeName] [varchar](25) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[departmentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Disbursement]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Disbursement](
	[disbursementID] [varchar](10) NOT NULL,
	[userID] [int] NOT NULL,
	[departmentCode] [varchar](10) NOT NULL,
	[date] [datetime] NOT NULL,
	[status] [varchar](10) NULL,
 CONSTRAINT [PK_Disbursement] PRIMARY KEY CLUSTERED 
(
	[disbursementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DisbursementDetails]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DisbursementDetails](
	[disbursementDetailsID] [varchar](10) NOT NULL,
	[disbursementID] [varchar](10) NOT NULL,
	[inventoryCode] [varchar](10) NOT NULL,
	[actualQuantity] [int] NOT NULL,
	[neededQuantity] [int] NOT NULL,
	[description] [varchar](25) NULL,
 CONSTRAINT [PK_DisbursementDetails] PRIMARY KEY CLUSTERED 
(
	[disbursementDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Discrepancy]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Discrepancy](
	[discrepancyID] [varchar](10) NOT NULL,
	[date] [datetime] NOT NULL,
	[status] [varchar](10) NULL,
	[userID] [int] NOT NULL,
 CONSTRAINT [PK_Discrepancy] PRIMARY KEY CLUSTERED 
(
	[discrepancyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DiscrepancyDetails]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiscrepancyDetails](
	[discrepancyDetailsID] [varchar](10) NOT NULL,
	[discrepancyID] [varchar](10) NOT NULL,
	[inventoryCode] [varchar](10) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[totalAmount] [float] NOT NULL,
	[description] [varchar](25) NULL,
 CONSTRAINT [PK_DiscrepancyDetails] PRIMARY KEY CLUSTERED 
(
	[discrepancyDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventory](
	[inventoryCode] [varchar](10) NOT NULL,
	[categoryID] [int] NOT NULL,
	[description] [varchar](200) NOT NULL,
	[reorderLevel] [int] NOT NULL,
	[reorderQuality] [int] NOT NULL,
	[unitOfMeasure] [varchar](10) NOT NULL,
	[location] [varchar](20) NOT NULL,
	[quantityInHand] [int] NOT NULL,
	[image] [varchar](max) NULL,
	[price] [float] NOT NULL,
	[status] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[inventoryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemPrice]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemPrice](
	[itemPriceID] [int] IDENTITY(1,1) NOT NULL,
	[inventoryCode] [varchar](10) NOT NULL,
	[supplierCode] [varchar](10) NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_ItemPrice] PRIMARY KEY CLUSTERED 
(
	[itemPriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[orderID] [varchar](10) NOT NULL,
	[supplierCode] [varchar](10) NOT NULL,
	[orderDate] [datetime] NOT NULL,
	[deliveryDate] [datetime] NULL,
	[expectedDate] [datetime] NOT NULL,
	[status] [varchar](10) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[orderDetailsID] [varchar](10) NOT NULL,
	[orderID] [varchar](10) NOT NULL,
	[inventoryCode] [varchar](10) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[totalAmount] [float] NOT NULL,
	[description] [varchar](25) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[orderDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Requisition]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Requisition](
	[requisitionID] [varchar](10) NOT NULL,
	[departmentCode] [varchar](10) NOT NULL,
	[userID] [int] NOT NULL,
	[date] [datetime] NULL,
	[status] [varchar](10) NOT NULL,
	[type] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Requisition] PRIMARY KEY CLUSTERED 
(
	[requisitionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RequisitionDetails]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RequisitionDetails](
	[requisitionDetailsID] [varchar](10) NOT NULL,
	[requisitionID] [varchar](10) NOT NULL,
	[inventoryCode] [varchar](10) NOT NULL,
	[quantity] [int] NOT NULL,
	[description] [varchar](25) NULL,
 CONSTRAINT [PK_RequisitionDetails] PRIMARY KEY CLUSTERED 
(
	[requisitionDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Retrieval]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Retrieval](
	[retrievalID] [varchar](10) NOT NULL,
	[departmentCode] [varchar](10) NOT NULL,
	[inventoryCode] [varchar](10) NOT NULL,
	[neededQuantity] [int] NOT NULL,
	[actualQuantity] [int] NOT NULL,
	[status] [varchar](10) NULL,
 CONSTRAINT [PK_Retrieval] PRIMARY KEY CLUSTERED 
(
	[retrievalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[roleID] [int] NOT NULL,
	[name] [varchar](25) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shortage]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shortage](
	[shortageID] [varchar](10) NOT NULL,
	[departmentCode] [varchar](10) NOT NULL,
	[date] [datetime] NOT NULL,
	[status] [varchar](10) NULL,
 CONSTRAINT [PK_Shortage] PRIMARY KEY CLUSTERED 
(
	[shortageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShortageDetails]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShortageDetails](
	[shortageDetailsID] [varchar](10) NOT NULL,
	[shortageID] [varchar](10) NOT NULL,
	[inventoryCode] [varchar](10) NOT NULL,
	[quantity] [int] NOT NULL,
	[reason] [varchar](50) NULL,
 CONSTRAINT [PK_ShortageDetails] PRIMARY KEY CLUSTERED 
(
	[shortageDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockCard]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockCard](
	[stockCardID] [varchar](10) NOT NULL,
	[inventoryCode] [varchar](10) NOT NULL,
	[transactionDate] [datetime] NOT NULL,
	[issuedType] [varchar](10) NOT NULL,
	[quantity] [int] NOT NULL,
	[balance] [int] NOT NULL,
 CONSTRAINT [PK_StockCard] PRIMARY KEY CLUSTERED 
(
	[stockCardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[supplierCode] [varchar](10) NOT NULL,
	[name] [varchar](25) NOT NULL,
	[contactName] [varchar](25) NOT NULL,
	[phoneNo] [varchar](10) NOT NULL,
	[fax] [varchar](10) NULL,
	[address] [varchar](100) NOT NULL,
	[gstRegistrationNo] [varchar](25) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[supplierCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 2016/9/9 17:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](25) NOT NULL,
	[employeeID] [varchar](10) NOT NULL,
	[email] [varchar](25) NULL,
	[password] [varchar](25) NOT NULL,
	[departmentCode] [varchar](10) NULL,
	[roleID] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (1, N'clip', N'/Image/Category/clip.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (2, N'ruler', N'/Image/Category/ruler.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (3, N'scissors', N'/Image/Category/scissors.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (4, N'tape', N'/Image/Category/tape.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (5, N'sharpener ', N'/Image/Category/sharpener.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (6, N'shorthand ', N'/Image/Category/shorthand.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (7, N'stapler', N'/Image/Category/stapler.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (8, N'tacks   ', N'/Image/Category/tacks.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (9, N'tparency', N'/Image/Category/tparency.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (10, N'tray', N'/Image/Category/tray.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (11, N'envelope', N'/Image/Category/envelope.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (12, N'eraser', N'/Image/Category/eraser.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (13, N'exercise', N'/Image/Category/exercise.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (14, N'file', N'/Image/Category/file.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (15, N'pen', N'/Image/Category/pen.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (16, N'puncher', N'/Image/Category/puncher.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (17, N'pad', N'/Image/Category/pad.png')
INSERT [dbo].[Category] ([categoryID], [categoryName], [imgUrl]) VALUES (18, N'paper', N'/Image/Category/paper.png')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[CollectionPoint] ON 

INSERT [dbo].[CollectionPoint] ([collectionPointID], [collectionPointName], [collectionTime]) VALUES (1, N'Stationery Store', N'9:30am')
INSERT [dbo].[CollectionPoint] ([collectionPointID], [collectionPointName], [collectionTime]) VALUES (2, N'Management School', N'11:00am')
INSERT [dbo].[CollectionPoint] ([collectionPointID], [collectionPointName], [collectionTime]) VALUES (3, N'Medical School', N'9:30am')
INSERT [dbo].[CollectionPoint] ([collectionPointID], [collectionPointName], [collectionTime]) VALUES (4, N'Engineering School', N'11:00am')
INSERT [dbo].[CollectionPoint] ([collectionPointID], [collectionPointName], [collectionTime]) VALUES (5, N'Science School', N'9:30am')
INSERT [dbo].[CollectionPoint] ([collectionPointID], [collectionPointName], [collectionTime]) VALUES (6, N'University Hospital', N'11:00am')
SET IDENTITY_INSERT [dbo].[CollectionPoint] OFF
INSERT [dbo].[Department] ([departmentCode], [name], [contactName], [phoneNo], [fax], [headName], [collectionPointID], [representativeName]) VALUES (N'COMM', N'CommerceDept        ', N'Mr_Mohd_Azman            ', N'8741284', N'8921256', N'Dr_Chia_Leow_Bee         ', 2, NULL)
INSERT [dbo].[Department] ([departmentCode], [name], [contactName], [phoneNo], [fax], [headName], [collectionPointID], [representativeName]) VALUES (N'CPSC', N'ComputerScience     ', N'Mr_Wee_Kian_Fatt         ', N'8901235', N'8921457', N'Dr_Soh_Kian_Wee          ', 3, NULL)
INSERT [dbo].[Department] ([departmentCode], [name], [contactName], [phoneNo], [fax], [headName], [collectionPointID], [representativeName]) VALUES (N'ENGL', N'EnglishDept         ', N'Mrs_Pamela_Kow           ', N'8742234', N'8921456', N'Prof_Ezra_Pound          ', 4, NULL)
INSERT [dbo].[Department] ([departmentCode], [name], [contactName], [phoneNo], [fax], [headName], [collectionPointID], [representativeName]) VALUES (N'REGR', N'RegistrarDept       ', N'Ms_Helen_Ho              ', N'8901266', N'8921465', N'Mrs_Low_Kway_Boo         ', 5, NULL)
INSERT [dbo].[Department] ([departmentCode], [name], [contactName], [phoneNo], [fax], [headName], [collectionPointID], [representativeName]) VALUES (N'ZOOL', N'ZoologyDept         ', N'Mr_Peter_Tan_Ah_Meng     ', N'8901279', N'8921466', N'Prof_Tan                 ', 6, NULL)
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'C001', 1, N'Clips Double 1"
   ', 50, 30, N'Dozen', N'A1', 78, NULL, 2, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'C002', 1, N'Clips Double 2"
   ', 50, 30, N'Dozen', N'A1', 76, NULL, 3, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'C003', 1, N'Clips Double 3/4"
 ', 50, 30, N'Dozen', N'A1', 65, NULL, 1.5, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'C004', 1, N'Clips Paper Large
 ', 50, 30, N'Box  ', N'A1', 53, NULL, 1.5, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'C005', 1, N'Clips Paper Medium', 50, 30, N'Box', N'A1', 72, NULL, 1, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'C006', 1, N'Clips Paper Small
 ', 50, 30, N'Box  ', N'A1', 66, NULL, 0.5, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E001', 2, N'Envelope Brown (3"x6', 600, 400, N'Each ', N'A2', 783, NULL, 0.2, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E002', 2, N'Envelope Brown (3"x6', 600, 400, N'Each ', N'A2', 675, NULL, 0.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E003', 2, N'Envelope Brown (5"x7', 600, 400, N'Each ', N'A2', 493, NULL, 0.6, N'O')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E004', 2, N'Envelope Brown (5"x7', 600, 400, N'Each ', N'A2', 622, NULL, 0.8, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E005', 2, N'Envelope White (3"x6', 600, 400, N'Each ', N'A2', 891, NULL, 0.2, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E006', 2, N'Envelope White (3"x6', 600, 400, N'Each ', N'A2', 713, NULL, 0.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E007', 2, N'Envelope White (5"x7', 600, 400, N'Each ', N'A2', 833, NULL, 0.6, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E008', 2, N'Envelope White (5"x7', 600, 400, N'Each ', N'A2', 919, NULL, 0.8, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E020', 3, N'Eraser (hard)
     ', 50, 20, N'Each ', N'B1', 57, NULL, 0.2, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E021', 3, N'Eraser (soft)
     ', 50, 20, N'Each ', N'B1', 44, NULL, 0.15, N'S')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E030', 4, N'Exercise Book (100 p', 100, 50, N'Each ', N'A3', 123, NULL, 0.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E031', 4, N'Exercise Book (120 p', 100, 50, N'Each ', N'A3', 145, NULL, 0.5, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E032', 4, N'Exercise Book A4 Har', 100, 50, N'Each ', N'A3', 137, NULL, 0.6, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E033', 4, N'Exercise Book A4 Har', 100, 50, N'Each ', N'A3', 142, NULL, 1.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E034', 4, N'Exercise Book A4 Har', 100, 50, N'Each ', N'A3', 125, NULL, 1.8, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E035', 4, N'Exercise Book Hardco', 100, 50, N'Each ', N'A3', 98, NULL, 1, N'O')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'E036', 4, N'Exercise Book Hardco', 100, 50, N'Each ', N'A3', 88, NULL, 1.5, N'O')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'F020', 5, N'File Separator
    ', 100, 50, N'Set  ', N'B2', 109, NULL, 1.5, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'F021', 5, N'File-Blue Plain
   ', 200, 100, N'Each ', N'B2', 212, NULL, 0.1, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'F022', 5, N'File-Blue with Logo', 200, 100, N'Each', N'B2', 245, NULL, 0.15, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'F023', 5, N'File-Brown w/o Logo', 200, 150, N'Each', N'B2', 278, NULL, 0.1, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'F024', 5, N'File-Brown with Logo', 200, 150, N'Each ', N'B2', 307, NULL, 0.15, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'F031', 5, N'Floder Plastic Blue', 200, 150, N'Each', N'B2', 289, NULL, 0.15, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'F032', 5, N'Folder Plastic Clear', 200, 150, N'Each ', N'B2', 204, NULL, 0.1, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'F033', 5, N'Folder Plastic Green', 200, 150, N'Each ', N'B2', 227, NULL, 0.15, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'F034', 5, N'Folder Plastic Pink', 200, 150, N'Each', N'B2', 213, NULL, 0.15, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'F035', 5, N'Folder Plastic Yello', 200, 150, N'Each ', N'B2', 278, NULL, 0.15, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'H011', 6, N'Highlighter Blue
  ', 100, 80, N'Box  ', N'C1', 114, NULL, 1.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'H012', 6, N'Highlighter Green
 ', 100, 80, N'Box  ', N'C1', 165, NULL, 1.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'H013', 6, N'Highlighter Pink
  ', 100, 80, N'Box  ', N'C1', 103, NULL, 1.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'H014', 6, N'Highlighter Yellow
', 100, 80, N'Box  ', N'C1', 89, NULL, 1.4, N'O')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'H031', 7, N'Hole Puncher 2 holes', 50, 20, N'Each ', N'C2', 64, NULL, 2.5, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'H032', 7, N'Hole Puncher 3 holes', 50, 20, N'Each ', N'C2', 68, NULL, 3.5, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'H033', 7, N'Hole Puncher Adjusta', 50, 20, N'Each ', N'C2', 46, NULL, 4, N'S')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P010', 8, N'Pad Postit Memo 1"x2', 100, 60, N'Packet    ', N'B3', 143, NULL, 18.8, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P011', 8, N'Pad Postit Memo 1/2"', 100, 60, N'Packet    ', N'B3', 129, NULL, 15.5, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P012', 8, N'Pad Postit Memo 1/2"', 100, 60, N'Packet    ', N'B3', 133, NULL, 17.5, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P013', 8, N'Pad Postit Memo 2"x3', 100, 60, N'Packet    ', N'B3', 104, NULL, 18, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P014', 8, N'Pad Postit Memo 2"x4', 100, 60, N'Packet    ', N'B3', 78, NULL, 19.5, N'O')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P015', 8, N'Pad Postit Memo 2"x4', 100, 60, N'Packet    ', N'B3', 154, NULL, 20, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P016', 8, N'Pad Postit Memo 3/4"', 100, 60, N'Packet    ', N'B3', 121, NULL, 13, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P020', 9, N'Paper Photostat A3
', 500, 500, N'Box       ', N'A4', 718, NULL, 38, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P021', 9, N'Paper Photostat A4
', 500, 500, N'Box       ', N'A4', 532, NULL, 23, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P030', 6, N'Pen Ballpoint Black', 100, 50, N'Dozen', N'C3', 107, NULL, 14.3, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P031', 6, N'Pen Ballpoint Blue
', 100, 50, N'Dozen     ', N'C3', 132, NULL, 14.3, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P032', 6, N'Pen Ballpoint Red
 ', 100, 50, N'Dozen     ', N'C3', 108, NULL, 14.3, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P033', 6, N'Pen Felt Tip Black
', 100, 50, N'Dozen     ', N'C3', 91, NULL, 14.3, N'S')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P034', 6, N'Pen Felt Tip Blue
 ', 100, 50, N'Dozen     ', N'C3', 97, NULL, 14.3, N'S')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P035', 6, N'Pen Felt Tip Red
  ', 100, 50, N'Dozen     ', N'C3', 104, NULL, 14.3, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P036', 6, N'Pen Transparency Per', 100, 50, N'Packet    ', N'C3', 129, NULL, 18.8, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P037', 6, N'Pen Transparency Sol', 100, 50, N'Packet    ', N'C3', 123, NULL, 17.8, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P038', 6, N'Pen Whiteboard Marke', 100, 50, N'Box       ', N'C3', 111, NULL, 28.8, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P039', 6, N'Pen Whiteboard Marke', 100, 50, N'Box       ', N'C3', 109, NULL, 28.8, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P040', 6, N'Pen Whiteboard Marke', 100, 50, N'Box       ', N'C3', 147, NULL, 28.8, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P041', 6, N'Pen Whiteboard Marke', 100, 50, N'Box       ', N'C3', 128, NULL, 28.8, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P042', 6, N'Pencil 2B
         ', 100, 50, N'Dozen     ', N'C3', 134, NULL, 10, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P043', 6, N'Pencil 2B with Erase', 100, 50, N'Dozen     ', N'C3', 125, NULL, 10, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P044', 6, N'Pencil 4H 
        ', 100, 50, N'Dozen     ', N'C3', 108, NULL, 10, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P045', 6, N'Pencil B
          ', 100, 50, N'Dozen     ', N'C3', 117, NULL, 10, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'P046', 6, N'Pencil B with Eraser', 100, 50, N'Dozen     ', N'C3', 88, NULL, 10, N'O')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'R001', 10, N'Ruler 6"
          ', 50, 20, N'Dozen     ', N'B4', 69, NULL, 1.2, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'R002', 10, N'Ruler 12"
         ', 50, 20, N'Dozen     ', N'B4', 57, NULL, 2, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'S010', 14, N'Shorthand Book (100 ', 100, 80, N'Each      ', N'C4', 165, NULL, 0.5, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'S011', 14, N'Shorthand Book (120 ', 100, 80, N'Each      ', N'C4', 153, NULL, 0.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'S012', 14, N'Shorthand Book (80 p', 100, 80, N'Each      ', N'C4', 127, NULL, 0.3, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'S020', 15, N'Stapler No. 28
    ', 50, 20, N'Each      ', N'B5', 63, NULL, 1.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'S021', 15, N'Stapler No. 36
    ', 50, 20, N'Each      ', N'B5', 62, NULL, 1.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'S022', 15, N'Stapler No. 28
    ', 50, 20, N'Box       ', N'B5', 59, NULL, 1.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'S023', 15, N'Stapler No. 36
    ', 50, 20, N'Box       ', N'B5', 55, NULL, 1.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'S040', 12, N'Scotch Tape
       ', 50, 20, N'Each      ', N'B4', 56, NULL, 2, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'S041', 12, N'Scotch Tape Dispense', 50, 20, N'Each      ', N'B4', 51, NULL, 2, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'S100', 11, N'Scissors
          ', 50, 20, N'Each      ', N'B4', 45, NULL, 2, N'S')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'S101', 14, N'Sharpener
         ', 50, 20, N'Each      ', N'C4', 43, NULL, 0.4, N'O')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'T001', 16, N'Thumb Tacks Large
 ', 10, 10, N'Box       ', N'B5', 12, NULL, 0.8, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'T002', 16, N'Thumb Tacks Medium
', 10, 10, N'Box       ', N'B5', 13, NULL, 0.6, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'T003', 16, N'Thumb Tacks Small
 ', 10, 10, N'Box       ', N'B5', 9, NULL, 0.4, N'S')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'T020', 17, N'Transparency Blue
 ', 100, 200, N'Box       ', N'C5', 145, NULL, 2.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'T021', 17, N'Transparency Clear
', 500, 400, N'Box       ', N'C5', 672, NULL, 2.2, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'T022', 17, N'Transparency Green
', 100, 200, N'Box       ', N'C5', 201, NULL, 2.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'T023', 17, N'Transparency Red
  ', 100, 200, N'Box       ', N'C5', 178, NULL, 2.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'T024', 17, N'Transparency Reverse', 100, 200, N'Box       ', N'C5', 169, NULL, 2.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'T025', 17, N'Transparency Cover 3', 500, 400, N'Box       ', N'C5', 872, NULL, 2.4, N'N')
INSERT [dbo].[Inventory] ([inventoryCode], [categoryID], [description], [reorderLevel], [reorderQuality], [unitOfMeasure], [location], [quantityInHand], [image], [price], [status]) VALUES (N'T100', 18, N'Trays In/Out
      ', 20, 10, N'Set       ', N'C5', 26, NULL, 15.8, N'N')
SET IDENTITY_INSERT [dbo].[ItemPrice] ON 

INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (154, N'C001', N'2', 2.2)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (155, N'C002', N'2', 3.3)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (156, N'C003', N'2', 1.65)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (157, N'C004', N'2', 1.65)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (158, N'C005', N'2', 1.1)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (159, N'C006', N'2', 0.55)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (160, N'E001', N'2', 0.22)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (161, N'E002', N'2', 0.44)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (162, N'E003', N'2', 0.66)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (163, N'E004', N'2', 0.88)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (164, N'E005', N'2', 0.22)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (165, N'E006', N'2', 0.44)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (166, N'E007', N'2', 0.66)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (167, N'E008', N'2', 0.88)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (168, N'E020', N'2', 0.22)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (169, N'E021', N'2', 0.17)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (170, N'E030', N'2', 0.44)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (171, N'E031', N'2', 0.55)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (172, N'E032', N'2', 0.66)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (173, N'E033', N'2', 1.54)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (174, N'E034', N'2', 1.98)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (175, N'E035', N'2', 1.1)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (176, N'E036', N'2', 1.65)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (177, N'F020', N'2', 1.65)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (178, N'F021', N'2', 0.11)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (179, N'F022', N'2', 0.17)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (180, N'F023', N'2', 0.11)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (181, N'F024', N'2', 0.17)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (182, N'F031', N'2', 0.17)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (183, N'F032', N'2', 0.11)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (184, N'F033', N'2', 0.17)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (185, N'F034', N'2', 0.17)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (186, N'F035', N'2', 0.17)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (187, N'H011', N'2', 1.54)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (188, N'H012', N'2', 1.54)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (189, N'H013', N'2', 1.54)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (190, N'H014', N'2', 1.54)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (191, N'H031', N'2', 2.75)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (192, N'H032', N'2', 3.85)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (193, N'H033', N'2', 4.4)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (194, N'P010', N'2', 20.68)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (195, N'P011', N'2', 17.05)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (196, N'P012', N'2', 19.25)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (197, N'P013', N'2', 19.8)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (198, N'P014', N'2', 21.45)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (199, N'P015', N'2', 22)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (200, N'P016', N'2', 14.3)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (201, N'P020', N'2', 41.8)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (202, N'P021', N'2', 25.3)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (203, N'P030', N'2', 15.73)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (204, N'P031', N'2', 15.73)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (205, N'P032', N'2', 15.73)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (206, N'P033', N'2', 0.11)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (207, N'P034', N'2', 0.17)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (208, N'P035', N'2', 0.17)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (209, N'P036', N'2', 0.11)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (210, N'P037', N'2', 19.58)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (211, N'P038', N'2', 31.68)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (212, N'P039', N'2', 31.68)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (213, N'P040', N'2', 31.68)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (214, N'P041', N'2', 31.68)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (215, N'P042', N'2', 11)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (216, N'P043', N'2', 11)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (217, N'P044', N'2', 11)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (218, N'P045', N'2', 11)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (219, N'P046', N'2', 11)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (220, N'R002', N'2', 2.2)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (221, N'R001', N'2', 1.32)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (222, N'S100', N'2', 2.2)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (223, N'S040', N'2', 2.2)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (224, N'S041', N'2', 4.4)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (225, N'S101', N'2', 0.44)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (226, N'S010', N'2', 0.55)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (227, N'S011', N'2', 0.44)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (228, N'S012', N'2', 0.33)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (229, N'S020', N'2', 1.54)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (230, N'S021', N'2', 1.54)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (231, N'S022', N'2', 1.54)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (232, N'S023', N'2', 1.54)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (233, N'T001', N'2', 0.88)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (234, N'T002', N'2', 0.66)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (235, N'T003', N'2', 0.44)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (236, N'T020', N'2', 19.58)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (237, N'T021', N'2', 31.68)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (238, N'T022', N'2', 31.68)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (239, N'T023', N'2', 31.68)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (240, N'T024', N'2', 31.68)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (241, N'T025', N'2', 11)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (242, N'T100', N'2', 11)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (243, N'C001', N'3', 2.64)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (244, N'C002', N'3', 3.96)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (245, N'C003', N'3', 1.98)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (246, N'C004', N'3', 1.98)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (247, N'C005', N'3', 1.32)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (248, N'C006', N'3', 0.66)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (249, N'E001', N'3', 0.26)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (250, N'E002', N'3', 0.53)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (251, N'E003', N'3', 0.79)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (252, N'E004', N'3', 1.6)
GO
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (253, N'E005', N'3', 0.26)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (254, N'E006', N'3', 0.53)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (255, N'E007', N'3', 0.79)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (256, N'E008', N'3', 1.6)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (257, N'E020', N'3', 0.26)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (258, N'E021', N'3', 0.2)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (259, N'E030', N'3', 0.53)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (260, N'E031', N'3', 0.66)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (261, N'E032', N'3', 0.79)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (262, N'E033', N'3', 1.85)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (263, N'E034', N'3', 2.38)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (264, N'E035', N'3', 1.32)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (265, N'E036', N'3', 1.98)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (266, N'F020', N'3', 1.98)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (267, N'F021', N'3', 0.13)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (268, N'F022', N'3', 0.2)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (269, N'F023', N'3', 0.13)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (270, N'F024', N'3', 0.2)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (271, N'F031', N'3', 0.2)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (272, N'F032', N'3', 0.13)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (273, N'F033', N'3', 0.2)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (274, N'F034', N'3', 0.2)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (275, N'F035', N'3', 0.2)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (276, N'H011', N'3', 1.85)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (277, N'H012', N'3', 1.85)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (278, N'H013', N'3', 1.85)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (279, N'H014', N'3', 1.85)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (280, N'H031', N'3', 3.3)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (281, N'H032', N'3', 4.62)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (282, N'H033', N'3', 5.28)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (283, N'P010', N'3', 24.82)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (284, N'P011', N'3', 20.46)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (285, N'P012', N'3', 23.1)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (286, N'P013', N'3', 23.76)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (287, N'P014', N'3', 25.74)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (288, N'P015', N'3', 26.4)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (289, N'P016', N'3', 17.16)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (290, N'P020', N'3', 50.16)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (291, N'P021', N'3', 30.36)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (292, N'P030', N'3', 18.88)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (293, N'P031', N'3', 18.88)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (294, N'P032', N'3', 18.88)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (295, N'P033', N'3', 0.13)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (296, N'P034', N'3', 0.2)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (297, N'P035', N'3', 0.2)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (298, N'P036', N'3', 0.13)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (299, N'P037', N'3', 21.36)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (300, N'P038', N'3', 34.56)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (301, N'P039', N'3', 34.56)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (302, N'P040', N'3', 34.56)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (303, N'P041', N'3', 34.56)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (304, N'P042', N'3', 12)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (305, N'P043', N'3', 12)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (306, N'P044', N'3', 12)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (307, N'P045', N'3', 12)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (308, N'P046', N'3', 12)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (309, N'R002', N'3', 2.4)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (310, N'R001', N'3', 1.44)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (311, N'S100', N'3', 2.4)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (312, N'S040', N'3', 2.4)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (313, N'S041', N'3', 4.8)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (314, N'S101', N'3', 0.48)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (315, N'S010', N'3', 0.6)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (316, N'S011', N'3', 0.48)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (317, N'S012', N'3', 0.36)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (318, N'S020', N'3', 1.68)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (319, N'S021', N'3', 1.68)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (320, N'S022', N'3', 1.68)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (321, N'S023', N'3', 1.68)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (322, N'T001', N'3', 0.96)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (323, N'T002', N'3', 0.72)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (324, N'T003', N'3', 0.48)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (325, N'T020', N'3', 21.36)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (326, N'T021', N'3', 34.56)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (327, N'T022', N'3', 34.56)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (328, N'T023', N'3', 34.56)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (329, N'T024', N'3', 34.56)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (330, N'T025', N'3', 12)
INSERT [dbo].[ItemPrice] ([itemPriceID], [inventoryCode], [supplierCode], [price]) VALUES (331, N'T100', N'3', 12)
SET IDENTITY_INSERT [dbo].[ItemPrice] OFF
INSERT [dbo].[Role] ([roleID], [name]) VALUES (1, N'DepartmentEmployee  ')
INSERT [dbo].[Role] ([roleID], [name]) VALUES (2, N'StoreClerk          ')
INSERT [dbo].[Role] ([roleID], [name]) VALUES (3, N'StoreManager        ')
INSERT [dbo].[Role] ([roleID], [name]) VALUES (4, N'DepartmentManager   ')
INSERT [dbo].[Supplier] ([supplierCode], [name], [contactName], [phoneNo], [fax], [address], [gstRegistrationNo]) VALUES (N'1', N'ALPHA Office Supplies    ', N'Ms Irene Tan             ', N'4619928', N'4612238', N'Blk 1128, Ang Mo Kio Industrial Park
	#02-1108 Ang Mo Kio Street 62
 Singapore 622262
           ', N' MR-8500440-2  ')
INSERT [dbo].[Supplier] ([supplierCode], [name], [contactName], [phoneNo], [fax], [address], [gstRegistrationNo]) VALUES (N'2', N'Cheap Stationer          ', N'Mr Loh Ah Pek            ', N'4781234', N'4792434', N'Blk 124, Alexandra Road
 #03-04 Banes Building
	Singapore 550315
                                ', N' MR-8200420-2  ')
INSERT [dbo].[Supplier] ([supplierCode], [name], [contactName], [phoneNo], [fax], [address], [gstRegistrationNo]) VALUES (N'3', N'Cheap Stationer          ', N'Mr Soh Kway Koh          ', N'3543234', N'4742434', N'Blk 34, Clementi Road
 #07-02 Ban Ban Soh Building
 Singapore 110525 
                           ', N'Nil            ')
INSERT [dbo].[Supplier] ([supplierCode], [name], [contactName], [phoneNo], [fax], [address], [gstRegistrationNo]) VALUES (N'4', N'BANES Shop               ', N'Mr Ronnie Ho             ', N'7671233', N'7671234', N'Blk 11, Hillview Avenue 
 #03-04,
 Singapore 679036
                                             ', N'MR-8555330-1   ')
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userID], [name], [employeeID], [email], [password], [departmentCode], [roleID]) VALUES (2, N'Mitch', N'E0015120', N'ychcnm@gmail.com', N'111111', NULL, 2)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_CollectionPoint] FOREIGN KEY([collectionPointID])
REFERENCES [dbo].[CollectionPoint] ([collectionPointID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_CollectionPoint]
GO
ALTER TABLE [dbo].[Disbursement]  WITH CHECK ADD  CONSTRAINT [FK_Disbursement_Department] FOREIGN KEY([departmentCode])
REFERENCES [dbo].[Department] ([departmentCode])
GO
ALTER TABLE [dbo].[Disbursement] CHECK CONSTRAINT [FK_Disbursement_Department]
GO
ALTER TABLE [dbo].[Disbursement]  WITH CHECK ADD  CONSTRAINT [FK_Disbursement_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Disbursement] CHECK CONSTRAINT [FK_Disbursement_User]
GO
ALTER TABLE [dbo].[DisbursementDetails]  WITH CHECK ADD  CONSTRAINT [FK_DisbursementDetails_DisbursementDetails] FOREIGN KEY([disbursementID])
REFERENCES [dbo].[Disbursement] ([disbursementID])
GO
ALTER TABLE [dbo].[DisbursementDetails] CHECK CONSTRAINT [FK_DisbursementDetails_DisbursementDetails]
GO
ALTER TABLE [dbo].[DisbursementDetails]  WITH CHECK ADD  CONSTRAINT [FK_DisbursementDetails_Inventory] FOREIGN KEY([inventoryCode])
REFERENCES [dbo].[Inventory] ([inventoryCode])
GO
ALTER TABLE [dbo].[DisbursementDetails] CHECK CONSTRAINT [FK_DisbursementDetails_Inventory]
GO
ALTER TABLE [dbo].[Discrepancy]  WITH CHECK ADD  CONSTRAINT [FK_Discrepancy_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Discrepancy] CHECK CONSTRAINT [FK_Discrepancy_User]
GO
ALTER TABLE [dbo].[DiscrepancyDetails]  WITH CHECK ADD  CONSTRAINT [FK_DiscrepancyDetails_Discrepancy] FOREIGN KEY([discrepancyID])
REFERENCES [dbo].[Discrepancy] ([discrepancyID])
GO
ALTER TABLE [dbo].[DiscrepancyDetails] CHECK CONSTRAINT [FK_DiscrepancyDetails_Discrepancy]
GO
ALTER TABLE [dbo].[DiscrepancyDetails]  WITH CHECK ADD  CONSTRAINT [FK_DiscrepancyDetails_Inventory] FOREIGN KEY([inventoryCode])
REFERENCES [dbo].[Inventory] ([inventoryCode])
GO
ALTER TABLE [dbo].[DiscrepancyDetails] CHECK CONSTRAINT [FK_DiscrepancyDetails_Inventory]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Category] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([categoryID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Category]
GO
ALTER TABLE [dbo].[ItemPrice]  WITH CHECK ADD  CONSTRAINT [FK_ItemPrice_Inventory] FOREIGN KEY([inventoryCode])
REFERENCES [dbo].[Inventory] ([inventoryCode])
GO
ALTER TABLE [dbo].[ItemPrice] CHECK CONSTRAINT [FK_ItemPrice_Inventory]
GO
ALTER TABLE [dbo].[ItemPrice]  WITH CHECK ADD  CONSTRAINT [FK_ItemPrice_Supplier] FOREIGN KEY([supplierCode])
REFERENCES [dbo].[Supplier] ([supplierCode])
GO
ALTER TABLE [dbo].[ItemPrice] CHECK CONSTRAINT [FK_ItemPrice_Supplier]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Supplier] FOREIGN KEY([supplierCode])
REFERENCES [dbo].[Supplier] ([supplierCode])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Supplier]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Inventory] FOREIGN KEY([inventoryCode])
REFERENCES [dbo].[Inventory] ([inventoryCode])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Inventory]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([orderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[Requisition]  WITH CHECK ADD  CONSTRAINT [FK_Requisition_Department] FOREIGN KEY([departmentCode])
REFERENCES [dbo].[Department] ([departmentCode])
GO
ALTER TABLE [dbo].[Requisition] CHECK CONSTRAINT [FK_Requisition_Department]
GO
ALTER TABLE [dbo].[Requisition]  WITH CHECK ADD  CONSTRAINT [FK_Requisition_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Requisition] CHECK CONSTRAINT [FK_Requisition_User]
GO
ALTER TABLE [dbo].[RequisitionDetails]  WITH CHECK ADD  CONSTRAINT [FK_RequisitionDetails_Inventory] FOREIGN KEY([inventoryCode])
REFERENCES [dbo].[Inventory] ([inventoryCode])
GO
ALTER TABLE [dbo].[RequisitionDetails] CHECK CONSTRAINT [FK_RequisitionDetails_Inventory]
GO
ALTER TABLE [dbo].[RequisitionDetails]  WITH CHECK ADD  CONSTRAINT [FK_RequisitionDetails_Requisition] FOREIGN KEY([requisitionID])
REFERENCES [dbo].[Requisition] ([requisitionID])
GO
ALTER TABLE [dbo].[RequisitionDetails] CHECK CONSTRAINT [FK_RequisitionDetails_Requisition]
GO
ALTER TABLE [dbo].[Retrieval]  WITH CHECK ADD  CONSTRAINT [FK_Retrieval_Department] FOREIGN KEY([departmentCode])
REFERENCES [dbo].[Department] ([departmentCode])
GO
ALTER TABLE [dbo].[Retrieval] CHECK CONSTRAINT [FK_Retrieval_Department]
GO
ALTER TABLE [dbo].[Retrieval]  WITH CHECK ADD  CONSTRAINT [FK_Retrieval_Inventory] FOREIGN KEY([inventoryCode])
REFERENCES [dbo].[Inventory] ([inventoryCode])
GO
ALTER TABLE [dbo].[Retrieval] CHECK CONSTRAINT [FK_Retrieval_Inventory]
GO
ALTER TABLE [dbo].[Shortage]  WITH CHECK ADD  CONSTRAINT [FK_Shortage_Department] FOREIGN KEY([departmentCode])
REFERENCES [dbo].[Department] ([departmentCode])
GO
ALTER TABLE [dbo].[Shortage] CHECK CONSTRAINT [FK_Shortage_Department]
GO
ALTER TABLE [dbo].[ShortageDetails]  WITH CHECK ADD  CONSTRAINT [FK_ShortageDetails_Inventory] FOREIGN KEY([inventoryCode])
REFERENCES [dbo].[Inventory] ([inventoryCode])
GO
ALTER TABLE [dbo].[ShortageDetails] CHECK CONSTRAINT [FK_ShortageDetails_Inventory]
GO
ALTER TABLE [dbo].[ShortageDetails]  WITH CHECK ADD  CONSTRAINT [FK_ShortageDetails_Shortage] FOREIGN KEY([shortageID])
REFERENCES [dbo].[Shortage] ([shortageID])
GO
ALTER TABLE [dbo].[ShortageDetails] CHECK CONSTRAINT [FK_ShortageDetails_Shortage]
GO
ALTER TABLE [dbo].[StockCard]  WITH CHECK ADD  CONSTRAINT [FK_StockCard_Inventory] FOREIGN KEY([inventoryCode])
REFERENCES [dbo].[Inventory] ([inventoryCode])
GO
ALTER TABLE [dbo].[StockCard] CHECK CONSTRAINT [FK_StockCard_Inventory]
GO
USE [master]
GO
ALTER DATABASE [Team5_AD] SET  READ_WRITE 
GO
