USE [master]
GO
/****** Object:  Database [BTLAPI]    Script Date: 24/04/2022 22:07:26 ******/
CREATE DATABASE [BTLAPI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BTLAPI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BTLAPI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BTLAPI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BTLAPI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BTLAPI] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BTLAPI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BTLAPI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BTLAPI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BTLAPI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BTLAPI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BTLAPI] SET ARITHABORT OFF 
GO
ALTER DATABASE [BTLAPI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BTLAPI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BTLAPI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BTLAPI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BTLAPI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BTLAPI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BTLAPI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BTLAPI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BTLAPI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BTLAPI] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BTLAPI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BTLAPI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BTLAPI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BTLAPI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BTLAPI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BTLAPI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BTLAPI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BTLAPI] SET RECOVERY FULL 
GO
ALTER DATABASE [BTLAPI] SET  MULTI_USER 
GO
ALTER DATABASE [BTLAPI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BTLAPI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BTLAPI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BTLAPI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BTLAPI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BTLAPI] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BTLAPI', N'ON'
GO
ALTER DATABASE [BTLAPI] SET QUERY_STORE = OFF
GO
USE [BTLAPI]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 24/04/2022 22:07:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SanPhamID] [int] NOT NULL,
	[KhachHangID] [int] NOT NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 24/04/2022 22:07:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[SanPhamID] [int] NOT NULL,
	[KhachHangID] [int] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 24/04/2022 22:07:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](255) NOT NULL,
	[SĐT] [varchar](30) NOT NULL,
	[Email] [varchar](30) NULL,
	[MatKhau] [varchar](30) NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[Ngaysinh] [date] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 24/04/2022 22:07:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 24/04/2022 22:07:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](255) NOT NULL,
	[SĐT] [varchar](30) NOT NULL,
	[Email] [varchar](30) NULL,
	[MatKhau] [varchar](30) NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[Ngaysinh] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 24/04/2022 22:07:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](255) NOT NULL,
	[Gia] [int] NOT NULL,
	[Sale] [int] NULL,
	[Loai] [int] NOT NULL,
	[MoTa] [nvarchar](255) NULL,
	[Anh] [varchar](255) NULL,
	[NgayTao] [date] NULL,
	[createdbyID] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([id], [SanPhamID], [KhachHangID]) VALUES (1013, 12, 1)
