/****** Object:  Table [dbo].[HinhThucThanhToan]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhThucThanhToan](
	[HinhThucThanhToanID] [int] NOT NULL,
	[TenHinhThuc] [nvarchar](30) NOT NULL,
	[MoTa] [nvarchar](100) NOT NULL,
	[HienThi] [bit] NOT NULL,
 CONSTRAINT [HinhThucThanhToan_pk] PRIMARY KEY CLUSTERED 
(
	[HinhThucThanhToanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAnh]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[tblChiTietDonHang]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietDonHang](
	[ChiTietDonHangID] [int] NOT NULL IDENTITY(1,1),
	[SoLuong] [int] NOT NULL,
	[GiaBan] [decimal](8, 2) NOT NULL,
	[tblDonHang_DonHangID] [int]  NULL,
	[tblSanPham_SanPhamID] [int] NOT NULL,
 CONSTRAINT [tblChiTietDonHang_pk] PRIMARY KEY CLUSTERED 
(
	[ChiTietDonHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChiTietPhieuNhap]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietPhieuNhap](
	[ChiTietPhieuNhapID] [int] NOT NULL,
	[SoLuongNhap] [int] NOT NULL,
	[DonGia] [int] NOT NULL,
	[tblSanPham_SanPhamID] [int] NOT NULL,
	[tblPhieuNhap_PhieuNhapID] [int] NOT NULL,
 CONSTRAINT [tblChiTietPhieuNhap_pk] PRIMARY KEY CLUSTERED 
(
	[ChiTietPhieuNhapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChiTietPhieuXuat]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietPhieuXuat](
	[ChiTietPhieuXuatID] [int] NOT NULL,
	[SoLuongXuat] [int] NOT NULL,
	[GiaBan] [decimal](10, 2) NOT NULL,
	[tblPhieuXuat_PhieuXuatID] [int] NOT NULL,
	[tblDonHang_DonHangID] [int] NOT NULL,
	[tblSanPham_SanPhamID] [int] NOT NULL,
 CONSTRAINT [tblChiTietPhieuXuat_pk] PRIMARY KEY CLUSTERED 
(
	[ChiTietPhieuXuatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDanhMuc]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDanhMuc](
	[DanhMucID] [int] NOT NULL,
	[TenDanhMuc] [nvarchar](30) NOT NULL,
	[tblNhomSp_NhomSpID] [int] NOT NULL,
 CONSTRAINT [tblDanhMuc_pk] PRIMARY KEY CLUSTERED 
(
	[DanhMucID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDonHang]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDonHang](
	[DonHangID] [int] NOT NULL,
	[NgayDatHang] [date] NOT NULL,
	[DiaChiGiaoHang] [nvarchar](50) NOT NULL,
	[NgayGiaoHang] [date] NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
	[TrangThaiThanhToan] [bit] NOT NULL,
	[TrangThaiGiaoHang] [bit] NOT NULL,
	[HinhThucThanhToan_HinhThucThanhToanID] [int] NOT NULL,
	[tblKhachHang_KhachHangID] [int] NOT NULL,
 CONSTRAINT [tblDonHang_pk] PRIMARY KEY CLUSTERED 
(
	[DonHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGiamGia]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGiamGia](
	[GiamGiaID] [int] NOT NULL,
	[TenGiamGia] [nvarchar](30) NOT NULL,
	[MoTa] [nvarchar](30) NOT NULL,
	[NgayBatDauGiamGia] [date] NOT NULL,
	[NgayKetThucGiamGia] [date] NOT NULL,
	[MucGiamGia] [int] NOT NULL,
	[HienThi] [bit] NOT NULL,
 CONSTRAINT [tblGiamGia_pk] PRIMARY KEY CLUSTERED 
(
	[GiamGiaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[KhachHangID] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](30) NOT NULL,
	[MatKhau] [varchar](30) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[CauHoiBiMat] [nvarchar](255) NOT NULL,
	[CauTraLoiBiMat] [nvarchar](255) NOT NULL,
	[HoTen] [nvarchar](30) NOT NULL,
	[NamSinh] [int] NOT NULL,
	[GioiTinh] [nvarchar](30) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[SoDienThoai] [varchar](30) NOT NULL,
	[NgayDangKi] [date] NOT NULL,
	[QuyenDangNhap] [bit] NOT NULL,
 CONSTRAINT [KhachHangID] PRIMARY KEY CLUSTERED 
(
	[KhachHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhoHang]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhoHang](
	[KhoHangID] [int] NOT NULL,
	[TenKho] [nvarchar](50) NOT NULL,
	[TenViTriKho] [nvarchar](30) NOT NULL,
	[DiaChiKho] [nvarchar](50) NOT NULL,
	[SoLuongMax] [int] NOT NULL,
 CONSTRAINT [tblKhoHang_pk] PRIMARY KEY CLUSTERED 
(
	[KhoHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhaCungCap]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhaCungCap](
	[NhaCungCapID] [int] NOT NULL,
	[TenNhaCungCap] [nvarchar](255) NOT NULL,
	[TenGiaoDich] [nvarchar](255) NOT NULL,
	[SoDienThoai] [varchar](30) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
 CONSTRAINT [tblNhaCungCap_pk] PRIMARY KEY CLUSTERED 
(
	[NhaCungCapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhomSp]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhomSp](
	[NhomSpID] [int] NOT NULL,
	[TenNhomSp] [nvarchar](30) NOT NULL,
 CONSTRAINT [tblNhomSp_pk] PRIMARY KEY CLUSTERED 
(
	[NhomSpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhanQuyen]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhanQuyen](
	[PhanQuyenID] [int] NOT NULL,
	[TenQuyen] [nvarchar](30) NOT NULL,
	[LoaiQuyen] [nvarchar](30) NOT NULL,
 CONSTRAINT [tblPhanQuyen_pk] PRIMARY KEY CLUSTERED 
(
	[PhanQuyenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhieuNhap]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuNhap](
	[PhieuNhapID] [int] NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[tblNhaCungCap_NhaCungCapID] [int] NOT NULL,
	[tblTaiKhoan_TaiKhoanID] [int] NOT NULL,
 CONSTRAINT [tblPhieuNhap_pk] PRIMARY KEY CLUSTERED 
(
	[PhieuNhapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhieuXuat]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuXuat](
	[PhieuXuatID] [int] NOT NULL,
	[NgayXuat] [date] NOT NULL,
	[tblTaiKhoan_TaiKhoanID] [int] NOT NULL,
 CONSTRAINT [tblPhieuXuat_pk] PRIMARY KEY CLUSTERED 
(
	[PhieuXuatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSanPham]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSanPham](
	[SanPhamID] [int] NOT NULL,
	[TenSanPham] [nvarchar](255)  NULL,
	[XuatXu] [nvarchar](30)  NULL,
	[MoTa] [nvarchar](255)  NULL,
	[GiaBan] [decimal](8, 2)  NULL,
	[SoLuongTonTon] [int]  NULL,
	[SoLuotXem] [int]  NULL,
	[ConHang] [bit]  NULL,
	[BanChay] [bit]  NULL,
	[HienThi] [bit] NULL,
	[FK_GiamGiaID] [int]  NULL,
	[FK_DanhMucID] [int]  NULL,
	[FK_KhoHangID] [int]  NULL,
	[Image] [varchar](50) NULL,
 CONSTRAINT [tblSanPham_pk] PRIMARY KEY CLUSTERED 
(
	[SanPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[TaiKhoanID] [int] NOT NULL,
	[TenDangNhap] [varchar](30) NOT NULL,
	[MatKhau] [varchar](30) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[CauHoiBiMat] [nvarchar](255) NOT NULL,
	[CauTraLoiBiMat] [nvarchar](255) NOT NULL,
	[ChucVu] [nvarchar](30) NOT NULL,
	[HoTen] [nvarchar](30) NOT NULL,
	[NamSinh] [int] NOT NULL,
	[SoDienThoai] [varchar](30) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[QuyenDangNhap] [bit] NOT NULL,
	[GioiTinh] [nvarchar](30) NOT NULL,
	[NgayDangKi] [date] NOT NULL,
 CONSTRAINT [tblTaiKhoan_pk] PRIMARY KEY CLUSTERED 
(
	[TaiKhoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTaiKhoanQuyen]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaiKhoanQuyen](
	[TaiKhoanQuyen] [int] NOT NULL,
	[tblTaiKhoan_TaiKhoanID] [int] NOT NULL,
	[tblPhanQuyen_PhanQuyenID] [int] NOT NULL,
 CONSTRAINT [tblTaiKhoanQuyen_pk] PRIMARY KEY CLUSTERED 
(
	[TaiKhoanQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblThanhToan]    Script Date: 12/04/2022 10:35:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThanhToan](
	[ThanhToanID] [int] NOT NULL,
	[NgayThanhToan] [date] NOT NULL,
	[SoTien] [decimal](10, 2) NOT NULL,
	[tblTaiKhoan_TaiKhoanID] [int] NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[tblDonHang_DonHangID] [int] NOT NULL,
 CONSTRAINT [tblThanhToan_pk] PRIMARY KEY CLUSTERED 
(
	[ThanhToanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HinhThucThanhToan] ([HinhThucThanhToanID], [TenHinhThuc], [MoTa], [HienThi]) VALUES (1, N'Chuyen khoan', N'Thanh toan onl', 1)
INSERT [dbo].[HinhThucThanhToan] ([HinhThucThanhToanID], [TenHinhThuc], [MoTa], [HienThi]) VALUES (2, N'Thanh toan truc tiep', N'Thanh toan tai quay', 1)
GO

GO
INSERT [dbo].[tblChiTietDonHang] ([ChiTietDonHangID], [SoLuong], [GiaBan], [tblDonHang_DonHangID], [tblSanPham_SanPhamID]) VALUES ( 20, CAST(150000.01 AS Decimal(8, 2)), 1, 11100)
INSERT [dbo].[tblChiTietDonHang] ([ChiTietDonHangID], [SoLuong], [GiaBan], [tblDonHang_DonHangID], [tblSanPham_SanPhamID]) VALUES ( 15, CAST(200000.00 AS Decimal(8, 2)), 1, 11101)
INSERT [dbo].[tblChiTietDonHang] ([ChiTietDonHangID], [SoLuong], [GiaBan], [tblDonHang_DonHangID], [tblSanPham_SanPhamID]) VALUES ( 5, CAST(110000.00 AS Decimal(8, 2)), 1, 11102)
INSERT [dbo].[tblChiTietDonHang] ([ChiTietDonHangID], [SoLuong], [GiaBan], [tblDonHang_DonHangID], [tblSanPham_SanPhamID]) VALUES ( 10, CAST(170000.00 AS Decimal(8, 2)), 2, 11103)
INSERT [dbo].[tblChiTietDonHang] ([ChiTietDonHangID], [SoLuong], [GiaBan], [tblDonHang_DonHangID], [tblSanPham_SanPhamID]) VALUES ( 4, CAST(160000.00 AS Decimal(8, 2)), 3, 11104)
INSERT [dbo].[tblChiTietDonHang] ([ChiTietDonHangID], [SoLuong], [GiaBan], [tblDonHang_DonHangID], [tblSanPham_SanPhamID]) VALUES ( 21, CAST(100000.00 AS Decimal(8, 2)), 4, 11105)
INSERT [dbo].[tblChiTietDonHang] ([ChiTietDonHangID], [SoLuong], [GiaBan], [tblDonHang_DonHangID], [tblSanPham_SanPhamID]) VALUES ( 15, CAST(250000.00 AS Decimal(8, 2)), 5, 11106)
GO
INSERT [dbo].[tblChiTietPhieuNhap] ([ChiTietPhieuNhapID], [SoLuongNhap], [DonGia], [tblSanPham_SanPhamID], [tblPhieuNhap_PhieuNhapID]) VALUES (1, 20, 1500000, 11100, 1)
INSERT [dbo].[tblChiTietPhieuNhap] ([ChiTietPhieuNhapID], [SoLuongNhap], [DonGia], [tblSanPham_SanPhamID], [tblPhieuNhap_PhieuNhapID]) VALUES (2, 20, 1500000, 11101, 2)
INSERT [dbo].[tblChiTietPhieuNhap] ([ChiTietPhieuNhapID], [SoLuongNhap], [DonGia], [tblSanPham_SanPhamID], [tblPhieuNhap_PhieuNhapID]) VALUES (3, 20, 1500000, 11102, 3)
INSERT [dbo].[tblChiTietPhieuNhap] ([ChiTietPhieuNhapID], [SoLuongNhap], [DonGia], [tblSanPham_SanPhamID], [tblPhieuNhap_PhieuNhapID]) VALUES (4, 20, 1500000, 11103, 4)
INSERT [dbo].[tblChiTietPhieuNhap] ([ChiTietPhieuNhapID], [SoLuongNhap], [DonGia], [tblSanPham_SanPhamID], [tblPhieuNhap_PhieuNhapID]) VALUES (5, 20, 1500000, 11104, 5)
GO
INSERT [dbo].[tblChiTietPhieuXuat] ([ChiTietPhieuXuatID], [SoLuongXuat], [GiaBan], [tblPhieuXuat_PhieuXuatID], [tblDonHang_DonHangID], [tblSanPham_SanPhamID]) VALUES (1, 5, CAST(1400000.00 AS Decimal(10, 2)), 1, 1, 11100)
INSERT [dbo].[tblChiTietPhieuXuat] ([ChiTietPhieuXuatID], [SoLuongXuat], [GiaBan], [tblPhieuXuat_PhieuXuatID], [tblDonHang_DonHangID], [tblSanPham_SanPhamID]) VALUES (2, 10, CAST(1900000.00 AS Decimal(10, 2)), 2, 2, 11101)
INSERT [dbo].[tblChiTietPhieuXuat] ([ChiTietPhieuXuatID], [SoLuongXuat], [GiaBan], [tblPhieuXuat_PhieuXuatID], [tblDonHang_DonHangID], [tblSanPham_SanPhamID]) VALUES (3, 5, CAST(1400000.00 AS Decimal(10, 2)), 3, 3, 11102)
INSERT [dbo].[tblChiTietPhieuXuat] ([ChiTietPhieuXuatID], [SoLuongXuat], [GiaBan], [tblPhieuXuat_PhieuXuatID], [tblDonHang_DonHangID], [tblSanPham_SanPhamID]) VALUES (4, 5, CAST(1400000.00 AS Decimal(10, 2)), 4, 4, 11103)
INSERT [dbo].[tblChiTietPhieuXuat] ([ChiTietPhieuXuatID], [SoLuongXuat], [GiaBan], [tblPhieuXuat_PhieuXuatID], [tblDonHang_DonHangID], [tblSanPham_SanPhamID]) VALUES (5, 5, CAST(1400000.00 AS Decimal(10, 2)), 5, 5, 11104)
INSERT [dbo].[tblChiTietPhieuXuat] ([ChiTietPhieuXuatID], [SoLuongXuat], [GiaBan], [tblPhieuXuat_PhieuXuatID], [tblDonHang_DonHangID], [tblSanPham_SanPhamID]) VALUES (6, 5, CAST(1400000.00 AS Decimal(10, 2)), 1, 1, 11105)
GO
INSERT [dbo].[tblDanhMuc] ([DanhMucID], [TenDanhMuc], [tblNhomSp_NhomSpID]) VALUES (1110, N'Laptop theo hãng', 111)
INSERT [dbo].[tblDanhMuc] ([DanhMucID], [TenDanhMuc], [tblNhomSp_NhomSpID]) VALUES (1111, N'Laptop Gaming', 111)
INSERT [dbo].[tblDanhMuc] ([DanhMucID], [TenDanhMuc], [tblNhomSp_NhomSpID]) VALUES (1112, N'Laptop văn phòng', 111)
INSERT [dbo].[tblDanhMuc] ([DanhMucID], [TenDanhMuc], [tblNhomSp_NhomSpID]) VALUES (1113, N'Laptop cao cấp', 111)
GO
INSERT [dbo].[tblDonHang] ([DonHangID], [NgayDatHang], [DiaChiGiaoHang], [NgayGiaoHang], [GhiChu], [TrangThaiThanhToan], [TrangThaiGiaoHang], [HinhThucThanhToan_HinhThucThanhToanID], [tblKhachHang_KhachHangID]) VALUES (1, CAST(N'2022-04-12' AS Date), N'Ha Noi', CAST(N'2021-12-26' AS Date), N'MacBook Pro 2022,Macbook Air 2018,Macbook Pro 2017', 0, 1, 1, 1)
INSERT [dbo].[tblDonHang] ([DonHangID], [NgayDatHang], [DiaChiGiaoHang], [NgayGiaoHang], [GhiChu], [TrangThaiThanhToan], [TrangThaiGiaoHang], [HinhThucThanhToan_HinhThucThanhToanID], [tblKhachHang_KhachHangID]) VALUES (2, CAST(N'2022-04-12' AS Date), N'Ha Noi', CAST(N'2021-02-20' AS Date), N'Macbook pro 2010', 1, 1, 1, 2)
INSERT [dbo].[tblDonHang] ([DonHangID], [NgayDatHang], [DiaChiGiaoHang], [NgayGiaoHang], [GhiChu], [TrangThaiThanhToan], [TrangThaiGiaoHang], [HinhThucThanhToan_HinhThucThanhToanID], [tblKhachHang_KhachHangID]) VALUES (3, CAST(N'2022-04-10' AS Date), N'Ha Noi', CAST(N'2021-04-15' AS Date), N'Dell Core Latide i5', 1, 1, 1, 3)
INSERT [dbo].[tblDonHang] ([DonHangID], [NgayDatHang], [DiaChiGiaoHang], [NgayGiaoHang], [GhiChu], [TrangThaiThanhToan], [TrangThaiGiaoHang], [HinhThucThanhToan_HinhThucThanhToanID], [tblKhachHang_KhachHangID]) VALUES (4, CAST(N'2021-06-12' AS Date), N'Ha Noi', CAST(N'2021-06-12' AS Date), N'Dell Core Inspỉon 5510 Latide i5', 1, 1, 1, 4)
INSERT [dbo].[tblDonHang] ([DonHangID], [NgayDatHang], [DiaChiGiaoHang], [NgayGiaoHang], [GhiChu], [TrangThaiThanhToan], [TrangThaiGiaoHang], [HinhThucThanhToan_HinhThucThanhToanID], [tblKhachHang_KhachHangID]) VALUES (5, CAST(N'2021-12-05' AS Date), N'Ha Noi', CAST(N'2021-12-05' AS Date), N'Dell Core XPS i5', 1, 1, 1, 5)
GO
INSERT [dbo].[tblGiamGia] ([GiamGiaID], [TenGiamGia], [MoTa], [NgayBatDauGiamGia], [NgayKetThucGiamGia], [MucGiamGia], [HienThi]) VALUES (5, N'Giảm giá 5%', N'Laptop > 10.000.000 giảm 5%', CAST(N'2022-01-04' AS Date), CAST(N'2023-01-04' AS Date), 5, 1)
INSERT [dbo].[tblGiamGia] ([GiamGiaID], [TenGiamGia], [MoTa], [NgayBatDauGiamGia], [NgayKetThucGiamGia], [MucGiamGia], [HienThi]) VALUES (8, N'Giảm giá 8%', N'Laptop > 13.000.000 giảm 8%', CAST(N'2022-01-04' AS Date), CAST(N'2023-01-04' AS Date), 8, 1)
INSERT [dbo].[tblGiamGia] ([GiamGiaID], [TenGiamGia], [MoTa], [NgayBatDauGiamGia], [NgayKetThucGiamGia], [MucGiamGia], [HienThi]) VALUES (10, N'Giảm giá 10%', N'Laptop > 15.000.000 giảm 10%', CAST(N'2022-01-04' AS Date), CAST(N'2023-01-04' AS Date), 10, 1)
INSERT [dbo].[tblGiamGia] ([GiamGiaID], [TenGiamGia], [MoTa], [NgayBatDauGiamGia], [NgayKetThucGiamGia], [MucGiamGia], [HienThi]) VALUES (15, N'Giảm giá 15%', N'Laptop > 20.000.000 giảm 15%', CAST(N'2022-01-04' AS Date), CAST(N'2023-01-04' AS Date), 15, 1)
GO
SET IDENTITY_INSERT [dbo].[tblKhachHang] ON 

INSERT [dbo].[tblKhachHang] ([KhachHangID], [TenDangNhap], [MatKhau], [Email], [CauHoiBiMat], [CauTraLoiBiMat], [HoTen], [NamSinh], [GioiTinh], [DiaChi], [SoDienThoai], [NgayDangKi], [QuyenDangNhap]) VALUES (1, N'dothuphuong', N'123456', N'dphuong@gmail.com', N'Name', N'Phuong', N'Do Thu Phuong', 2001, N'Nu', N'Ha Noi', N'098765123', CAST(N'2021-05-12' AS Date), 1)
INSERT [dbo].[tblKhachHang] ([KhachHangID], [TenDangNhap], [MatKhau], [Email], [CauHoiBiMat], [CauTraLoiBiMat], [HoTen], [NamSinh], [GioiTinh], [DiaChi], [SoDienThoai], [NgayDangKi], [QuyenDangNhap]) VALUES (2, N'nguyenthanhluan', N'123456', N'tluan@gmail.com', N'Name', N'Luan', N'Nguyen Thanh Luan', 2001, N'Nam', N'Ha Noi', N'091233456', CAST(N'2021-04-12' AS Date), 1)
INSERT [dbo].[tblKhachHang] ([KhachHangID], [TenDangNhap], [MatKhau], [Email], [CauHoiBiMat], [CauTraLoiBiMat], [HoTen], [NamSinh], [GioiTinh], [DiaChi], [SoDienThoai], [NgayDangKi], [QuyenDangNhap]) VALUES (3, N'nguyentheduyet', N'123456', N'tduyet@gmail.com', N'Name', N'Duyet', N'Nguyen The Duyet', 2001, N'Nam', N'Ha Tay', N'012341123', CAST(N'2021-05-15' AS Date), 1)
INSERT [dbo].[tblKhachHang] ([KhachHangID], [TenDangNhap], [MatKhau], [Email], [CauHoiBiMat], [CauTraLoiBiMat], [HoTen], [NamSinh], [GioiTinh], [DiaChi], [SoDienThoai], [NgayDangKi], [QuyenDangNhap]) VALUES (4, N'nguyendinhhieu', N'123456', N'dhieu@gmail.com', N'Name', N'Hieu', N'Nguyen Dinh Hieu', 2001, N'Nam', N'Ha Tay', N'098751123', CAST(N'2021-02-12' AS Date), 1)
INSERT [dbo].[tblKhachHang] ([KhachHangID], [TenDangNhap], [MatKhau], [Email], [CauHoiBiMat], [CauTraLoiBiMat], [HoTen], [NamSinh], [GioiTinh], [DiaChi], [SoDienThoai], [NgayDangKi], [QuyenDangNhap]) VALUES (5, N'Dao Van Duc', N'123456', N'dduc@gmail.com', N'Name', N'Duc', N'Dao Van Duc', 2001, N'Nam', N'Thai Binh', N'091233456', CAST(N'2021-01-12' AS Date), 1)
SET IDENTITY_INSERT [dbo].[tblKhachHang] OFF
GO
INSERT [dbo].[tblKhoHang] ([KhoHangID], [TenKho], [TenViTriKho], [DiaChiKho], [SoLuongMax]) VALUES (333, N'Kho A', N'Khu A', N'166 Trường Chinh, Hà Nội', 50)
INSERT [dbo].[tblKhoHang] ([KhoHangID], [TenKho], [TenViTriKho], [DiaChiKho], [SoLuongMax]) VALUES (444, N'Kho B', N'Khu B', N'3 Cầu Giấy, Hà Nội', 70)
INSERT [dbo].[tblKhoHang] ([KhoHangID], [TenKho], [TenViTriKho], [DiaChiKho], [SoLuongMax]) VALUES (555, N'Kho C', N'Khu C', N'185 Chùa Láng, Hà Nội', 80)
INSERT [dbo].[tblKhoHang] ([KhoHangID], [TenKho], [TenViTriKho], [DiaChiKho], [SoLuongMax]) VALUES (666, N'Kho D', N'Khu D', N'1002 Đường láng, Hà Nội', 40)
GO
INSERT [dbo].[tblNhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [TenGiaoDich], [SoDienThoai], [Email], [DiaChi]) VALUES (1, N'Hai Duong', N'001', N'098765121', N'HaiDuong@gmail.com', N'Hai Duong')
INSERT [dbo].[tblNhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [TenGiaoDich], [SoDienThoai], [Email], [DiaChi]) VALUES (2, N'Ninh Thuan', N'002', N'098765122', N'NinhThuan@gmail.com', N'Ninh Thuan')
INSERT [dbo].[tblNhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [TenGiaoDich], [SoDienThoai], [Email], [DiaChi]) VALUES (3, N'Da Nang', N'003', N'098765123', N'DaNang@gmail.com', N'Da Nang')
INSERT [dbo].[tblNhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [TenGiaoDich], [SoDienThoai], [Email], [DiaChi]) VALUES (4, N'Hai Phong', N'004', N'098765124', N'HaiPhong@gmail.com', N'Hai Phong')
INSERT [dbo].[tblNhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [TenGiaoDich], [SoDienThoai], [Email], [DiaChi]) VALUES (5, N'Ha Noi', N'005', N'098765125', N'HaNoi@gmail.com', N'Ha Noi')
GO
INSERT [dbo].[tblNhomSp] ([NhomSpID], [TenNhomSp]) VALUES (111, N'Laptop')
INSERT [dbo].[tblNhomSp] ([NhomSpID], [TenNhomSp]) VALUES (222, N'Phụ kiện')
GO
INSERT [dbo].[tblPhanQuyen] ([PhanQuyenID], [TenQuyen], [LoaiQuyen]) VALUES (1, N'Quan ly toan bo tai khoan', N'admin')
INSERT [dbo].[tblPhanQuyen] ([PhanQuyenID], [TenQuyen], [LoaiQuyen]) VALUES (2, N'nhanvien', N'staff')
INSERT [dbo].[tblPhanQuyen] ([PhanQuyenID], [TenQuyen], [LoaiQuyen]) VALUES (3, N'Quan ly nhan vien', N'lead')
INSERT [dbo].[tblPhanQuyen] ([PhanQuyenID], [TenQuyen], [LoaiQuyen]) VALUES (4, N'Quan ly', N'manager')
GO
INSERT [dbo].[tblPhieuNhap] ([PhieuNhapID], [NgayNhap], [tblNhaCungCap_NhaCungCapID], [tblTaiKhoan_TaiKhoanID]) VALUES (1, CAST(N'2021-02-12' AS Date), 1, 1)
INSERT [dbo].[tblPhieuNhap] ([PhieuNhapID], [NgayNhap], [tblNhaCungCap_NhaCungCapID], [tblTaiKhoan_TaiKhoanID]) VALUES (2, CAST(N'2021-04-20' AS Date), 1, 1)
INSERT [dbo].[tblPhieuNhap] ([PhieuNhapID], [NgayNhap], [tblNhaCungCap_NhaCungCapID], [tblTaiKhoan_TaiKhoanID]) VALUES (3, CAST(N'2021-01-10' AS Date), 2, 1)
INSERT [dbo].[tblPhieuNhap] ([PhieuNhapID], [NgayNhap], [tblNhaCungCap_NhaCungCapID], [tblTaiKhoan_TaiKhoanID]) VALUES (4, CAST(N'2021-08-16' AS Date), 3, 1)
INSERT [dbo].[tblPhieuNhap] ([PhieuNhapID], [NgayNhap], [tblNhaCungCap_NhaCungCapID], [tblTaiKhoan_TaiKhoanID]) VALUES (5, CAST(N'2021-06-15' AS Date), 4, 1)
GO
INSERT [dbo].[tblPhieuXuat] ([PhieuXuatID], [NgayXuat], [tblTaiKhoan_TaiKhoanID]) VALUES (1, CAST(N'2022-01-24' AS Date), 1)
INSERT [dbo].[tblPhieuXuat] ([PhieuXuatID], [NgayXuat], [tblTaiKhoan_TaiKhoanID]) VALUES (2, CAST(N'2022-01-25' AS Date), 2)
INSERT [dbo].[tblPhieuXuat] ([PhieuXuatID], [NgayXuat], [tblTaiKhoan_TaiKhoanID]) VALUES (3, CAST(N'2022-01-26' AS Date), 1)
INSERT [dbo].[tblPhieuXuat] ([PhieuXuatID], [NgayXuat], [tblTaiKhoan_TaiKhoanID]) VALUES (4, CAST(N'2022-02-24' AS Date), 3)
INSERT [dbo].[tblPhieuXuat] ([PhieuXuatID], [NgayXuat], [tblTaiKhoan_TaiKhoanID]) VALUES (5, CAST(N'2022-01-12' AS Date), 4)
GO
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (2220, N'Tai nghe tai mèo J97', N'Việt Nam', N'Kết nối Jack 3.5 mm, Tai mèo có LED trang trí', CAST(3.80 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 5, 1110, 333, N'Tainghetaimeoj97.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (2221, N'Tai nghe chụp tai Sony', N'Việt Nam', N'Dải âm tần: 20 Hz–20,000 Hz, Độ nhạy 102dB/mW', CAST(1.80 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 5, 1110, 333, N'sony.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (2222, N'Chuột Gaming', N'Việt Nam', N'Chuột gaming Lanjun MI344, Bảo hành : 12 tháng', CAST(2.50 AS Decimal(8, 2)), 13, 0, 1, 1, 1, 5, 1110, 444, N'chuotgaming.png')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (2223, N'Bộ vệ sinh Laptop', N'Việt Nam', N'Lọ dung dịch làm sạch, Chổi lông mềm,Khăn lau,Xịt hơi', CAST(0.30 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 5, 1110, 333, N'vesinhlaptop.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (2224, N'Đế tản nhiệt', N'Việt Nam', N'Màu sắc:  Đen, Thiết kế: 01 Quạt, Bảo hành: 03 tháng', CAST(1.50 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 5, 1110, 333, N'detannhiet.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (2225, N'Chuột không dây', N'Việt Nam', N'Màu sắc:  đen-đỏ, trắng-xanh., DPI : 1200 dpi, Số nút bấm: 3 nút', CAST(3.80 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 5, 1110, 333, N'chuotkoday.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (2226, N'Loa Lenovo', N'Việt Nam', N'Kết nối Jack 3.5 mm, Màu đen', CAST(3.80 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 5, 1110, 333, N'loalenovo.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (2227, N'Balo Laptop', N'Việt Nam', N'Kết nối Jack 3.5 mm, màu đen', CAST(3.80 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 5, 1110, 333, N'balolaptop.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11100, N'MacBook Pro 2022 13 inch', N'Nhật Bản', N'CPU: Intel Core i5 1.4GHz quad‑core 8th‑generation, Turbo Boost up to 3.9GHz, Màn hình: 13.3 inch, Retina (2560 x 1600 pixels), RAM: 8GB, SSD: 256GB', CAST(30.20 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 15, 1110, 333, N'macbook13.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11101, N'MacBook Air 2018 13 inch', N'Nhật Bản', N'Màn hình 13.3'' Retina công nghệ IPS độ phân giải 2560 x 1600px, RAM 8GB, SSD 256GB, Vi xử lí: CPU Intel Core i5 thế hệ thứ 8 - Chip Apple T2', CAST(21.00 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 15, 1110, 333, N'macbook2018.png')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11102, N'MacBook Pro 2017 13 inch', N'Hàn Quốc', N'CPU: Intel Core i5 1.4GHz quad‑core 8th‑generation, Turbo Boost up to 3.9GHz, Màn hình: 13.3 inch, Retina (2560 x 1600 pixels), RAM: 8GB, SSD: 256GB', CAST(30.20 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 10, 1110, 444, N'macbook2017.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11103, N'MacBook Pro 2010 13 inch', N'Nhật Bản', N'CPU: Intel Core i5 1.4GHz quad‑core 8th‑generation, Turbo Boost up to 3.9GHz, Màn hình: 13.3 inch, Retina (2560 x 1600 pixels), RAM: 8GB, SSD: 256GB', CAST(7.00 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 5, 1110, 333, N'macbook2010.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11104, N'Dell Core Latide i5', N'Mỹ', N'Màn hình: 14.0 inch Anti-Glare LED Backlit Display HD 1366x768, CPU: Intel Core™ i5 6200U 2.3GHz upto 2.8GHz, 3 MB Intel® Smart Cache, RAM: 8GB DDR4 2133MHz, SSD: 256GB SATA3', CAST(8.50 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 10, 1110, 555, N'delli5.png')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11105, N'Dell Core Inspỉon 5510 Latide i5', N'Nhật Bản', N'Màn hình: 15.0 inch Anti-Glare LED Backlit Display HD 1366x768, CPU: Intel Core™ i5 6200U 2.3GHz upto 2.8GHz, 3 MB Intel® Smart Cache, RAM: 8GB DDR4 2133MHz, SSD: 256GB SATA3', CAST(13.70 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 10, 1110, 666, N'dellInspiron5510.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11106, N'Dell Core XPS i5', N'Hàn Quốc', N'Màn hình: 17.0 inch Anti-Glare LED Backlit Display HD 1366x768, CPU: Intel Core™ i5 6200U 2.3GHz upto 2.8GHz, 3 MB Intel® Smart Cache, RAM: 8GB DDR4 2133MHz, SSD: 256GB SATA3', CAST(8.50 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 10, 1110, 333, N'dellXPSi5.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11107, N'Dell Core Latide i5', N'Mỹ', N'Màn hình: 14.0 inch Anti-Glare LED Backlit Display HD 1366x768, CPU: Intel Core™ i5 6200U 2.3GHz upto 2.8GHz, 3 MB Intel® Smart Cache, RAM: 8GB DDR4 2133MHz, SSD: 256GB SATA3', CAST(3.50 AS Decimal(8, 2)), 5, 0, 1, 1, 1, 10, 1110, 444, N'dellcorelatidei5.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11110, N'Dell Gaming 5590 i7', N'Việt Nam', N'Màn hình: 15.6-Inch FHD (1920 x 1080) Anti-Glare LED Backlight Non-Touch Narrow Border IPS Display, CPU: 8th Generation Intel Core i7-8750H Processor, RAM: 8GB DDR4 2666MHz, SSD: 256GB M.2 PCIe NVMe', CAST(30.20 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 15, 1111, 333, N'dell5590i7.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11111, N'Dell Vostro 5590 i5', N'Hàn Quốc', N'Màn hình: 13.7-Inch FHD (1920 x 1080) Anti-Glare LED Backlight Non-Touch Narrow Border IPS Display, CPU: 8th Generation Intel Core i7-8750H Processor, RAM: 8GB DDR4 2666MHz, SSD: 256GB M.2 PCIe NVMe', CAST(17.10 AS Decimal(8, 2)), 7, 0, 1, 1, 1, 15, 1111, 444, N'dell5590i5.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11112, N'Dell Gaming G7 i7', N'Việt Nam', N'Màn hình: 18.7-Inch FHD (1920 x 1080) Anti-Glare LED Backlight Non-Touch Narrow Border IPS Display, CPU: 8th Generation Intel Core i7-8750H Processor, RAM: 8GB DDR4 2666MHz, SSD: 256GB M.2 PCIe NVMe', CAST(30.20 AS Decimal(8, 2)), 13, 0, 1, 1, 1, 5, 1111, 333, N'dellG7i7.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11113, N'Dell Gaming G3 i7', N'Nhật Bản', N'Màn hình: 15.6-Inch FHD (1920 x 1080) Anti-Glare LED Backlight Non-Touch Narrow Border IPS Display, CPU: 8th Generation Intel Core i7-8750H Processor, RAM: 8GB DDR4 2666MHz, SSD: 256GB M.2 PCIe NVMe', CAST(13.70 AS Decimal(8, 2)), 20, 0, 1, 1, 1, 15, 1111, 555, N'dellG3i7.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11114, N'Asus GL552VX i5', N'Việt Nam', N'Màn hình: 20.7-Inch FHD (1920 x 1080) Anti-Glare LED Backlight Non-Touch Narrow Border IPS Display, CPU: 8th Generation Intel Core i7-8750H Processor, RAM: 8GB DDR4 2666MHz, SSD: 256GB M.2 PCIe NVMe', CAST(30.70 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 15, 1111, 333, N'asusGL552VXi5.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11115, N'Dell Insipron 5590 i7', N'Hàn Quốc', N'Màn hình: 15.6-Inch FHD (1920 x 1080) Anti-Glare LED Backlight Non-Touch Narrow Border IPS Display, CPU: 8th Generation Intel Core i7-8750H Processor, RAM: 8GB DDR4 2666MHz, SSD: 256GB M.2 PCIe NVMe', CAST(30.20 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 15, 1111, 555, N'dellInsiproni7.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11116, N'Acer Aspỉe', N'Việt Nam', N'Màn hình: 15.6-Inch FHD (1920 x 1080) Anti-Glare LED Backlight Non-Touch Narrow Border IPS Display, CPU: 8th Generation Intel Core i7-8750H Processor, RAM: 8GB DDR4 2666MHz, SSD: 256GB M.2 PCIe NVMe', CAST(19.70 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 15, 1111, 333, N'acer.png')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11117, N'Acer Nitro', N'Việt Nam', N'Màn hình: 17-Inch FHD (1920 x 1080) Anti-Glare LED Backlight Non-Touch Narrow Border IPS Display, CPU: 8th Generation Intel Core i7-8750H Processor, RAM: 8GB DDR4 2666MHz, SSD: 256GB M.2 PCIe NVMe', CAST(30.20 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 15, 1111, 333, N'acerNitro.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11120, N'HP 250 G7', N'Hàn Quốc', N'Màn Hình : 15.6 inch HD (1366 x 768) 60Hz Anti Glare Panel HD LED Backlit, Bộ Vi xử lý : Intel® Core™ i3-1005G1 (1.20 Ghz upto 3.40Ghz, 4MB cache, 2 cores 4 threads), Bộ Nhớ Ram : 4GB DDR4, Ổ Cứng : 128GB SSD Sata', CAST(7.00 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 5, 1112, 333, N'hp250G7.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11121, N'HP ProBook 645', N'Hàn Quốc', N'Màn Hình : 13.7 inch HD (1366 x 768) 60Hz Anti Glare Panel HD LED Backlit, Bộ Vi xử lý : Intel® Core™ i3-1005G1 (1.20 Ghz upto 3.40Ghz, 4MB cache, 2 cores 4 threads), Bộ Nhớ Ram : 4GB DDR4, Ổ Cứng : 128GB SSD Sata', CAST(8.70 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 5, 1112, 444, N'hpProBook645.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11122, N'Laptop HP', N'Việt Nam', N'Màn Hình : 15.6 inch HD (1366 x 768) 60Hz Anti Glare Panel HD LED Backlit, Bộ Vi xử lý : Intel® Core™ i3-1005G1 (1.20 Ghz upto 3.40Ghz, 4MB cache, 2 cores 4 threads), Bộ Nhớ Ram : 4GB DDR4, Ổ Cứng : 128GB SSD Sata', CAST(8.00 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 5, 1112, 333, N'hp.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11123, N'HP Folio', N'Nhật Bản', N'Màn Hình : 15.6 inch HD (1366 x 768) 60Hz Anti Glare Panel HD LED Backlit, Bộ Vi xử lý : Intel® Core™ i3-1005G1 (1.20 Ghz upto 3.40Ghz, 4MB cache, 2 cores 4 threads), Bộ Nhớ Ram : 4GB DDR4, Ổ Cứng : 128GB SSD Sata', CAST(10.00 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 10, 1112, 333, N'hpFolio.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11124, N'Dell Vostro', N'Trung Quốc', N'Màn Hình : 15.6 inch HD (1366 x 768) 60Hz Anti Glare Panel HD LED Backlit, Bộ Vi xử lý : Intel® Core™ i3-1005G1 (1.20 Ghz upto 3.40Ghz, 4MB cache, 2 cores 4 threads), Bộ Nhớ Ram : 4GB DDR4, Ổ Cứng : 128GB SSD Sata', CAST(5.00 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 5, 1112, 555, N'dellVostro.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11125, N'HP 170', N'Hàn Quốc', N'Màn Hình : 15.6 inch HD (1366 x 768) 60Hz Anti Glare Panel HD LED Backlit, Bộ Vi xử lý : Intel® Core™ i3-1005G1 (1.20 Ghz upto 3.40Ghz, 4MB cache, 2 cores 4 threads), Bộ Nhớ Ram : 4GB DDR4, Ổ Cứng : 128GB SSD Sata', CAST(7.00 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 5, 1112, 333, N'hp170.png')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11126, N'HP 30', N'Nhật Bản', N'Màn Hình : 15.6 inch HD (1366 x 768) 60Hz Anti Glare Panel HD LED Backlit, Bộ Vi xử lý : Intel® Core™ i3-1005G1 (1.20 Ghz upto 3.40Ghz, 4MB cache, 2 cores 4 threads), Bộ Nhớ Ram : 4GB DDR4, Ổ Cứng : 128GB SSD Sata', CAST(7.10 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 5, 1112, 333, N'hp30.png')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11127, N'Asus GL552Vx', N'Việt Nam', N'Màn Hình : 15.6 inch HD (1366 x 768) 60Hz Anti Glare Panel HD LED Backlit, Bộ Vi xử lý : Intel® Core™ i3-1005G1 (1.20 Ghz upto 3.40Ghz, 4MB cache, 2 cores 4 threads), Bộ Nhớ Ram : 4GB DDR4, Ổ Cứng : 128GB SSD Sata', CAST(13.00 AS Decimal(8, 2)), 10, 0, 1, 1, 1, 10, 1112, 666, N'asus-gl552vx.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11130, N'Dell Precision 7720 Core i7', N'Nhật Bản', N'Màn hình: 17.3" UltraSharp™ FHD IPS (1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee, CPU: Intel i7 7820HQ, RAM: 16GB PC4 - 2400MHz', CAST(30.50 AS Decimal(8, 2)), 13, 0, 1, 1, 1, 5, 1113, 666, N'dell7720.png')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11131, N'Lenovo Thinkpad Core i7', N'Nhật Bản', N'Màn hình: 19.3" UltraSharp™ FHD IPS (1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee, CPU: Intel i7 7820HQ, RAM: 16GB PC4 - 2400MHz', CAST(21.70 AS Decimal(8, 2)), 13, 0, 1, 1, 1, 10, 1113, 333, N'lenovoThinkpad.png')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11132, N'Dell Precision 7721', N'Hàn Quốc', N'Màn hình: 21.3" UltraSharp™ FHD IPS (1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee, CPU: Intel i7 7820HQ, RAM: 16GB PC4 - 2400MHz', CAST(19.00 AS Decimal(8, 2)), 13, 0, 1, 1, 1, 5, 1113, 666, N'dell7721.png')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11133, N'Macbook 12 Core i7', N'Việt Nam', N'Màn hình: 13.7" UltraSharp™ FHD IPS (1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee, CPU: Intel i7 7820HQ, RAM: 16GB PC4 - 2400MHz', CAST(27.70 AS Decimal(8, 2)), 17, 0, 1, 1, 1, 10, 1113, 333, N'macbook12.png')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11134, N'Lenovo Thinkpad T490', N'Nhật Bản', N'Màn hình: 17.3" UltraSharp™ FHD IPS (1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee, CPU: Intel i7 7820HQ, RAM: 16GB PC4 - 2400MHz', CAST(21.00 AS Decimal(8, 2)), 13, 0, 1, 1, 1, 5, 1113, 444, N'lenovoT490.png')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11135, N'HP', N'Hàn Quốc', N'Màn hình: 17.3" UltraSharp™ FHD IPS (1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee, CPU: Intel i7 7820HQ, RAM: 16GB PC4 - 2400MHz', CAST(30.50 AS Decimal(8, 2)), 13, 0, 1, 1, 1, 5, 1113, 666, N'hpi5.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11136, N'Thinkpad', N'Nhật Bản', N'Màn hình: 17.3" UltraSharp™ FHD IPS (1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee, CPU: Intel i7 7820HQ, RAM: 16GB PC4 - 2400MHz', CAST(19.00 AS Decimal(8, 2)), 8, 0, 1, 1, 1, 5, 1113, 333, N'ThinkPad.jpg')
INSERT [dbo].[tblSanPham] ([SanPhamID], [TenSanPham], [XuatXu], [MoTa], [GiaBan], [SoLuongTonTon], [SoLuotXem], [ConHang], [BanChay], [HienThi], [FK_GiamGiaID], [FK_DanhMucID], [FK_KhoHangID], [Image]) VALUES (11137, N'Dell Precision 7720 Core i7', N'Nhật Bản', N'Màn hình: 17.3" UltraSharp™ FHD IPS (1920x1080) Wide View Anti-Glare LED-backlit with Premium Panel Guarantee, CPU: Intel i7 7820HQ, RAM: 16GB PC4 - 2400MHz', CAST(21.50 AS Decimal(8, 2)), 7, 0, 1, 1, 1, 5, 1113, 444, N'dell7720i7.png')
GO
INSERT [dbo].[tblTaiKhoan] ([TaiKhoanID], [TenDangNhap], [MatKhau], [Email], [CauHoiBiMat], [CauTraLoiBiMat], [ChucVu], [HoTen], [NamSinh], [SoDienThoai], [DiaChi], [QuyenDangNhap], [GioiTinh], [NgayDangKi]) VALUES (1, N'dothuphuong', N'123456', N'thuphuong@gmail.com', N'Nam sinh', N'2001', N'manager', N'Do Thu Phuong', 2001, N'0987654221', N'Ha Noi', 1, N'Nu', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[tblTaiKhoan] ([TaiKhoanID], [TenDangNhap], [MatKhau], [Email], [CauHoiBiMat], [CauTraLoiBiMat], [ChucVu], [HoTen], [NamSinh], [SoDienThoai], [DiaChi], [QuyenDangNhap], [GioiTinh], [NgayDangKi]) VALUES (2, N'nguyentheduyet', N'123456', N'theduyet@gmail.com', N'Nam sinh', N'2001', N'admin', N'Nguyen THe Duyet', 2001, N'0987654222', N'Ha Noi', 1, N'Nam', CAST(N'2020-05-01' AS Date))
INSERT [dbo].[tblTaiKhoan] ([TaiKhoanID], [TenDangNhap], [MatKhau], [Email], [CauHoiBiMat], [CauTraLoiBiMat], [ChucVu], [HoTen], [NamSinh], [SoDienThoai], [DiaChi], [QuyenDangNhap], [GioiTinh], [NgayDangKi]) VALUES (3, N'nguyenthanhluan', N'123456', N'thanhluan@gmail.com', N'Nam sinh', N'2001', N'manager', N'Nguyen Thanh Luan', 2001, N'0987654221', N'Ha Noi', 1, N'Nam', CAST(N'2020-01-04' AS Date))
INSERT [dbo].[tblTaiKhoan] ([TaiKhoanID], [TenDangNhap], [MatKhau], [Email], [CauHoiBiMat], [CauTraLoiBiMat], [ChucVu], [HoTen], [NamSinh], [SoDienThoai], [DiaChi], [QuyenDangNhap], [GioiTinh], [NgayDangKi]) VALUES (4, N'nguyendinhhieu', N'123456', N'hieu@gmail.com', N'Nam sinh', N'2001', N'lead', N'Nguyen Dinh Hieu', 2001, N'0987654221', N'Ha Noi', 1, N'Nam', CAST(N'2020-01-03' AS Date))
INSERT [dbo].[tblTaiKhoan] ([TaiKhoanID], [TenDangNhap], [MatKhau], [Email], [CauHoiBiMat], [CauTraLoiBiMat], [ChucVu], [HoTen], [NamSinh], [SoDienThoai], [DiaChi], [QuyenDangNhap], [GioiTinh], [NgayDangKi]) VALUES (5, N'daovanduc', N'123456', N'duc@gmail.com', N'Nam sinh', N'2001', N'manager', N'Dao Van Duc', 2001, N'0987654221', N'Ha Noi', 1, N'Nam', CAST(N'2020-01-02' AS Date))
GO
INSERT [dbo].[tblTaiKhoanQuyen] ([TaiKhoanQuyen], [tblTaiKhoan_TaiKhoanID], [tblPhanQuyen_PhanQuyenID]) VALUES (1, 1, 1)
INSERT [dbo].[tblTaiKhoanQuyen] ([TaiKhoanQuyen], [tblTaiKhoan_TaiKhoanID], [tblPhanQuyen_PhanQuyenID]) VALUES (2, 2, 2)
INSERT [dbo].[tblTaiKhoanQuyen] ([TaiKhoanQuyen], [tblTaiKhoan_TaiKhoanID], [tblPhanQuyen_PhanQuyenID]) VALUES (3, 3, 3)
INSERT [dbo].[tblTaiKhoanQuyen] ([TaiKhoanQuyen], [tblTaiKhoan_TaiKhoanID], [tblPhanQuyen_PhanQuyenID]) VALUES (4, 4, 4)
GO
INSERT [dbo].[tblThanhToan] ([ThanhToanID], [NgayThanhToan], [SoTien], [tblTaiKhoan_TaiKhoanID], [TrangThai], [tblDonHang_DonHangID]) VALUES (1, CAST(N'2021-12-25' AS Date), CAST(1500000.00 AS Decimal(10, 2)), 1, 1, 1)
INSERT [dbo].[tblThanhToan] ([ThanhToanID], [NgayThanhToan], [SoTien], [tblTaiKhoan_TaiKhoanID], [TrangThai], [tblDonHang_DonHangID]) VALUES (2, CAST(N'2021-02-20' AS Date), CAST(1100000.00 AS Decimal(10, 2)), 2, 1, 2)
INSERT [dbo].[tblThanhToan] ([ThanhToanID], [NgayThanhToan], [SoTien], [tblTaiKhoan_TaiKhoanID], [TrangThai], [tblDonHang_DonHangID]) VALUES (3, CAST(N'2021-04-15' AS Date), CAST(2500000.00 AS Decimal(10, 2)), 3, 1, 3)
INSERT [dbo].[tblThanhToan] ([ThanhToanID], [NgayThanhToan], [SoTien], [tblTaiKhoan_TaiKhoanID], [TrangThai], [tblDonHang_DonHangID]) VALUES (4, CAST(N'2021-06-12' AS Date), CAST(1900000.00 AS Decimal(10, 2)), 4, 1, 4)
INSERT [dbo].[tblThanhToan] ([ThanhToanID], [NgayThanhToan], [SoTien], [tblTaiKhoan_TaiKhoanID], [TrangThai], [tblDonHang_DonHangID]) VALUES (5, CAST(N'2021-12-05' AS Date), CAST(1000000.00 AS Decimal(10, 2)), 5, 1, 5)
GO
ALTER TABLE [dbo].[tblChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [tblChiTietDonHang_tblDonHang] FOREIGN KEY([tblDonHang_DonHangID])
REFERENCES [dbo].[tblDonHang] ([DonHangID])
GO
ALTER TABLE [dbo].[tblChiTietDonHang] CHECK CONSTRAINT [tblChiTietDonHang_tblDonHang]
GO
ALTER TABLE [dbo].[tblChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [tblChiTietDonHang_tblSanPham] FOREIGN KEY([tblSanPham_SanPhamID])
REFERENCES [dbo].[tblSanPham] ([SanPhamID])
GO
ALTER TABLE [dbo].[tblChiTietDonHang] CHECK CONSTRAINT [tblChiTietDonHang_tblSanPham]
GO
ALTER TABLE [dbo].[tblChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [tblChiTietPhieuNhap_tblPhieuNhap] FOREIGN KEY([tblPhieuNhap_PhieuNhapID])
REFERENCES [dbo].[tblPhieuNhap] ([PhieuNhapID])
GO
ALTER TABLE [dbo].[tblChiTietPhieuNhap] CHECK CONSTRAINT [tblChiTietPhieuNhap_tblPhieuNhap]
GO
ALTER TABLE [dbo].[tblChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [tblChiTietPhieuNhap_tblSanPham] FOREIGN KEY([tblSanPham_SanPhamID])
REFERENCES [dbo].[tblSanPham] ([SanPhamID])
GO
ALTER TABLE [dbo].[tblChiTietPhieuNhap] CHECK CONSTRAINT [tblChiTietPhieuNhap_tblSanPham]
GO
ALTER TABLE [dbo].[tblChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [tblChiTietPhieuXuat_tblDonHang] FOREIGN KEY([tblDonHang_DonHangID])
REFERENCES [dbo].[tblDonHang] ([DonHangID])
GO
ALTER TABLE [dbo].[tblChiTietPhieuXuat] CHECK CONSTRAINT [tblChiTietPhieuXuat_tblDonHang]
GO
ALTER TABLE [dbo].[tblChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [tblChiTietPhieuXuat_tblPhieuXuat] FOREIGN KEY([tblPhieuXuat_PhieuXuatID])
REFERENCES [dbo].[tblPhieuXuat] ([PhieuXuatID])
GO
ALTER TABLE [dbo].[tblChiTietPhieuXuat] CHECK CONSTRAINT [tblChiTietPhieuXuat_tblPhieuXuat]
GO
ALTER TABLE [dbo].[tblChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [tblChiTietPhieuXuat_tblSanPham] FOREIGN KEY([tblSanPham_SanPhamID])
REFERENCES [dbo].[tblSanPham] ([SanPhamID])
GO
ALTER TABLE [dbo].[tblChiTietPhieuXuat] CHECK CONSTRAINT [tblChiTietPhieuXuat_tblSanPham]
GO
ALTER TABLE [dbo].[tblDanhMuc]  WITH CHECK ADD  CONSTRAINT [tblDanhMuc_tblNhomSp] FOREIGN KEY([tblNhomSp_NhomSpID])
REFERENCES [dbo].[tblNhomSp] ([NhomSpID])
GO
ALTER TABLE [dbo].[tblDanhMuc] CHECK CONSTRAINT [tblDanhMuc_tblNhomSp]
GO
ALTER TABLE [dbo].[tblDonHang]  WITH CHECK ADD  CONSTRAINT [tblDonHang_tblKhachHang] FOREIGN KEY([tblKhachHang_KhachHangID])
REFERENCES [dbo].[tblKhachHang] ([KhachHangID])
GO
ALTER TABLE [dbo].[tblDonHang] CHECK CONSTRAINT [tblDonHang_tblKhachHang]
GO
ALTER TABLE [dbo].[tblPhieuNhap]  WITH CHECK ADD  CONSTRAINT [tblPhieuNhap_tblNhaCungCap] FOREIGN KEY([tblNhaCungCap_NhaCungCapID])
REFERENCES [dbo].[tblNhaCungCap] ([NhaCungCapID])
GO
ALTER TABLE [dbo].[tblPhieuNhap] CHECK CONSTRAINT [tblPhieuNhap_tblNhaCungCap]
GO
ALTER TABLE [dbo].[tblPhieuNhap]  WITH CHECK ADD  CONSTRAINT [tblPhieuNhap_tblTaiKhoan] FOREIGN KEY([tblTaiKhoan_TaiKhoanID])
REFERENCES [dbo].[tblTaiKhoan] ([TaiKhoanID])
GO
ALTER TABLE [dbo].[tblPhieuNhap] CHECK CONSTRAINT [tblPhieuNhap_tblTaiKhoan]
GO
ALTER TABLE [dbo].[tblPhieuXuat]  WITH CHECK ADD  CONSTRAINT [tblPhieuXuat_tblTaiKhoan] FOREIGN KEY([tblTaiKhoan_TaiKhoanID])
REFERENCES [dbo].[tblTaiKhoan] ([TaiKhoanID])
GO
ALTER TABLE [dbo].[tblPhieuXuat] CHECK CONSTRAINT [tblPhieuXuat_tblTaiKhoan]
GO
ALTER TABLE [dbo].[tblSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tblSanPham_tblAnh] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[tblAnh] ([tblSanPham_SanPhamID])
GO
ALTER TABLE [dbo].[tblSanPham] CHECK CONSTRAINT [FK_tblSanPham_tblAnh]
GO
ALTER TABLE [dbo].[tblSanPham]  WITH CHECK ADD  CONSTRAINT [tblGiamGia_tblSanPham] FOREIGN KEY([FK_GiamGiaID])
REFERENCES [dbo].[tblGiamGia] ([GiamGiaID])
GO
ALTER TABLE [dbo].[tblSanPham] CHECK CONSTRAINT [tblGiamGia_tblSanPham]
GO
ALTER TABLE [dbo].[tblSanPham]  WITH CHECK ADD  CONSTRAINT [tblSanPham_tblDanhMuc] FOREIGN KEY([FK_DanhMucID])
REFERENCES [dbo].[tblDanhMuc] ([DanhMucID])
GO
ALTER TABLE [dbo].[tblSanPham] CHECK CONSTRAINT [tblSanPham_tblDanhMuc]
GO
ALTER TABLE [dbo].[tblSanPham]  WITH CHECK ADD  CONSTRAINT [tblSanPham_tblKhoHang] FOREIGN KEY([FK_KhoHangID])
REFERENCES [dbo].[tblKhoHang] ([KhoHangID])
GO
ALTER TABLE [dbo].[tblSanPham] CHECK CONSTRAINT [tblSanPham_tblKhoHang]
GO
ALTER TABLE [dbo].[tblTaiKhoanQuyen]  WITH CHECK ADD  CONSTRAINT [tblTaiKhoanQuyen_tblPhanQuyen] FOREIGN KEY([tblPhanQuyen_PhanQuyenID])
REFERENCES [dbo].[tblPhanQuyen] ([PhanQuyenID])
GO
ALTER TABLE [dbo].[tblTaiKhoanQuyen] CHECK CONSTRAINT [tblTaiKhoanQuyen_tblPhanQuyen]
GO
ALTER TABLE [dbo].[tblTaiKhoanQuyen]  WITH CHECK ADD  CONSTRAINT [tblTaiKhoanQuyen_tblTaiKhoan] FOREIGN KEY([tblTaiKhoan_TaiKhoanID])
REFERENCES [dbo].[tblTaiKhoan] ([TaiKhoanID])
GO
ALTER TABLE [dbo].[tblTaiKhoanQuyen] CHECK CONSTRAINT [tblTaiKhoanQuyen_tblTaiKhoan]
GO
ALTER TABLE [dbo].[tblThanhToan]  WITH CHECK ADD  CONSTRAINT [tblThanhToan_tblDonHang] FOREIGN KEY([tblDonHang_DonHangID])
REFERENCES [dbo].[tblDonHang] ([DonHangID])
GO
ALTER TABLE [dbo].[tblThanhToan] CHECK CONSTRAINT [tblThanhToan_tblDonHang]
GO
ALTER TABLE [dbo].[tblThanhToan]  WITH CHECK ADD  CONSTRAINT [tblThanhToan_tblTaiKhoan] FOREIGN KEY([tblTaiKhoan_TaiKhoanID])
REFERENCES [dbo].[tblTaiKhoan] ([TaiKhoanID])
GO
ALTER TABLE [dbo].[tblThanhToan] CHECK CONSTRAINT [tblThanhToan_tblTaiKhoan]
GO
USE [master]
GO
ALTER DATABASE [WebLaptop] SET  READ_WRITE 
GO
