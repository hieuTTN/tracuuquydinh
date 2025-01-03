USE [BeeFood_JavaSpringBoot]
GO
/****** Object:  User [sa1]    Script Date: 12/26/2024 1:53:39 PM ******/
CREATE USER [sa1] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[id_ban] [uniqueidentifier] NOT NULL,
	[ten_ban] [nvarchar](50) NOT NULL,
	[suc_chua] [int] NOT NULL,
	[trang_thai] [int] NOT NULL,
	[thoi_gian_vao_ban] [datetime] NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[id_khu_vuc] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BanGop]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanGop](
	[id_bangop] [uniqueidentifier] NOT NULL,
	[ten_bangop] [nvarchar](50) NOT NULL,
	[trang_thai] [int] NOT NULL,
	[id_khu_vuc] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_bangop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BanGopChiTiet]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanGopChiTiet](
	[id_bangopchitiet] [uniqueidentifier] NOT NULL,
	[id_ban] [uniqueidentifier] NULL,
	[id_bangop] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_bangopchitiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[id_banner] [uniqueidentifier] NOT NULL,
	[anh_banner] [varchar](255) NULL,
	[link] [nvarchar](255) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[trang_thai] [int] NULL,
	[do_uu_tien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_banner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Combo]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combo](
	[id_combo] [uniqueidentifier] NOT NULL,
	[anh_combo] [varchar](255) NULL,
	[ten_combo] [nvarchar](255) NOT NULL,
	[mo_ta] [nvarchar](255) NULL,
	[gia_goc] [decimal](15, 3) NULL,
	[gia_combo] [decimal](15, 3) NOT NULL,
	[trang_thai] [int] NOT NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_combo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboChiTiet]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboChiTiet](
	[id_combo_chi_tiet] [uniqueidentifier] NOT NULL,
	[trang_thai] [int] NOT NULL,
	[so_luong] [int] NULL,
	[id_do_an_do_uong_chi_tiet] [uniqueidentifier] NULL,
	[id_combo] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_combo_chi_tiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoSo]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoSo](
	[id_co_so] [uniqueidentifier] NOT NULL,
	[ten_co_so] [nvarchar](100) NULL,
	[SucChua] [int] NULL,
	[DienTich] [float] NULL,
	[SoTang] [int] NULL,
	[GioMoCua] [datetime] NULL,
	[HoatDong] [int] NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SoDienThoaiChiNhanh] [varchar](11) NULL,
	[GhiChu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_co_so] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[id_danh_muc] [uniqueidentifier] NOT NULL,
	[anh_danh_muc] [varchar](255) NULL,
	[ten_danh_muc] [nvarchar](255) NOT NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [int] NOT NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_danh_muc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoAn_DoUong]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoAn_DoUong](
	[id_do_an_do_uong] [uniqueidentifier] NOT NULL,
	[ten_do_an_do_uong] [nvarchar](100) NOT NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [int] NOT NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
	[don_vi] [nvarchar](30) NULL,
	[id_danh_muc] [uniqueidentifier] NULL,
	[tra_hang] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_do_an_do_uong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoAn_DoUong_image]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoAn_DoUong_image](
	[id_anh_do_an_do_uong] [uniqueidentifier] NOT NULL,
	[anh_do_an_do_uong] [varchar](255) NULL,
	[id_do_an_do_uong] [uniqueidentifier] NULL,
	[do_uu_tien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_anh_do_an_do_uong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoAnDoUongChiTiet]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoAnDoUongChiTiet](
	[id_do_an_do_uong_chi_tiet] [uniqueidentifier] NOT NULL,
	[ten_do_an_do_uong_chi_tiet] [nvarchar](100) NULL,
	[anh_do_an_do_uong_chi_tiet] [varchar](255) NULL,
	[gia] [decimal](15, 3) NOT NULL,
	[trang_thai] [int] NOT NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
	[id_do_an_do_uong] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_do_an_do_uong_chi_tiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[id_hoa_don] [uniqueidentifier] NOT NULL,
	[thoi_gian_dat] [datetime] NOT NULL,
	[ngay_cap_nhat] [datetime] NULL,
	[tong_thanh_toan] [decimal](15, 3) NULL,
	[tong_tien_hang] [decimal](15, 3) NULL,
	[phi_van_chuyen] [decimal](15, 3) NULL,
	[ghi_chu] [nvarchar](255) NULL,
	[id_nv] [uniqueidentifier] NULL,
	[id_phieu_giam_gia] [uniqueidentifier] NULL,
	[id_khach_hang] [uniqueidentifier] NULL,
	[id_ban] [uniqueidentifier] NULL,
	[id_bangop] [uniqueidentifier] NULL,
	[loai_don] [int] NULL,
	[trang_thai] [int] NOT NULL,
	[trang_thai_thanh_toan] [int] NULL,
	[cookie_khach_hang] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_hoa_don] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[id_hoa_don_chi_tiet] [uniqueidentifier] NOT NULL,
	[so_luong] [int] NOT NULL,
	[ghi_chu] [nvarchar](255) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[trang_thai] [int] NULL,
	[id_hoa_don] [uniqueidentifier] NULL,
	[id_do_an_do_uong_chi_tiet] [uniqueidentifier] NULL,
	[id_combo] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_hoa_don_chi_tiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[id_khach_hang] [uniqueidentifier] NOT NULL,
	[ho_va_ten] [nvarchar](100) NULL,
	[ngay_sinh] [date] NULL,
	[gioi_tinh] [int] NULL,
	[email] [varchar](100) NULL,
	[sdt] [varchar](11) NOT NULL,
	[dia_chi] [nvarchar](255) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[trang_thai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_khach_hang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[id_khu_vuc] [uniqueidentifier] NOT NULL,
	[ten_khu_vuc] [nvarchar](50) NOT NULL,
	[ten_viet_tat] [nvarchar](50) NOT NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[trang_thai] [int] NOT NULL,
	[suc_chua] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_khu_vuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[id_nv] [uniqueidentifier] NOT NULL,
	[anh_nhan_vien] [varchar](255) NULL,
	[ma_nv] [varchar](15) NULL,
	[ho_va_ten] [nvarchar](100) NOT NULL,
	[ngay_sinh] [date] NULL,
	[gioi_tinh] [int] NOT NULL,
	[dia_chi] [nvarchar](255) NULL,
	[chuc_vu] [int] NOT NULL,
	[lam_tu_ngay] [datetime] NULL,
	[ngay_sua] [datetime] NULL,
	[trang_thai] [int] NOT NULL,
	[sdt] [varchar](11) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[mat_khau] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuGiamGia]    Script Date: 12/26/2024 1:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuGiamGia](
	[id_phieu_giam_gia] [uniqueidentifier] NOT NULL,
	[ten_giam_gia] [nvarchar](100) NOT NULL,
	[so_luong] [int] NOT NULL,
	[tien_giam] [decimal](15, 3) NULL,
	[phan_tram_giam] [varchar](4) NULL,
	[gia_tri_tu] [decimal](15, 3) NULL,
	[gia_tri_den] [decimal](15, 3) NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [int] NOT NULL,
	[tu_ngay] [datetime] NULL,
	[den_ngay] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_phieu_giam_gia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'5b7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B1', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'5c7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B2', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'5d7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B3', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'5e7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B4', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'5f7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B5', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'607fcfaf-fdc1-ef11-af2b-141333c92d46', N'B6', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'617fcfaf-fdc1-ef11-af2b-141333c92d46', N'B7', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'627fcfaf-fdc1-ef11-af2b-141333c92d46', N'B8', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'637fcfaf-fdc1-ef11-af2b-141333c92d46', N'B9', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'647fcfaf-fdc1-ef11-af2b-141333c92d46', N'B10', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'657fcfaf-fdc1-ef11-af2b-141333c92d46', N'B11', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'667fcfaf-fdc1-ef11-af2b-141333c92d46', N'B12', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'677fcfaf-fdc1-ef11-af2b-141333c92d46', N'B13', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'687fcfaf-fdc1-ef11-af2b-141333c92d46', N'B14', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'697fcfaf-fdc1-ef11-af2b-141333c92d46', N'B15', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'6a7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B16', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'6b7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B17', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'6c7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B18', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'6d7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B19', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'6e7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B20', 4, 1, NULL, CAST(N'2024-12-24T20:48:00.303' AS DateTime), NULL, N'577fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'6f7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B21', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'707fcfaf-fdc1-ef11-af2b-141333c92d46', N'B22', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'717fcfaf-fdc1-ef11-af2b-141333c92d46', N'B23', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'727fcfaf-fdc1-ef11-af2b-141333c92d46', N'B24', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'737fcfaf-fdc1-ef11-af2b-141333c92d46', N'B25', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'747fcfaf-fdc1-ef11-af2b-141333c92d46', N'B26', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'757fcfaf-fdc1-ef11-af2b-141333c92d46', N'B27', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'767fcfaf-fdc1-ef11-af2b-141333c92d46', N'B28', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'777fcfaf-fdc1-ef11-af2b-141333c92d46', N'B29', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'787fcfaf-fdc1-ef11-af2b-141333c92d46', N'B30', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'797fcfaf-fdc1-ef11-af2b-141333c92d46', N'B31', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'7a7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B32', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'7b7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B33', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'7c7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B34', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'7d7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B35', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'7e7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B36', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'7f7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B37', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'807fcfaf-fdc1-ef11-af2b-141333c92d46', N'B38', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'817fcfaf-fdc1-ef11-af2b-141333c92d46', N'B39', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'827fcfaf-fdc1-ef11-af2b-141333c92d46', N'B40', 6, 1, NULL, CAST(N'2024-12-24T20:48:00.327' AS DateTime), NULL, N'587fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'837fcfaf-fdc1-ef11-af2b-141333c92d46', N'B41', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'847fcfaf-fdc1-ef11-af2b-141333c92d46', N'B42', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'857fcfaf-fdc1-ef11-af2b-141333c92d46', N'B43', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'867fcfaf-fdc1-ef11-af2b-141333c92d46', N'B44', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'877fcfaf-fdc1-ef11-af2b-141333c92d46', N'B45', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'887fcfaf-fdc1-ef11-af2b-141333c92d46', N'B46', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'897fcfaf-fdc1-ef11-af2b-141333c92d46', N'B47', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'8a7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B48', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'8b7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B49', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'8c7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B50', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'8d7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B51', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'8e7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B52', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'8f7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B53', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'907fcfaf-fdc1-ef11-af2b-141333c92d46', N'B54', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'917fcfaf-fdc1-ef11-af2b-141333c92d46', N'B55', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'927fcfaf-fdc1-ef11-af2b-141333c92d46', N'B56', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'937fcfaf-fdc1-ef11-af2b-141333c92d46', N'B57', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'947fcfaf-fdc1-ef11-af2b-141333c92d46', N'B58', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'957fcfaf-fdc1-ef11-af2b-141333c92d46', N'B59', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'967fcfaf-fdc1-ef11-af2b-141333c92d46', N'B60', 8, 1, NULL, CAST(N'2024-12-24T20:48:00.357' AS DateTime), NULL, N'597fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'977fcfaf-fdc1-ef11-af2b-141333c92d46', N'B61', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'987fcfaf-fdc1-ef11-af2b-141333c92d46', N'B62', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'997fcfaf-fdc1-ef11-af2b-141333c92d46', N'B63', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'9a7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B64', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'9b7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B65', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'9c7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B66', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'9d7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B67', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'9e7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B68', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'9f7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B69', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'a07fcfaf-fdc1-ef11-af2b-141333c92d46', N'B70', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'a17fcfaf-fdc1-ef11-af2b-141333c92d46', N'B71', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'a27fcfaf-fdc1-ef11-af2b-141333c92d46', N'B72', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'a37fcfaf-fdc1-ef11-af2b-141333c92d46', N'B73', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'a47fcfaf-fdc1-ef11-af2b-141333c92d46', N'B74', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'a57fcfaf-fdc1-ef11-af2b-141333c92d46', N'B75', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'a67fcfaf-fdc1-ef11-af2b-141333c92d46', N'B76', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'a77fcfaf-fdc1-ef11-af2b-141333c92d46', N'B77', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'a87fcfaf-fdc1-ef11-af2b-141333c92d46', N'B78', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'a97fcfaf-fdc1-ef11-af2b-141333c92d46', N'B79', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[Ban] ([id_ban], [ten_ban], [suc_chua], [trang_thai], [thoi_gian_vao_ban], [ngay_tao], [ngay_sua], [id_khu_vuc]) VALUES (N'aa7fcfaf-fdc1-ef11-af2b-141333c92d46', N'B80', 5, 1, NULL, CAST(N'2024-12-24T20:48:00.373' AS DateTime), NULL, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
GO
INSERT [dbo].[BanGop] ([id_bangop], [ten_bangop], [trang_thai], [id_khu_vuc]) VALUES (N'ab7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Bàn gộp 1', 1, N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46')
GO
INSERT [dbo].[BanGopChiTiet] ([id_bangopchitiet], [id_ban], [id_bangop]) VALUES (N'ac7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'ab7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[BanGopChiTiet] ([id_bangopchitiet], [id_ban], [id_bangop]) VALUES (N'ad7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'ab7fcfaf-fdc1-ef11-af2b-141333c92d46')
GO
INSERT [dbo].[Banner] ([id_banner], [anh_banner], [link], [ngay_tao], [ngay_sua], [trang_thai], [do_uu_tien]) VALUES (N'5980cfaf-fdc1-ef11-af2b-141333c92d46', N'banner01.jpg', N'http://example.com/khuyen-mai', CAST(N'2024-12-24T20:48:00.570' AS DateTime), NULL, 1, 1)
GO
INSERT [dbo].[Combo] ([id_combo], [anh_combo], [ten_combo], [mo_ta], [gia_goc], [gia_combo], [trang_thai], [ngay_tao], [ngay_sua]) VALUES (N'567fcfaf-fdc1-ef11-af2b-141333c92d46', N'combo_01.jpg', N'Combo bữa sáng', N'Phở bò + cà phê', CAST(220.000 AS Decimal(15, 3)), CAST(200.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.283' AS DateTime), NULL)
GO
INSERT [dbo].[ComboChiTiet] ([id_combo_chi_tiet], [trang_thai], [so_luong], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'4580cfaf-fdc1-ef11-af2b-141333c92d46', 1, 1, N'f47fcfaf-fdc1-ef11-af2b-141333c92d46', N'567fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[ComboChiTiet] ([id_combo_chi_tiet], [trang_thai], [so_luong], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'4680cfaf-fdc1-ef11-af2b-141333c92d46', 1, 2, N'f57fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
GO
INSERT [dbo].[CoSo] ([id_co_so], [ten_co_so], [SucChua], [DienTich], [SoTang], [GioMoCua], [HoatDong], [DiaChi], [SoDienThoaiChiNhanh], [GhiChu]) VALUES (N'5a80cfaf-fdc1-ef11-af2b-141333c92d46', N'Chi nhánh 1', 50, 200.5, 2, CAST(N'2024-12-24T20:48:00.570' AS DateTime), 1, N'123 Đường ABC, TP.HCM', N'0905678910', N'Chi nhánh trung tâm')
INSERT [dbo].[CoSo] ([id_co_so], [ten_co_so], [SucChua], [DienTich], [SoTang], [GioMoCua], [HoatDong], [DiaChi], [SoDienThoaiChiNhanh], [GhiChu]) VALUES (N'5b80cfaf-fdc1-ef11-af2b-141333c92d46', N'Chi nhánh 2', 30, 150, 1, CAST(N'2024-12-24T20:48:00.570' AS DateTime), 1, N'456 Đường DEF, TP.HCM', N'0906789123', N'Chi nhánh ngoại thành')
GO
INSERT [dbo].[DanhMuc] ([id_danh_muc], [anh_danh_muc], [ten_danh_muc], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat]) VALUES (N'157fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'Nướng', N'Danh mục các món ăn', 1, CAST(N'2024-12-24T20:48:00.227' AS DateTime), NULL)
INSERT [dbo].[DanhMuc] ([id_danh_muc], [anh_danh_muc], [ten_danh_muc], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat]) VALUES (N'167fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'Lẩu', N'Danh mục các loại đồ uống', 1, CAST(N'2024-12-24T20:48:00.227' AS DateTime), NULL)
INSERT [dbo].[DanhMuc] ([id_danh_muc], [anh_danh_muc], [ten_danh_muc], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat]) VALUES (N'177fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'Tráng miệng', N'Danh mục các món tráng miệng', 1, CAST(N'2024-12-24T20:48:00.227' AS DateTime), NULL)
INSERT [dbo].[DanhMuc] ([id_danh_muc], [anh_danh_muc], [ten_danh_muc], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat]) VALUES (N'187fcfaf-fdc1-ef11-af2b-141333c92d46', N'thuc_an.jpg', N'Thức ăn', N'Danh mục các món ăn', 1, CAST(N'2024-12-24T20:48:00.227' AS DateTime), NULL)
INSERT [dbo].[DanhMuc] ([id_danh_muc], [anh_danh_muc], [ten_danh_muc], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat]) VALUES (N'197fcfaf-fdc1-ef11-af2b-141333c92d46', N'do_uong.jpg', N'Đồ uống', N'Danh mục các loại đồ uống', 1, CAST(N'2024-12-24T20:48:00.227' AS DateTime), NULL)
GO
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'1a7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Phở bò', N'Món phở bò truyền thống', 0, CAST(N'2024-12-24T20:48:00.253' AS DateTime), CAST(N'2024-12-24T22:41:03.970' AS DateTime), N'Tô', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'1b7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Cà phê đen', N'Đồ uống phổ biến tại Việt Nam', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), CAST(N'2024-12-24T22:41:07.767' AS DateTime), N'Ly', N'197fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'1c7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Bánh mì', N'Bánh mì kẹp thịt, rau, và gia vị', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'cái', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'1d7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Gỏi cuốn', N'Cuốn bánh tráng với tôm, thịt, bún và rau', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'cái', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'1e7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Mì Quảng', N'Mì Quảng với thịt gà, tôm, và nước dùng đậm đà', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'bát', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'1f7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Nước mía', N'Nước ép từ mía tươi, ngọt mát', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'ly', N'197fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'207fcfaf-fdc1-ef11-af2b-141333c92d46', N'Cơm tấm', N'Cơm tấm với sườn nướng, bì, chả trứng', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'dĩa', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'217fcfaf-fdc1-ef11-af2b-141333c92d46', N'Chè đậu đỏ', N'Chè ngọt, mát với đậu đỏ', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'chén', N'177fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'227fcfaf-fdc1-ef11-af2b-141333c92d46', N'Sinh tố dưa hấu', N'Sinh tố từ dưa hấu tươi, ngon và mát', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'ly', N'197fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'237fcfaf-fdc1-ef11-af2b-141333c92d46', N'Bánh xèo', N'Bánh xèo giòn với nhân tôm thịt', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'cái', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'247fcfaf-fdc1-ef11-af2b-141333c92d46', N'Bánh bao', N'Bánh bao hấp với nhân thịt', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'cái', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'257fcfaf-fdc1-ef11-af2b-141333c92d46', N'Bánh tráng cuốn', N'Bánh tráng cuốn với thịt, rau, và tôm', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'cái', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'267fcfaf-fdc1-ef11-af2b-141333c92d46', N'Cà ri gà', N'Món cà ri gà đậm đà với gia vị', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'bát', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'277fcfaf-fdc1-ef11-af2b-141333c92d46', N'Bánh bèo', N'Bánh bèo với tôm chấy, hành phi', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'dĩa', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'287fcfaf-fdc1-ef11-af2b-141333c92d46', N'Chè ba màu', N'Chè ba màu ngọt mát, nhiều lớp', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'chén', N'177fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'297fcfaf-fdc1-ef11-af2b-141333c92d46', N'Bánh cuốn', N'Bánh cuốn nhân thịt và mộc nhĩ', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'dĩa', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'2a7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Mì xào giòn', N'Mì xào giòn với thịt và rau củ', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'dĩa', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'2b7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Gà nướng mật ong', N'Gà nướng mật ong thơm ngon, đậm đà', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'con', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'2c7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Bánh trôi nước', N'Món bánh trôi nước ngọt ngào', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'cái', N'177fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'2d7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Bánh flan', N'Bánh flan mềm mịn, ngọt ngào', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'cái', N'177fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'2e7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Xôi gà', N'Xôi gà với thịt gà luộc và nước mắm', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'dĩa', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'2f7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Súp cua', N'Súp cua với nấm và gia vị', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'bát', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'307fcfaf-fdc1-ef11-af2b-141333c92d46', N'Mì vịt tiềm', N'Mì với vịt hầm và gia vị đậm đà', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'bát', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'317fcfaf-fdc1-ef11-af2b-141333c92d46', N'Bún chả', N'Bún chả với thịt nướng và bún tươi', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'bát', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'327fcfaf-fdc1-ef11-af2b-141333c92d46', N'Chè sen nhãn', N'Chè sen nhãn với hương vị ngọt mát', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'chén', N'177fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'337fcfaf-fdc1-ef11-af2b-141333c92d46', N'Sinh tố bơ', N'Sinh tố bơ mịn màng, ngọt ngào', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'ly', N'197fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'347fcfaf-fdc1-ef11-af2b-141333c92d46', N'Bánh chuối', N'Bánh chuối chiên giòn với nhân ngọt', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'cái', N'177fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'357fcfaf-fdc1-ef11-af2b-141333c92d46', N'Nước dừa', N'Nước dừa tươi mát, giải khát', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'ly', N'197fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'367fcfaf-fdc1-ef11-af2b-141333c92d46', N'Bánh cam', N'Bánh cam giòn xốp, ngọt bùi', 1, CAST(N'2024-12-24T20:48:00.253' AS DateTime), NULL, N'cái', N'177fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'505f0b38-8253-4ae5-9493-20a2bc3a1248', N'Tokoyaki', N'sá', 1, CAST(N'2024-12-25T20:14:05.987' AS DateTime), CAST(N'2024-12-25T20:14:05.987' AS DateTime), N'Xuất', N'167fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'df955ead-c687-46d9-89c5-9ab25a16c2f2', N'Bibimpap', N'fsdf', 1, CAST(N'2024-12-24T21:26:36.790' AS DateTime), CAST(N'2024-12-24T21:26:36.790' AS DateTime), N'Xuất', N'187fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'a085beed-08cb-40e1-b50b-a4ac9fc57ad4', N'Lẩu wang', N'sss', 1, CAST(N'2024-12-25T20:15:34.667' AS DateTime), CAST(N'2024-12-25T20:15:34.667' AS DateTime), N'Xuất', N'167fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'8024ef74-68d1-4f11-80c5-c2c0b147f860', N'Lẩu wang', N'sss', 1, CAST(N'2024-12-25T20:15:40.233' AS DateTime), CAST(N'2024-12-25T20:15:40.233' AS DateTime), N'Xuất', N'167fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'b30daa5d-1496-4840-b841-cdd55e7a659a', N'Tokoyaki', N'k', 0, CAST(N'2024-12-25T18:21:01.773' AS DateTime), CAST(N'2024-12-25T18:21:32.690' AS DateTime), N'Xuất', N'157fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong] ([id_do_an_do_uong], [ten_do_an_do_uong], [mo_ta], [trang_thai], [ngay_tao], [ngay_cap_nhat], [don_vi], [id_danh_muc], [tra_hang]) VALUES (N'2cee50a8-ed79-4763-88bb-dde6c2513d11', N'Lẩu wang ', N'ass', 0, CAST(N'2024-12-25T20:17:14.403' AS DateTime), CAST(N'2024-12-25T20:17:14.403' AS DateTime), N'Xuất', N'167fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
GO
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'377fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://img-global.cpcdn.com/recipes/6824738c264d979d/680x482cq70/ph%E1%BB%9F-bo-vi%E1%BB%87t-nam-recipe-main-photo.jpg', N'1a7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'387fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://tiki.vn/blog/wp-content/uploads/2023/07/thumb-12.jpg', N'1a7fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'397fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://www.sugartown.vn/upload/sanpham/1201-16530156771.png', N'1b7fcfaf-fdc1-ef11-af2b-141333c92d46', 0)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'3a7fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://lygiaykimngan.com/wp-content/uploads/2019/09/ly-giay-phuc-long.jpg', N'1b7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'3b7fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://banhmimahai.vn/wp-content/uploads/2020/02/thumb.jpg.webp', N'1c7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'3c7fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://khaihoanphuquoc.com.vn/wp-content/uploads/2023/11/nu%CC%9Bo%CC%9B%CC%81c-ma%CC%86%CC%81m-cha%CC%82%CC%81m-go%CC%89i-cuo%CC%82%CC%81n-1200x923.png', N'1d7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'3d7fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://static.vinwonders.com/production/mi-quang-ha-noi-banner.jpg', N'1e7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'3e7fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://genk.mediacdn.vn/139269124445442048/2023/6/25/1687510946-menueditoriteme47592b72ec64429-16870625590121701900347-1687676993669-16876769953771817645615.jpg', N'1f7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'3f7fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://sakos.vn/wp-content/uploads/2024/10/bia-4.jpg', N'207fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'407fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://tiki.vn/blog/wp-content/uploads/2023/08/cach-nau-che-dau-do-10.jpg', N'217fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'417fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlPssBbaP-CIGTme1rSOb45WlaMYPahRpjgg&s', N'227fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'427fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://i.ytimg.com/vi/hxI-i5jAeB8/maxresdefault.jpg', N'237fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'437fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqZYxUixip9bVnMKa78Vz0KDlV5EbgSR8x8SfPtyq8LHY_BMECzjeKHvigHCFekAtVcremIudURUZPpFZ03xifXsD_gmJ5dphxvcCZO5U', N'247fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'447fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzpeAzj3cwsO0h2gtX2o8RBDfwVw3YLaw3aw&s', N'257fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'457fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://i.ytimg.com/vi/xySE3CCA1Kk/maxresdefault.jpg', N'267fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'467fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ1ge7jb5vyi62LsVEfh-uPrNCsY6Kx7HTnZb4Z01iilocZUOw9z6tLvUCuv8VKxgjmL0VSOQeSu_4tiN8-OKD29lJV00hEh4MuE7esVpc', N'277fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'477fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://bizweb.dktcdn.net/thumb/grande/100/004/714/articles/che-ba-mau-cach-lam-ngon-mieng-dep-mat-ngay-tai-nha.png?v=1592454972940', N'287fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'487fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2022/11/4/1112805/Banh-Cuon-Phuong.jpg', N'297fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'497fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://checkinvietnam.vtc.vn/media/20211118/images/mi-xao-gion_50w.jpg', N'2a7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'4a7fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://www.cet.edu.vn/wp-content/uploads/2018/03/ga-nuong-mat-ong.jpg', N'2b7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'4b7fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://cdn.tgdd.vn/2020/10/CookProduct/Huongdancachlambanhtroinuocnhantraxanh..-1200x676.jpg', N'2c7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'4c7fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://rinnai-rongviet.com.vn/files/upload/images/cach-lam-banh-flan.jpg', N'2d7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'4d7fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR5ScYDbuUNdUcaD7qwADYP7a8IHLXnF-Nhw&s', N'2e7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'4e7fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://bepxua.vn/wp-content/uploads/2020/10/sup-cua.jpg', N'2f7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'4f7fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOk6unuChLQy6MexIf0hq3nzyZ60rxOVmi5Q&s', N'307fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'507fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3-N1KMsMHueRRPXLYLyDfxywqv7DL2eC-bw&s', N'317fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'517fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://www.cet.edu.vn/wp-content/uploads/2018/11/che-hat-sen-long-nhan.jpg', N'327fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'527fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://www.huongnghiepaau.com/wp-content/uploads/2017/07/sinh-to-bo-dua-thom-beo.jpg', N'337fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'537fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://giadungducsaigon.vn/wp-content/uploads/2022/04/banh-chuoi-chien-800x622.jpg', N'347fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'547fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnH9CRZulgXGvLnoFdTC-O_p-sJRzMeLcZUQ&s', N'357fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'557fcfaf-fdc1-ef11-af2b-141333c92d46', N'https://daynauan.info.vn/wp-content/uploads/2016/05/banh-cam.jpg', N'367fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'36eff660-6686-42f0-9019-2ed8f053d79d', N'https://res.cloudinary.com/dej8iajac/image/upload/v1735132539/imageBeeFood/u1zjplzhu2a8wou94czl.jpg', N'a085beed-08cb-40e1-b50b-a4ac9fc57ad4', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'030b2dcb-00c4-426e-9c22-342577601c44', N'https://res.cloudinary.com/dej8iajac/image/upload/v1735132545/imageBeeFood/mofurifc5h2nehfagiqw.jpg', N'8024ef74-68d1-4f11-80c5-c2c0b147f860', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'fab7fb0a-fb05-4e31-a5cc-46c67d53306c', N'https://res.cloudinary.com/dej8iajac/image/upload/v1735132639/imageBeeFood/abvdoryumg1xpyjlq78g.jpg', N'2cee50a8-ed79-4763-88bb-dde6c2513d11', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'7e8d76a3-7de1-45cc-84a2-60af58292cd5', N'https://res.cloudinary.com/dej8iajac/image/upload/v1735125666/imageBeeFood/fjibibbugnnogktt93xz.jpg', N'b30daa5d-1496-4840-b841-cdd55e7a659a', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'ed333ad5-c319-4d2a-b30b-6a1aa6069284', N'https://res.cloudinary.com/dej8iajac/image/upload/v1735132451/imageBeeFood/jalihuwnohan8smr3tky.jpg', N'505f0b38-8253-4ae5-9493-20a2bc3a1248', NULL)
INSERT [dbo].[DoAn_DoUong_image] ([id_anh_do_an_do_uong], [anh_do_an_do_uong], [id_do_an_do_uong], [do_uu_tien]) VALUES (N'dfdfcde7-e22b-4eb2-851d-e7d8eff962d4', N'https://res.cloudinary.com/dej8iajac/image/upload/v1735050400/imageBeeFood/grf4rrplz5aef2gdriwm.jpg', N'df955ead-c687-46d9-89c5-9ab25a16c2f2', NULL)
GO
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'ee7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(30.000 AS Decimal(15, 3)), 0, CAST(N'2024-12-24T20:48:00.517' AS DateTime), CAST(N'2024-12-24T23:58:43.913' AS DateTime), N'1a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'ef7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(40.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'f07fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(50.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'f17fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(15.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1b7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'f27fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(20.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1b7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'f37fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(25.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1b7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'f47fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(20.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1c7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'f57fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(30.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1c7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'f67fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(40.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1c7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'f77fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(15.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1d7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'f87fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(25.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1d7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'f97fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(35.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1d7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'fa7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(25.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1e7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'fb7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(35.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1e7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'fc7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(45.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1e7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'fd7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(10.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1f7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'fe7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(15.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1f7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'ff7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(20.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'1f7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0080cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(30.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'207fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0180cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(40.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'207fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0280cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(50.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'207fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0380cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(12.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'217fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0480cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(20.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'217fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0580cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(30.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'217fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0680cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(20.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'227fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0780cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(30.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'227fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0880cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(40.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'227fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0980cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(25.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'237fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0a80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(35.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'237fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0b80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(45.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'237fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0c80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(15.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'247fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0d80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(25.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'247fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0e80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(35.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'247fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'0f80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(20.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'257fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1080cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(30.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'257fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1180cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(40.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'257fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1280cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(60.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'267fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1380cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(80.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'267fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1480cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(100.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'267fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1580cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(15.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'277fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1680cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(25.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'277fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1780cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(35.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'277fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1880cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(12.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'287fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1980cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(20.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'287fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1a80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(30.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'287fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1b80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(25.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'297fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1c80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(35.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'297fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1d80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(45.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'297fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1e80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(30.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'1f80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(40.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2080cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(50.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2a7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2180cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(70.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2b7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2280cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(90.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2b7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2380cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(110.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2b7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2480cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(12.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2c7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2580cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(18.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2c7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2680cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(25.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2c7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2780cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(15.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2d7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2880cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(20.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2d7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2980cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(25.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2d7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2a80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(35.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2e7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2b80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(45.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2e7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2c80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(55.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2e7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2d80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(25.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2f7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2e80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(35.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2f7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'2f80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(45.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'2f7fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3080cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(40.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'307fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3180cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(50.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'307fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3280cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(60.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'307fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3380cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(35.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'317fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3480cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(45.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'317fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3580cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(55.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'317fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3680cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(12.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'327fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3780cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(18.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'327fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3880cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(25.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'327fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3980cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(20.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'337fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3a80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(30.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'337fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3b80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(40.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'337fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3c80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(15.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'347fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3d80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(20.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'347fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3e80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(25.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'347fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'3f80cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(10.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'357fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'4080cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(15.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'357fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'4180cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(20.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'357fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'4280cfaf-fdc1-ef11-af2b-141333c92d46', N'Size S', NULL, CAST(10.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'367fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'4380cfaf-fdc1-ef11-af2b-141333c92d46', N'Size M', NULL, CAST(15.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'367fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'4480cfaf-fdc1-ef11-af2b-141333c92d46', N'Size L', NULL, CAST(20.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T20:48:00.517' AS DateTime), NULL, N'367fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'80fbff2e-5ab0-4dab-9f0b-6a50664e87a2', N'Size S', NULL, CAST(100000.000 AS Decimal(15, 3)), 0, CAST(N'2024-12-25T20:17:38.927' AS DateTime), CAST(N'2024-12-25T20:18:02.027' AS DateTime), N'2cee50a8-ed79-4763-88bb-dde6c2513d11')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'e9508c39-eb86-4778-b3d4-8ea6463f542c', N'Size S', NULL, CAST(45000.000 AS Decimal(15, 3)), 0, CAST(N'2024-12-24T22:55:09.877' AS DateTime), CAST(N'2024-12-24T23:57:38.350' AS DateTime), N'df955ead-c687-46d9-89c5-9ab25a16c2f2')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'6a82473d-fc38-4e3c-a023-9b280214f57d', N'Size S', NULL, CAST(100000.000 AS Decimal(15, 3)), 0, CAST(N'2024-12-25T18:21:21.523' AS DateTime), NULL, N'b30daa5d-1496-4840-b841-cdd55e7a659a')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'47704053-9b45-4dcd-9437-9ba4816855d4', N'Size M', NULL, CAST(75000.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-24T23:43:05.830' AS DateTime), CAST(N'2024-12-24T23:57:42.987' AS DateTime), N'df955ead-c687-46d9-89c5-9ab25a16c2f2')
INSERT [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet], [ten_do_an_do_uong_chi_tiet], [anh_do_an_do_uong_chi_tiet], [gia], [trang_thai], [ngay_tao], [ngay_cap_nhat], [id_do_an_do_uong]) VALUES (N'c4f541ad-7164-4c2a-8a65-d045df3f2552', N'Size M', NULL, CAST(999.000 AS Decimal(15, 3)), 1, CAST(N'2024-12-25T20:18:23.637' AS DateTime), NULL, N'2cee50a8-ed79-4763-88bb-dde6c2513d11')
GO
INSERT [dbo].[HoaDon] ([id_hoa_don], [thoi_gian_dat], [ngay_cap_nhat], [tong_thanh_toan], [tong_tien_hang], [phi_van_chuyen], [ghi_chu], [id_nv], [id_phieu_giam_gia], [id_khach_hang], [id_ban], [id_bangop], [loai_don], [trang_thai], [trang_thai_thanh_toan], [cookie_khach_hang]) VALUES (N'e57fcfaf-fdc1-ef11-af2b-141333c92d46', CAST(N'2024-12-24T20:48:00.403' AS DateTime), NULL, CAST(350.000 AS Decimal(15, 3)), CAST(300.000 AS Decimal(15, 3)), CAST(50.000 AS Decimal(15, 3)), N'Có gia vị', N'137fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, NULL, N'5b7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, 0, 0, 0, N'cookie101')
INSERT [dbo].[HoaDon] ([id_hoa_don], [thoi_gian_dat], [ngay_cap_nhat], [tong_thanh_toan], [tong_tien_hang], [phi_van_chuyen], [ghi_chu], [id_nv], [id_phieu_giam_gia], [id_khach_hang], [id_ban], [id_bangop], [loai_don], [trang_thai], [trang_thai_thanh_toan], [cookie_khach_hang]) VALUES (N'e67fcfaf-fdc1-ef11-af2b-141333c92d46', CAST(N'2024-12-24T20:48:00.403' AS DateTime), NULL, CAST(220.000 AS Decimal(15, 3)), CAST(190.000 AS Decimal(15, 3)), CAST(30.000 AS Decimal(15, 3)), N'Không cay', N'147fcfaf-fdc1-ef11-af2b-141333c92d46', N'b17fcfaf-fdc1-ef11-af2b-141333c92d46', N'b47fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, NULL, 1, 1, 0, N'cookie102')
INSERT [dbo].[HoaDon] ([id_hoa_don], [thoi_gian_dat], [ngay_cap_nhat], [tong_thanh_toan], [tong_tien_hang], [phi_van_chuyen], [ghi_chu], [id_nv], [id_phieu_giam_gia], [id_khach_hang], [id_ban], [id_bangop], [loai_don], [trang_thai], [trang_thai_thanh_toan], [cookie_khach_hang]) VALUES (N'e77fcfaf-fdc1-ef11-af2b-141333c92d46', CAST(N'2024-12-24T20:48:00.403' AS DateTime), NULL, CAST(400.000 AS Decimal(15, 3)), CAST(350.000 AS Decimal(15, 3)), CAST(50.000 AS Decimal(15, 3)), NULL, N'137fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'b97fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, NULL, 2, 2, 0, N'cookie103')
INSERT [dbo].[HoaDon] ([id_hoa_don], [thoi_gian_dat], [ngay_cap_nhat], [tong_thanh_toan], [tong_tien_hang], [phi_van_chuyen], [ghi_chu], [id_nv], [id_phieu_giam_gia], [id_khach_hang], [id_ban], [id_bangop], [loai_don], [trang_thai], [trang_thai_thanh_toan], [cookie_khach_hang]) VALUES (N'e87fcfaf-fdc1-ef11-af2b-141333c92d46', CAST(N'2024-12-24T20:48:00.403' AS DateTime), NULL, CAST(280.000 AS Decimal(15, 3)), CAST(250.000 AS Decimal(15, 3)), CAST(30.000 AS Decimal(15, 3)), N'Có rau', N'147fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, NULL, N'5b7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, 0, 1, 0, N'cookie104')
INSERT [dbo].[HoaDon] ([id_hoa_don], [thoi_gian_dat], [ngay_cap_nhat], [tong_thanh_toan], [tong_tien_hang], [phi_van_chuyen], [ghi_chu], [id_nv], [id_phieu_giam_gia], [id_khach_hang], [id_ban], [id_bangop], [loai_don], [trang_thai], [trang_thai_thanh_toan], [cookie_khach_hang]) VALUES (N'e97fcfaf-fdc1-ef11-af2b-141333c92d46', CAST(N'2024-12-24T20:48:00.403' AS DateTime), NULL, CAST(500.000 AS Decimal(15, 3)), CAST(450.000 AS Decimal(15, 3)), CAST(50.000 AS Decimal(15, 3)), N'Không tỏi', N'137fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'bb7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, NULL, 1, 1, 0, N'cookie105')
INSERT [dbo].[HoaDon] ([id_hoa_don], [thoi_gian_dat], [ngay_cap_nhat], [tong_thanh_toan], [tong_tien_hang], [phi_van_chuyen], [ghi_chu], [id_nv], [id_phieu_giam_gia], [id_khach_hang], [id_ban], [id_bangop], [loai_don], [trang_thai], [trang_thai_thanh_toan], [cookie_khach_hang]) VALUES (N'ea7fcfaf-fdc1-ef11-af2b-141333c92d46', CAST(N'2024-12-24T20:48:00.417' AS DateTime), NULL, CAST(300.000 AS Decimal(15, 3)), CAST(270.000 AS Decimal(15, 3)), CAST(30.000 AS Decimal(15, 3)), N'Không ớt', N'137fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'b47fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, NULL, 1, 1, 0, N'cookie123')
INSERT [dbo].[HoaDon] ([id_hoa_don], [thoi_gian_dat], [ngay_cap_nhat], [tong_thanh_toan], [tong_tien_hang], [phi_van_chuyen], [ghi_chu], [id_nv], [id_phieu_giam_gia], [id_khach_hang], [id_ban], [id_bangop], [loai_don], [trang_thai], [trang_thai_thanh_toan], [cookie_khach_hang]) VALUES (N'eb7fcfaf-fdc1-ef11-af2b-141333c92d46', CAST(N'2024-12-24T20:48:00.417' AS DateTime), NULL, CAST(120.000 AS Decimal(15, 3)), CAST(90.000 AS Decimal(15, 3)), CAST(30.000 AS Decimal(15, 3)), N'Thêm nước chấm', N'147fcfaf-fdc1-ef11-af2b-141333c92d46', N'ae7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'5b7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, 0, 1, 1, N'cookie456')
INSERT [dbo].[HoaDon] ([id_hoa_don], [thoi_gian_dat], [ngay_cap_nhat], [tong_thanh_toan], [tong_tien_hang], [phi_van_chuyen], [ghi_chu], [id_nv], [id_phieu_giam_gia], [id_khach_hang], [id_ban], [id_bangop], [loai_don], [trang_thai], [trang_thai_thanh_toan], [cookie_khach_hang]) VALUES (N'ec7fcfaf-fdc1-ef11-af2b-141333c92d46', CAST(N'2024-12-24T20:48:00.417' AS DateTime), NULL, CAST(230.000 AS Decimal(15, 3)), CAST(200.000 AS Decimal(15, 3)), CAST(30.000 AS Decimal(15, 3)), NULL, N'137fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'b37fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, NULL, 2, 1, 0, N'cookie789')
INSERT [dbo].[HoaDon] ([id_hoa_don], [thoi_gian_dat], [ngay_cap_nhat], [tong_thanh_toan], [tong_tien_hang], [phi_van_chuyen], [ghi_chu], [id_nv], [id_phieu_giam_gia], [id_khach_hang], [id_ban], [id_bangop], [loai_don], [trang_thai], [trang_thai_thanh_toan], [cookie_khach_hang]) VALUES (N'ed7fcfaf-fdc1-ef11-af2b-141333c92d46', CAST(N'2024-12-24T20:48:00.417' AS DateTime), NULL, CAST(180.000 AS Decimal(15, 3)), CAST(150.000 AS Decimal(15, 3)), CAST(30.000 AS Decimal(15, 3)), N'Không ớt', N'147fcfaf-fdc1-ef11-af2b-141333c92d46', N'b27fcfaf-fdc1-ef11-af2b-141333c92d46', N'b47fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, NULL, 1, 0, 0, N'cookie987')
GO
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'4780cfaf-fdc1-ef11-af2b-141333c92d46', 2, N'Có gia vị', CAST(N'2024-12-24T20:48:00.537' AS DateTime), NULL, 0, N'e57fcfaf-fdc1-ef11-af2b-141333c92d46', N'f47fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'4880cfaf-fdc1-ef11-af2b-141333c92d46', 1, N'Thiếu rau', CAST(N'2024-12-24T20:48:00.537' AS DateTime), NULL, 0, N'e57fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'567fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'4980cfaf-fdc1-ef11-af2b-141333c92d46', 2, N'Không cay', CAST(N'2024-12-24T20:48:00.540' AS DateTime), NULL, 0, N'e67fcfaf-fdc1-ef11-af2b-141333c92d46', N'f47fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'4a80cfaf-fdc1-ef11-af2b-141333c92d46', 1, N'Giảm giá sinh nhật', CAST(N'2024-12-24T20:48:00.540' AS DateTime), NULL, 0, N'e67fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'567fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'4b80cfaf-fdc1-ef11-af2b-141333c92d46', 3, N'Không cay', CAST(N'2024-12-24T20:48:00.547' AS DateTime), NULL, 0, N'e77fcfaf-fdc1-ef11-af2b-141333c92d46', N'f47fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'4c80cfaf-fdc1-ef11-af2b-141333c92d46', 2, N'Thêm đá', CAST(N'2024-12-24T20:48:00.547' AS DateTime), NULL, 0, N'e77fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'567fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'4d80cfaf-fdc1-ef11-af2b-141333c92d46', 1, N'Có rau', CAST(N'2024-12-24T20:48:00.553' AS DateTime), NULL, 0, N'e87fcfaf-fdc1-ef11-af2b-141333c92d46', N'f57fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'4e80cfaf-fdc1-ef11-af2b-141333c92d46', 1, N'Giảm giá lễ tết', CAST(N'2024-12-24T20:48:00.553' AS DateTime), NULL, 0, N'e87fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'567fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'4f80cfaf-fdc1-ef11-af2b-141333c92d46', 1, N'Không tỏi', CAST(N'2024-12-24T20:48:00.557' AS DateTime), NULL, 0, N'e97fcfaf-fdc1-ef11-af2b-141333c92d46', N'f67fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'5080cfaf-fdc1-ef11-af2b-141333c92d46', 2, N'Thiếu gia vị', CAST(N'2024-12-24T20:48:00.557' AS DateTime), NULL, 0, N'e97fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'567fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'5180cfaf-fdc1-ef11-af2b-141333c92d46', 2, N'Thu nhỏ', CAST(N'2024-12-24T20:48:00.570' AS DateTime), NULL, 0, N'ea7fcfaf-fdc1-ef11-af2b-141333c92d46', N'f67fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'5280cfaf-fdc1-ef11-af2b-141333c92d46', 1, N'Thu nhỏ', CAST(N'2024-12-24T20:48:00.570' AS DateTime), NULL, 0, N'ea7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'567fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'5380cfaf-fdc1-ef11-af2b-141333c92d46', 4, NULL, CAST(N'2024-12-24T20:48:00.570' AS DateTime), NULL, 0, N'eb7fcfaf-fdc1-ef11-af2b-141333c92d46', N'f47fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'5480cfaf-fdc1-ef11-af2b-141333c92d46', 1, N'Nhiều đá', CAST(N'2024-12-24T20:48:00.570' AS DateTime), NULL, 0, N'eb7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'567fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'5580cfaf-fdc1-ef11-af2b-141333c92d46', 3, NULL, CAST(N'2024-12-24T20:48:00.570' AS DateTime), NULL, 0, N'ec7fcfaf-fdc1-ef11-af2b-141333c92d46', N'f67fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'5680cfaf-fdc1-ef11-af2b-141333c92d46', 2, N'Ít cay', CAST(N'2024-12-24T20:48:00.570' AS DateTime), NULL, 0, N'ec7fcfaf-fdc1-ef11-af2b-141333c92d46', NULL, N'567fcfaf-fdc1-ef11-af2b-141333c92d46')
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'5780cfaf-fdc1-ef11-af2b-141333c92d46', 5, N'Nhiều rau', CAST(N'2024-12-24T20:48:00.570' AS DateTime), NULL, 0, N'ed7fcfaf-fdc1-ef11-af2b-141333c92d46', N'f47fcfaf-fdc1-ef11-af2b-141333c92d46', NULL)
INSERT [dbo].[HoaDonChiTiet] ([id_hoa_don_chi_tiet], [so_luong], [ghi_chu], [ngay_tao], [ngay_sua], [trang_thai], [id_hoa_don], [id_do_an_do_uong_chi_tiet], [id_combo]) VALUES (N'5880cfaf-fdc1-ef11-af2b-141333c92d46', 1, NULL, CAST(N'2024-12-24T20:48:00.570' AS DateTime), NULL, 0, NULL, NULL, N'567fcfaf-fdc1-ef11-af2b-141333c92d46')
GO
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'b37fcfaf-fdc1-ef11-af2b-141333c92d46', N'Trần Thị C', CAST(N'1995-02-14' AS Date), 1, N'ttc@example.com', N'0903456789', N'789 Nguyễn Huệ, TP.HCM', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'b47fcfaf-fdc1-ef11-af2b-141333c92d46', N'Hoàng Văn D', CAST(N'1992-10-05' AS Date), 2, N'hvd@example.com', N'0904567890', N'135 Cách Mạng Tháng Tám, TP.HCM', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'b57fcfaf-fdc1-ef11-af2b-141333c92d46', N'Trần Minh', CAST(N'1992-08-13' AS Date), 2, N'tranminh@example.com', N'0949012345', N'123 Hàng Bồ, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'b67fcfaf-fdc1-ef11-af2b-141333c92d46', N'Ngô Bích', CAST(N'1997-04-09' AS Date), 1, N'ngobich@example.com', N'0950123456', N'56 Láng Hạ, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'b77fcfaf-fdc1-ef11-af2b-141333c92d46', N'Trần Nam', CAST(N'1995-02-14' AS Date), 2, N'trannam@example.com', N'0903456000', N'123 Phố Huế, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'b87fcfaf-fdc1-ef11-af2b-141333c92d46', N'Nguyễn An', CAST(N'1992-10-05' AS Date), 2, N'nguyenan@example.com', N'0904562345', N'456 Kim Mã, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'b97fcfaf-fdc1-ef11-af2b-141333c92d46', N'Lê Yến', CAST(N'1997-07-20' AS Date), 1, N'leyen@example.com', N'0905678901', N'78 Lý Thường Kiệt, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'ba7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Phạm Minh', CAST(N'1990-03-12' AS Date), 2, N'phamminh@example.com', N'0906789012', N'101 Hoàng Quốc Việt, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'bb7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Vũ Huyền', CAST(N'1998-09-15' AS Date), 1, N'vuhuyen@example.com', N'0907890123', N'234 Bạch Mai, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'bc7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Hoàng Khánh', CAST(N'1993-11-21' AS Date), 2, N'hoangkhanh@example.com', N'0908901234', N'567 Trần Duy Hưng, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'bd7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Đỗ Tuấn', CAST(N'1994-06-30' AS Date), 2, N'dotuan@example.com', N'0909012345', N'890 Nguyễn Trãi, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'be7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Nguyễn Linh', CAST(N'1996-05-25' AS Date), 1, N'nguyenlinh@example.com', N'0910123456', N'12 Hai Bà Trưng, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'bf7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Phan Ngọc', CAST(N'1991-04-18' AS Date), 1, N'phanngoc@example.com', N'0911234567', N'34 Đội Cấn, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'c07fcfaf-fdc1-ef11-af2b-141333c92d46', N'Lý Hùng', CAST(N'1990-08-10' AS Date), 2, N'lyhung@example.com', N'0912345678', N'90 Hàng Đào, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'c17fcfaf-fdc1-ef11-af2b-141333c92d46', N'Ngô Thảo', CAST(N'1995-12-01' AS Date), 1, N'ngothao@example.com', N'0913456789', N'123 Trường Chinh, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'c27fcfaf-fdc1-ef11-af2b-141333c92d46', N'Trịnh Phong', CAST(N'1992-03-14' AS Date), 2, N'trinhphong@example.com', N'0914567890', N'67 Cầu Giấy, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'c37fcfaf-fdc1-ef11-af2b-141333c92d46', N'Bùi Trâm', CAST(N'1998-10-05' AS Date), 1, N'buitram@example.com', N'0915678901', N'45 Ngô Gia Tự, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'c47fcfaf-fdc1-ef11-af2b-141333c92d46', N'Phạm Sơn', CAST(N'1989-02-25' AS Date), 2, N'phamson@example.com', N'0916789012', N'78 Giải Phóng, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'c57fcfaf-fdc1-ef11-af2b-141333c92d46', N'Trần Bình', CAST(N'1994-07-19' AS Date), 2, N'tranbinh@example.com', N'0917890123', N'90 Tây Sơn, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'c67fcfaf-fdc1-ef11-af2b-141333c92d46', N'Lê Anh', CAST(N'1995-11-02' AS Date), 2, N'leanh@example.com', N'0918901234', N'123 Phạm Ngọc Thạch, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'c77fcfaf-fdc1-ef11-af2b-141333c92d46', N'Hoàng Phúc', CAST(N'1991-06-25' AS Date), 2, N'hoangphuc@example.com', N'0919012345', N'234 Bà Triệu, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'c87fcfaf-fdc1-ef11-af2b-141333c92d46', N'Nguyễn Lan', CAST(N'1993-09-14' AS Date), 1, N'nguyenlan@example.com', N'0920123456', N'12 Hoàng Diệu, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'c97fcfaf-fdc1-ef11-af2b-141333c92d46', N'Vũ Bảo', CAST(N'1996-01-05' AS Date), 2, N'vubao@example.com', N'0921234567', N'45 Trần Phú, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'ca7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Phạm Hà', CAST(N'1997-03-22' AS Date), 1, N'phamha@example.com', N'0922345678', N'78 Tôn Đức Thắng, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'cb7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Lý Cường', CAST(N'1988-04-15' AS Date), 2, N'lycuong@example.com', N'0923456789', N'101 Tràng Tiền, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'cc7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Nguyễn Dương', CAST(N'1992-02-18' AS Date), 2, N'nguyenduong@example.com', N'0924567890', N'123 Nguyễn Khuyến, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'cd7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Đỗ Hạnh', CAST(N'1994-12-10' AS Date), 1, N'dohanh@example.com', N'0925678901', N'456 Hoàng Hoa Thám, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'ce7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Võ Quang', CAST(N'1991-07-20' AS Date), 2, N'voquang@example.com', N'0926789012', N'78 Hàng Bông, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'cf7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Phan Vy', CAST(N'1996-05-30' AS Date), 1, N'phanvy@example.com', N'0927890123', N'90 Hàng Mã, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'd07fcfaf-fdc1-ef11-af2b-141333c92d46', N'Bùi Thịnh', CAST(N'1990-11-28' AS Date), 2, N'buithinh@example.com', N'0928901234', N'12 Phan Đình Phùng, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'd17fcfaf-fdc1-ef11-af2b-141333c92d46', N'Trịnh Hoàng', CAST(N'1993-08-14' AS Date), 2, N'trinhhoang@example.com', N'0929012345', N'234 Tô Hiệu, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'd27fcfaf-fdc1-ef11-af2b-141333c92d46', N'Nguyễn Phú', CAST(N'1997-01-19' AS Date), 2, N'nguyenphu@example.com', N'0930123456', N'56 Thanh Xuân, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'd37fcfaf-fdc1-ef11-af2b-141333c92d46', N'Lê Hiếu', CAST(N'1992-06-12' AS Date), 2, N'le_hieu@example.com', N'0931234567', N'78 Ba Đình, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'd47fcfaf-fdc1-ef11-af2b-141333c92d46', N'Hoàng Mai', CAST(N'1995-04-20' AS Date), 1, N'hoangmai@example.com', N'0932345678', N'45 Chùa Bộc, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'd57fcfaf-fdc1-ef11-af2b-141333c92d46', N'Vũ Tùng', CAST(N'1991-10-11' AS Date), 2, N'vutung@example.com', N'0933456789', N'101 Hoàng Đạo Thúy, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'd67fcfaf-fdc1-ef11-af2b-141333c92d46', N'Phạm Trang', CAST(N'1994-05-15' AS Date), 1, N'phamtrang@example.com', N'0934567890', N'123 Thái Hà, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'd77fcfaf-fdc1-ef11-af2b-141333c92d46', N'Trần Phúc', CAST(N'1990-03-22' AS Date), 2, N'tranphuc@example.com', N'0935678901', N'67 Trường Sa, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'd87fcfaf-fdc1-ef11-af2b-141333c92d46', N'Lê Duy', CAST(N'1996-11-01' AS Date), 2, N'leduy@example.com', N'0936789012', N'89 Lê Văn Lương, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'd97fcfaf-fdc1-ef11-af2b-141333c92d46', N'Nguyễn Hưng', CAST(N'1995-02-14' AS Date), 2, N'nguyenhung@example.com', N'0937890123', N'12 Hàng Cót, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'da7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Hoàng Tân', CAST(N'1993-07-18' AS Date), 2, N'hoangtan@example.com', N'0938901234', N'101 Kim Giang, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'db7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Vũ Nga', CAST(N'1998-12-25' AS Date), 1, N'vunga@example.com', N'0939012345', N'90 Hàng Gai, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'dc7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Phạm Sơn', CAST(N'1991-09-15' AS Date), 2, N'phamson@example.com', N'0940123456', N'45 Văn Miếu, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'dd7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Trịnh Lan', CAST(N'1994-06-21' AS Date), 1, N'trinhlan@example.com', N'0941234567', N'78 Nguyễn Công Trứ, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'de7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Nguyễn Hải', CAST(N'1992-01-10' AS Date), 2, N'nguyenhai@example.com', N'0942345678', N'67 Đặng Thai Mai, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'df7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Lý Phát', CAST(N'1995-03-30' AS Date), 2, N'lyphat@example.com', N'0943456789', N'123 Hàng Vôi, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'e07fcfaf-fdc1-ef11-af2b-141333c92d46', N'Vũ Oanh', CAST(N'1997-08-24' AS Date), 1, N'vuoanh@example.com', N'0944567890', N'101 Cát Linh, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'e17fcfaf-fdc1-ef11-af2b-141333c92d46', N'Phan Hoài', CAST(N'1990-04-19' AS Date), 2, N'phanhoai@example.com', N'0945678901', N'90 Giáp Bát, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'e27fcfaf-fdc1-ef11-af2b-141333c92d46', N'Trần Khoa', CAST(N'1991-10-03' AS Date), 2, N'trankhoa@example.com', N'0946789012', N'45 Nguyễn Du, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'e37fcfaf-fdc1-ef11-af2b-141333c92d46', N'Hoàng Yến', CAST(N'1998-05-11' AS Date), 1, N'hoangyen@example.com', N'0947890123', N'78 Hàng Chuối, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
INSERT [dbo].[KhachHang] ([id_khach_hang], [ho_va_ten], [ngay_sinh], [gioi_tinh], [email], [sdt], [dia_chi], [ngay_tao], [ngay_sua], [trang_thai]) VALUES (N'e47fcfaf-fdc1-ef11-af2b-141333c92d46', N'Lê Chí', CAST(N'1993-02-18' AS Date), 2, N'lechi@example.com', N'0948901234', N'67 Kim Mã, Hà Nội', CAST(N'2024-12-24T20:48:00.387' AS DateTime), NULL, 1)
GO
INSERT [dbo].[KhuVuc] ([id_khu_vuc], [ten_khu_vuc], [ten_viet_tat], [ngay_tao], [ngay_sua], [trang_thai], [suc_chua]) VALUES (N'577fcfaf-fdc1-ef11-af2b-141333c92d46', N'Tầng 1', N'T1', CAST(N'2024-12-24T20:48:00.283' AS DateTime), NULL, 1, 20)
INSERT [dbo].[KhuVuc] ([id_khu_vuc], [ten_khu_vuc], [ten_viet_tat], [ngay_tao], [ngay_sua], [trang_thai], [suc_chua]) VALUES (N'587fcfaf-fdc1-ef11-af2b-141333c92d46', N'Tầng 2', N'T2', CAST(N'2024-12-24T20:48:00.283' AS DateTime), NULL, 1, 50)
INSERT [dbo].[KhuVuc] ([id_khu_vuc], [ten_khu_vuc], [ten_viet_tat], [ngay_tao], [ngay_sua], [trang_thai], [suc_chua]) VALUES (N'597fcfaf-fdc1-ef11-af2b-141333c92d46', N'Tầng 3', N'T3', CAST(N'2024-12-24T20:48:00.283' AS DateTime), NULL, 1, 50)
INSERT [dbo].[KhuVuc] ([id_khu_vuc], [ten_khu_vuc], [ten_viet_tat], [ngay_tao], [ngay_sua], [trang_thai], [suc_chua]) VALUES (N'5a7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Sân trời', N'ST', CAST(N'2024-12-24T20:48:00.283' AS DateTime), NULL, 1, 50)
GO
INSERT [dbo].[NhanVien] ([id_nv], [anh_nhan_vien], [ma_nv], [ho_va_ten], [ngay_sinh], [gioi_tinh], [dia_chi], [chuc_vu], [lam_tu_ngay], [ngay_sua], [trang_thai], [sdt], [email], [mat_khau]) VALUES (N'137fcfaf-fdc1-ef11-af2b-141333c92d46', N'nv_01.jpg', N'NV001', N'Nguyễn Văn A', CAST(N'1985-05-15' AS Date), 1, N'123 Trần Hưng Đạo, TP.HCM', 0, CAST(N'2024-12-24T20:48:00.223' AS DateTime), NULL, 1, N'0901234567', N'nva@example.com', N'123456')
INSERT [dbo].[NhanVien] ([id_nv], [anh_nhan_vien], [ma_nv], [ho_va_ten], [ngay_sinh], [gioi_tinh], [dia_chi], [chuc_vu], [lam_tu_ngay], [ngay_sua], [trang_thai], [sdt], [email], [mat_khau]) VALUES (N'147fcfaf-fdc1-ef11-af2b-141333c92d46', N'nv_02.jpg', N'NV002', N'Lê Thị B', CAST(N'1990-07-20' AS Date), 2, N'456 Lê Lợi, TP.HCM', 1, CAST(N'2024-12-24T20:48:00.223' AS DateTime), NULL, 1, N'0902345678', N'ltb@example.com', N'123456')
GO
INSERT [dbo].[PhieuGiamGia] ([id_phieu_giam_gia], [ten_giam_gia], [so_luong], [tien_giam], [phan_tram_giam], [gia_tri_tu], [gia_tri_den], [mo_ta], [trang_thai], [tu_ngay], [den_ngay]) VALUES (N'ae7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Giảm giá Tết Nguyên Đán', 100, NULL, N'10', CAST(50.000 AS Decimal(15, 3)), CAST(1000.000 AS Decimal(15, 3)), N'Giảm 10% cho hóa đơn vào dịp Tết Nguyên Đán', 1, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-01-30T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuGiamGia] ([id_phieu_giam_gia], [ten_giam_gia], [so_luong], [tien_giam], [phan_tram_giam], [gia_tri_tu], [gia_tri_den], [mo_ta], [trang_thai], [tu_ngay], [den_ngay]) VALUES (N'af7fcfaf-fdc1-ef11-af2b-141333c92d46', N'Giảm giá 30/4', 150, NULL, N'20', CAST(100.000 AS Decimal(15, 3)), CAST(1500.000 AS Decimal(15, 3)), N'Giảm 20% cho hóa đơn vào dịp 30/4', 1, CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2024-04-30T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuGiamGia] ([id_phieu_giam_gia], [ten_giam_gia], [so_luong], [tien_giam], [phan_tram_giam], [gia_tri_tu], [gia_tri_den], [mo_ta], [trang_thai], [tu_ngay], [den_ngay]) VALUES (N'b07fcfaf-fdc1-ef11-af2b-141333c92d46', N'Giảm giá Quốc Khánh', 200, CAST(57.000 AS Decimal(15, 3)), NULL, CAST(50.000 AS Decimal(15, 3)), CAST(500.000 AS Decimal(15, 3)), N'Giảm 50k cho hóa đơn vào dịp Quốc Khánh', 1, CAST(N'2024-08-30T00:00:00.000' AS DateTime), CAST(N'2024-09-05T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuGiamGia] ([id_phieu_giam_gia], [ten_giam_gia], [so_luong], [tien_giam], [phan_tram_giam], [gia_tri_tu], [gia_tri_den], [mo_ta], [trang_thai], [tu_ngay], [den_ngay]) VALUES (N'b17fcfaf-fdc1-ef11-af2b-141333c92d46', N'Giảm giá Sinh Nhật', 50, NULL, N'50', CAST(10.000 AS Decimal(15, 3)), CAST(500.000 AS Decimal(15, 3)), N'Giảm giá 5% cho đơn hàng vào dịp sinh nhật', 1, CAST(N'2024-05-01T00:00:00.000' AS DateTime), CAST(N'2024-05-31T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuGiamGia] ([id_phieu_giam_gia], [ten_giam_gia], [so_luong], [tien_giam], [phan_tram_giam], [gia_tri_tu], [gia_tri_den], [mo_ta], [trang_thai], [tu_ngay], [den_ngay]) VALUES (N'b27fcfaf-fdc1-ef11-af2b-141333c92d46', N'Giảm giá Giáng Sinh', 80, CAST(20.000 AS Decimal(15, 3)), NULL, CAST(20.000 AS Decimal(15, 3)), CAST(500.000 AS Decimal(15, 3)), N'Giảm 20k cho hóa đơn vào dịp Giáng Sinh', 0, CAST(N'2024-12-01T00:00:00.000' AS DateTime), CAST(N'2024-12-25T00:00:00.000' AS DateTime))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CoSo__872B2DB6935E751D]    Script Date: 12/26/2024 1:53:39 PM ******/
ALTER TABLE [dbo].[CoSo] ADD UNIQUE NONCLUSTERED 
(
	[ten_co_so] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__DDDFB4831DDA5467]    Script Date: 12/26/2024 1:53:39 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[sdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__DDDFB4833B92148B]    Script Date: 12/26/2024 1:53:39 PM ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[sdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ban] ADD  DEFAULT (newsequentialid()) FOR [id_ban]
GO
ALTER TABLE [dbo].[BanGop] ADD  DEFAULT (newsequentialid()) FOR [id_bangop]
GO
ALTER TABLE [dbo].[BanGopChiTiet] ADD  DEFAULT (newsequentialid()) FOR [id_bangopchitiet]
GO
ALTER TABLE [dbo].[Banner] ADD  DEFAULT (newsequentialid()) FOR [id_banner]
GO
ALTER TABLE [dbo].[Combo] ADD  DEFAULT (newsequentialid()) FOR [id_combo]
GO
ALTER TABLE [dbo].[ComboChiTiet] ADD  DEFAULT (newsequentialid()) FOR [id_combo_chi_tiet]
GO
ALTER TABLE [dbo].[CoSo] ADD  DEFAULT (newsequentialid()) FOR [id_co_so]
GO
ALTER TABLE [dbo].[DanhMuc] ADD  DEFAULT (newsequentialid()) FOR [id_danh_muc]
GO
ALTER TABLE [dbo].[DoAn_DoUong] ADD  DEFAULT (newsequentialid()) FOR [id_do_an_do_uong]
GO
ALTER TABLE [dbo].[DoAn_DoUong_image] ADD  DEFAULT (newsequentialid()) FOR [id_anh_do_an_do_uong]
GO
ALTER TABLE [dbo].[DoAnDoUongChiTiet] ADD  DEFAULT (newsequentialid()) FOR [id_do_an_do_uong_chi_tiet]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (newsequentialid()) FOR [id_hoa_don]
GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  DEFAULT (newsequentialid()) FOR [id_hoa_don_chi_tiet]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (newsequentialid()) FOR [id_khach_hang]
GO
ALTER TABLE [dbo].[KhuVuc] ADD  DEFAULT (newsequentialid()) FOR [id_khu_vuc]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (newsequentialid()) FOR [id_nv]
GO
ALTER TABLE [dbo].[PhieuGiamGia] ADD  DEFAULT (newsequentialid()) FOR [id_phieu_giam_gia]
GO
ALTER TABLE [dbo].[Ban]  WITH CHECK ADD FOREIGN KEY([id_khu_vuc])
REFERENCES [dbo].[KhuVuc] ([id_khu_vuc])
GO
ALTER TABLE [dbo].[BanGop]  WITH CHECK ADD FOREIGN KEY([id_khu_vuc])
REFERENCES [dbo].[KhuVuc] ([id_khu_vuc])
GO
ALTER TABLE [dbo].[BanGopChiTiet]  WITH CHECK ADD FOREIGN KEY([id_ban])
REFERENCES [dbo].[Ban] ([id_ban])
GO
ALTER TABLE [dbo].[BanGopChiTiet]  WITH CHECK ADD FOREIGN KEY([id_bangop])
REFERENCES [dbo].[BanGop] ([id_bangop])
GO
ALTER TABLE [dbo].[ComboChiTiet]  WITH CHECK ADD FOREIGN KEY([id_combo])
REFERENCES [dbo].[Combo] ([id_combo])
GO
ALTER TABLE [dbo].[ComboChiTiet]  WITH CHECK ADD FOREIGN KEY([id_do_an_do_uong_chi_tiet])
REFERENCES [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet])
GO
ALTER TABLE [dbo].[DoAn_DoUong]  WITH CHECK ADD FOREIGN KEY([id_danh_muc])
REFERENCES [dbo].[DanhMuc] ([id_danh_muc])
GO
ALTER TABLE [dbo].[DoAn_DoUong_image]  WITH CHECK ADD FOREIGN KEY([id_do_an_do_uong])
REFERENCES [dbo].[DoAn_DoUong] ([id_do_an_do_uong])
GO
ALTER TABLE [dbo].[DoAnDoUongChiTiet]  WITH CHECK ADD FOREIGN KEY([id_do_an_do_uong])
REFERENCES [dbo].[DoAn_DoUong] ([id_do_an_do_uong])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([id_ban])
REFERENCES [dbo].[Ban] ([id_ban])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([id_bangop])
REFERENCES [dbo].[BanGop] ([id_bangop])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([id_khach_hang])
REFERENCES [dbo].[KhachHang] ([id_khach_hang])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([id_nv])
REFERENCES [dbo].[NhanVien] ([id_nv])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([id_phieu_giam_gia])
REFERENCES [dbo].[PhieuGiamGia] ([id_phieu_giam_gia])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([id_combo])
REFERENCES [dbo].[Combo] ([id_combo])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([id_do_an_do_uong_chi_tiet])
REFERENCES [dbo].[DoAnDoUongChiTiet] ([id_do_an_do_uong_chi_tiet])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([id_hoa_don])
REFERENCES [dbo].[HoaDon] ([id_hoa_don])
GO