INSERT [dbo].[GioHang] ([id], [SanPhamID], [KhachHangID]) VALUES (1014, 10, 1)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([id], [HoTen], [SĐT], [Email], [MatKhau], [GioiTinh], [Ngaysinh]) VALUES (1, N'Nguyễn Thế Duyệt', N'0321654987', NULL, N'123456', N'Nam', CAST(N'2001-11-11' AS Date))
INSERT [dbo].[KhachHang] ([id], [HoTen], [SĐT], [Email], [MatKhau], [GioiTinh], [Ngaysinh]) VALUES (2, N'Nguyễn Đình Hiếu', N'0123456789', NULL, N'123456', N'Nam', CAST(N'2001-03-08' AS Date))
INSERT [dbo].[KhachHang] ([id], [HoTen], [SĐT], [Email], [MatKhau], [GioiTinh], [Ngaysinh]) VALUES (3, N'Đỗ Thu Phương', N'0621453873', NULL, N'123456', N'Nữ', CAST(N'2001-10-16' AS Date))
INSERT [dbo].[KhachHang] ([id], [HoTen], [SĐT], [Email], [MatKhau], [GioiTinh], [Ngaysinh]) VALUES (4, N'Phạm Thành Luân', N'0359761245', NULL, N'123456', N'Nam', CAST(N'2001-03-24' AS Date))
INSERT [dbo].[KhachHang] ([id], [HoTen], [SĐT], [Email], [MatKhau], [GioiTinh], [Ngaysinh]) VALUES (5, N'Đào Mạnh Dương', N'0349873165', NULL, N'123456', N'Nam', CAST(N'2001-02-12' AS Date))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([id], [TenLoai]) VALUES (1, N'Adidas')
INSERT [dbo].[LoaiSanPham] ([id], [TenLoai]) VALUES (2, N'Nike')
INSERT [dbo].[LoaiSanPham] ([id], [TenLoai]) VALUES (3, N'Accessories')
INSERT [dbo].[LoaiSanPham] ([id], [TenLoai]) VALUES (4, N'Clothing')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([id], [HoTen], [SĐT], [Email], [MatKhau], [GioiTinh], [Ngaysinh]) VALUES (1, N'Nguyễn Thế Duyệt', N'0123456789', N'theduyet138@gmail.com', N'123456', N'Nam', CAST(N'2001-08-13' AS Date))
INSERT [dbo].[NhanVien] ([id], [HoTen], [SĐT], [Email], [MatKhau], [GioiTinh], [Ngaysinh]) VALUES (2, N'Nguyễn Đình Hiếu', N'0321654987', N'dinhhieu@gmail.com', N'123456', N'Nam', CAST(N'2001-10-10' AS Date))
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (1, N'Adidas SL 72 Shoes', 2499000, 30, 1, NULL, N'SL-72-SHOES-2-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (2, N'Playball Mono Denim New York Yankees', 1999000, 40, 1, NULL, N'PLAYBALL-MONO-DENIM-NEW-YORK-YANKEES-32SHPM011-50U-7-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (3, N'EQT Cushion ADV', 4000000, 25, 1, NULL, N'giay-adidas-eqt-cushion-adv-9-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (4, N'NMD C2 Shoes', 3800000, 28, 1, NULL, N'NMD_C2-SHOES-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (5, N'ADIDAS SL 76000', 2899000, 42, 1, NULL, N'FW6375-SL-7600-3-600x600.jpg', CAST(N'2022-02-06' AS Date), NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (6, N'Adidas Tokio Solar', 2699000, 28, 1, NULL, N'ADIDAS-TOKIO-SOLAR-HU-1-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (7, N'Superstar Slip-On', 2499000, 20, 1, NULL, N'SUPERSTAR-SLIP-ON-SHOES-1-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (8, N'Ultra Boost 20 x ISS NASA', 3999000, 25, 1, NULL, N'ULTRABOOST-20-SHOES-10-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (9, N'Ultra Boost DNA', 3599000, 28, 1, NULL, N'ULTRABOOST-5.0-DNA-SHOES-8-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (10, N'Ultra Boost DNA', 3599000, 30, 1, NULL, N'didas-Ultra-Boost-DNA-Multi-Color-5-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (11, N'ADIDAS SL 76000', 2699000, 25, 1, NULL, N'FW6375-SL-7600-3-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (12, N'Ultra Boost 21', 3999000, 35, 1, NULL, N'Giay_UltraBoost_21_Be_FY0399_01_standard-600x600.jpg', CAST(N'2022-04-20' AS Date), NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (13, N'Big Ball Chunky A LA Dodgers', 1699000, 10, 2, NULL, N'Big-Ball-Chunky-32SHC2011-12-600x600.jpg', CAST(N'2022-04-16' AS Date), NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (14, N'Ultra Boost DNA', 1999000, 5, 2, NULL, N'didas-Ultra-Boost-DNA-Multi-Color-5-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (15, N'Nike Air Jordan 1 Mid “South Beach', 4999000, 15, 2, NULL, N'giay-nike-air-zoom-mariah-1-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (16, N'Nike Air Force 1 Pixel', 2499000, 20, 2, NULL, N'Nike-Air-Force-1-Pixel-1-1.jpg', CAST(N'2022-01-31' AS Date), NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (17, N'Nike Air Force 1 Crater', 2999000, 15, 2, NULL, N'Nike-Air-Force-1-Crate-1-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (18, N'Air Jordan 1 Mid SE “Signal Blue', 3490000, 10, 2, NULL, N'Jordan-1-Mid-SE-Multi-Color-7-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (19, N'Air Jordan 1 Mid “Canyon Rust', 2899000, 15, 2, NULL, N'Air-Jordan-1-Mid-5-600x600.jpg', CAST(N'2022-03-15' AS Date), NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (20, N'Air Jordan 1 Low “Canyon Rust', 4999000, 20, 2, NULL, N'Jordan-1-Low-Canyon-Rust-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (21, N'Nike Sportswear Tee', 7000000, 10, 4, NULL, N'631A9170-600x900.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (23, N'Air Jordan 1 Mid “Carbon Fiber', 5990000, 10, 2, NULL, N'Air-Jordan-1-Mid-University-Gold-3-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (24, N'Air Jordan 1 Mid ” Banned', 4999000, 15, 2, NULL, N'Air-Jordan-1-Mid-“Banned”-7-600x600.jpg', CAST(N'2022-02-27' AS Date), NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (25, N'Nike Sportswear H86 Futura', 499000, 10, 3, NULL, N'Nike-Sportswear-Heritage86-Futura-Washed-2-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (26, N'Nike Sportswear H86 Futura', 499000, 15, 3, NULL, N'Nike-Sportswear-Heritage86-Futura-Washed-Hat-Black-1-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (28, N'Nike X Stussy Benassi Slides', 2999000, 10, 3, NULL, N'NIKE-X-STUSSY-BENASSI-SLIDES-DC5239-001-1-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (29, N'Big Ball Bundle Pack', 550000, 10, 3, NULL, N'Big-Ball-Bundle-10-600x600.jpg', CAST(N'2021-06-21' AS Date), NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (30, N'Adilette Aqua Slides', 690000, 10, 3, NULL, N'Nike-Victori-One-15-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (31, N'Guess Beach', 490000, 5, 3, NULL, N'ADILETTE-AQUA-SLIDES-F35537-6-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (32, N'Nike Victori One', 499000, 5, 3, NULL, N'Nike-Victori-One-6-600x600.jpg', CAST(N'2021-08-23' AS Date), NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (33, N'Coach Vale Phoebe Crossbody', 1999000, 10, 3, NULL, N'COACH-F80384-IMCBI-4-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (34, N'Crocs Duet Sport Clog', 650000, 10, 3, NULL, N'CROCS-SHOES-06-1-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (35, N'Benassi Jdi Tx Se', 1200000, 15, 3, NULL, N'Nike-Benassi-JDI-TXT-SE-03-600x600.jpg', CAST(N'2021-01-26' AS Date), NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (36, N'Crocs CrocBand', 650000, 10, 3, NULL, N'CROCS-SHOES-WC-01-1-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (37, N'Champion Split Script Slide', 499000, 5, 3, NULL, N'CHAMPION-MEN_S-SPLIT-SCRIPT-SUPER-SLIDES-1-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (38, N'Nike Woven Pants', 1299000, 10, 4, NULL, N'NIKE-WOVEN-PANTS-2-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (39, N'Champion Hoodie', 999000, 20, 4, NULL, N'631A1434-600x400.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (40, N'Nike Sportswear T-shirt', 699000, 15, 4, NULL, N'Nike-Sportswear-T-shirt-9-2-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (41, N'Nike Dri-FIT Tortoise', 699000, 10, 4, NULL, N'Camiseta-Nike-Dri-FIT-Tortoise-Masculina-3-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([id], [TenSanPham], [Gia], [Sale], [Loai], [MoTa], [Anh], [NgayTao], [createdbyID]) VALUES (42, N'Nike Sportswear Club T-shirt', 799000, 15, 4, NULL, N'Nike-Sportswear-Club-T-shirt-13-600x600.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_KhachHang1] FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[KhachHang] ([id])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_KhachHang1]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_SanPham] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[SanPham] ([id])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[KhachHang] ([id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_SanPham] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[SanPham] ([id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_SanPham]
GO
USE [master]
GO
ALTER DATABASE [BTLAPI] SET  READ_WRITE 
GO
