USE [master]
GO
/****** Object:  Database [DBSeaFood]    Script Date: 11/14/2023 1:50:39 PM ******/
CREATE DATABASE [DBSeaFood]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBSeaFood', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS2022\MSSQL\DATA\DBSeaFood.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBSeaFood_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS2022\MSSQL\DATA\DBSeaFood_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DBSeaFood] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBSeaFood].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBSeaFood] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBSeaFood] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBSeaFood] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBSeaFood] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBSeaFood] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBSeaFood] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBSeaFood] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBSeaFood] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBSeaFood] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBSeaFood] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBSeaFood] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBSeaFood] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBSeaFood] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBSeaFood] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBSeaFood] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBSeaFood] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBSeaFood] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBSeaFood] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBSeaFood] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBSeaFood] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBSeaFood] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBSeaFood] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBSeaFood] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBSeaFood] SET  MULTI_USER 
GO
ALTER DATABASE [DBSeaFood] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBSeaFood] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBSeaFood] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBSeaFood] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBSeaFood] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBSeaFood] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBSeaFood] SET QUERY_STORE = ON
GO
ALTER DATABASE [DBSeaFood] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DBSeaFood]
GO
/****** Object:  Table [dbo].[AdminUser]    Script Date: 11/14/2023 1:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminUser](
	[ID] [int] NOT NULL,
	[NameUser] [nvarchar](max) NULL,
	[RoleUser] [nvarchar](max) NULL,
	[PasswordUser] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/14/2023 1:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/14/2023 1:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[IDCus] [int] NOT NULL,
	[NameCus] [nvarchar](max) NULL,
	[PhoneCus] [nvarchar](15) NULL,
	[EmailCus] [nvarchar](max) NULL,
	[PasswordCus] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/14/2023 1:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDProduct] [int] NULL,
	[IDOrder] [int] NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderPro]    Script Date: 11/14/2023 1:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderPro](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateOrder] [date] NULL,
	[IDCus] [int] NULL,
	[AddressDeliverry] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/14/2023 1:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] NOT NULL,
	[CategoryID] [int] NULL,
	[ProductName] [nvarchar](255) NULL,
	[Origin] [nvarchar](max) NULL,
	[Dish] [nvarchar](max) NULL,
	[Price] [decimal](10, 2) NULL,
	[ImageProduct1] [nvarchar](max) NULL,
	[ImageProduct2] [nvarchar](max) NULL,
	[ImageProduct3] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AdminUser] ([ID], [NameUser], [RoleUser], [PasswordUser]) VALUES (111480, N'Duy Kha', NULL, N'Kha@982004                                        ')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Cá')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Tôm')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Mực')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Cua - Ghẹ')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'Ngao - Sò - Ốc')
GO
INSERT [dbo].[Customer] ([IDCus], [NameCus], [PhoneCus], [EmailCus], [PasswordCus]) VALUES (123456789, N'Khách Hàng', N'0123456789', NULL, N'789                                               ')
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice]) VALUES (1, 1040001, 2, 4, 1590000)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice]) VALUES (2, 1020004, 3, 3, 1290000)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderPro] ON 

INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (2, CAST(N'2023-11-14' AS Date), 123456789, N'Tp.HCM')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (3, CAST(N'2023-11-14' AS Date), 123456789, N'Hà Nội')
SET IDENTITY_INSERT [dbo].[OrderPro] OFF
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1010001, 1, N'Cá Chim Trắng Sống
', N'Vùng biển miền Trung và Vũng Tàu - Việt Nam', N'chiên giòn, hấp gừng, nấu Canh ngọt, nấu lẩu, đặc sắc nhất là cá chim trắng nướng muối ớt.

', CAST(320000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/ca/ca-chim-trang/Ca-chim-trang.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1010002, 1, N'Cá Mú Sống
', N'Khánh Hòa - Việt Nam', N'Hấp Hồng Kong, chưng tương hành gừng , nấu cháo,...
Thịt cá thịt săn chắc và béo càng ăn độ thơm ngon và ngọt càng tặng cao, phù hợp với mọi lứa tuổi. 
', CAST(315000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/ca/ca-mu/ca-mu.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1010003, 1, N'Cá Hồi Nguyên Con Tươi
', N'Trøndelag - Nauy. Nhập khẩu bằng đường bay, chứng từ nhập khẩu rõ ràng ', N'sashimi, cuốn sushi, các món cơm cuộn, nướng, áp chảo, ...', CAST(400000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/ca/ca-hoi-nguyen-con/ca-hoi-nguyen-con.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1010004, 1, N'Cá Tầm Sống
', N'Đà Lạt - Việt Nam', N'lẩu măng chua, nướng muối ớt, nướng sả, lẩu chua hải sản,...
Thịt cá khá mềm vs phần sụn giòn giòn khá hấp dẫn nên có thể ăn cả xương,
', CAST(555000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/ca/ca-tam/ca-tam.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1010005, 1, N'Thân Cá Hồi Phile Tươi
', N'Trøndelag - Nauy. Nhập khẩu bằng đường bay.', N'sashimi, cuốn sushi, các món cơm cuộn, nướng, áp chảo, ...', CAST(650000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/ca/than-ca-hoi-phile/than-ca-hoi-phile-tuoi.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1010006, 1, N'Cá Ngừ Cắt Saku
', N'Khánh Hòa - Việt Nam.', N'áp chảo, chiên , kho , làm chà bông...', CAST(351000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/ca/ca-ngu-cat-saku/ca-ngu-cat-saku.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1020001, 2, N'Tôm Hùm Alaska Nhỏ
', N'Nova Scotia - Canada', N'Hấp thái, nướng phô mai, sốt bơ tỏi, sốt trứng muối, sốt ớt Singapore, rang muối Hồng Kong...,', CAST(1100000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/Tom/tom-hum-nho/tom-hum-alaska-nho.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1020002, 2, N'Tôm Càng Xanh
', N'Tỉnh Bến Tre - Việt Nam', N' Hấp thái, sốt trứng muối, sốt phô mai xào, rang muối Hồng Kong, sốt bơ tỏi, nấu lẩu hải sản, lẩu toyum...', CAST(425000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/Tom/tom-cang-xanh/tom-cang-xanh.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1020003, 2, N'Thịt Tôm Tít Size L
', N'Kiên Giang - Việt Nam', N'rang muối Hồng Kong, nấu soup, ram mặn, sốt bơ tỏi, sốt tiêu đen, xào sa tế....', CAST(245000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/Tom/tom-tit/tom-tit.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1020004, 2, N'Tôm Hùm Alaska Lớn
', N'Nova Scotia - Canada', N'Hấp thái, nướng phô mai, sốt bơ tỏi, sốt trứng muối, sốt ớt Singapore, rang muối Hồng Kong...', CAST(1290000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/Tom/tom-hum-lon/tom-hum-alaska-lon.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1020005, 2, N'Tôm Hùm Úc Sống
', N'Bang Tây Úc - Úc', N'Hấp bia, hấp nước dừa, sốt bơ tỏi, phô mai nướng, muối HongKong', CAST(1850000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/Tom/tom-hum-uc/tom-hum-uc.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1020006, 2, N'Tôm Sú Biển
', N'Khánh Hòa - Việt Nam', N'hấp nước dừa, hấp thái, nấu lẩu, sốt trứng muối, sốt bơ tỏi, sốt phô mai, ram mặn, nướng sa tế,..', CAST(790000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/Tom/tom-su-bien/tom-su-bien.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1030001, 3, N'Mực Khô Size S
', N'Bình Thuận - Việt Nam', N'Nướng, nấu mực khô lấy nước dùng nấu hủ tiếu, bún rất ngọt,...', CAST(780000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/muc/muc-kho-size-s/muc-kho-size-s.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1030002, 3, N'Mực Lá Câu
', N'Bình Thuận - Việt Nam', N'Mực nướng, mực hấp hành gừng, mực nấu lẩu, nhúng bột chiên xù...', CAST(440000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/muc/muc-la/muc-la.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1030003, 3, N'Mực Ống Size L
', N'Bình Thuận - Việt Nam', N'Nướng sate, hấp hành, xào cà chua & hành tây, thả lẩu,...', CAST(420000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/muc/muc-ong-size-L/muc-ong-size-L.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1040001, 4, N'Cua Hoàng Đế - King Crab
', N'Honningsvåg - Nauy', N'Hấp bia, hấp nước dừa, hoặc lấy chân cua cắt ra nướng với phô mai ăn rất tuyệt vời! ', CAST(1590000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/cua-ghe/king-crab/king-crab.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1040002, 4, N'Cua Thịt Cà Mau Sống
', N'Cà Mau - Việt Nam', N'Hấp bia, hấp nước dừa, nướng than, sốt me, sốt trứng muối, miến cua,...', CAST(570000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/cua-ghe/cua-thit-ca-mau/cua-thit-ca-mau.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1040003, 4, N'Chân Cua Tuyết
', N'Brumunddal - Nauy', N'Rang me, rang tỏi, sốt me, rang chà bông, hấp nóng chấm muối chanh,...', CAST(750000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/cua-ghe/chan-cua-tuyet/chan-cua-tuyet.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1040004, 4, N'Ghẹ Xanh Sống
', N'Phan Thiết - Việt Nam', N'sốt me, sốt bơ tỏi, sốt trứng muối, hấp, nấu bánh canh..', CAST(390000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/cua-ghe/ghe-xanh/ghe-xanh.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1040005, 4, N'Cua Nâu Sống
', N'Anglesey - Ireland', N'hấp sả, hấp bia, sốt trứng muối, sốt bơ tỏi, nướng, rang muối Hồng Kong...', CAST(690000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/cua-ghe/cua-nau/cua-nau.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1040006, 4, N'Cua Huỳnh Đế Tươi
', N'Úc', N' hấp bia, hấp gừng, xào gừng, hành hoặc nấu lấu lẩu đều ngon', CAST(625000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/cua-ghe/cua-huynh-de/cua-huynh-de.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1050001, 5, N'Bào Ngư Úc Sống
', N'Úc', N'sashimi, sốt dầu hào, nấu soup bào ngư cùng cồi sò điệp, vi cá hay hải sâm,...', CAST(1550000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/ngao,so,oc/bao-ngu-uc/bao-ngu-uc.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1050002, 5, N'Hàu Sữa Pháp Sống
', N'Bình Định/ Vũng Tàu - Việt Nam', N'Ăn sashimi, nướng phô mai, nướng mỡ hành, hoặc lấy thịt nấu cháo, xào, hàu né,...', CAST(120000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/ngao,so,oc/hau-sua-phap/hau-sua-phap.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1050003, 5, N'Nghêu Trắng Lớn (Ngao)
', N'Tiền Giang - Việt Nam.', N'hấp sả, hấp thái, nấu canh rau, tách thịt xào sa tế, nấu lẩu,...', CAST(89000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/ngao,so,oc/ngeu-trang-lon/ngao.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1050004, 5, N'Ốc Hương Sống
', N'Khánh Hòa - Việt Nam', N'rang muối, xào bơ, rang me, hấp sả,....', CAST(424000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/ngao,so,oc/oc-huong/oc-huong.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1050005, 5, N'Ốc Vòi Voi Trắng Sống
', N'Baja California - Mexico', N'Sashimi, trộn gỏi....', CAST(850000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/ngao,so,oc/oc-voi-voi/oc-voi-voi.png
', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Origin], [Dish], [Price], [ImageProduct1], [ImageProduct2], [ImageProduct3], [Quantity]) VALUES (1050006, 5, N'Ốc Chip Chip - Sò Lụa Sống
', N'Kiên Giang - Việt Nam', N'hấp sả, hấp thái, xào me, xào rau muống, nấu canh rau, nấu lẩu,...', CAST(79000.00 AS Decimal(10, 2)), N'~/Content/TemplateFile/images/ngao,so,oc/oc-chip-chip/chip-chip-so-lua.png
', NULL, NULL, NULL)
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([IDOrder])
REFERENCES [dbo].[OrderPro] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([IDProduct])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderPro]  WITH CHECK ADD FOREIGN KEY([IDCus])
REFERENCES [dbo].[Customer] ([IDCus])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
USE [master]
GO
ALTER DATABASE [DBSeaFood] SET  READ_WRITE 
GO
