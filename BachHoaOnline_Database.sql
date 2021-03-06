USE [master]
GO
/****** Object:  Database [BACHHOA_ONLINE]    Script Date: 25/08/2019 7:12:18 PM ******/
CREATE DATABASE [BACHHOA_ONLINE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BACHHOA_ONLINE', FILENAME = N'D:\rdsdbdata\DATA\BACHHOA_ONLINE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BACHHOA_ONLINE_log', FILENAME = N'D:\rdsdbdata\DATA\BACHHOA_ONLINE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BACHHOA_ONLINE] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BACHHOA_ONLINE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BACHHOA_ONLINE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET ARITHABORT OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET RECOVERY FULL 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET  MULTI_USER 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BACHHOA_ONLINE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BACHHOA_ONLINE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BACHHOA_ONLINE]
GO
/****** Object:  User [admin]    Script Date: 25/08/2019 7:12:22 PM ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 25/08/2019 7:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MACTHD] [int] IDENTITY(1,1) NOT NULL,
	[MAHD] [int] NULL,
	[MAHH] [int] NULL,
	[SOLUONG] [int] NULL,
	[DONGIA] [float] NULL,
	[GIAMGIA] [float] NULL,
 CONSTRAINT [PK_CHITIETHOADON_MACTHD] PRIMARY KEY CLUSTERED 
(
	[MACTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETLOAI]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETLOAI](
	[MACTL] [int] IDENTITY(1,1) NOT NULL,
	[TENCTL] [nvarchar](255) NULL,
	[MOTA] [nvarchar](255) NULL,
 CONSTRAINT [PK_CHITIETLOAI_MACTL] PRIMARY KEY CLUSTERED 
(
	[MACTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HANGHOA]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HANGHOA](
	[MAHH] [int] IDENTITY(1,1) NOT NULL,
	[TENHH] [nvarchar](max) NULL,
	[TENALIAS] [nvarchar](max) NULL,
	[MALOAI] [int] NULL,
	[MOTADONVI] [nvarchar](100) NULL,
	[DONGIA] [float] NULL,
	[HINH] [nvarchar](255) NULL,
	[NGAYSX] [varchar](100) NULL,
	[GIAMGIA] [float] NULL,
	[SOLANXEM] [int] NULL,
	[MOTA] [nvarchar](max) NULL,
	[MANCC] [int] NULL,
	[MAXX] [int] NULL,
	[MATH] [int] NULL,
	[CHITIETLOAI] [int] NULL,
 CONSTRAINT [PK_HANGHOA_MAHH] PRIMARY KEY CLUSTERED 
(
	[MAHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [int] IDENTITY(1,1) NOT NULL,
	[MAKH] [int] NULL,
	[NGAYDAT] [datetime] NULL,
	[NGAYGIAO] [datetime] NULL,
	[HOTEN] [nvarchar](100) NULL,
	[DIACHI] [nvarchar](255) NULL,
	[CACHTHANHTOAN] [nvarchar](100) NULL,
	[CACHVANCHUYEN] [nvarchar](100) NULL,
	[PHIVANCHUYEN] [float] NULL,
	[MATRANGTHAI] [int] NULL,
	[GHICHU] [text] NULL,
 CONSTRAINT [PK_HOADON_MAHD] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOTRO]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOTRO](
	[MAHT] [int] IDENTITY(1,1) NOT NULL,
	[MANV] [int] NULL,
	[MANX] [int] NULL,
	[NOIDUNG] [text] NULL,
	[NGAYGUI] [datetime] NULL,
 CONSTRAINT [PK_HOTRO_MAHT] PRIMARY KEY CLUSTERED 
(
	[MAHT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[MATKHAU] [varchar](255) NULL,
	[HOTEN] [nvarchar](100) NULL,
	[GIOITINH] [bit] NULL,
	[NGAYSINH] [datetime] NULL,
	[DIACHI] [nvarchar](255) NULL,
	[DIENTHOAI] [nvarchar](10) NULL,
	[EMAIL] [varchar](100) NULL,
	[RANDOMKEY] [varchar](100) NULL,
 CONSTRAINT [PK_KHACHHANG_MAKH] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAI]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI](
	[MALOAI] [int] IDENTITY(1,1) NOT NULL,
	[TENLOAI] [nvarchar](100) NULL,
	[TENLOAIALIAS] [nvarchar](100) NULL,
	[HINH] [nvarchar](100) NULL,
	[MOTA] [nvarchar](255) NULL,
 CONSTRAINT [PK_LOAI_MALOAI] PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MANCC] [int] IDENTITY(1,1) NOT NULL,
	[TENNCC] [nvarchar](100) NULL,
	[NGUOILIENHE] [nvarchar](100) NULL,
	[DIENTHOAI] [nvarchar](10) NULL,
	[DIACHI] [nvarchar](100) NULL,
	[EMAIL] [nvarchar](100) NULL,
	[LOGO] [nvarchar](255) NULL,
	[MOTA] [text] NULL,
 CONSTRAINT [PK_NHACUNGCAP_MANCC] PRIMARY KEY CLUSTERED 
(
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [int] IDENTITY(1,1) NOT NULL,
	[HOTEN] [nvarchar](100) NULL,
	[EMAIL] [varchar](100) NULL,
	[MATKHAU] [varchar](255) NULL,
	[RANDOMKEY] [varchar](100) NULL,
 CONSTRAINT [PK_NHANVIEN_MANV] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANXET]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANXET](
	[MANX] [int] IDENTITY(1,1) NOT NULL,
	[MAKH] [int] NULL,
	[MAHH] [int] NULL,
	[NOIDUNG] [text] NULL,
	[RATING] [int] NULL,
	[NGAYGUI] [datetime] NULL,
 CONSTRAINT [PK_NHANXET_MANX] PRIMARY KEY CLUSTERED 
(
	[MANX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHANCONG]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANCONG](
	[MAPC] [int] IDENTITY(1,1) NOT NULL,
	[MANV] [int] NULL,
	[MAPB] [int] NULL,
	[NGAYPC] [datetime] NULL,
	[HIEULUC] [datetime] NULL,
 CONSTRAINT [PK_PHANCONG_MAPC] PRIMARY KEY CLUSTERED 
(
	[MAPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHANQUYEN]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANQUYEN](
	[MAPQ] [int] IDENTITY(1,1) NOT NULL,
	[MAPB] [int] NULL,
	[MATRANG] [int] NULL,
	[THEM] [bit] NULL,
	[XOA] [bit] NULL,
	[SUA] [bit] NULL,
	[XEM] [bit] NULL,
 CONSTRAINT [PK_PHANQUYEN_MAPQ] PRIMARY KEY CLUSTERED 
(
	[MAPQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHONGBAN]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONGBAN](
	[MAPB] [int] IDENTITY(1,1) NOT NULL,
	[TENPB] [nvarchar](100) NULL,
	[THONTIN] [nvarchar](255) NULL,
 CONSTRAINT [PK_PHONGBAN_MAPB] PRIMARY KEY CLUSTERED 
(
	[MAPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [int] NOT NULL,
	[TENHH] [nvarchar](max) NULL,
	[TENALIAS] [nvarchar](max) NULL,
	[DONGIA] [nvarchar](50) NULL,
	[GIAMGIA] [nvarchar](50) NULL,
	[HINH] [nvarchar](max) NULL,
	[NCC] [nvarchar](50) NULL,
	[THUONGHIEU] [nvarchar](50) NULL,
	[XUATXU] [nvarchar](50) NULL,
	[MOTA] [nvarchar](max) NULL,
	[LOAI] [nvarchar](50) NULL,
	[CHITIETLOAI] [nvarchar](50) NULL,
	[SOLANXEM] [nvarchar](50) NULL,
	[NGAYSX] [nvarchar](max) NULL,
	[MOTADONVI] [nvarchar](max) NULL,
 CONSTRAINT [PK_SANPHAM_MASP] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[THUONGHIEU]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUONGHIEU](
	[MATH] [int] IDENTITY(1,1) NOT NULL,
	[TENTH] [nvarchar](100) NULL,
	[MOTA] [text] NULL,
 CONSTRAINT [PK_THUONGHIEU_MATH] PRIMARY KEY CLUSTERED 
(
	[MATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TRANGTHAI]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANGTHAI](
	[MATRANGTHAI] [int] IDENTITY(1,1) NOT NULL,
	[TENTRANGTHAI] [nvarchar](100) NULL,
	[MOTRA] [text] NULL,
 CONSTRAINT [PK_TRANGTHAI_MATRANGTHAI] PRIMARY KEY CLUSTERED 
(
	[MATRANGTHAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TRANGWEB]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANGWEB](
	[MATRANG] [int] IDENTITY(1,1) NOT NULL,
	[TENTRANG] [nvarchar](100) NULL,
	[URL] [nvarchar](255) NULL,
 CONSTRAINT [PK_TRANGWEB_MATRANG] PRIMARY KEY CLUSTERED 
(
	[MATRANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[XUATXU]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XUATXU](
	[MAXX] [int] IDENTITY(1,1) NOT NULL,
	[TENXX] [nvarchar](100) NULL,
 CONSTRAINT [PK_XUATXU_MAXX] PRIMARY KEY CLUSTERED 
(
	[MAXX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YEUTHICH]    Script Date: 25/08/2019 7:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YEUTHICH](
	[MAYT] [int] IDENTITY(1,1) NOT NULL,
	[MAKH] [int] NULL,
	[MAHH] [int] NULL,
	[NGAYCHON] [datetime] NULL,
 CONSTRAINT [PK_YEUTHICH_MAYT] PRIMARY KEY CLUSTERED 
(
	[MAYT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CHITIETHOADON] ON 

INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (1, 5, 1, 1, 288000, 0)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (3, 7, 4, 1, 11100, 63)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (4, 7, 1, 1, 288000, 0)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (5, 8, 5, 1, 113400, 16)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (6, 8, 2, 2, 299730, 3)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (7, 9, 4, 1, 11100, 63)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (8, 10, 4, 1, 11100, 63)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (9, 11, 4, 1, 11100, 63)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (10, 12, 3, 1, 181770, 17)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (11, 13, 8, 1, 16711.44921875, 51)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (12, 14, 6, 1, 85020, 22)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (13, 15, 2, 1, 299730, 3)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (14, 16, 1, 1, 10, 0)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (15, 17, 1, 1, 10, 0)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (16, 18, 2, 1, 299730, 3)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (17, 19, 4, 1, 11100, 63)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (18, 20, 1, 1, 10, 0)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (19, 20, 4, 1, 11100, 63)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (23, 24, 2, 1, 299730, 3)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (24, 25, 2, 1, 299730, 3)
INSERT [dbo].[CHITIETHOADON] ([MACTHD], [MAHD], [MAHH], [SOLUONG], [DONGIA], [GIAMGIA]) VALUES (25, 26, 1, 1, 10, 0)
SET IDENTITY_INSERT [dbo].[CHITIETHOADON] OFF
SET IDENTITY_INSERT [dbo].[CHITIETLOAI] ON 

INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (1, N'Giặt giũ & Chăm sóc quần áo', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (2, N'Vệ sinh nhà cửa', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (3, N'Kẹo', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (4, N'Snack', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (5, N'Bánh', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (6, N'Thực phẩm khô', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (7, N'Gia vị dạng bột', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (8, N'Ngũ cốc', N' bột,')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (9, N'Yến Mạch Ăn Liền Quaker 600g', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (10, N'Thức Uống Yến Mạch Quaker 3in1 - Vị Chocolate 420g', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (11, N'Bia - Nước Ngọt', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (12, N'Đồ uống không gas', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (13, N'Dầu ăn', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (14, N'Gia vị dạng nước', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (15, N'Dành cho mèo', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (16, N'Dành cho chó', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (17, N'Cà phê', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (18, N'Bộ Trà Olong Phúc Lộc 400 gram - Trà Olong thượng hạng', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (19, N'Trà', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (20, N'Hộp trà Tâm Phúc – Nõn Tôm (gỗ)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (21, N'Hộp Quà Tết Nước Mát Miền Tây Ân Lộc Phúc (12 Lon / Hộp)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (22, N'Hộp quà DẤU ẤN VIỆT- Hạt Điều Bình Phước vỏ lụa A+', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (23, N'Hộp trà Tri Ân - Ô Long - Cổ Thụ - Nõn Tôm (gỗ)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (24, N'Hộp trà Tri Ân - Ô Long - Cổ Thụ - Nõn Tôm', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (25, N'Hộp trà Thiếc 3 - Ô Long - Nõn Tôm - Tuyết', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (26, N'Hộp trà Thiếc 2 – Ô Long Nhân Sâm – Hồng Trà', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (27, N'Sữa bột', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (28, N'Bóng Cá Chay An Nhiên 150g - Tặng kèm Bò Nướng Chay An Nhiên 100g', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (29, N'Cá Cơm Hoa Chuối Kho Tiêu Chay An Nhiên (150g)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (30, N'Combo 2 chai Nước chấm chay quả thơm (Hàng xuất khẩu)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (31, N'Cơm sấy gạo lứt rong biển Ohsawa Zozin (200g)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (32, N'Sườn Non Chay An Nhiên Gói 150g', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (33, N'Bột Hòa Tan Hiệu Bồ Đề (Không Đường) Hùng Phát túi 200 g', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (34, N'Chao Bông Mai - Vị chay thuần Việt (hũ thuỷ tinh cao cấp - 400g)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (35, N'Mì Ly Hảo Hảo Handy Vị Lẩu Nấm Thập Cẩm Chay Acecook (66g)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (36, N'Rong Biển Khô Chay 20g', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (37, N'Cốt Lết Chay An Nhiên (150g)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (38, N'Thùng 30 Gói Mì Unif Chay Nấm Đông Cô 80G', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (39, N'Tinh Bột Nghệ Vàng Xuân Nguyên', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (40, N'Saffron - Nhuỵ hoa Nghệ tây hộp 1gr Hàng nhập khẩu (Super Negin)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (41, N'DJ&A; SHIITAKE MUSHROOM CRISPS - Snack Nấm Hương Sấy Giòn Của Úc', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (42, N'Nước Yến Sào winsNest Nhân Sâm (6 Lọ x 70 ml / Hộp)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (43, N'Saffron - Nhuỵ hoa Nghệ tây hộp 3gr Hàng nhập khẩu (Super Negin)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (44, N'Nước Yến Sào winsNest Kids (6 Lọ x 70 ml / Lốc)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (45, N'Thức Uống Yến Mạch Quaker 3in1 - Vị Berry Burst 450g', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (46, N'Nước Yến Sào winsNest Đường Phèn ( 6 Lọ * 70 ml / Hộp)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (47, N'Hộp 8 Hũ Nước Yến Sào Sanest Có Đường (70ml / hũ)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (48, N'Hộp 90g Phô mai QBB Cheese Desert hương Rich Nuts (Hạnh nhân và Óc chó) - Nhập khẩu Nhật', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (49, N'Mật ong chanh Hàn Quốc 1kg', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (50, N'Thức Uống Yến Mạch Quaker 3in1 - Vị Truyền Thống 420g', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (51, N'Yến Mạch Ăn Liền Quaker - Vị Chocolate 180g', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (52, N'Hộp 20 Gói Trà Tan Linh Chi HQReishi HQGANO (200g)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (53, N'Kỷ tử Thái Phong 250gr', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (54, N'Nhụy Hoa Nghệ Tây Bahraman Saffron Dòng Negin 2gram', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (55, N'Bột Ngũ Cốc Nokchawon Mixed Powder 270g', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (56, N'Viên Sâm Linh Chi Nhung Hươu Hàn Quốc hộp 120 viên', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (57, N'Nước cốt Berry cô đặc Brands Veta 42ml', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (58, N'Sản phẩm cho người ăn kiêng PROTIN 1 Hùng Phát hộp 20 gói x 20 g', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (59, N'Sản phẩm cho người ăn kiêng PROTIN 2 Hùng Phát hộp 20 gói x 20 g', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (60, N'Bột nhục quế mịn 250gr (277)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (61, N'Thực Phẩm Bảo Vệ Sức Khỏe  Collagen Youtheory 390 Viên', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (62, N'Hộp trung Bổ gan', N' giải rượu Hovenia loại (1500ml / hộp),')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (63, N'Mầm đậu nành Đông Dương 0.5kg', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (64, N'Viên Nang Đông Trùng Hạ Thảo HIMA (Hộp 70 Viên)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (65, N'Nhụy hoa nghệ tây Bahraman Saffron dòng Negin - loại 1 gram - Giao màu ngẫu nhiên', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (66, N'Hộp 6 Hủ kẹo Play More Dưa Hấu', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (67, N'Nhụy hoa nghệ tây Bahraman Saffron dòng Negin -  loại 2 gram', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (68, N'Cao Hắc Sâm Hàn Quốc', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (69, N'Trà Mật Chanh Ong Hàn Quốc Korea Natural Food Honey Citron Tea (1Kg)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (70, N'Hộp 10 Túi Hồng sâm 6 năm Daedong Korea thái lát tẩm Mật ong - Daedong Honeyed Korean Red Ginseng (20g x 10)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (71, N'Bột nhân sâm Maca hữu cơ Your SuperFood hộp 200g - Nhập khẩu từ Peru', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (72, N'Bánh gạo lứt Hellorice (500g)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (73, N'Giấm táo hữu cơ Bragg', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (74, N'Bột Chuối Hữu Cơ Mỹ OneLife (Hộp 50gr)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (75, N'Gạo Hữu Cơ Hoa Nắng - Vàng Lúa Chín 2kg', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (76, N'Mật ong nguyên chất 100% - 50ml', N' chai thủy tinh châu âu sang trọng,')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (77, N'Bột Nở Làm Bánh Radiant Code(Baking Soda) (500g)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (78, N'Sữa Gạo Hữu Cơ 1L ', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (79, N'Mật ong nguyên chất 100% Mhoney - 200ml chai thủy tinh hoa văn sang trọng', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (80, N'Dầu Hạt Lanh Hữu Cơ Naturgreen (250ml)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (81, N'Mì Spaghetti Nguyên Cám Whole Wheat Hữu Cơ BioItalia (500g)', N'')
INSERT [dbo].[CHITIETLOAI] ([MACTL], [TENCTL], [MOTA]) VALUES (82, N'Mật ong chanh đào - Trị ho', N' giảm cân, đẹp da - 100ml, Chai thủy tinh châu âu sang trọng,')
SET IDENTITY_INSERT [dbo].[CHITIETLOAI] OFF
SET IDENTITY_INSERT [dbo].[HANGHOA] ON 

INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (1, N'Combo Nước Giặt Ariel Đậm Đặc Dạng Túi 2.4kg  + Nước Xả Vải Downy Huyền Bí Dạng Túi 2.4L', N'combo-nuoc-giat-ariel-dam-dac-dang-tui-24kg-nuoc-xa-vai-downy-huyen-bi-dang-tui-24l', 1, NULL, 10, N'bf950e5f6b12d9504938bf9dfb1d3165.jpg', NULL, 0, NULL, N'BỘ SẢN PHẨM BAO GỒM:01 X Nước Giặt Ariel Đậm Đặc Dạng Chai 2.4kg01 X Nước Xả Vải Downy Huyền Bí Dạng Túi 2.4LTHÔNG TIN SẢN PHẨM1. Nước giặt chai Ariel đậm đặc là bột giặt dạng gel đậm đặc giúp Loại sạch vết bẩn tốt hơn gấp 2X chỉ trong 1 bước giặt. sản phẩm thế hệ mới được áp dụng công nghệ cao với khả năng loại sạch vết bẩn vượt trội- chứa nhiều thành phần làm sạch hiệu quả giúp loại bỏ được nhiều vết bẩn cứng đầu như vết bẩn dầu mỡ- vết cà phêĐặc điểm:- Sản phẩm dạng gel đậm đặc cho khả năng giặt tẩy vượt trội- giúp đánh bật mọi vết bẩn tốt hơn gấp 2 lần chỉ trong 1 bước giặt- quần áo sẽ được trắng sáng- không để lại chất cặn và lưu lại hương thơm tươi mát.- Là sản phẩm phù hợp cả giặt tay và giặt bằng máy- nước giặt Ariel đậm đặc sẽ giúp cho việc giặt giũ của bạn trở nên nhẹ nhàng và hiệu quả hơn- giúp các bà nội trợ tiết kiệm được thời gian và công sức của mình.- An toàn cho làn da của người sử dụng nếu giặt bằng tay.HDSD:- Giặt tay: 15ml cho 5 - 7 chiếc quần áo- Giặt máy: 45ml ...', 1, 1, 1, 1)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (2, N'Combo 2 Nước Xả Vải Downy Expert Thể Thao Dạng Túi 2.4L', N'combo-2-nuoc-xa-vai-downy-expert-the-thao-dang-tui-24l', 1, NULL, 309000, N'bf8344bf6abae3990ff4033beaa711a8.jpg', NULL, 3, NULL, N'Nước Xả Vải Downy Expert Thể Thao là dòng làm mềm vải mới của Downy- kết hợp công nghệ mới được thiết kế để loại bỏ mùi không mong muốn trên quần áo. Đây là dòng sản phẩm đầu tiên có công nghệ chống mồ hôi lên đến 24 giờ- tăng cường sự tự tin với hương thơm lâu dài cho mọi người trong gia đình.TÍNH NĂNG NỔI BẬT- Với khả năng chống mùi tối ưu và kéo dài 24 giờ- Downy Expert hoạt động thông qua ma sát trên quần áo- giúp giữ quần áo thơm mát suốt cả ngày.- Ngoài ra- Downy Sport còn bao gồm các tính năng như ngăn mùi hôi từ quần áo ướt đẫm mồ hôi. - Loại bỏ mùi mốc từ quần áo- lưu giữ hương thơm tươi mát- lâu phai với hương nước hoa. - Ngăn chặn sự phát triển của mùi ẩm mốc cả ngày dài.HƯỚNG DẪN SỬ DỤNG- Không đổ trực tiếp lên quần áo- Đối với giặt tay: Dùng 1/2 nắp Downy cho 15-20 chiếc quần áo- ngâm trong vài phút- vắt và phơi khô- Đối với giặt máy: Dùng 1/2 nắp Downy cho nửa thùng giặt (khoảng 35L) hoặc 1 nắp rưỡi cho đầy thùng giặt (khoảng 52L); sau khi máy hoàn tất công đoạn xả- vắt v...', 1, 2, 2, 1)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (3, N'Combo 2 Túi Nước Giặt Omo Dịu Nhẹ (2.4kg / Túi)', N'combo-2-tui-nuoc-giat-omo-diu-nhe-24kg-tui', 1, NULL, 219000, N'2fd72cd14d2ec98c59b4137faafc5e7c.jpg', NULL, 17, NULL, N'Combo 2 Túi Nước Giặt Omo Dịu Nhẹ (2.4 kg/túi) - Nước giặt có công thức dịu nhẹ với làn da- bạn không cần phải vò tay trước mà quần áo vẫn được làm sạch nhanh chóng trong môi trường giặt máy. Sản phẩm với sức mạnh đánh bật hoàn toàn vết bẩn ngay trong lồng giặt. Sản phẩm được thiết kế phù hợp nhất cho giặt máy- giúp quần áo luôn sạch sẽ- thơm tho.Sản phẩm có thành phần an toàn cho làn da- kể cả làn da nhạy cảm.Sản phẩm được thiết kế cho dòng  cửa trên- ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh- giúp đánh bật vết bẩn nhanh hơn- chỉ trong 1 lần giặtOMO hoàn tan- thấm nhanh thật nhanh vào từng sợi vải- nhanh chóng đánh bật các vết bẩn khô cứngNước giặt tạo ít bọt- không gây trào bọt trong lúc giặt và bảo vệ máy giặt cùng quần áo của bạn tốt hơn.Hương thơm nhẹ nhàng- lưu lại thật lâu cho quần áo luôn ngát hương- bung tỏa hương thơm theo từng cử động.Nước Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao- đáp ứng các tiêu chuẩn ...', 2, 3, 3, 1)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (4, N'Xà phòng thanh giặt cổ áo nội địa Nhật Bản', N'xa-phong-thanh-giat-co-ao-noi-dia-nhat-ban', 1, NULL, 30000, N'a212e7ae18c54d119becd1861e1064e6.jpg', NULL, 63, NULL, N'Trọng lượng: 100gCông dụng: Sản phẩm giúp dễ dàng loại bỏ các vết bẩn hiệu quả- đặc biệt là vùng cánh tay và cổ áo…Hướng dẫn sử dụng: chỉ cần thấm ướt quần áo- chà nhẹ sản phẩm lên những chỗ có vết bẩn và ngâm- rồi giặt (giặt tay hay giặt máy đều được).Nhập khẩu trực tiếp từ Nhật. Sản xuất tại Nhật ...', 3, 3, 4, 1)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (5, N'Diệt kiến dạng Gel Bayer Maxforce Quantum 0.03% (12g)', N'diet-kien-dang-gel-bayer-maxforce-quantum-003-12g', 1, NULL, 135000, N'54ac37ca7fbafb1a1a5d2ba62c6fb752.jpg', NULL, 16, NULL, N'Gel Diệt Kiến Bayer Maxforce Quantum 0.03% (12g)An toàn cho người sử dụng: Không mùi- không gây phản ứng phụ cho người và vật nuôi trong nhà.Hiệu ứng Domino tiêu diệt cả tổ kiến.Hiệu quả trên nhiều loại kiến.Thân thiện- sử dụng linh hoạt.Công thức dạng gel- không cần phun xịt. ...', 2, 4, 5, 2)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (6, N'Nước Giặt Máy Bền Đẹp Cửa Trên OMO Túi 2.4kg', N'nuoc-giat-may-ben-dep-cua-tren-omo-tui-24kg', 1, NULL, 109000, N'07f59defa647dfde4601d7301034879d.jpg', NULL, 22, NULL, N'Nước Giặt Máy Bền Đẹp Cửa Trên OMO Túi 2.4kg có công thức được thiết kế chuyên biệt- ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh- giúp đánh bật vết bẩn nhanh hơn- chỉ trong 1 lần giặt. OMO hoàn tan- thấm nhanh thật nhanh vào từng sợi vải- nhanh chóng đánh bật các vết bẩn khô cứng.Thông tin sản phẩmCông thức làm sạch vết bẩn độc đáoSản phẩm nước giặt OMO được THIẾT KẾ PHÙ HỢP NHẤT cho GIẶT MÁY và có công thức ít bọt để bảo vệ máy giặt của gia đình bạn giúp quần áo luôn sạch và thơmĐột phá từ các hoạt chất loại bỏ vết bẩn- giúp không cần ngâm hay vò lâu. Kết hợp 3 lợi ích vượt trội: làm trắng- làm sáng & xoáy bay hoàn toàn vết bẩnHương thơm bung tỏa theo từng cử độngHương thơm nhẹ nhàng- lưu lại thật lâu cho quần áo luôn ngát hương- bung tỏa hương thơm theo từng cử động.An toàn- thân thiện với môi trườngBột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao- đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an t...', 2, 3, 3, 1)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (7, N'Set 12 hộp diệt gián tận gốc hiệu quả ngay tức thì - Nội địa Nhật Bản', N'set-12-hop-diet-gian-tan-goc-hieu-qua-ngay-tuc-thi---noi-dia-nhat-ban', 1, NULL, 148999, N'0c1c4d55aa28473c7816395be411bf7d.jpg', NULL, 42, NULL, N'Gián là loài côn trùng gây khó chịu- khó diệt bằng các biện pháp cơ học hay đập bằng vỉ. Góc bếp- tủ quần áo- phòng làm việc... rất nhiều nơi trong gia đình dễ dàng là nơi trú ẩn cho gián- gây mùi hôi khó chịu và mất vệ sinh- hư hỏng đồ.Thuốc diệt gián Black Cap Nhật - hộp 12 viên sẽ đuổi sạch các loại gián ra khỏi gia đình bạn mà không gây hại cho con người- vật nuôi giống như khi dùng thuốc xịt- hay các biện pháp truyền thống. Là sản phẩm hữu ích và rất cần thiết cho mỗi gia đình. Sản phẩm diệt tận gốc lũ gián trong nhà bạn bằng cơ chế tỏa mùi hương dễ chịu thu hút gián đến ăn- gián chưa chết ngay mà về gây bệnh cho cả tổ- diệt sạch tận gốc- diệt cả ấu trùng con- thậm chí ngay cả trứng gián cũng sẽ bị tiêu diệt. Hiệu quả cao- với 12 viên bạn có thể sử dụng ở 12 điểm khác nhau trong nhà bạn tại các vị trí xuất hiện nhiều gián như: góc tủ bếp- bạn có thể đặt tại các đường ống cống thoát nước- góc tủ bếp- gầm tủ lạnh- góc tủ quần áo... bất cứ nơi nào có gián ...', 4, 3, 4, 2)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (8, N'Nước diệt kiến sạch kiến sau hai giờ - Hantox 50ml', N'nuoc-diet-kien-sach-kien-sau-hai-gio---hantox-50ml', 1, NULL, 34105, N'e31a668b4ec10e6c411fe8c3c1f21e4f.jpg', NULL, 51, NULL, N'Nước Diệt Kiến Trong 1 Ngày Sạch Kiến Không Quay Lại Hanvet là hóa chất diệt côn trùng đạt tiêu chuẩn của Tổ Chức Y Tế Thế Giới (WHO).An toàn cho người sử dụng: Không mùi- không gây phản ứng phụ cho người và vật nuôi trong nhà- chính vì lợi điểm đó nên được áp dụng phun ULV cả trong và ngoài nhà- trong khi đó các hóa chất cùng gốc Deltamethrin chỉ áp dụng phun ULV ngoài nhà.Sử dụng tiện lợi cho các hộ gia đình- dùng để phun tồn lưu để diệt muỗi- ruồi- kiến- gián- bọ chét và côn trùng có cánh khác..Công dụng:Diệt muỗi- ruồi- kiến- gián- bọ chét trong gia dụng và y tế.Phòng chống dịch sốt xuất huyết- sốt rét- dịch tiêu chảy cấp- dịch hạch trong cộng đồng.Cách dùng:Diệt muỗi- kiến- gián: Cứ 5ml pha với 0-5 lít nước- phun 10 m2 bề mặt- tường- vách- cống rãnh- phun kỹ các khe kẽ nơi côn trùng hay trú đậu.Diệt ruồi: Cứ 5 ml pha với 0-5 lít nước phun 5 m2 bề mặt- bãi rác- nhà tiêu- các nơi ruồi cư trú. Hiệu lực kéo dài 6-8 tuần sau 1 lần phun.Diệt bọ chét: Cứ 5ml pha với 2 lít nước- phun kỹ b...', 5, 3, 6, 2)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (9, N'Nước Giặt  OMO Comfort Tinh Dầu Thơm 21122480 (3.8kg)  ', N'nuoc-giat-omo-comfort-tinh-dau-thom-21122480-38kg', 1, NULL, 191000, N'8906f979723c498666802292db7a195e.jpg', NULL, 20, NULL, N'Nước Giặt  OMO Comfort Tinh Dầu Thơm (3-8kg) - 21122480 với công nghệ đột phá- có tác dụng xoáy bay những vết bẩn cứng đầu nhất- đồng thời không để lại cặn bột giặt như các loại bột thông thường khác- giúp cho quần áo luôn trắng sạch- thơm ngát như mới. Hương thơm của Comfort giúp quần áo thơm mát dài lâu- giúp bạn thoải mái vận động suốt cả ngày.Bột Giặt OMO Hương Comfort ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh- giúp đánh bật vết bẩn nhanh hơn- chỉ trong 1 lần giặt.OMO hoàn tan- thấm nhanh thật nhanh vào từng sợi vải- nhanh chóng đánh bật các vết bẩn khô cứng.OMO Comfort Mới kết hợp sức mạnh đánh bật vết bẩn của OMO cài tiến và hương thơm quyến rũ của Comfort sẽ giúp quần áo thơm mát dài lâu. Bạn sẽ yêu ngay mùi hương cải tiến mới của OMO Comfort.Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao- đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn.Sản phẩm có thiết kế chai lớn 3.8 kg giúp người...', 2, 3, 3, 1)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (10, N'Nước giặt ZEINO tím 3.5kg', N'nuoc-giat-zeino-tim-35kg', 1, NULL, 80000, N'fe28f1559d8f3fa6e624b26a3b3bb9c7.jpg', NULL, 45, NULL, N'ZEINO nước giặt tiên tiến can tím 3.5kg.Hương sữa tắm cá ngựa- thơm mát gấp nhiều lầnNước giặt ZEINO thấm sâu vào từng sợi vải- vừa giặt sạch dễ dàng vừa lưu lại hương thơm như sữa tắm.Dùng được cho cả giặt tay và giặt máy (cửa trên và cửa ngang)Dịu nhẹ- an toàn với da tay ...', 6, 3, 7, 1)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (11, N'Thuốc viên diệt gián nội địa Nhật Bản', N'thuoc-vien-diet-gian-noi-dia-nhat-ban', 1, NULL, 140083, N'a03fbd2517232658892e81873e95c5fb.jpg', NULL, 56, NULL, N'-Đuổi gián siêu tốc bằng chất Fipronil ngay từ khi đặt viên đuổi gián.-Có tác dụng với cả trứng gián lẫn gián to. Đuổi diệt được tất cả các loại gián.-Đuổi diệt được cả gián ăn trực tiếp hạt- gián ăn phải phân gián hay gián đã chết có ăn thuốc. Đuổi diệt dán tận gốc.Mỗi viên diệt gián Nhật Bản được bao bọc bởi hộp nhựa cứng chỉ có gián chui lọt vào lấy thức ăn. An toàn tuyệt đối vs trẻ con và thú cưng. Loại 12 viên diệt dc nhiều loại gián to và nhỏ.Đặc tính sản phẩm: Trọng lượng 24g x 12 viênKích thước 211 * 31 * 151 (mm)Lưu ý: Để xa tầm tay trẻ em. ...', 3, 3, 4, 2)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (12, N'Nước Giặt Máy Bền Đẹp Cửa Trước OMO 4.2kg - 21122578 ', N'nuoc-giat-may-ben-dep-cua-truoc-omo-42kg---21122578', 1, NULL, 210000, N'68a253a747e2c5e00e7fdf6c28fd34ab.jpg', NULL, 22, NULL, N'Nước Giặt Máy Bền Đẹp Cửa Trước OMO 4.2kg - 21122578 với công nghệ giặt sạch nhanh giúp đánh bật nhiều loại vết bẩn khô cứng nhanh hơn chỉ trong 1 lần giặt. Sản phẩm dành cho máy giặt cửa trước- tạo ít bọt bảo vệ máy và giúp quần áo thơm mát dài lâu- giúp bạn thoải mái vận động suốt cả ngày.Sản phẩm được thiết kế cho dòng máy giặt cửa trước- ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh- giúp đánh bật vết bẩn nhanh hơn- chỉ trong 1 lần giặtOMO hoàn tan- thấm nhanh thật nhanh vào từng sợi vải- nhanh chóng đánh bật các vết bẩn khô cứngHương thơm nhẹ nhàng- lưu lại thật lâu cho quần áo luôn ngát hương- bung tỏa hương thơm theo từng cử động.Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao- đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toànSản phẩm có thiết kế chai lớn 4.2 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng ...', 2, 3, 3, 1)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (13, N'Giấy Vệ Sinh Lency (15 Cuộn)', N'giay-ve-sinh-lency-15-cuon', 1, NULL, 86501, N'1a1e4de0499c5fd63cc77c7c0373be9c.png', NULL, 9, NULL, N'Giấy Vệ Sinh Lency (15 Cuộn) được sản xuất với dây chuyền sản xuất khép kín và hiện đại đạt tiêu chuẩn an toàn tại Việt Nam. Giấy vệ sinh Lency cao cấp có độ dai- mềm mịn- trắng và khả năng thấm hút nước cao đem đến cho người dùng sự thoải mái- dễ chịu khi tiếp xúc với làn da. Giấy vệ sinh Lency cao cấp được sử dụng được với nhiều mục đích khác nhau. Với thiết kế dạng cuộn có lõi giúp bạn dễ dàng cài vào móc đựng giấy vệ sinh- mang lại sự tiện lợi khi sử dụng.  ...', 7, 3, 8, 2)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (14, N'Kẹo Chanh Muối Thái Lan 1kg Hartbeat Bổ Sung Vitamin C', N'keo-chanh-muoi-thai-lan-1kg-hartbeat-bo-sung-vitamin-c', 2, NULL, 180000, N'd9afaad85e6be5dd8c404e12e71feab3.jpg', NULL, 5, NULL, N'Kẹo Chanh Muối Thái Lan 1kg Hartbeat Bổ Sung Vitamin C là sự kết hợp xuất sắc của 3 vị chua- mặn – ngọt trong 1 viên kẹo: vị chanh chua chua thơm mát -vị mặn nhẹ của muối nhưng vẫn có chút ngọt ngào từ đường khiến bạn vô cùng bất ngờ khi nếm thử. Kẹo Chanh Muối Thái Lan 1kg Hartbeat Bổ Sung Vitamin C đặc biệt giúp làm thơm miệng cực nhanh chóng- hiệu quả vô cùng thích hợp sau khi bạn ăn đồ nặng mùi hoặc những người thường xuyên hút thuốc lá. Với vị chua chua mặn mặn ngọt ngọt cực dễ ăn- kẹo chanh muối Thái Lan thích hợp cho tất cả mọi người và đủ mọi lứa tuổi1.      Thành phần kẹo chanh muối Thái LanĐường- siro glucose- muối 1%- chất điều chỉnh độ axit- vitamin C- hương chanh tự nhiên.1.      HDSD và bảo quản Kẹo Chanh Muối Thái Lan 1kg Hartbeat Bổ Sung Vitamin Cü  HSD in trên bao bìü  Bảo quản nơi khô ráo thoáng mát tránh ánh nắng mặt trờiü  Ăn ngay sau khi bóc vỏ ...', 8, 3, 9, 3)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (15, N'Hộp 24 gói mỳ enaak vị gà 30gram', N'hop-24-goi-my-enaak-vi-ga-30gram', 2, NULL, 98000, N'4e297939651ef6375a0559322392c46e.jpg', NULL, 10, NULL, N'Nhờ em này chống đói những lúc chúng ta bận việc- làm biếng đi mua đồ ăn sáng- ăn vặt giờ xế chiều trong giờ làm- xem bóng đá Tiết kiệm thời gian- chi phí- ko phải nấu nướỉ cần xé bịch snack này là ta đã xơi được ngay và lun hsd luôn nhập mới 12 tháng1 hộp 24 gói ...', 9, 5, 10, 4)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (16, N'Hộp 6 hũ Kẹo the vị dưa hấu Playmore (22g / hũ)', N'hop-6-hu-keo-the-vi-dua-hau-playmore-22g-hu', 2, NULL, 149000, N'b32b9d9007d04211eca2ade61268c831.jpg', NULL, 12, NULL, N'Kẹo the vị dưa hấu Playmore hũ 22g là sản phẩm kẹo ngậm nổi tiếng của Thái LanViên ngậm thơm- mềm- vị dưa hấu bạc hà thanh mát- sảng khoáiCó tác dụng thơm miệng- giảm stress.Hũ xinh xắn dễ thương- có thể tận dụng đựng đồ.* Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức- địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển- phụ phí hàng cồng kềnh- ...', 2, 3, 11, 3)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (17, N'Kẹo Dẻo Chupa Chups Sour Belt (Hộp 32 Dây)', N'keo-deo-chupa-chups-sour-belt-hop-32-day', 2, NULL, 60500, N'1c5ea37ab74fe37b2e4c6e0299fcd960.jpg', NULL, 14, NULL, N'Kẹo Dẻo Chupa Chups Sour Belt chào đón mùa bóng đá World Cup sôi động và sảng khoái dài lâu với giá cực ưu đãi.Được sản xuất theo công nghệ hiện đại- mọi khâu từ tuyển chọn nguyên liệu tới chế biến- đóng bao bì đều diễn ra khép kín dưới sự giám sát và kiểm tra nghiêm ngặt.Sản phẩm không chứa hóa chất- chất bảo quản độc hại- đảm bảo an toàn cho sức khỏe người tiêu dùng. Kẹo Dẻo Chupa Chups Hương Trái Cây Hỗn Hợp-Kẹo Dẻo Chupa Chups Sour Belt dai ngon vị trái cây. Chupa Chups Mãi Vui!Sản xuất tại Việt Nam- bởi Cty Perffeti Van Melle Việt Nam. ...', 2, 6, 12, 3)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (18, N'Bánh dừa nướng 180g', N'banh-dua-nuong-180g', 2, NULL, 25001, N'971f44234865d2f4d1db11597b905ffb.jpg', NULL, 29, NULL, N'BÁNH DỪA NƯỚNG - ĐẶC SẢN QUẢNG NAM - DÒN- NGON - BÉOVới hai nguyên liệu chính là gạo nếp hương và dừa bánh tẻ nạo cùng cách trình bày giản dị-bánh dừa chẳng mấy lúc đã chiếm được tình cảm của người tiêu dùng. Cái ngậy béo của dừa bánh tẻ nạo- của vừng xát quyện cái ngậy béo của gạo nếp thơm- cái ngọt vừa phải của đường kính- ăn không biết chán.Cái quý của bánh dừa nướng là để được lâu - giúp cho những người “nghiện dừa” đỡ nhớ chất dừa quen thuộc cho dù ở bất cứ nơi đâu. Bánh được xuất khẩu sang thị trường khó tính như Nhật Bản và được phản hồi rất tốt từ khách hàng. ...', 10, 3, 13, 5)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (19, N'Bánh quy trứng muối Đài Loan 500g', N'banh-quy-trung-muoi-dai-loan-500g', 2, NULL, 129000, N'57396f581fccb3a6a4b59f35f6d7e24e.jpg', NULL, 14, NULL, N'Bánh Quy Mạch Nha Nhân Trứng Muối Đài Loan (500gr)Bánh quy nhân trứng muối 500g của Đài Loan với hương vị thơm ngon- lạ miệng- khác với các loại bánh ngọt khác.Bánh không quá ngọt- không chứa nhiều chất béo- thích hợp với người ăn kiêng giảm cân.Trong thành phần sản phẩm cung cấp nhiều axit amin và các khoáng chất- tốt cho cơ thể.Bạn có thể sử dụng thay thế các loại thức ăn giàu chất béo khi thèm ăn hoặc dùng thay thế bữa ăn sáng.Sản phẩm đang rất hot tại Taiwan. Bánh quy mini xốp giòn kẹp lớp nhân trứng muối dẻo mix đường nâu cực lạ miệng. Chưa thấy lớp nhân bánh nào đậm vị trứng muối lại dẻo thiệt dẻo như kẹo mạch nha vậy. Khi ăn cắn từ từ từng miếng nhỏ để thưởng thức- dù là bánh mini nhưng ăn nguyên cái nhai hong nổi đâu ạ. Lớp nhân rất dẻo- rất đặc biệt- và đương nhiên là cực kì ngon.Khối Lượng tịnh: 500gr- khoảng 77 cáiXuất Xứ: Đài Loan ...', 11, 3, 14, 5)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (20, N'Hộp 30 Gói Mì Snack Hương Gà Nướng Gemez Enaak (16g)', N'hop-30-goi-mi-snack-huong-ga-nuong-gemez-enaak-16g', 2, NULL, 135000, N'1d3d17b5e38de08cee97b9ef2d0fa06f.png', NULL, 0, NULL, N'Hộp 30 Gói Mì Snack Hương Gà Nướng Gemez Enaak (16g) là món ăn vặt số 1 tại Hàn Quốc với 100% khoai tây thật- sợi mì được nướng- không chiên qua dầu mỡ.Mì tiện lợi sử dụng mọi lúc- mọi nơi với trọng lượng vừa phải- có thể ăn ngay không cần qua chế biến- mang đến cho bạn một món ăn vặt tiện lợi và bổ dưỡng.Hướng dẫn sử dụng: Dùng ăn trực tiếp (không cần nấu).Bảo quản: nơi khô ráo- tránh ánh nắng trực tiếp. ...', 2, 3, 15, 4)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (21, N'Nho Khô California Ligo 200g', N'nho-kho-california-ligo-200g', 3, NULL, 75000, N'9305106605298--1-.u3059.d20170620.t195147.92095.jpg', NULL, 0, NULL, N'Nho Khô California Ligo 200gNho Khô California Ligo 200g với thành phần là nho đen- dầu cải được sản xuất tại Mỹ- có thể dùng ngay hoặc dùng để làm bánh. Nho khô là món ăn vặt được nhiều người yêu thích nhờ tác dụng vừa lợi tiểu vừa bổ sung khoáng tố kalium tốt cho sức khỏe.Thông tin sản phẩmNguyên liệu từ những  trái nho tươi ngonNho khô là món ăn vặt được nhiều người lựa chọn- đặc biệt trong dịp lễ- Tết. Nho được sấy khô từ những trái nho tươi ngon từ vùng California- sản xuất trên quy trình công nghệ hiện đại- khép kín mang đến chất lượng sản phẩm tốt nhất cho người tiêu dùng.Dẻo mềm- vị ngọt thơm lôi cuốnTừng quả nho được sấy khô ra màu nâu đậm với sự dẻo mềm cùng vị ngọt hấp dẫn. Sản phẩm được chế biến từ những trái nho chín đủ độ- có vị ngọt và hương thơm tự nhiên- mang lại sự yên tâm cho người thưởng thức.Cung cấp nhiều chất có lợi cho sức khỏeNho khô giàu chất chống oxy hóa- giúp máu lưu thông tốt. Chất chống oxy hóa có trong nho khô có thể bảo vệ bạn chống lại sự lão hóa và un...', 2, 3, 16, 6)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (22, N'Kẹo Hồng Sâm Vitamin Daegoung Food TP0014 (200g)', N'keo-hong-sam-vitamin-daegoung-food-tp0014-200g', 2, NULL, 29000, N'ab8d84f93fa283eee2d8ae7f8bceafba.jpg', NULL, 71, NULL, N'Kẹo Hồng Sâm Vitamin TP0014 (200g) sử dụng nguồn nguyên liệu chính là hồng sâm tự nhiên và các loại thảo dược khác mang đến hương vị ngọt ngào- nồng nàn vị sâm đặc trưng giúp người dụng có thể thưởng thức thức hương vị thơm ngon hấp dẫn nâng cao sức khỏe.Đặc biệt- sản phẩm được tuyển chọn từ nguồn nguyên liệu chọn lọc kết hợp với quy trình sản xuất hiện đại- khép kín đảm bảo an toàn cho sức khỏe người dùng.Ngoài ra- hồng sâm có tác dụng tăng cường sinh lực- giảm cholestorol- chống lão hóa đặc biệt- sản phẩm còn giúp hỗ trợ phục hồi nhanh chóng cho các bệnh nhân ung thư- hỗ trợ điều trị các bệnh tiểu đường tim mạch.Kẹo hồng sâm còn giúp tinh thần tỉnh táo phù hợp với mọi đối tượng nhất là người làm việc căng thẳng- mệt mỏi- lo âu- người vừa trải qua phẫu thuật.Bên cạnh đó- hồng sâm còn giúp cho bổ sung vitamin và dưỡng chất giúp nuôi dưỡng làn da tươi sáng- hồng hào dần sau khi dùng đồng thời điều hòa rối loạn tiết tố bên trong cơ thể.Sản phẩm với thiết kế bao bì đẹp mắt- tiện lợi kết h...', 12, 7, 17, 3)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (23, N'Kẹo Sing Gum Big Babol Shapeez Có Nhân Hương Dưa Hấu (50 Viên)', N'keo-sing-gum-big-babol-shapeez-co-nhan-huong-dua-hau-50-vien', 2, NULL, 48000, N'b379c2cf7e295e54e11f01591e7fc7d8.jpg', NULL, 4, NULL, N'Kẹo Sing Gum Big Babol Shapeez Có Nhân Hương Dưa Hấu với viên kẹo hình quả dưa hấu cực độc đáo. Nhân dưa hấu tan chảy bên trong mang lại cho bạn nhiều bất ngờ khi thưởng thức.  Kẹo cao su thổi Big Babol vui nhộn- sáng tạo- thổi cực to và thật sảng khoái. ...', 2, 3, 18, 3)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (24, N'Kẹo Thảo Mộc Tự Nhiên Original Ricola F122676 (40g)', N'keo-thao-moc-tu-nhien-original-ricola-f122676-40g', 2, NULL, 29000, N'1.u2409.d20170925.t203408.883532.jpg', NULL, 28, NULL, N'Kẹo Thảo Mộc Tự Nhiên Original Ricola F122676 (40g) là sản phẩm có xuất xứ từ Thụy Sĩ. Sản phẩm được sản xuất trên dây chuyền hiện đại theo công nghệ tiên tiến- dưới sự giám sát và kiểm tra nghiêm ngặt của các chuyên gia trong ngành công nghệ thực phẩm. Sản phẩm có thành phần gồm mạch nha- sorbitol- chiết xuất hỗn hợp thảo mộc- màu caramen- chất tạo mùi (dầu bạc hà cay- tinh dầu mentola)… Sự kết hợp độc đáo của các nguyên liệu tạo cho sản phẩm hương vị thơm ngon- hấp dẫn- kích thích vị giác. Kẹo thảo mộc tự nhiên Ricola không sử dụng chất hóa học- chất tạo màu- chất bảo quản độc hại. Sản phẩm được đóng hộp tiện dụng- vỏ hộp làm từ nguyên liệu sạch- không lẫn tạp chất- đảm bảo cho sức khỏe người tiêu dùng. ...', 2, 8, 19, 3)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (25, N'Bánh Đậu Xanh Rồng Vàng Hoàng Gia Sầu Riêng (56g)', N'banh-dau-xanh-rong-vang-hoang-gia-sau-rieng-56g', 2, NULL, 15000, N'5d1c3979ee94724b918d2f2f4bce4748.jpg', NULL, 0, NULL, N'                Bánh Đậu Xanh Rồng Vàng Hoàng Gia Sầu Riêng (56g) được chế biến bằng nguyên liệu chọn lọc kỹ như: đường kính trắng- bột đậu xanh- dầu thực vật- hương vani... mang lại những chiếc bánh đậu xanh hảo hạng- thơm ngon. Bánh thường được thưởng thức khi uống trà hay chè xanh giúp tăng thêm vị ngon cho món bánh.Bánh đậu xanh Rồng Vàng Hoàng Gia được thiết kế sang trọng- ấn tượng- thích hợp là món quà biếu tặng ý nghĩa dành cho người thân- bạn bè vào các dịp lễ Tết đặc biệt.Được sản xuất theo công nghệ tiên tiến và quy trình khép kín- đảm bảo chất lượng sản phẩm và an toàn cho sức khỏe.            ...', 2, 3, 20, 5)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (26, N'Kẹo Socola Ý Witors (350g/Xô)', N'keo-socola-y-witors-350gxo', 2, NULL, 278000, N'd8b192c11f8fa2b7199f2c9f26104f71.jpg', NULL, 0, NULL, N'                Kẹo Socola Ý Witors (350g/Xô) với hương vị thơm ngon tuyệt vời mang đến món ăn vặt yêu thích và đem lại cho bạn những phút giây thưởng thức thú vị mỗi ngày.Được đóng gói theo quy trình sản xuất hiện đại- khép kín- đảm bảo an toàn vệ sinh thực phẩm- mang đến cho người tiêu dùng sự an tâm và tin tưởng.Nguồn nguyên liệu này đều được kiểm tra kỹ lưỡng trước khi đưa vào sản xuất để đảm bảo an toàn cho sức khỏe người dùng.Sản phẩm cung cấp nhiều chất dinh dưỡng và năng lượng cho cơ thể.Kẹo phù hợp với mọi lứa tuổi- có thể dùng làm quà tặng nhân dịp ngày lễ tết cho bạn bè và người thân. ...', 2, 6, 21, 3)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (27, N'Thùng 12 Tô Mì Omachi Business Class 160g', N'thung-12-to-mi-omachi-business-class-160g', 3, NULL, 300000, N'28dda464dd8f04a74b29222390f0eb17.jpg', NULL, 15, NULL, N'Omachi Business Class (160g) là sản phẩm cao cấp mới của nhãn hàng Omachi với: Sợi mì khoai tây làm từ khoai tây nhập khẩu châu Âu- 5 viên chả tôm thịt dẻo thơm- Súp hải sản từ gói Xốt XO.Omachi Business Class (160g) là “bữa ăn đủ thịt- đầy rau”- năng lượng tương đương một tô phở và có thể thay thế được cho bữa ăn.Hương vị độc đáo Tôm thịt & Xốt XO đem lại một trải nghiệm cao cấp- mới lạ.Bao bì tiện lợi- sang trọng nên bạn có thể thưởng thức ở bất cứ đâu. ...', 2, 3, 22, 6)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (28, N'Hạt Nêm CHIN-SU Tôm Thanh Ngọt (Hũ 190g)', N'hat-nem-chin-su-tom-thanh-ngot-hu-190g', 4, NULL, 22000, N'cb3309c7f8f8e795ec0284ff7e0841d4.jpg', NULL, 0, NULL, N'Hạt Nêm CHIN-SU Tôm Thanh Ngọt MớiLần đầu tiên mang đến vị ngọt thanh tự nhiên từ tôm cho mọi món canh- kho- xào ngọt tự nhiên- ngon tròn vị.Cấu tạo hạt nhỏ- dễ tan giúp thấm nhanh- nâng vị mọi món ăn. Nước dùng trong- vị ngọt thanh.Đặc biệt- Hạt Nêm CHIN-SU Tôm Thanh Ngọt Mới dạng hũ cao cấp giúp bảo quản tiện lợi.Hướng dẫn sử dụng:Món canh: 3 muỗng (thìa) nhỏ cho 1 lít nướcMón xào: 1 muỗng (thìa) nhỏ cho 500g rau củMón kho: 2 muỗng (thìa) nhỏ cho 500g thịt/cáHướng dẫn bảo quản: Bảo quản nơi khô ráo- thoáng mát- tránh ánh nắng trực tiếp. Tránh để gần hóa chất và sản phẩm có mùi mạnh. Cột kín miệng gói sau khi sử dụng.  ...', 2, 3, 23, 7)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (29, N'Hạt Nêm CHIN-SU Ngọt Tôm Thơm  Thịt (Gói 800g)', N'hat-nem-chin-su-ngot-tom-thom-thit-goi-800g', 4, NULL, 56000, N'db7dd843534a56b82a8e3cd5f10e819b.jpg', NULL, 23, NULL, N'Hạt Nêm CHIN-SU Ngọt Tôm Thơm Thịt MớiSự kết hợp tinh túy giữa vị ngọt thanh tự nhiên từ tôm và đậm thơm xương thịt cho mọi món canh- kho- xào ngọt tự nhiên- ngon tròn vị. Cấu tạo hạt nhỏ- dễ tan giúp thấm nhanh- nâng vị mọi món ăn. Nước dùng trong- vị ngọt thanh.Hướng dẫn sử dụng:Món canh: 3 muỗng (thìa) nhỏ cho 1 lít nướcMón xào: 1 muỗng (thìa) nhỏ cho 500g rau củMón kho: 2 muỗng (thìa) nhỏ cho 500g thịt/cáHướng dẫn bảo quản: Bảo quản nơi khô ráo- thoáng mát- tránh ánh nắng trực tiếp. Tránh để gần hóa chất và sản phẩm có mùi mạnh. Cột kín miệng gói sau khi sử dụng.  ...', 2, 3, 23, 7)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (30, N'Ngũ cốc hoa quả Calbee Furugura Nhật Bản gói 800g', N'ngu-coc-hoa-qua-calbee-furugura-nhat-ban-goi-800g', 3, NULL, 168000, N'6b50d5ae741024905b0806c69a08f52e.jpg', NULL, 52, NULL, N'Xuất xứ: Nhập khẩu trực tiếp tại Nhật Bản và phân phối chính hãng toàn Việt NamHàng về liên tục- date sản phẩm luôn dài.Quy cách: Gói 800grNgũ cốc Calbee Nhật bản có chứa rất nhiều loại hạt và trái cây có giá trị dinh dưỡng cao- không thêm gia vị mà tận dụng những hương vị vốn có của loại trái cây đó. Từ trẻ nhỏ đến người già- ngay cả người bệnh tiểu đường cũng rất rất thích thú với loại ngũ cốc Calbee của Nhật bởi nó rất bổ dưỡng và thơm ngon. Chứa nhiều loại trái cây và hạt được sấy khô như là yến mạch- lúa mạch- táo- nho- đu đủ- dâu tây- dừa- ngô- bí ngô- hạnh nhân- gạo nâu- sữa….Ngũ cốc sấy khô Calbee hàng Nhật nội địa bạn luôn yên tâm về chất lượng cũng như giá trị dinh dưỡng đã được công bố. Giàu canxi- chất xơ và các loại Vitamin B6- Vitamin A- Vitamin D- Vitamin B12 và cả Axit Folic rất tốt cho bà bầu và những bà mẹ đang cho con bú.Ngũ cốc có hàm lượng chất béo rất thấp nhưng lại có hàm lượng vitamin và khoáng chất cao- giúp cung cấp đầy đủ các dưỡng chất cho cơ thể. Vì lý do n...', 3, 3, 24, 6)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (31, N'Ngũ Cốc Sấy Khô Calbee nội địa Nhật Bản 800g', N'ngu-coc-say-kho-calbee-noi-dia-nhat-ban-800g', 5, NULL, 179160, N'749a72eff516d0aaf0cf2f3a7f937682.jpg', NULL, 49, NULL, N'Ngũ cốc Calbee Nhật Bản 800gNgũ cốc Calbee là sản phẩm cao cấp của Nhật Bản- chứa rất nhiều loại hạt và trái cây có giá trị dinh dưỡng cao được sấy khô bằng công nghệ hiện đại đảm bảo giữ nguyên chất dinh dưỡng. Đặc biệt ngũ cốc Calbee thơm ngon- không ngấy bổ sung dễ dàng cho bé và mọi thành viên trong gia đình.Đặc điểm ngũ cốc Calbee- Là một loại ngũ cốc Nhật Bản giàu chất dinh dưỡng- chứa nhiều loại trái cây và hạt được sấy khô gồm yến mạch- lúa mạch- táo- nho- đu đủ- dâu tây- dừa- ngô- bí ngô- hạnh nhân- gạo nâu- sữa….- Giúp bổ sung canxi- chất xơ và các loại Vitamin B6- Vitamin A- Vitamin D- Vitamin B12 và cả Axit Folic rất tốt cho bà bầu và những bà mẹ đang cho con bú- Thơm ngon và không ngấy- dễ dàng bổ sung cho các bé lười ăn- ít ăn rau- Dùng được cho mọi đối tượng: người già- trẻ nhỏ- người bị tiểu đường- người bị tim mạch ...Giá trị dinh dưỡng trong ngũ cốc Calbee Nhật BảnTrong ngũ cốc Calbee 800g có chứa:Năng lượng 223kcal- Vitamin A 150g- Protein 3-9g- Vitamin B1 0-34mg- Li...', 13, 3, 24, 8)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (32, N'Hộp 4.52Kg Yến Mạch 1 Minute Quaker Oats Nhập Khẩu Từ Mỹ', N'hop-452kg-yen-mach-1-minute-quaker-oats-nhap-khau-tu-my', 3, NULL, 194000, N'ae206ad988abcb13fe0ce34defbf4cc9.jpg', NULL, 48, NULL, N'Công dụng của yến mạch:1.Yến mạch giảm cân từ 3-5 kg chỉ trong 7 ngàyPhương pháp giảm cân ngắn hạn( Giảm 3-5kg/tuần )Việc chế biến yến mạch khá đơn giản- bạn chỉ cần 2 nắm tay yến mạch nguyên hạt( Khoảng tâm  100gr – 150gr ) cùng với 4 bát nước sôi rồi đun sôi tiếp khoảng 5-7 phút sau đó tắt bếp để nguội rồi cho ra bát chia thành 3 phần ăn cho 3 bữa trong ngày. Bạn có thể bỏ vào ngăn mát tủ lạnh để bảo quản tốt hơn. Và thực hiện theo đúng thực đơn sau đây:Bữa sáng: 1 bát cháo yến mạch + 1 quả trứng gà luộc + Rau luộcBữa trưa: 1 bát cháo yến mạch + 1 quả trứng gà luộc + rau luộc không được chấm gia vịBữa phụ: Ăn trái cây như táo- bưởi- lêBữa tối: 1 bát cháo yến mạch( Nhớ ăn trước 8h )Chú ý: Các bạn cũng có thể ăn thay thế trứng gà luộc bằng 100 gam ức gà luộc hoặc thịt bò luộc nhé!Phương pháp giảm cân dài hạnĐây là biện pháp giảm cân lâu dài nhưng lại có thể giúp bạn giảm được 7-10kg chỉ trong 1-2 tháng nếu bạn thực hiện tốt những quy định trong thực đơn. Hãy cùng quyết tâm và hành động...', 14, 3, 25, 6)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (33, N'Chà là sấy dẻo Israel ', N'cha-la-say-deo-israel', 3, NULL, 127000, N'336c35d168dee72bf4f312a3be050e02.jpg', NULL, 40, NULL, N' *  Qủa Chà là được nhập khẩu trực tiếp từ israel - dẻo ngọt hoàn toàn tự nhiên- Quả chà là được ví như là viên kẹo ngọt tạo hoá bán tặng cho loài người - trong quả chà là có nhiều dưỡng chất tốt cho cơ thể- chỉ cần ăn 3 quả mỗi ngày để nâng cao sức khỏe. Nhà nào có bé nhỏ nhất định phải có hộp chà là để thấy thế bánh kẹo đồ ăn vặt không tốt.Chà là không chỉ giàu chất xơ thiên nhiên- chà là còn là một nguồn vitamin A- B- K- khoáng tố vi lượng- chất béo.Các nhà khoa học ở Anh công bố rằng ăn chà là mỗi ngày là rất cần thiết cho một chế độ ăn uống cân bằng và lành mạnh. Chà là chống táo bón- rối loạn đường ruột- giảm béo phì- hạn chế các bệnh tim mạch- huyết áp- thừa cholesterol- tiêu chảy.Chà là còn nuôi dưỡng cho cơ bắp phát triển. Chà là còn giúp sáng mắt và chống quáng gà. Đặc biệt chà là rất có lợi cho cả người lớn và trẻ em suy dinh dưỡng cũng như người bệnh trong thời kỳ hồi phục.Chà là còn được xem là thực phẩm tốt nhất cho phụ nữ trong thời gian hành kinh và mang thai nhờ hàm lư...', 11, 3, 26, 6)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (34, N'Yến Mạch Ăn Liền Quaker 600g', N'yen-mach-an-lien-quaker-600g', 6, NULL, 55000, N'54e4c812fc6d7dc6fd2b999defa29cf0.jpg', NULL, 21, NULL, N'Yến Mạch Ăn Liền Quaker 600g thượng hạng- giàu chất dinh dưỡng.Nguồn cung cấp Chất Xơ- giúp cơ thể duy trì một hệ tiêu hóa khỏe mạnh.Nguồn cung cấp Protein dồi dào- giúp cơ thể luôn tràn đầy năng lượng mỗi ngày.Đặc biệt- yến mạch còn cung cấp Beta-Glucan- giúp giảm lượng Cholesterol trong máu- qua đó giảm các nguy cơ về bệnh tim mạch.Yến mạch ăn liền: Sản phẩm dễ dàng được sử dụng ngay sau khi pha thêm nước sôi- không mất thời gian chuẩn bị.Hũ nhựa tiện dụng: Sản phẩm Yến mạch ăn liền Quaker 600gr được đóng gói trong Hũ Nhựa tiện dụng- dễ dàng sử dụng & bảo quản. ...', 2, 9, 27, 9)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (35, N'Nho Khô Mỹ Không Hạt Sunview Raisins 425g (Nho Thập Cẩm)', N'nho-kho-my-khong-hat-sunview-raisins-425g-nho-thap-cam', 3, NULL, 113900, N'04e31aa7fe7cd1053a9d62ed396e9e9c.jpg', NULL, 37, NULL, N'Nho khô Sunview Raisins là một thương hiệu nổi tiếng trên khắp Thế giới- sản phẩm nho khô ngon miệng và mang nhiều lợi ích cho sức khỏe.Với công nghệ sấy khô hiện đại- giữ được hương vị ngon ngọt- chua chua của nho tươi- đồng thời giữ toàn vẹn giá trị dinh dưỡng cao của loại trái cây này. Sunview Raisins lựa chọn những quả nho không hạt tươi ngon- ở những khu vườn nho hữu cơ lớn nhất vùng California- được chứng nhận là giống nho chất lượng- chứa hàm lượng giá trị dinh dưỡng cao.Quy trình chế biến đảm bảo vệ sinh an toàn thực phẩm- không chứa thêm các phụ gia hay chất bảo quản độc hại ảnh hưởng đến sức khỏe người dùng. Nho khô trông rất hấp dẫn- vị chua chua- ngọt ngọt- kích thích tuyến nước bọt hoạt động mạnh mẽ- ăn ngon miệng- giúp tiêu hóa tốt.Nho khô Sunview Raisins chứa vitamin- khoáng chất- và là chất chống oxy hóa tuyệt vời- có thể ngăn ngừa ung thư- tốt cho tiêu hóa- tăng cường năng lượng và hệ thống miễn dịch- đồng thời làm đẹp da- tóc-... Sản phẩm có lợi cho sức khỏe- đặc biệt...', 15, 2, 28, 6)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (36, N'Hộp 4.52Kg Yến Mạch Quaker Oats Nhập Khẩu Từ Mỹ Nguyên Kiện', N'hop-452kg-yen-mach-quaker-oats-nhap-khau-tu-my-nguyen-kien', 3, NULL, 196000, N'b31f8b80564fbf5c6f488d27e3000973.jpg', NULL, 48, NULL, N' Hộp 4-52Kg Yến Mạch Quaker Oats Nhập Khẩu Từ Mỹ Nguyên KiệnXuất Xứ: Mỹ- Trọng Lượng: 4520gramYến Mạch Quaker Oats Old Fashion : dạng hạt cán dẹt- thơm ngon và dễ ăn- thời gian chế biến từ 5-7 phútCông dụng của yến mạch:Yến mạch giảm cân từ 3-5 kg chỉ trong 7 ngàyPhương pháp giảm cân ngắn hạn( Giảm 3-5kg/tuần )Việc chế biến yến mạch khá đơn giản- bạn chỉ cần 2 nắm tay yến mạch nguyên hạt( Khoảng tâm  100gr – 150gr ) cùng với 4 bát nước sôi rồi đun sôi tiếp khoảng 5-7 phút sau đó tắt bếp để nguội rồi cho ra bát chia thành 3 phần ăn cho 3 bữa trong ngày. Bạn có thể bỏ vào ngăn mát tủ lạnh để bảo quản tốt hơn. Và thực hiện theo đúng thực đơn sau đây:Bữa sáng: 1 bát cháo yến mạch + 1 quả trứng gà luộc + Rau luộcBữa trưa: 1 bát cháo yến mạch + 1 quả trứng gà luộc + rau luộc không được chấm gia vịBữa phụ: Ăn trái cây như táo- bưởi- lêBữa tối: 1 bát cháo yến mạch( Nhớ ăn trước 8h )Chú ý: Các bạn cũng có thể ăn thay thế trứng gà luộc bằng 100 gam ức gà luộc hoặc thịt bò luộc nhé!Phương pháp gi...', 11, 3, 25, 6)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (37, N'Combo 2 gói Ngũ cốc hoa quả Calbee Furugura Nhật Bản (gói 800g x 2)', N'combo-2-goi-ngu-coc-hoa-qua-calbee-furugura-nhat-ban-goi-800g-x-2', 3, NULL, 353998, N'04afca26707e16523ec3d5504ada6441.jpg', NULL, 49, NULL, N'Xuất xứ: Nhập khẩu trực tiếp tại Nhật Bản và phân phối chính hãng toàn Việt NamHàng về liên tục- date sản phẩm luôn dài.Quy cách: Combo 2 Gói ( 800gr x 2 ) Ngũ cốc Calbee Nhật bản có chứa rất nhiều loại hạt và trái cây có giá trị dinh dưỡng cao- không thêm gia vị mà tận dụng những hương vị vốn có của loại trái cây đó. Từ trẻ nhỏ đến người già- ngay cả người bệnh tiểu đường cũng rất rất thích thú với loại ngũ cốc Calbee của Nhật bởi nó rất bổ dưỡng và thơm ngon. Chứa nhiều loại trái cây và hạt được sấy khô như là yến mạch- lúa mạch- táo- nho- đu đủ- dâu tây- dừa- ngô- bí ngô- hạnh nhân- gạo nâu- sữa….Ngũ cốc sấy khô Calbee hàng Nhật nội địa bạn luôn yên tâm về chất lượng cũng như giá trị dinh dưỡng đã được công bố. Giàu canxi- chất xơ và các loại Vitamin B6- Vitamin A- Vitamin D- Vitamin B12 và cả Axit Folic rất tốt cho bà bầu và những bà mẹ đang cho con bú.Ngũ cốc có hàm lượng chất béo rất thấp nhưng lại có hàm lượng vitamin và khoáng chất cao- giúp cung cấp đầy đủ các dưỡng chất cho c...', 13, 3, 24, 6)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (38, N'Rong Biển Sấy Tỏi Muối Tôm Chú Tiểu (50g)', N'rong-bien-say-toi-muoi-tom-chu-tieu-50g', 3, NULL, 25000, N'088af36a88efe6c08f19da94e8f025d3.jpg', NULL, 11, NULL, N' Ai cũng bảo rong biển rất tốt cho sức khỏe và sắc đẹp- vậy mà nhiều khi ăn lại thấy không hợp vị. Nếu bạn còn đang phân vân thì thử ngay Rong Biển Sấy Tỏi Muối Tôm của Tada Foods nhé. Món ăn vặt này được chế biến với các tiêu chí khắt khe- đáp ứng cả những tín đồ kén ăn nhất. Cùng nghía qua món ăn thú vị này nào.Rong biển sấy tỏi muối tôm: Công thức cũ mà mới- quen mà lạĐó là sự hòa quyện hương vị của rong biển- tỏi thơm và muối tôm. Khác với rong biển sấy truyền thống- vị ngon khó cưỡng ở đây được nhấn mạnh bởi mùi thơm của tỏi sấy vàng và vị mặn cay đặc trưng của muối tôm chay. Phương pháp chế biến giữ được:Vị giòn thanh tự nhiên của rong biển.Độ giòn dai vừa phải của rong sau khi sấy.Tỏi được lựa chọn kĩ và phi vàng thơm đúng độ.Bí quyết sấy loại bỏ mùi nồng của tỏi nhưng vẫn giữ được mùi đặc trưng của nguyên liệu chính.Sự kết hợp lạ miệng của 3 thành phần: muối tôm chay- tỏi sấy và rong biển- không gây ngán khi thưởng thức.Món snack thần thánh khiến tín đồ ăn vặt mê títRong biển s...', 16, 3, 29, 6)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (39, N'Thức Uống Yến Mạch Quaker 3in1 - Vị Chocolate 420g', N'thuc-uong-yen-mach-quaker-3in1---vi-chocolate-420g', 6, NULL, 47000, N'578f42d9a3524c0174112ecc3421d63b.jpg', NULL, 28, NULL, N'Thức Uống Yến Mạch Quaker 3in1 - Vị Chocolate 420g cung cấp đầy đủ dinh dưỡng mỗi ngày:Nguồn cung cấp Chất Xơ- giúp cơ thể duy trì một hệ tiêu hóa khỏe mạnh.Nguồn cung cấp Protein dồi dào- giúp cơ thể luôn tràn đầy năng lượng mỗi ngày.Giàu canxi giúp cơ thể thật khỏe mạnh. Tiện dụng mọi lúc mọi nơi: với 15 gói nhỏ tiện dụng sẵn sàng cho bạn nạp năng lượng mọi lúc mọi nơi. Hương vị Chocolate thật thơm ngon & đậm đà ...', 2, 9, 27, 10)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (40, N'Thùng 24 Lon Bia Sagota Bia Không Cồn (330ml x 24)', N'thung-24-lon-bia-sagota-bia-khong-con-330ml-x-24', 7, NULL, 480000, N'2f3332415a3ab8fe1987cc43d27f985d.jpg', NULL, 0, NULL, N'Thùng 24 Lon Bia Sagota Bia Không Cồn (330ml x 24) Với bí quyết tách cồn độc đáo- Sagota là thương hiệu duy nhất cho ra đời dòng bia không cồn tại Việt NamThành phần chính vẫn là hoa bia và lúa mạch nên hương vị bia vẫn giữ nguyên nhưng được tách cồn nên uống không gây say- tốt cho sức khỏe            ...', 2, 3, 30, 11)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (41, N'Sữa Đậu Đen Óc Chó Hạnh Nhân Nature (24 Hộp / Thùng)', N'sua-dau-den-oc-cho-hanh-nhan-nature-24-hop-thung', 7, NULL, 284000, N'ffcda42af6d085ee7621080479c81e46.jpg', NULL, 29, NULL, N'Sữa Đậu Đen Óc Chó Hạnh Nhân Nature (24 Hộp / Thùng) là sản phẩm có xuất xứ từ Hàn Quốc. Đây là loại đồ uống vô cùng bổ dưỡng và được sử dụng rộng rãi tại xứ sở kim chi.Thức uống đặc biệt này được chế biến từ 3 loại hạt rất tốt cho sức khỏe gồm: hạt đậu đen- hạnh nhân và óc chó. Chính vì thế- đây được coi là loại thức uống thiên nhiên hỗ trợ hoàn hảo cho sức khỏe cả gia đình.Giúp nhuận tràng- ngăn ngừa sỏi mật và tiểu đường.Cung cấp dồi dào Vitamin E- Canxi- Phốt pho- Sắt- Magie- Kẽm- selenium- Đồng và Niacin.Rất tốt cho người bị tim mạch và tiểu đường.Đặc biệt hạt hạnh nhân: Tốt cho phụ nữ mang thai và trẻ nhỏ.Có khả năng làm giảm Cholesterons.Tăng cường trí nhớ.Giúp trí não và thần kinh luôn hoạt động tốt. ...', 17, 7, 31, 12)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (42, N'Thùng 24 Chai Bia Corona Extra (355ml / Chai)', N'thung-24-chai-bia-corona-extra-355ml-chai', 7, NULL, 790000, N'1729a1ade54ad6be954b316df112f3d8.jpg', NULL, 4, NULL, N'Thùng 24 Chai Bia Corona Extra (355ml / Chai) có độ cồn khoảng 4.5%- bia màu vàng tươi đẹp mắt- hương vị đặc trưng do phong cách uống cùng chanh độc đáo.Trong thành phần của bia corona extra có chứa những chất rất tốt cho sức khỏe- giúp bạn chống lại một số bệnh tật. Không chỉ thế trong thành phần đó còn có hợp chất giúp bạn ăn ngon miệng hơn- khi dùng với bia. Thức ăn sẽ tan đều trong miệng ngấm với bia tạo cho bạn một cảm giác cực kỳ ngon.Đặc biệt bia corona rất hợp với món bò bít tết trong các chuyến dã ngoại. Bò bít tết là một món ăn yêu thích của rất nhiều người vì nó dễ làm ăn lại ngon. Người Châu Âu thường có sở thích ăn bò bít tết uống với bia corona extra đầy thú vị.Bia là loại thức uống giàu vitamin B3- B5- axit  giúp tái tạo tế bào và có thể ngăn ngừa ung thư ruột kết. Đặc biệt- bia còn là thức uống rất tốt cho sức khỏe của tim.Sau những ngày làm việc mệt mỏi vất vả chỉ có dòng bia này giúp bạn xua tan đi mệt mỏi- áp lực trong công việc hàng ngày. Có bia corona cuộc sống của...', 2, 10, 32, 11)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (43, N'Thùng 12 Lon Bia Budweiser (500ml / Lon)', N'thung-12-lon-bia-budweiser-500ml-lon', 7, NULL, 300000, N'784b1725111e53a58777aa5beba13741.jpg', NULL, 6, NULL, N'Thùng 12 Lon Bia Budweiser (500ml / Lon) là loại bia được sản xuất bằng loại mạch nha cùng với hoa bia thượng hạng của Hoa Kỳ và Châu Âu. Hương vị vủa Budweiser là sự cân bằng tuyệt đối giữa vị cay không quá nặng với vị ngọt ngào tinh tế- dịu dàng.Bia có màu vàng sáng tuyệt vời và lớp bọt dày- sau đó bạn ngửi hương hoa bia dịu dàng-  bạn thưởng thức bằng vị giác vị đắng từ nhẹ nhàng đến khá đậm của nó.Công nghệ ủ bia bằng gỗ sồi của Budweiser đã tạo ra một hương vị bia tuyệt hảo không thể tìm thấy ở bất kì một loại bia nào khác.Thùng bia gồm 12 lon tiện dụng trong quá trình sử dụng và bảo quản- thích hợp cho những dịp tụ họp bạn bè- liên hoan-… ...', 2, 2, 33, 11)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (44, N'Thùng 48 Hộp Sữa Nestlé MILO Nước (180ml / Hộp)', N'thung-48-hop-sua-nestle-milo-nuoc-180ml-hop', 7, NULL, 299000, N'317806efe1f67c006f84131d980548ea.jpg', NULL, 7, NULL, N'Thùng 48 Hộp Sữa Nestlé MILO Nước (180ml / Hộp) với công thức Protomalt là chiết xuất dinh dưỡng vượt trội từ mầm lúa mạch nguyên cám- sữa- bột ca cao được bổ sung nhiều Vitamin và khoáng chất- cung cấp dưỡng chất cần bằng và đầy đủ giúp trẻ luôn tràn đầy năng lượng và mạnh khỏe- tự tin.Đặc biệt mầm lúa mạch nguyên cám có trong sản phẩm giúp cung cấp thêm dưỡng chất cân bằng giúp cơ thể luôn tràn đầy năng lượng và khỏe mạnh.Sự kết hợp hoàn hảo từ hương vị thơm ngon độc đáo của cacao và nguồn dưỡng chất thiên nhiên giàu đạm và các chất dinh dưỡng từ sữa- mầm lúa mạch nguyên cám và các vitamin- khoáng chất.Hợp chất ACTIV-GO Vươn xa là sự kết hợp độc đáo của Protomalt chiết xuất đặc biệt từ mầm lúa mạch và tổ hợp các vitamin và khoáng chất thiết yếuĐóng góp vai trò quan trọng trong việc giải phóng năng lượng- tăng cường chức năng cơ và hệ xương- hỗ trợ tích cực cho các hoạt động thể chất và trí tuệ của trẻ. ...', 2, 8, 34, 12)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (45, N'Nước Gạo Woongjin (1.5L)', N'nuoc-gao-woongjin-15l', 7, NULL, 43800, N'1d9acf8aefa63a5ca4004f127f6c6419.jpg', NULL, 37, NULL, N'Nước Gạo Woongjin (1.5L) là một trong những loại nước uống truyền thống- đặc trưng của Hàn Quốc với ngọt dịu- bùi bùi- béo ngậy tự nhiên kết hợp hương thơm của gạo rang đánh thức mọi giác quan- mang đến nguồn năng lượng cho ngày mới.Nước gạo được làm từ gạo trắng và gạo lức của Hàn Quốc bổ sung thêm khoai lang có tác dụng làm cho nhẹ bụng rất tốt cho hệ tiêu hóa đồng thời cung cấp hàm lượng dinh dưỡng cao để bé yêu phát triển toàn diện nhất. Sản phẩm được thiết kế đóng chai chắc chắn- tiện dụng- thuận tiện khi mang theo trong các chuyến du lịch- picnic.Nước gạo giúp tăng cường sức đề kháng- giảm ho- cảm cúm phù hợp cho các thành viên trong gia đình. ...', 18, 7, 35, 12)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (46, N'Sữa Nestle MILO Nước (4 Hộp x180ml)', N'sua-nestle-milo-nuoc-4-hop-x180ml', 7, NULL, 27000, N'47b2d3f610a31eda43d724789942bddc.jpg', NULL, 10, NULL, N'Sữa Nestle MILO Nước (4 Hộp x180ml)Sữa Nestle MILO Nước (4 Hộp x180ml) với công thức Protomalt là chiết xuất dinh dưỡng vượt trội từ mầm lúa mạch nguyên cám- sữa- bột ca cao ...được bổ sung nhiều Vitamin và khoáng chất- cung cấp dưỡng chất cần bằng và đầy đủ giúp trẻ luôn tràn đầy năng lượng và mạnh khỏe- tự tin.Đặc biệt mầm lúa mạch nguyên cám có trong sản phẩm giúp cung cấp thêm dưỡng chất cân bằng giúp cơ thể luôn tràn đầy năng lượng và khỏe mạnh.Thông tin sản phẩmThành phần sản phẩmSữa Nestle Milo Nước là sự kết hợp hoàn hảo từ hương vị thơm ngon độc đáo của cacao và nguồn dưỡng chất thiên nhiên giàu đạm và các chất dinh dưỡng từ sữa- mầm lúa mạch nguyên cám và các vitamin- khoáng chất.Cung cấp chất dinh dưỡng cho cơ thểMang đầy đủ những lợi ích từ Sữa- Nestlé MILO với hợp chất ACTIV-GO Vươn xa là sự kết hợp độc đáo của Protomalt chiết xuất đặc biệt từ mầm lúa mạch và tổ hợp các vitamin và khoáng chất thiết yếu- đóng góp vai trò quan trọng trong việc giải phóng năng lượng- tăng cườ...', 2, 8, 34, 12)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (47, N'Thùng Bia Tiger 24 Lon (330ml / Lon)', N'thung-bia-tiger-24-lon-330ml-lon', 7, NULL, 325000, N'4db36573e08231e0d298228aa96235ca.jpg', NULL, 4, NULL, N'Rạng danh một thương hiệu tuyệt hảo – đó là Tiger Bia Tiger được lên men tự nhiên từ hoa bia và lúa mạch thượng hạng nhập khẩu từ Châu Âu tạo nên một loại bia với hương vị và chất lượng tuyệt hảo. Bia Tiger sẽ mang đến cho bạn những trải nghiệm khó quên- để cuộc vui càng thêm vui.Công nghệ ủ bia tiên tiến Bia Tiger được lên men tự nhiên từ hoa bia và lúa mạch thượng hạng nhập khẩu từ Châu Âu- mang đến hương vị và chất lượng tuyệt hảo- làm hài lòng giới sành bia ở hơn 60 quốc gia trên thế giới.Thiết kế vỏ ngoài tinh tế- sang trọng Lon bia có nhãn vàng nổi bật trên nền bạc phối xanh tạo nên nét hiện đại- trẻ trung và đầy cuốn hút. Thùng bia với thiết kế phiên bản đặc biệt “Đánh thức mùa xuân”- thích hợp là quà tặng.Hướng dẫn sử dụng Bia được uống trực tiếp trong lon hoặc đổ ra ly- ngon hơn khi uống lạnh- tốt nhất ở 10°C - 15°C. Lưu ý: Nếu mở lon phải dùng ngay hoặc để lạnh nếu muốn dùng lâu.Bảo quản Bảo quản nơi sạch sẽ- khô ráo- thoáng mát- tránh ánh nắng mặt trời.Bia Tiger là loại ...', 2, 11, 36, 11)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (48, N'Lốc 3 Hộp Sữa 5 Loại Đậu Nestlé Nesvita (180ml/ Hộp)', N'loc-3-hop-sua-5-loai-dau-nestle-nesvita-180ml-hop', 7, NULL, 22000, N'331fe5be5d874041fdc38813d9b323a0.jpg', NULL, 8, NULL, N'Lốc 3 Hộp Sữa 5 Loại Đậu Nestlé Nesvita (180ml/ Hộp) khơi nguồn cảm hứng từ những ly sữa đậu truyền thống nhà làm- mang hương thơm thanh mát- ngon đậm đà- sánh mịn với vị ngọt dịu khiến bạn không thể chối từ.Nhu cầu khuyến nghị: Nên dùng 1-2 hộp (180ml) mỗi ngày. Cách bảo quản: Bảo quản nơi khô ráo- thoáng mát. Tránh ánh nắng trực tiếp.Cách sử dụng: Lắc đều trước khi sử dụng. Dùng trực tiếp- ngon hơn khi uống lạnh.Hạn sử dụng: 8 tháng kể từ ngày sản xuất.Thích hợp cho người lớn và trẻ em trên 6 tuổi. ...', 2, 8, 37, 12)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (49, N'Lốc 4 Hộp Sữa Nestlé Milo Ít Đường (180ml/ Hộp)', N'loc-4-hop-sua-nestle-milo-it-duong-180ml-hop', 7, NULL, 27000, N'c9b14238aa235d4967caaa48a570683a.jpg', NULL, 0, NULL, N'Lốc 4 Hộp Sữa Nestlé Milo Ít Đường (180ml/ Hộp) với hợp chất ACTIV-GO Vươn Xa là sự kết hợp độc đáo của PROTOMALT - chiết xuất từ mầm lúa mạch - và tổ hợp các vitamin cùng khoáng chất thiết yếu- đóng vai trò quan trọng trong việc giải phóng năng lượng- tăng cường chức năng cơ và hệ xương- hỗ trợ tích cực cho các hoạt động thể chất và não bộ của trẻ.Hương vị MILO thơm ngon với sự hòa quyện của cacao- sữa và lúa mạch nay đã có thêm lựa chọn ít đường phù hợp cho ý thích và khẩu vị đa dạng của các béUống Nestlé MILO ít đường giúp bổ sung năng lượng và dưỡng chất thiết yếu- cho trẻ năng động mỗi ngày!Nhu cầu khuyến nghị: Sử dụng sản phẩm cho trẻ từ 6 tuổi trở lên với 2 khẩu phần (180ml) MILO mỗi ngày.Cách bảo quản: Bảo quản sản phẩm nơi khô ráo- thoáng mát- tránh ánh nắng trực tiếp.Cách sử dụng: Lắc đều trước khi uống. Ngon hơn khi uống lạnhHạn sử dụng: 8 tháng kể từ ngày sản xuấtKhông dùng cho người dị ứng với các thành phần của sản phẩm. ...', 2, 8, 34, 12)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (50, N'Combo 3 chai Nước gạo rang Dr.Chung Hàn Quốc chai 1.5L', N'combo-3-chai-nuoc-gao-rang-drchung-han-quoc-chai-15l', 7, NULL, 125000, N'd5bc0c46a2f20e5cba18b57456f5b8fe.jpg', NULL, 40, NULL, N'XUẤT XỨ:Sản xuất tại Công ty TNHH Dr.Chung’s Food- Hàn QuốcNước gạo Hàn Quốc Dr.Chung với hương vị thơm ngon giúp bổ sung năng lượng và vitamin thiết yếu- cho cơ thể thanh nhiệt trong những ngày nắng nóng- làm đẹp da - chống lão hóa da- giảm nếp nhăn- cực kì thích hợp cho người giảm cân- Nước gạo có vị ngọt dịu- thơm dịu- hơi bùi và ngậy nhưng không ngấy- không có chứa chất béo nhiều.Thành phần: Chiết xuất gạo – gạo nâu- nước tinh khiết- kem thực vât- đường trắng- hương vị tổng hợp.             CÔNG DỤNG:-          Nước gạo rang Hàn Quốc là một trong những sản phẩm thuộc dòng đồ uống bán chạy nhất của Công ty TNHH Dr.Chung’s Food. Sản phẩm là sự kết hợp hoàn hảo giữa gạo Hàn Quốc và sữa- với tỉ lệ gạo chiếm 50%- không chứa chất béo và các chất bảo quản gây hại cho sức khỏe con người-là thức uổng bổ dưỡng không chỉ đem lại hiệu quả cực kỳ tốt cho sức khỏe mà còn có công dụnglàm đẹp rất tốt.-          Nước gạo Hàn Quốc D có vị ngọt dịu- thơm mùi gạo rang Hàn Quốc- hơi bùi và ngậy nhưng k...', 19, 7, 38, 12)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (51, N'Nước gạo rang Hàn Quốc Dr.Chung chai 1.5L', N'nuoc-gao-rang-han-quoc-drchung-chai-15l', 7, NULL, 42000, N'9cf6854e471196d21ddb3a930fd375c8.jpg', NULL, 40, NULL, N'XUẤT XỨ:Sản xuất tại Công ty TNHH Dr.Chung’s Food- Hàn QuốcNước gạo Hàn Quốc Dr.Chung với hương vị thơm ngon giúp bổ sung năng lượng và vitamin thiết yếu- cho cơ thể thanh nhiệt trong những ngày nắng nóng- làm đẹp da - chống lão hóa da- giảm nếp nhăn- cực kì thích hợp cho người giảm cân- Nước gạo có vị ngọt dịu- thơm dịu- hơi bùi và ngậy nhưng không ngấy- không có chứa chất béo nhiều. Thành phần: Chiết xuất gạo – gạo nâu- nước tinh khiết- kem thực vât- đường trắng- hương vị tổng hợp.             CÔNG DỤNG:-          Nước gạo rang Hàn Quốc là một trong những sản phẩm thuộc dòng đồ uống bán chạy nhất của Công ty TNHH Dr.Chung’s Food. Sản phẩm là sự kết hợp hoàn hảo giữa gạo Hàn Quốc và sữa- với tỉ lệ gạo chiếm 50%- không chứa chất béo và các chất bảo quản gây hại cho sức khỏe con người-là thức uổng bổ dưỡng không chỉ đem lại hiệu quả cực kỳ tốt cho sức khỏe mà còn có công dụnglàm đẹp rất tốt.-          Nước gạo Hàn Quốc Dr.chung có vị ngọt dịu- thơm mùi gạo rang Hàn Quốc- hơi bùi và ngậy...', 19, 3, 38, 12)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (52, N'Thùng 24 Hộp Sữa Tươi Nguyên Kem Promess (200ml/Hộp)', N'thung-24-hop-sua-tuoi-nguyen-kem-promess-200mlhop', 7, NULL, 220000, N'9f8b77003cdefa69c440e197a0736300.jpg', NULL, 27, NULL, N'Thùng 24 Hộp Sữa Tươi Nguyên Kem Promess (200ml/Hộp) mang hương vị thơm ngon thuần khiết. Sản phẩm từ tự nhiên- an toàn và tốt cho sức khỏe người sử dụng.Với công thức hiện đại- sữa vẫn giữ nguyên chất dinh dưỡng trong thành phần sữa.Sản phẩm được sản xuất trên dây chuyền công nghệ tiên tiến- đảm bảo chất lượng vệ sinh an toàn thực phẩm.Được lấy từ nguồn sữa của những chú bò được nuôi tại Pháp.Sản phẩm nhập khẩu nguyên hộp về Việt Nam.Với xuất xứ cũng như chất lượng đã được khẳng định- sữa đem lại niềm tin và sự an tâm cho người tiêu dùng. ...', 20, 12, 39, 12)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (53, N'Dầu Ăn Hoa Cải Ajinomoto (1000g) - Bổ Sung Omega 3 & 6 Nhật Bản', N'dau-an-hoa-cai-ajinomoto-1000g---bo-sung-omega-3-6-nhat-ban', 4, NULL, 67400, N'5f92e5238a5d79a1d359a95d78006cee.jpg', NULL, 64, NULL, N'Dầu ăn hoa cải Ajinomoto (1000g) - Bổ sung Omega 3 & 6Dầu ăn hoa cải Ajinomoto được chiết xuất 100% từ hoa cải tự nhiên- giúp ngăn ngừa các bệnh nguy hiểm về tim mạch- đột quỵ và thích hợp cho người muốn giảm cân. Sản phẩm có hàm lượng Omega -3 & 6 cao cùng các dưỡng chất cần thiết cho sự phát triển của trẻ nhỏ- thai nhi- bà bầu.Dầu ăn hạt cải Ajinomoto bổ sung Omega 3&6 - tốt cho tim mạchCông dụng của Dầu ăn hoa cải Ajinomoto- Bổ sung Omega - 3 & 6 giúp thai nhi phát triển tốt trong giai đoạn đầu phát triển về não bộ để sau khi bé được sinh ra khỏe mạnh và thông minh hơn. Với trẻ nhỏ- Omega - 3 & 6 góp phần tăng trưởng chiều cao- thể lực và trí tuệ minh mẫn- phát triển thị lực cho bé để bé cao lớn- thông minh vượt trội- Hàm lượng cholesterol và chất béo bão hòa thấp nhưng lại chứa axit béo chưa bão hòa cao giúp ngăn ngừa bệnh mỡ máu- huyết ấp thấp- tim mạch- xơ vữa động mạch- nhồi máu cơ tim- và chứng đột quỵ- Giúp đốt cháy chất béo cũng như giảm sự hấp thụ chất béo. Do đó- đây là loạ...', 21, 3, 40, 13)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (54, N'Hộp Quà Tặng Nam Ngư Phú Quốc (2 Chai x 500ml)', N'hop-qua-tang-nam-ngu-phu-quoc-2-chai-x-500ml', 4, NULL, 92000, N'b0c65bcc3c5a70ee26bdecad36198953.jpg', NULL, 15, NULL, N'Hộp Quà Tặng Nam Ngư Phú Quốc (2 Chai x 500ml) gồm 2 chai Nước mắm Nam Ngư 500ml được ủ chượp và đóng chai tại Phú Quốc - nơi cá cơm chắc mẩy tươi ngon được ướp muối ngay trên thuyền mỗi sớm- rồi được ủ chượp theo tỷ lệ 3 cá 1 muối trong thùng gỗ tròn năm.Sản phẩm được sản xuất theo quy trình công nghệ hiện đại- đảm bảo an toàn chất lượng sản phẩm- không dùng chất bảo quản và an toàn cho người sử dụng.100% cá cơm nguyên chất- tươi ngon với hơn 15 loại axit amin cần thiết cho cơ thể cho bạn một loại nước mắm thơm ngon hảo hạng.Nước mắm Nam Ngư thơm ngon có thể dùng làm gia vị tẩm ướp các loại thực phẩm trước khi chế biến- nêm nếm hoặc chấm thức ăn trực tiếp. Từng giọt nước mắm màu nâu đỏ sóng sánh hòa quyện cùng vị ngọt bùi tinh khiết trong từng hạt cơm- giúp cho bữa ăn của bạn thêm phần ngon miệng. Có nước mắm Nam Ngư bữa cơm gia đình thêm tròn vị- ấm cúng- hấp dẫn hơn.Sản phẩm được đóng trong chai thủy tinh sang trọng- hộp giấy bên ngoài đẹp mắt- trang nhã- thích hợp để mua về sử dụng...', 2, 3, 41, 14)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (55, N'Dầu Gạo Simply (2L)', N'dau-gao-simply-2l', 4, NULL, 85000, N'e5e7216219d09856f7b9c2e9aed7bf3c.jpg', NULL, 31, NULL, N' Dầu Gạo Simply (2L)  được chiết xuất từ lớp vỏ cám- phần dinh dưỡng nhất của hạt gạo- được khoa học chứng minh là một trong những loại dầu tốt nhất cho sức khỏe.  Dầu gạo nguyên chất Simply được sản xuất trên dây chuyền công nghệ hiện đại- chứa nhiều dưỡng chất quý giá- giúp mang lại một trái tim khỏe và được tin dùng tại nhiều quốc gia: Úc- New Zealand.  Sản phẩm giàu chất chống oxy hóa tự nhiên- giúp ngăn ngừa quá trình lão hoá và giảm các nguy cơ bệnh tim mạch.  Chịu được nhiệt độ cao (lên tới 240 độ C)- giúp giảm nguy cơ cháy khét và mang đến hương vị thơm ngon cho món ăn.  Phù hợp dùng cho chiên- xào- trộn salad- làm nước sốt và nấu các món chay.  ...', 2, 3, 42, 13)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (56, N'Nước Tương Cholimex Hương Việt Thanh Vị Chai 500ml ', N'nuoc-tuong-cholimex-huong-viet-thanh-vi-chai-500ml', 4, NULL, 7000, N'52656_8934637514307_1_chon.jpg', NULL, 13, NULL, N'Nước Tương Cholimex Hương Việt Thanh Vị Chai 500mlNước Tương Cholimex Hương Việt Thanh Vị Chai 500ml đem đến cho gia đình bạn những bữa ăn thơm ngon hơn. Sản phẩm dùng để chấm trực tiếp với thức ăn hoặc thêm tỏi- ớt vào và pha chế cho vừa khẩu vị của từng người.Thành phần chính: Đậu nành- nước- muối- đường- caramel.Cho bữa ăn thêm phần hấp dẫnCơm và thức ăn của bạn sẽ thêm phần thơm ngon hấp dẫn nhờ vào những giọt nước tương đậm đà hương vị tuyệt hảo này. Đây là gia vị không thể thiếu cho mỗi bữa ăn.Thành phần nguyên liệu an toànSản phẩm được làm từ các nguyên liệu tự nhiên- an toàn- không hoá chất độc hại- đảm bảo sức khoẻ cho bạn và cả nhà.Quy trình sản xuất tiên tiếnSản phẩm được sản xuất theo quy trình công nghệ hiện đại- đạt chuẩn chất lượng- đã qua các quá trình kiểm tra của chuyên gia về độ ngon và thành phần dinh dưỡng.Hướng dẫn sử dụng:Dùng để chấm trực tiếp với thức ăn hoặc thêm tỏi- ớt vào và pha chế cho vừa khẩu vị của từng người hoặc làm gia vị cho tẩm- ướp- chiên- xào- nấ...', 2, 3, 43, 14)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (57, N'Cà Ri Ướp Ông Chà Và (10g)', N'ca-ri-uop-ong-cha-va-10g', 4, NULL, 3000, N'5b9ea631ea0b405ef306c2fb37f82cb2.JPG', NULL, 0, NULL, N'Cà Ri Ướp Ông Chà Và (10g) được làm từ những nguyên liệu hoàn toàn tự nhiên. Theo quy trình chế biến hiện đại và khép kín. Các nguyên liệu được trồng theo phương pháp hữu cơ mang đến sự an toàn cho người sử dụng.Quy trình sản xuất hiện đại tạo ra các sản phẩm chất lượng- uy tín và nhận được lòng tin từ người tiêu dùng với chất lượng vượt bậc.Cho món ăn bật vị ngon vượt trội đặc trưng cùng sự lan tỏa- hòa quyện- hương vị của món ăn thêm đậm đà và hấp dẫn hơn.Đạt tiêu chuẩn an toàn vệ sinh thực phẩm.Sản phẩm đảm bảo lượng protein.Nhanh chóng- tiện lợi và đúng vị. ...', 2, 13, 44, 7)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (58, N'Bột Phô Mai Tornado Vị Truyền Thống (100g / Gói)', N'bot-pho-mai-tornado-vi-truyen-thong-100g-goi', 4, NULL, 35000, N'd14ed1af2311a0524cd82697a9493029.jpg', NULL, 0, NULL, N'Bột Phô Mai Tornado Vị Truyền Thống (100g / Gói) được sản xuất tại Việt Nam theo nguyên liệu và công nghệ Hàn Quốc- đảm bảo an toàn vệ sinh thực phẩm.Bột dạng mịn- vị phô mai mặn ngọt- nồng độ phô mai ít hơn so với loại nguyên chất- dùng trực tiếp không cần qua chế biến.Bột phô mai được đóng gói trong túi có khóa kéo nên rất tiện lợi trong việc sử dụng và bảo quản.Bạn có thể dùng bột phô mai để rắc lên khoai tây chiên- khoai tây lốc xoáy- khoai môn chiên- khoai lang chiên- bắp rang- bánh tráng- da heo… để làm bánh- làm gia vị. ...', 22, 3, 45, 7)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (59, N'Đường Kính Trắng Toàn Phát (Gói 500Gr)', N'duong-kinh-trang-toan-phat-goi-500gr', 4, NULL, 10000, N'05dc796d72021c9e66df91f5fe8aae03.jpg', NULL, 17, NULL, N'                Đường Kính Trắng Toàn Phát (Gói 500Gr) được làm từ nguyên liệu tự nhiên- không chứa chất độc hại đảm bảo an toàn sức khỏe cho người sử dụng.Giúp chế biến nhiều món ăn- thức uống thơm ngon- hấp dẫn.Hướng dẫn sử dụng:Dùng làm gia vị nấu ăn- uống.Bảo quản:Bảo quản nơi khô ráo- thoáng mát.Tránh tiếp xúc trực tiếp với ánh nắng mặt trời.            ...', 2, 3, 46, 7)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (60, N'Dầu Ăn Neptune Gold (5L / Chai)', N'dau-an-neptune-gold-5l-chai', 4, NULL, 214000, N'e02bc564489d5f2a32ee11b820e6b756.jpg', NULL, 13, NULL, N'Dầu Ăn Neptune Gold (5L / Chai)Dầu Ăn Neptune Gold (5L / Chai) được đóng chai 5 lít giúp tiết kiệm thời gian- chi phí mua sắm. Sản phẩm được các chuyên gia dinh dưỡng khuyên dùng do có chứa các hàm lượng dinh dưỡng khá cao từ dầu gạo- dầu đậu nành và dầu hướng dương. Dầu ăn Neptune Gold giúp chống oxi hóa- ngăn ngừa các chứng bệnh ung thư- làm giảm nguy cơ mắc các bệnh tim mạch- đồng thời mang đến nguồn năng lượng dồi dào cho cơ thể.Thông tin sản phẩmThành phần từ thiên nhiênNeptune Gold là loại dầu ăn duy nhất có sự kết hợp từ ba loại dầu tự nhiên: dầu gạo- dầu đậu nành và dầu hướng dương. Đây chính là 3 loại dầu được các nhà khoa học nghiên cứu và đưa ra kết luận mang đến nhiều lợi ích cho sức khỏe của người dùng.Các thành phần dưỡng chấtDo có sự kết hợp từ 3 loại dầu khác nhau nên hệ dưỡng chất của dầu ăn Neptune Gold cũng khá phong phú:- Dầu gạo chứa dưỡng chất Gamma-Oryzanol có khả năng chống ô-xy hóa gấp 4 lần Vitamin E- đẩy lùi gốc tự do- từ đó ngăn ngừa các chứng bệnh về ung th...', 2, 3, 47, 13)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (61, N'Nước Tương Chin-Su (250ml)', N'nuoc-tuong-chin-su-250ml', 4, NULL, 11000, N'84a6ecd3170886fd7885e57ef038e916.jpg', NULL, 8, NULL, N'Nước Tương Chin-Su (250ml) được làm từ đậu nành tự nhiên- chiết rót nên từng dòng nước tương sánh quyện thơm lừng- vị đậm đà pha chút béo ngậy của đậu nành- giúp món ăn của bạn trở nên thơm ngon khó cưỡng.Nước tương được sản xuất với những hạt đậu nành được chọn lọc kỹ lưỡng- trải qua quá trình lên men tự nhiên- an toàn tuyệt đối.Màu nâu sánh đậm- hương thanh dịu- các loại gia vị được cân bằng hài hòa tạo ra hương vị đậm đà. Sản phẩm không chứa 3-MCPD được Bộ Y Tế chứng nhận- an toàn khi sử dụng.  ...', 2, 3, 23, 14)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (62, N'Đường Nâu Đen CJ Hàn Quốc Gói 1kg - Đường Dark Brown Hàn Quốc', N'duong-nau-den-cj-han-quoc-goi-1kg---duong-dark-brown-han-quoc', 4, NULL, 85000, N'2c001cc4d8aff01ce24160d98d496f92.jpg', NULL, 26, NULL, N'Đường Nâu Đen CJ Hàn Quốc Gói 1kg - Đường Dark Brown Hàn QuốcĐường đen được làm từ mía- nhưng là mía cô đặc cuối cùng sau khi đã chiết xuất ra đường cát- đường phèn- cuối cùng màu mật mía ko còn sáng nữa mà chuyển đen. Giàu vitamin- đặc biệt là vitamin nhóm B- B1 và B2- năng lượng và canxi. Y học cổ truyền cho rằng đường đen tính ôn vị ngọt- giúp bổ máu- chống lạnh- nuôi dưỡng cơ thể- có tác dụng tốt đối với gan- lá lách- dạ dày. Trong đường đen có một lượng lớn sắt- hỗ trợ cho việc đưa khí oxy đến các cơ quan trong cơ thể.Đường đen mang đến màu sắc tự nhiên- làm đậm đà thêm hương vị cho các loại thức uống- món ăn- chè và đặc biệt là các loại bánh Âu. Đây là loại đường mà người Nhật sử dụng chính trong nấu ăn- người phương Tây sử dụng để làm bánh- đường đen sẽ giúp tăng mùi vị thơm ngon và thêm một chút độ ẩm vào bánh…tốt cho sức khỏe. Ngoài ra đường đen còn ứng dụng trong làm đẹp- giảm cân-…Công thức làm đẹp da ít biết của đường đen 1.              Tẩy da chết Khi thời tiết hanh khô- ...', 14, 3, 48, 7)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (63, N'Cà Ri Ướp Ông Chà Và (18g)', N'ca-ri-uop-ong-cha-va-18g', 4, NULL, 4000, N'4fbb62611683db29d9ad515729255fe8.JPG', NULL, 0, NULL, N'Cà Ri Ướp Ông Chà Và (18g) được làm từ những nguyên liệu hoàn toàn tự nhiên. Theo quy trình chế biến hiện đại và khép kín. Các nguyên liệu được trồng theo phương pháp hữu cơ mang đến sự an toàn cho người sử dụng.Quy trình sản xuất hiện đại tạo ra các sản phẩm chất lượng- uy tín và nhận được lòng tin từ người tiêu dùng với chất lượng vượt bậc.Cho món ăn bật vị ngon vượt trội đặc trưng cùng sự lan tỏa- hòa quyện- hương vị của món ăn thêm đậm đà và hấp dẫn hơn.Đạt tiêu chuẩn an toàn vệ sinh thực phẩm.Sản phẩm đảm bảo lượng protein.Nhanh chóng- tiện lợi và đúng vị. ...', 2, 13, 44, 7)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (64, N'Nước mắm Lê Gia- Cá cơm 650ml', N'nuoc-mam-le-gia--ca-com-650ml', 4, NULL, 41000, N'6509081378b84b8b1d194e96b4c254b5.jpg', NULL, 15, NULL, N'Từ cá cơm than ủ với muối hạt tinh trong thùng gỗ Bời Lời- đặt dưới nhà tôn kín- theo phương pháp truyền thống- sau 18-24 tháng- lên men tự nhiên- những dòng nước cốt ban đầu- nguyên chất- không pha- được rút nỏ- nhỉ ra từng giọt sóng sánh- mùi thơm dịu- đỏ tươi màu hổ phách- đậm đà hậu vị được đóng chai tạo nên nước mắm Lê Gia- Cốt đặc biệt. *) Sau khi rút nước cốt- lượng đạm còn lại trong thùng chượp được kéo rút qua hệ thống thùng long để tạo thành nước mắm Cá cơm. *) Chai nhựa PET đảm bảo ATVSTP- thiết kế tay cầm tiện sử dụng. Dùng làm gia vị hoặc kho nấu. Độ đạm>15 gN/l-   ...', 23, 3, 49, 14)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (65, N'Dầu Gạo Simply 1L', N'dau-gao-simply-1l', 4, NULL, 45000, N'2016-12-20.u2409.d20161221.t140044.167275.jpg', NULL, 35, NULL, N'Dầu Gạo Simply 1L - Dầu gạo được chiết xuất từ lớp vỏ cám- phần dinh dưỡng nhất của hạt gạo- được khoa học chứng minh là một trong những loại dầu tốt nhất cho sức khỏe. Dầu gạo nguyên chất Simply được sản xuất trên dây chuyền công nghệ hiện đại- chứa nhiều dưỡng chất quý giá- giúp mang lại một trái tim khỏe và được tin dùng tại nhiều quốc gia: Úc- New Zealand.Giàu chất chống ô-xi hóa tự nhiên như Vitamin E- Phytosterols và đặc biệt là Gamma Oryzanol giúp ngăn ngừa quá trình lão hoá và giảm các nguy cơ bệnh tim mạch.Chịu được nhiệt độ cao (lên tới 240oC)- giúp giảm nguy cơ cháy khét và mang đến hương vị thơm ngon cho món ăn.Phù hợp dùng cho chiên- xào- trộn salad- làm nước xốt và nấu các món chay. ...', 2, 3, 42, 13)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (66, N'Đồ Ăn Cho Mèo Trưởng Thành Me-O Vị Hải Sản (7kg)', N'do-an-cho-meo-truong-thanh-me-o-vi-hai-san-7kg', 8, NULL, 444000, N'dd290121018c79cc09cd4ee19ddf7985.jpg', NULL, 42, NULL, N'Đồ Ăn Cho Mèo Trưởng Thành Me-O Vị Hải Sản (7kg) cung cấp Acid Amino cần thiết cho đôi mắt và cải thiện thị giác.Bên cạnh đó- loại thức ăn này còn chứa Omega 3 và Omega 6 từ dầu chất lượng cao trong hợp chất với kẽm giúp nuôi dưỡng lông và da mèo.Sản phẩm dạng hạt- có hương vị thơm ngon giúp kích thích vị giác tạo nên sự thích thú với bữa ăn của thú cưng nhà bạn.Thành phần dinh dưỡngCải thiện thị giác: Taurine là axit amin cần thiết cho chức năng của mắt và giúp cải thiện thị giác của mèoFlutd:  Công thức FLUTD giúp ngăn ngừa bệnh đường tiết niệu và sỏi bàn quangCông thức Natri thấp: Giúp làm giảm nguy cơ bệnh thận và bệnh timVitamin C: Tăng cường hệ thống miễn dịch và giúp làm giảm tác động củastress tới sức khỏe của mèoBổ sung Omega 3 & 6 và kẽm: nuôi dưỡng lông và da mèo óng mượt - khỏe mạnhCanxi- photpho- vitamin D: Cho xương chắc- răng khỏe ...', 2, 1, 50, 15)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (67, N'Đồ Ăn Cho Mèo Trưởng Thành Me-O Vị Cá Thu (7kg)', N'do-an-cho-meo-truong-thanh-me-o-vi-ca-thu-7kg', 8, NULL, 399000, N'2507a05d37da89ec63aa707b1d33cf4b.jpg', NULL, 48, NULL, N'Đồ Ăn Cho Mèo Me-O Cá Thu cải thiện thị giác. Taurine là axit cần thiết cho chức năng mắt và giúp cải thiện thị giác của mèo.Công thức FLUTD giúp ngăn ngừa bệnh đường tiết niệu và sỏi bàng quang.Công thức Natri thấp giúp làm giảm nguy cơ bệnh thận và bệnh tim.Vitamin C tăng cường hệ thống miễn dịch và giúp làm giảm tác động của stress tới sức khỏe của mèo.Bổ sung Omega 3- Omega 6 và kẽm nuôi dưỡng lông và da mèo óng mượt- khỏe mạnh chắc khỏe.Can xi- Photpho và Vitamin D cho xương chắc- răng khỏe.Trọng lượng sản phẩm: 7kg. Kích thước: 36 x 65 x 10 cm.Thành phần:Chất đạm thô: 30% Chất béo thô: 9%Chất xơ thô: 4%Độ ẩm: 10%  Ngũ cốc nguyên hạt (bắp và gạo)- bột sản phẩm gia cầm phụ- thực vật (dầu nành và bắp)- bột cá- bột sắn- mỡ gà- men sấy khô- bột tiêu hóa cá- thịt cá thu- muối iot- taurine- vitamin và khoáng chất- chất chống oxy hóa- màu thực phẩm. ...', 2, 1, 50, 15)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (68, N'Thức Ăn Cho Mèo Lớn Me-O Adult (7kg)', N'thuc-an-cho-meo-lon-me-o-adult-7kg', 8, NULL, 448000, N'17e3f2eaa8caf6ff9a2f4e2801982311.jpg', NULL, 12, NULL, N'Thức Ăn Cho Mèo Lớn Me-O Adult (7kg) là sản phẩm dành cho thú cưng của bạn- chứa nhiều chất dinh dưỡng giúp cơ thể chuyển hóa nhanh chất dinh dưỡng đi nuôi cơ thể sẽ là một sản phẩm hữu ích toàn diện- ngoài việc để cho những thú cưng của bạn có bữa ăn no- thì sản phẩm còn có tác dụng bồi bổ- cung cấp các chất dinh dưỡng cho quá trình phát triển.Giúp phòng ngừa bệnh tật- bảo đảm sự phát triển khỏe mạnh của những chú chó nhà bạn.Ngoài ra- với mùi vị thơm ngon kích thích vị giác giúp thú cưng dễ hấp thu và tiêu thụ sản phẩm một cách nhanh hơn. ...', 24, 1, 50, 15)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (69, N'Thức Ăn Mèo Vị Cá Biển Whiskas (3Kg) ', N'thuc-an-meo-vi-ca-bien-whiskas-3kg', 8, NULL, 249000, N'90c2b67deaf9c4b7ad44de0eac856673.jpg', NULL, 28, NULL, N'Thức Ăn Mèo Vị Cá Biển Whiskas (3Kg) dành cho mèo con- mèo con sơ sinh từ 1-12 tháng- mèo mẹ mang thai- cho con bú. Sản phẩm là điểm khởi đầu cơ sở của một cuộc sống khỏe mạnh và hạnh phúc cho những chú mèo con sau này khi cung cấp đầy đủ dưỡng chất để mèo sơ sinh có thể hấp thu và phát triển khỏe mạnh.Thức Ăn Mèo Con Vị Cá Biển Whiskas được lựa chọn từ những thành phần thịt- cá tươi để chế biến- sảm phẩm giàu protein- các vitamin và khoáng chất thiết yếu đồng thời không có chất bảo quản- mang đến tác dụng cân bằng dinh dưỡng hàng ngày cho thú cưng của bạn.Sản phẩm dành cho mèo được phát triển bởi các chất dinh dưỡng tối ưu và được các chuyên gia vật nuôi trên khắp thế giới công nhận là sản phẩm dinh dưỡng tốt nhất và khuyên dùng.Được thiết kế dành riêng cho đặc thù dinh dưỡng của mèo- các hạt giàu các chất dinh dưỡng từ thịt- hải sản để đảm bảo cho sự phát triển toàn diện cho mèo của bạn mỗi ngày. ...', 25, 3, 51, 15)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (70, N'Đồ Ăn Cho Mèo Whiskas Vị Cá Biển Lon 400g', N'do-an-cho-meo-whiskas-vi-ca-bien-lon-400g', 8, NULL, 33000, N'5d8562a60e95bd26de62f8eb8a8d789d.jpg', NULL, 23, NULL, N'Đồ Ăn Cho Mèo Whiskas Vị Cá Biển Lon 400gĐồ Ăn Cho Mèo Whiskas Vị Cá Biển Lon 400g là một sản phẩm của thương hiệu Whiskas nổi tiếng- chuyên sản xuất Đồ Ăn cho mèo được bán trên khắp thế giới. Sản phẩm chứa nhiều chất dinh dưỡng như chất xơ- chất béo- đạm- vitamin… cung cấp chất cho sự phát triển của mèo. Bên cạnh đó sản phẩm không chứa các chất bảo quản- đảm bảo an toàn sức khỏe cho thú cưng của bạn.Thành phầnCá biểnDầu thực vậtVitamin và khoáng chấtCông dụngSản phẩm chứa dầu thực vật cùng các vitamin- khoáng chất- đồng thời không có chất bảo quản- đem lại một giá trị dinh dưỡng lớn cung cấp cho các hoạt động trong cơ thể mèo- giúp mèo phát triển khỏe mạnh và đẩy lùi các loại bệnh tật.Sản phẩm với hương vị cá biển thơm ngon- sẽ khiến các chú mèo thích thú- ăn được nhiều thực hơn.Hướng dẫn sử dụngDùng cho mèo ở các lứa tuổi- phù hợp với mọi trọng lượngBảo quản nơi khô mát- tránh ánh nắng mặt trời chiếu trực tiếpĐậy kín nắp và bảo quản ở tủ lạnh nếu không dùng hết trong 1 lần và không đ...', 2, 3, 51, 15)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (71, N'Găng tay tắm và lấy lông chó mèo (màu ngẫu nhiên)', N'gang-tay-tam-va-lay-long-cho-meo-mau-ngau-nhien', 8, NULL, 17495, N'a44292f413ed98e9c1c1f9f3f953539b.jpg', NULL, 70, NULL, N'[GIỚI THIỆU] Găng tay tắm và lấy lông chó mèo (màu xanh)[CÔNG DỤNG]Lấy lông rụng trên chó mèoMát sa cho chó mèoKỳ lông và người cho thú cưng khi tắm[LƯU Ý] Tránh đặt nơi nhiệt độ cao có thể gây biến dạng sản phẩm.[CHẤT LIỆU] NHỰA PP & Vải[XUẤT XỨ] TRUNG QUỐC ...', 26, 3, 4, 16)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (72, N'Cây Lăn Bụi 60 Lớp Và 2 Lõi Thay Thế (17 x 10.8 cm)', N'cay-lan-bui-60-lop-va-2-loi-thay-the-17-x-108-cm', 8, NULL, 28448, N'badf5060a11496a89c4bf19e79491663.jpg', NULL, 51, NULL, N'Cây Lăn Bụi 60 Lớp Và 2 Lõi Thay Thế (17 x 10.8 cm) làm sạch bụi- làm sạch vải- làm sạch lông thú- làm sạch quần áo- cây lăn dính- làm sạch nội thất ô tô- làm sạch chăn nệm- tiện lợi.Cây lăn bụi được thiết kế dạng lăn tay rất tiện dụng- dễ dàng loại bỏ bụi bẩn.Kích thước nhỏ gọn dễ dàng cất gọn trong nhà hay mang theo trong những chuyến du lịch. ...', 26, 3, 4, 15)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (73, N'Đồ Ăn Cho Chó Vị Gà Và Các Loại Rau Củ Pedigree Dạng Túi 1.5kg', N'do-an-cho-cho-vi-ga-va-cac-loai-rau-cu-pedigree-dang-tui-15kg', 8, NULL, 94000, N'ae30e41a52b72da4fb14cc117084dc9f.jpg', NULL, 18, NULL, N'Đồ Ăn Cho Chó Vị Gà Và Các Loại Rau Củ Pedigree Dạng Túi 1.5kgĐồ Ăn Cho Chó Vị Gà Và Các Loại Rau Củ Pedigree Dạng Túi 1.5kg chứa vị gà kích thích vị giác cùng các loại rau củ cung cấp đầy đủ chất dinh dưỡng sẽ là một sản phẩm cần thiết cho sự phát triển của những chú chó cưng trong gia đình bạn. Đặc biệt sản phẩm có độ béo và chất dinh dưỡng cao- góp phần tạo nên những bộ lông mềm mượt cho cún yêu nhà bạn.Thành phần GàCác loại rau củ quảChất béoCác khoáng chất và vitamin thiết yếuCông dụngSản phẩm cung cấp dinh dưỡng hoàn hảo- giúp cún cưng của bạn có thể phát triển một cách toàn diện.Độ béo và khoáng chất sẽ giúp nuôi dưỡng những bộ lông mềm mượt- các thành phần như vitamin E giúp dễ tiêu hóa cho nên chất dinh dưỡng sẽ được hấp thu một cách dễ dàng.Vị gà kích thích vị giác của cún- giúp chúng ngon miệng hơn và sẽ tiêu thụ Đồ Ăn một cách dễ dàng- bạn sẽ không phải vất vả mỗi lần cho cún ăn.Các chất rau củ quả- vitamin giúp tăng cường hệ miễn dịch cho cún cưng- nhằm loại bỏ một số bệnh...', 2, 2, 52, 16)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (74, N'Đồ Ăn Cho Mèo Kitekat Vị Cá Thu Dạng Túi 1.4 Kg', N'do-an-cho-meo-kitekat-vi-ca-thu-dang-tui-14-kg', 8, NULL, 91000, N'9472702fb6a988a3d7e9f8986dfb1359.jpg', NULL, 29, NULL, N'Đồ Ăn Cho Mèo Kitekat Vị Cá Thu Dạng Túi 1.4 KgĐồ Ăn Cho Mèo Kitekat Vị Cá Thu Dạng Túi 1.4 Kg giúp bổ sung các dưỡng chất cần thiết cho mèo con nhà bạn ăn thật ngon và lớn nhanh. Đồ Ăn cho mèo Kitekat không sử dụng hóa chất độc hại- phẩm màu đảm bảo tối đa sự an toàn cho sức khỏe của mèo khi sử dụng sản phẩm. Đây là dòng sản phẩm được nhiều cô cậu chủ tin dùng.Thành phầnBánh gạo- tinh bột bắp- thịt gia cầm và các sản phẩm từ thịt gia cầm- cá biển- chất béo từ cọ- dầu đậu nành- muối Iốt- Taurine- các Vitamin và khoáng chất.Công dụngĐồ Ăn cho mèo được làm từ bánh gạo- tinh bột bắp- thịt gia cầm và các sản phẩm từ thịt gia cầm- cá biển- chất béo từ cọ- dầu đậu nành- muối Iốt- Taurine- các Vitamin và khoáng chất nên rất an toàn cho mèo con.Cùng với đó- hương vị cá thu đặc trưng sẽ khiến mèo thích ăn và ăn ngon hơn. Giảm được nỗi lo cho các cô cậu chủ khi tránh được tình trạng biếng ăn của thú cưng.Hướng dẫn sử dụngDùng cho mèo lớnBảo quản nơi khô mát- tránh ánh nắng mặt trời chiếu trực ti...', 2, 3, 53, 15)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (75, N'Combo 12 Gói Thức Ăn Cho Mèo Lớn Whiskas Vị Cá Ngừ (85g)', N'combo-12-goi-thuc-an-cho-meo-lon-whiskas-vi-ca-ngu-85g', 8, NULL, 113000, N'23bc75d675e4beb2443263372ba2dd67.jpg', NULL, 47, NULL, N'Combo 12 Gói Thức Ăn Cho Mèo Lớn Whiskas Vị Cá Ngừ (85g) chứa các chất dinh dưỡng quan trọng và cần thiết cho sự sống như protein- chất xơ- chất béo. Sản phẩm giúp vật nuôi của bạn có thể phát triển một cách khỏe mạnh- đẩy lùi các loại bệnh nhờ tăng cường sức đề kháng. Bên cạnh đó dầu thực vật nuôi dưỡng da và lông- thú cưng của bạn sẽ trở nên xinh xắn và đáng yêu. Combo Thức Ăn Cho Mèo Lớn Whiskas Vị Cá Ngừ 85g x 12 GóiThông tin sản phẩm: 85g x 1 góiThành phầnCá ngừ đại dương- dầu thực vật- vitamin và khoángCông dụngSản phẩm chứa nhiều chất làm cho hệ tiêu hóa của mèo dễ hấp thu và hấp thu nhanh- đưa các chất dinh dưỡng có trong cá như protein- đạm đi nuôi cơ thể- đẩy lùi các căn bệnh giúp mèo của bạn phát triển khỏe mạnh hơn. Cùng với đó- hương vị cá ngừ hòa quyện tạo hương thơm kích thích vị giác- sẽ khiến mèo thích ăn và ăn ngon hơn. Giảm được nỗi lo cho các cô cậu chủ khi tránh được tình trạng biếng ăn của thú cưng. Hướng dẫn sử dụngSản phẩm dùng cho mèo lớn1 gói/1 ngày cho mỗi kg...', 2, 1, 51, 15)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (76, N'Đồ Ăn Cho Mèo Trưởng Thành Me-O Vị Cá Ngừ (7kg)', N'do-an-cho-meo-truong-thanh-me-o-vi-ca-ngu-7kg', 8, NULL, 432000, N'f7e8e6b17c1ace3cd412803ca4b77260.jpg', NULL, 44, NULL, N' Đồ Ăn Cho Mèo Trưởng Thành Me-O Vị Cá Ngừ (7kg) với công thức Flutd giúp ngăn ngừa bệnh đường tiết niệu trên mèo và sỏi bàng quang- cho mèo của bạn có được sức khoẻ tốt và sự nhanh nhạy.Bên cạnh đó- loại Đồ Ăn này còn chứa Omega 3 và Omega 6 từ dầu chất lượng cao trong hợp chất với kẽm giúp nuôi dưỡng lông và da mèo.Sản phẩm dạng hạt- có hương vị thơm ngon giúp kích thích vị giác tạo nên sự thích thú với bữa ăn của thú cưng nhà bạn. Thành phần dinh dưỡng Cải thiện thị giác: Taurine là axit amin cần thiết cho chức năng của mắt và giúp cải thiện thị giác của mèoFlutd: Công thức FLUTD giúp ngăn ngừa bệnh đường tiết niệu và sỏi bàn quangCông thức Natri thấp: Giúp làm giảm nguy cơ bệnh thận và bệnh timVitamin C: Tăng cường hệ thống miễn dịch và giúp làm giảm tác động củastress tới sức khỏe của mèoBổ sung Omega 3 & 6 và kẽm: nuôi dưỡng lông và da mèo óng mượt - khỏe mạnhCanxi- photpho- vitamin D: Cho xương chắc- răng khỏe ...', 2, 1, 50, 15)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (77, N'Đồ Ăn Cho Mèo Trưởng Thành Me-O Hương Vị Cá Ngừ (1.2 Kg)', N'do-an-cho-meo-truong-thanh-me-o-huong-vi-ca-ngu-12-kg', 8, NULL, 104000, N'me-o-tuna-1.u3059.d20170529.t161435.388927.jpg', NULL, 35, NULL, N'  Đồ Ăn Cho Mèo Trưởng Thành Me-O Hương Vị Cá Ngừ (1.2 Kg) giúp bạn tiết kiệm được thời gian và chi phí khi mua sắm. Công thức Flutd giúp ngăn ngừa bệnh đường tiết niệu trên mèo và sỏi bàng quang- cho mèo của bạn có được sức khoẻ tốt và sự nhanh nhạy. Sản phẩm xuất xứ từ Thái Lan- được nhiều người tiêu dùng tin tưởng và lựa chọn.Taurine là Acid Amino cần thiết cho chức năng của mắt và cải thiện thị giác giúp mèo có đôi mắt nhanh nhạy hơn.Vitamin C tăng cường hệ thống miễn dịch và giúp giảm tác động của stress lên sức khỏe của mèo.Canxi-Photpho và Vitamin D giúp làm chắc răng và xương hạn chế các bệnh lý thường gặp như loãng xương- thiếu canxi- ..Với Flutd giúp ngăn ngừa bệnh đường tiết niệu trên và sỏi bàng quangOmega 3 và Omega 6 từ dầu chất lượng cao trong hợp chất với kẽm giúp nuôi dưỡng lông và da.Natri thấp giúp giảm nguy cơ cao huyết áp- bệnh thận và tim ở mèo.Ngoài ra- Đồ Ăn còn giúp giảm sự tích tụ cao răng làm hư răng và đặc biệt nhất là giúp chất thải (phân) của thú cưng giảm...', 24, 3, 50, 15)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (78, N'Sữa Cho Chó Mèo Bio (100g)', N'sua-cho-cho-meo-bio-100g', 8, NULL, 31000, N'bio-milk.u2409.d20171011.t105650.187718.jpg', NULL, 11, NULL, N'Sữa Cho Chó Mèo Bio (100g) là sữa bột thay thế cho chó mèo sơ sinh của Bio Pharmachemie- Việt Nam.Sản phẩm dành cho chó mèo con sơ sinh với thành phần giàu chất dinh dưỡng- cân đối như Protein- chất béo- chất xơ- canxi- vitamin A- E- B1- B12-... rất dể tiêu hóa tương tự sữa mẹ- có tác dụng thay thế sữa mẹ trong trường hợp chó- mèo mất sữa- kém sữa hoặc thiếu sữa do bầy con quá đông- đồng thời là nguồn bổ sung chất dinh dưỡng cho chó mèo còi cọc- chậm lớn.Thay thế sữa mẹ trong khi chó mèo mẹ mất- chó mèo mẹ ít sữa- hoặc  bầy con quá đông.Thành phần tương tự sữa mẹ- giàu chất dinh dưỡng- cân đối- giúp rất dễ tiêu hóa.Bổ sung dinh dưỡng cho chó mèo con còi cọc- chậm lớn- vận động nhiều...Phù hợp vớiChó mèo sơ sinh dưới 2 tháng tuổiChó mèo con từ 2 tháng tuổi trở lênChó mèo còi cọc- chậm lớn hoặc đang bệnhChó mèo biếng ăn- sau khi phẩu thuật- vận động nhiềuChó mèo con mất mẹ- bị bỏ rơiHướng dẫn sử dụngChó- mèo con dưới 1 tháng tuổi: Hòa 1 muỗng cafe (5g) sữa với 20ml nước ấm- dùng bình cho...', 5, 3, 54, 16)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (79, N'Cà Phê Hello 5 Hộp Quà Tặng Organic Màu Xanh', N'ca-phe-hello-5-hop-qua-tang-organic-mau-xanh', 5, NULL, 135000, N'3655166037451_s_01.d20170727.t150751.899991.jpg', NULL, 20, NULL, N'Cà Phê Hello 5 Hộp Quà Tặng Organic Màu Xanh - Là món quà ý nghĩa để tặng người thân và bạn bè- bộ đôi Giftset Organic và Deluxe là kết tinh của sự hoàn hảo- sự tinh tế trong thiết kế bao bì- sự hài hòa của các yếu tố phong thủy và trên hết là tấm lòng của bạn muốn gửi đến những người thân yêu một món quà thật ý nghĩa.Đây là loại cà phê chế phin truyền thống mang hương vị hết sức độc đáo- được ưa chuộng trên thị trường.Giống như nhiều loại hạt khác- hạt cà phê có hàm lượng cao những hợp chất polyphenols là những chất chống oxy hoá- tỷ lệ chất chống oxy hoá trong hạt cà phê còn cao hơn so với một số thực vật khác như táo- cà chua- cranberries... Với Cà phê Hello 5- bạn chỉ cần mất ít phút pha chế là đã có một cốc cà phê thơm ngon- khởi đầu ngày mới đầy hứng thú... Ngoài ra- mẫu mã và bao bì đẹp mắt- đây còn là món quà tặng ý nghĩa cho bạn bè và người thân vào mỗi dịp đặc biệt. ...', 27, 3, 55, 17)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (80, N'Bộ Trà Olong Phúc Lộc 400 gram - Trà Olong thượng hạng', N'bo-tra-olong-phuc-loc-400-gram---tra-olong-thuong-hang', 9, NULL, 550000, N'db576c0e54c88e628759ca6457bfa22a.jpg', NULL, 15, NULL, N'Trà Olong Phúc Lộc Hộp TrắngQùa tặng trà Olong cao cấp biếu đối tác và khách hàng hàng cao cấp.Lưu ý : Qúy khách không nên pha trà Olong với nước máy- trong nước máy mới bơm có chứa Clo- sẽ khử mùi thơm của trà Olong.Nếu phải pha bằng nước máy- quý khách hãy để khoảng 2-3 ngày để Clo bay hết mới đun và pha trà. Nhiệt độ chuẩn khoảng 90 độ C là nhiệt độ chuẩn để có tách trà Olong ngon nhấtMô tả: 400gram bao gồm 02 gói 200gram trà Olong ngon được bảo quản trong bao nhôm hút chân không đựng trong 2 hộp sắt và đặt trong khay sang trọng.Đặc tính của trà Olong do công ty cung cấp là không sử dụng bất kì hương hay phụ gia nào trong quá trình chế biến- mà đó là mùi hương đặc trưng sẵn có của trà Olong. Để có được thành phẩm trà Olong thì từ nguyên liệu tươi thu hái về phải mất hơn 30 tiếng qua nhiều công đoạn khác nhau như: làm héo- quay thơm- diệt men- định hình và cuối cùng là đóng gói tạo ra nhiều chủng loại trà Olong theo thị hiếu người tiêu dùng.Nhìn chung sản phẩm trà Olong đều có hình t...', 28, 3, 56, 18)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (81, N'Hộp Quà Gỗ Vạn Xuân - Trà Shan Tuyết Cổ Thụ Tà Xùa Lộc Tân Cương (200g)', N'hop-qua-go-van-xuan---tra-shan-tuyet-co-thu-ta-xua-loc-tan-cuong-200g', 5, NULL, 762000, N'89c73378ec772db342a4677fa0cf9fb9.jpg', NULL, 0, NULL, N'Hộp Quà Gỗ Vạn Xuân - Trà Shan Tuyết Cổ Thụ Tà Xùa Lộc Tân Cương (200g) - Trà mang hương thơm của núi rừng Tây Bắc- ban dầu có vị chát dịu sau đó là hậu ngọt sâu và thanh trong cổ họng- rất dễ chịu khi thưởng thức- nước trà vàng óng và trong.Phòng chống Ung thư: Trong búp trà khi đã được sấy khô có chứa nhiều tanin mà thành phần chính là EpiGalloCatechic Gallat (gọi tắt là EGCG) có tác dụng chống khối u và ngăn cản sự phát triển của tế bào ung thư và nhất là ung thư liên quan đến dạ dày- ruột và vú.Giảm cân: Trong búp trà có chứa Cafein và chất Tanin có tác dụng rất tốt với việc đào thải chất mỡ và các độc tố vì vậy uống chè thường xuyên sẽ giúp bạn giảm cân hiệu quả mà vẫn khỏe đẹpChống lão hóa: Trong búp trà có nhiều chất chống oxy hóa- làm trung tính các gốc tự do ( nguyên nhân gây già nua..)Chống hôi miệng: Để tránh hôi miệng- nên pha trà với nước và súc miệngCung cấp Vitamin: Một tách trà được pha có lượng Vitamin C nhiều hơn một quả camTăng khả năng sinh sản: năm 1998- một nghiên...', 29, 3, 57, 19)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (82, N'Cà Phê Hello 5 Hộp Quà Tặng Deluxe Màu Đỏ', N'ca-phe-hello-5-hop-qua-tang-deluxe-mau-do', 5, NULL, 145000, N'3651485149950_s_01.d20170727.t150549.786388.jpg', NULL, 17, NULL, N'Cà Phê Hello 5 Hộp Quà Tặng Deluxe Màu Đỏ - Là món quà ý nghĩa để tặng người thân và bạn bè- bộ đôi Giftset Organic và Deluxe là kết tinh của sự hoàn hảo- sự tinh tế trong thiết kế bao bì- sự hài hòa của các yếu tố phong thủy và trên hết là tấm lòng của bạn muốn gửi đến những người thân yêu một món quà thật ý nghĩa.Đây là loại cà phê chế phin truyền thống mang hương vị hết sức độc đáo- được ưa chuộng trên thị trường.Giống như nhiều loại hạt khác- hạt cà phê có hàm lượng cao những hợp chất polyphenols là những chất chống oxy hoá- tỷ lệ chất chống oxy hoá trong hạt cà phê còn cao hơn so với một số thực vật khác như táo- cà chua- cranberries...Với Cà phê Hello 5- bạn chỉ cần mất ít phút pha chế là đã có một cốc cà phê thơm ngon- khởi đầu ngày mới đầy hứng thú... Ngoài ra- mẫu mã và bao bì đẹp mắt- đây còn là món quà tặng ý nghĩa cho bạn bè và người thân vào mỗi dịp đặc biệt. ...', 27, 3, 55, 17)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (83, N'Hộp trà Tâm Phúc – Nõn Tôm (gỗ)', N'hop-tra-tam-phuc-non-tom-go', 9, NULL, 464000, N'3a9af3d4c07642aad88e349772ab37d6.jpg', NULL, 0, NULL, N'                Bên trong gồm 01 hộp bát giác chứa 100gr trà Nõn Tôm.Hộp trà Tâm Phúc gỗ có kích thước 13 cm x 21 cm x 10 cm. Chất liệu gỗ thông trắng New Zeland. Khóa và bản lề bằng đồng. Mặt trên ép nhiệt hoa văn “Mục đồng thổi sáo” và logo Trà Việt. Bên trong đệm giấy nghệ thuật đen- có 1 hộp trà bát giác mầu đỏ.            ...', 30, 3, 58, 20)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (84, N'Hộp Quà Tết Nước Mát Miền Tây Ân Lộc Phúc (12 Lon / Hộp)', N'hop-qua-tet-nuoc-mat-mien-tay-an-loc-phuc-12-lon-hop', 6, NULL, 114000, N'a5f8b23ee512e9402d5a94712783495c.jpg', NULL, 0, NULL, N'Hộp Quà Tết Nước Mát Miền Tây Ân Lộc Phúc sử dụng nguồn nguyên liệu thật- tự nhiên và chất lượng để tạo ra những sản phẩm an toàn với giá thành phải chăng đáp ứng nhu cầu của người tiêu dùng.Nước Mát Miền Tây là sự kết hợp hoàn hảo của những thảo mộc từ thiên nhiên như rễ tranh- la hán quả- mã đề- mía lau... mang đến sự thanh mát và giải nhiệt sâu bên trong cơ thể.Mỗi lon có dung tích 240ml được đóng kín- tiện lợi để bạn có thể thưởng thức sản phẩm vào bất cứ thời gian hay địa điểm nào.Sản phẩm được đóng gói dưới dạng lốc 6 lon- bao bì được thiết kế bắt mắt- bạn có thể tặng món thức uống bổ dưỡng này cho chính mình hoặc cho bạn bè người thân. ...', 31, 3, 59, 21)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (85, N'Hộp quà DẤU ẤN VIỆT- Hạt Điều Bình Phước vỏ lụa A+', N'hop-qua-dau-an-viet--hat-dieu-binh-phuoc-vo-lua-a', 9, NULL, 550000, N'025bbc4aa5162453506f362c12eda0e4.jpg', NULL, 0, NULL, N'QUÀ TẶNG KHÁCH HÀNGMột sản phẩm khi làm quà tặng nó sẽ mang ý nghĩa trao tặng sức khỏe- thể hiện tấm lòng của bạn một cách chân thành nhất đối với khách hàng của bạn. Món quà mà bạn sẽ trao tặng đảm bảo cao nhất về tính thẩm mỹ của món quà- cũng như giá trị- độ an toàn khi người nhận quà sử dụng.Và khi sử dụng khách hàng sẽ luôn nhớ tới công ty bạn vì món quà mà chúng tôi cung cấp mang tới cho khách hàng của bạn hương vị ngọt ngào nhất!Chúng tôi đang nói đến sản phẩm làm quà tặng là những loại Hạt dinh dưỡng cao- mùi vị thơm ngon đặc trưng- sẽ làm người được tặng nhớ mãi đến bạn- đó là các loại hạt như : Hạt Điều rang muối Bình Phước- Hạt Hạnh nhân- Hạt Macca nữ hoàng các loại hạt- Hạt Óc Chó “ví như hạt trường thọ”Khi bạn trao tặng món quà này cho khách hàng- nghĩa là bạn đã trao tặng sức khỏe cho họ. Những loại hạt này có chứa những thành phần dinh dưỡng thiết yếu rất có lợi cho cơ thể con người: các Vitamin- gồm Vitamin nhóm B- Vitamin A- E- C- Kác khoáng chất gồm sắt- kẽm- mangan- ...', 32, 3, 60, 22)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (86, N'Hộp Quà Hải Long 3: 2 Hộp Sen Sấy Hải Long (230g / Hộp)', N'hop-qua-hai-long-3-2-hop-sen-say-hai-long-230g-hop', 3, NULL, 412000, N'6-001.u2409.d20171031.t142602.507538.jpg', NULL, 5, NULL, N'Hộp Quà Hải Long 3: 2 Hộp Sen Sấy Hải Long (230g / Hộp) với thành phần hạt sen nguyên chất- được bóc tách vỏ cẩn thận nhưng vẫn đảm bảo độ giòn- ngọt pha chút bùi bùi rất riêng của loại hạt giàu dinh dưỡng này. Hạt sen sấy có thể dùng ngay hoặc sử dụng làm nguyên liệu bổ sung vào các món bánh nhằm làm tăng thêm vị đậm đà- hấp dẫn của món ăn.Hạt sen cung cấp cho cơ thể những dưỡng chất cần thiết như protit- lipit- gluxit- canxi- photpho- sắt-…Hạt sen rất giàu các vitamin B1- vitamin B2- vitamin PP- vitamin C…Hàm lượng mỡ bão hòa- natri và cholesterol trong hạt sen rất thấp.Lợi ích hạt sen mang lại: Tăng cường tì vị- bảo đảm dinh dưỡng cho cơ thể- an thần- giúp ăn ngon- ngủ ngon- chống lão hóa- tốt cho người bệnh tiểu đường và đặc biệt có tác dụng với những người phải làm việc trí óc nhiều... ...', 33, 3, 61, 6)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (87, N'Hộp Quà Gỗ Vạn Xuân - Trà Oolong Lộc Hương Lộc Tân Cương (200g)', N'hop-qua-go-van-xuan---tra-oolong-loc-huong-loc-tan-cuong-200g', 5, NULL, 726000, N'c8b58b13c176b3feeb571f5dc2b15377.jpg', NULL, 0, NULL, N'Hộp Quà Gỗ Vạn Xuân - Trà Oolong Lộc Hương Lộc Tân Cương (200g) - Trà thơm hương hoa cỏ- tiền chát rất dịu và hậu ngọt thơm- nước trà xanh ngả vàng và trong.Phòng chống Ung thư: Trong búp trà khi đã được sấy khô có chứa nhiều tanin mà thành phần chính là EpiGalloCatechic Gallat (gọi tắt là EGCG) có tác dụng chống khối u và ngăn cản sự phát triển của tế bào ung thư và nhất là ung thư liên quan đến dạ dày- ruột và vú.Giảm cân: Trong búp trà có chứa Cafein và chất Tanin có tác dụng rất tốt với việc đào thải chất mỡ và các độc tố vì vậy uống chè thường xuyên sẽ giúp bạn giảm cân hiệu quả mà vẫn khỏe đẹpChống lão hóa: Trong búp trà có nhiều chất chống oxy hóa- làm trung tính các gốc tự do ( nguyên nhân gây già nua..)Chống hôi miệng: Để tránh hôi miệng- nên pha trà với nước và súc miệngCung cấp Vitamin: Một tách trà được pha có lượng Vitamin C nhiều hơn một quả camTăng khả năng sinh sản: năm 1998- một nghiên cứu của Kaiser Permanente Medical Care Program ở California đã chứng minh rằng uống-...', 29, 3, 57, 19)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (88, N'Hộp trà Tri Ân - Ô Long - Cổ Thụ - Nõn Tôm (gỗ)', N'hop-tra-tri-an---o-long---co-thu---non-tom-go', 9, NULL, 962000, N'36d46519fd960b9eb7cab4f3797cc5fe.jpg', NULL, 0, NULL, N'Hộp gồm 3 hộp trà bằng thiếc- trọng lượng 75g. Bao gồm 3 loại trà: Trà Ô long- Trà Nõn Tôm- Trà Tuyết.Hộp quà bên ngoài kích thước 8 x 10 x 30cm- chất liệu giấy mĩ thuật đen đỏ- với thiết kế mở nắp rất lạ mắt. Logo Trà Việt ép kim nhũ vàng. Bên trong chứa 3 hộp trà thiếc- trọng lượng 75g- hoạ tiết cành mai.Xuất Xứ: Việt NamHạn Sử Dụng: 2 năm ...', 30, 3, 58, 23)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (89, N'Hộp trà Tri Ân - Ô Long - Cổ Thụ - Nõn Tôm', N'hop-tra-tri-an---o-long---co-thu---non-tom', 9, NULL, 832000, N'238d43a7881d1e6478d7f03c574ce498.jpg', NULL, 0, NULL, N'Bên trong gồm 03 hộp bát giác- mỗi hộp chứa 100gr trà. Bao gồm 3 loại trà: Trà Ô Long- Trà Cổ thụ- Trà Nõn tôm. Hộp trà Tri Ân có kích thước 30 cm x 20 cm x 9 cm. Chất liệu giấy gân mỹ thuật màu đỏ. Mặt trên in hoa văn tranh “Mục Đồng Thổi Sáo”- dán logo Trà Việt bằng giấy couche. Bên trong đệm giấy mỹ thuật đen- có 3 hộp trà bát giác màu đỏ Xuất Xứ: Việt Nam Hạn Sử Dụng: 2 năm  ...', 30, 3, 58, 24)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (90, N'Hộp trà Thiếc 3 - Ô Long - Nõn Tôm - Tuyết', N'hop-tra-thiec-3---o-long---non-tom---tuyet', 9, NULL, 932000, N'5052d98db8d469e3e893a1292b3ba5e7.jpg', NULL, 0, NULL, N'Hộp gồm 3 hộp trà bằng thiếc- trọng lượng 75g. Bao gồm 3 loại trà: Trà Ô long- Trà Nõn Tôm- Trà Tuyết.Hộp quà bên ngoài kích thước 8 x 10 x 30cm- chất liệu giấy mĩ thuật đen đỏ- với thiết kế mở nắp rất lạ mắt. Logo Trà Việt ép kim nhũ vàng. Bên trong chứa 3 hộp trà thiếc- trọng lượng 75g- hoạ tiết cành mai.Xuất Xứ: Việt NamHạn Sử Dụng: 2 năm ...', 30, 3, 58, 25)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (91, N'Hộp trà Thiếc 2 – Ô Long Nhân Sâm – Hồng Trà', N'hop-tra-thiec-2-o-long-nhan-sam-hong-tra', 9, NULL, 488000, N'c32ecd2663a49f28427148937211ed06.jpg', NULL, 0, NULL, N'                Hộp gồm 2 hộp trà bằng thiếc- trọng lượng 75g. Bao gồm 2 loại trà: Trà Ô Long Nhân Sâm và Hồng Trà.Hộp quà bên ngoài kích thước 8 x 10 x 20cm- chất liệu giấy mĩ thuật đen đỏ- với thiết kế mở nắp rất lạ mắt. Logo Trà Việt ép kim nhũ vàng. Bên trong chứa 2 hộp trà thiếc- trọng lượng 75g- hoạ tiết cành mai.            ...', 30, 3, 58, 26)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (92, N'Thùng 30 Hộp Sữa Nestlé MILO Bữa Sáng (195ml/ Hộp)', N'thung-30-hop-sua-nestle-milo-bua-sang-195ml-hop', 7, NULL, 250000, N'ff15549c6b42ad21fe818ad7e6b2e923.jpg', NULL, 11, NULL, N'Thùng 30 Hộp Sữa Nestlé MILO Bữa Sáng là công thức đặc chế cho bữa sáng với sự kết hợp hoàn hảo của 3 loại ngũ cốc yến mạch- gạo lức lúa mì cùng sữa và lúa mạch- cung cấp tỉ lệ cân bằng giữa Đạm - Tinh bột - Chất béo được Viện Dinh Dưỡng Quốc Gia Việt Nam chứng nhận.Là giải pháp không chỉ tiện lợi mà còn đủ và đúng dinh dưỡng cho trẻ.Sản phẩm cung cấp năng lượng giúp trẻ sẵn sàng cho một bữa sáng năng động- tiếp thu và tập trung tốt hơn trong học tập cũng như các hoạt động thể chất khác. ...', 2, 3, 34, 12)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (93, N'Sữa Bột Full Cream Devondale (Túi 1kg)', N'sua-bot-full-cream-devondale-tui-1kg', 5, NULL, 217000, N'1592ef488c1db6cb7dd6fb829e850e1c.jpg', NULL, 32, NULL, N'Sữa Bột Full Cream Devondale (Túi 1kg) với thành phần từ nguồn sữa nguyên chất chứa hàm lượng canxi cao và các dưỡng chất tối ưu cho sự phát triển trí não- thể chất của trẻ nhỏ - sức khỏe của cả gia đình. Sản phẩm ứng dụng những công nghệ tiên tiến đạt tiêu chuẩn quốc tế- đồng thời tuyệt đối tuân thủ những quy định nghiêm ngặt của nước Úc về chất lượng và an toàn thực phẩm. Sản phẩm không chất bảo quản- mùi vị thơm- ngon mang đến cho bạn 1 loại thức uống dinh dưỡng tuyệt vời.Bổ sung canxi cho hệ xương chắc khỏe.Tăng sức đề kháng- phục hồi sức khỏe.Hạn chế tối đa việc loãng xương lúc về giàPhát triển chiều cao​.Cho bạn một sức khỏe cường tráng.Cho bạn một làm đẹp da- khoẻ khoắn hơn.Tăng sức đề kháng- phục hồi sức khỏe.Cho bạn một làm đẹp da- khoẻ khoắn hơnSữa Sevondale fullcream- phù hợp với bé từ 2 tuổi trở lên- người lớn- người già​.Cung cấp giá trị dinh dưỡng cần thiết hàng ngày cho cả trẻ em và người lớn.Uống sữa hàng ngày thay nước là hiệu quả tốt nhất. ...', 18, 14, 62, 27)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (94, N'Ngũ Cốc Organic Hỗn Hợp 6 Loại Hạt Bobs Red Mill (680g)', N'ngu-coc-organic-hon-hop-6-loai-hat-bobs-red-mill-680g', 5, NULL, 147000, N'3765059910225_s_01.d20170928.t154252.285462.jpg', NULL, 12, NULL, N'Ngũ Cốc Organic Hỗn Hợp 6 Loại Hạt Bobs Red Mill (680g) nhập khẩu từ Mỹ- giúp bổ sung dưỡng chất cho cả gia đình bạn.Sản phẩm giàu chất xơ có lợi cho hệ tiêu hóa- giàu hàm lượng các vitamin nhóm B có lợi cho quá trình sản sinh năng lượng của cơ thể và chứa nhiều dưỡng chất có lợi cho sức khỏe khác như sắt- canxi- kẽm-...Ngũ cốc không cholesterol- không làm tăng cân- phù hợp với cả người đang ăn kiêng.Sản phẩm ngon hơn nếu dùng chung với sữa tươi (có thể cắt thêm trái cây vào ăn cùng). ...', 2, 2, 63, 8)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (95, N'Sữa Bột Nguyên Kem A2 (1000g)', N'sua-bot-nguyen-kem-a2-1000g', 5, NULL, 279000, N'508379d637beba0119a278251194a29a.jpg', NULL, 20, NULL, N'Sữa Bột Nguyên Kem A2 (1000g) được sản xuất tại Úc- có hàm lượng Canxi cao- giúp bé phát triển thể chất tối ưu.1kg sữa bột pha được 7 lít sữa tươi dạng nước.Sản phẩm không chứa chất bảo quản- chất phụ gia- an toàn cho bé khi sử dụng.Hướng dẫn sử dụng- bảo quản:Pha sữa với nước ấm theo định lượng hướng dẫn in trên bao bì.Dùng được cho bé từ 2 tuổi trở lên và người lớn.Ngoài dùng cho bé uống- sữa còn có thể dùng để làm bánhĐóng kín bao bì sau khi sử dụng- bảo quản nơi khô ráo và tránh ánh nắng trực tiếp. ...', 13, 14, 64, 27)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (96, N'Ngũ cốc ăn sáng Nestlé Koko Krunch (330g/hộp)', N'ngu-coc-an-sang-nestle-koko-krunch-330ghop', 5, NULL, 89000, N'6641a0b6c7c8c8ec04462d58d302871d.jpg', NULL, 11, NULL, N'Ngũ cốc ăn sáng Nestlé Koko Krunch (330g/hộp) vị sô-cô-la đen- hình gấu- là sản phẩm ngũ cốc ăn liền giàu dinh dưỡng với thành phần chủ yếu từ mầm lúa mạch nguyên cám (29%)- cung cấp 5 vitamin nhóm B- canxi và chất xơ.Mỗi khẩu phần ngũ cốc Nestlé KOKO KRUNCH cung cấp 19% nhu cầu ngũ cốc nguyên cám khuyến nghị hàng ngày.Dùng 1 khẩu phần ngũ cốc Nestlé KOKO KRUNCH với 125ml sữa tươi và 1 trái cây như táo đem lại bữa sáng tiện lợi- giàu dinh dưỡng. Hướng dẫn sử dụng: Ăn trực tiếp hoặc trộn với sữa theo tỷ lệ một khẩu phần (khoảng 30g) với nửa ly sữa (khoảng 125 ml)Đối tượng sử dụng: Thích hợp dùng cho trẻ từ 6 tuổi trở lên và người lớn với 1 - 2 khẩu phần mỗi ngày (1 khẩu phần khoảng 30g).Không dùng cho trẻ em dưới 6 tháng tuổi ...', 2, 8, 65, 8)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (97, N'Trà Sữa Hòa Tan Royal Myanmar Teamix ROYAL010600 (30 Gói)', N'tra-sua-hoa-tan-royal-myanmar-teamix-royal010600-30-goi', 5, NULL, 140000, N'ce228a88a387879b06cdfd215eea3979.png', NULL, 7, NULL, N'Trà Sữa Hòa Tan Royal Myanmar Teamix ROYAL010600 (30 Gói) không có Cholesterol- độ béo ít- sử dụng kem thực vật dẫn sữa- hàm lượng 90 Calories / gói nhỏ. An toàn- phù hợp cho mọi giới tuổi cả người ăn chay và trẻ em.Rất đượm mùi trà- hơi chát đầu lưỡi- có vị béo và ngọt nhẹ của kem thực vật có vị sữa- ngon hơn bất kỳ loại trà sữa nào đang có mặt trên thị trường Việt Nam.Trà sữa được chiết xuất từ những lá trà xanh tươi sạch của Myanmar tạo nên một lại trà hòa tan ngon nhất.Trà dạng bột giúp bạn tự tay pha chế ly trà sữa thơm ngon cho bản thân và gia đình ngay tại nhà một cách đơn giản- nhanh chóng. ...', 34, 3, 66, 27)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (98, N'Combo 3 Thanh ngũ cốc ăn sáng Nestlé MILO (23.5g/Thanh) và 1 Hộp bút xe hơi  - Giao mẫu ngẫu nhiên', N'combo-3-thanh-ngu-coc-an-sang-nestle-milo-235gthanh-va-1-hop-but-xe-hoi---giao-mau-ngau-nhien', 5, NULL, 75000, N'0a0896b17bf1d17868afdbb8cff63032.jpg', NULL, 17, NULL, N'Combo 3 Thanh ngũ cốc ăn sáng Nestlé MILO (23.5g/Thanh) và 1 Hộp bút xe hơi  - Giao mẫu ngẫu nhiên có dạng thanh cực tiện lợi cho 1 khẩu phần ăn Ngũ cốc ăn sáng Nestlé MILO vị chocolate và mạch nha- hình viên- được ép dạng thanh- là sản phẩm ngũ cốc ăn liền giàu dinh dưỡng với thành phần chủ yếu từ mầm lúa mạch nguyên cám (34.5%)- cung cấp 5 vitamin nhóm B- canxi và chất xơ.Mỗi khẩu phần ngũ cốc Nestlé MILO cung cấp 20% nhu cầu nguyên cám khuyến nghị hàng ngày.Dùng 1 khẩu phần ngũ cốc Nestlé MILO mỗi ngày với 1 phần trái cây như táo đem lại bữa sáng hoặc bữa xế tiện lợi- giàu dinh dưỡng. Hướng dẫn bảo quản: bảo quản nơi khô ráo- thoáng mát ở nhiệt độ dưới 25 độ C.Thích hợp dùng cho trẻ từ 6 tuổi trở lên và người lớn với 1 hoặc 2 khẩu phần/mỗi ngày (1 khẩu phần khoảng 23-5 g)Sản phẩm có chứa gluten- sữa và có thể chứa các hạt và đậu nành.Không dùng cho trẻ em dưới 6 tháng tuổi ...', 2, 8, 34, 8)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (99, N'Hộp 10 Gói Nescafé Cà Phê Sữa Đá 3in1 (20g / Gói)', N'hop-10-goi-nescafe-ca-phe-sua-da-3in1-20g-goi', 5, NULL, 36000, N'd89189ca16b88d7900f39297de4bb300.jpg', NULL, 5, NULL, N'Hộp 10 Gói Nescafé Cà Phê Sữa Đá 3in1 (20g / Gói) được làm từ 100% những hạt cà phê việt nam chất lượng cùng chương trình the nescafé plan- nescafé cà phê sữa đá 3in1 tự hào mang đến cho bạn một ly cà phê sữa đá thuần túy Việt Nam.Với hương vị cà phê mạnh mẽ- kết hợp với vị béo dịu nhẹ của sữa thật- ngon như cà phê phin pha sữa đặc.Khởi đầu một ngày mới với nescafé giúp khơi dậy nguồn hứng khởi về thể chất và tinh thần của bạn.Cà phê kích thích các giác quan- tăng cường sự tập trung.   ...', 2, 3, 67, 17)
GO
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [TENALIAS], [MALOAI], [MOTADONVI], [DONGIA], [HINH], [NGAYSX], [GIAMGIA], [SOLANXEM], [MOTA], [MANCC], [MAXX], [MATH], [CHITIETLOAI]) VALUES (100, N'Trà diếp cá mát gan giải độc Orihiro gói 60 túi Nhật Bản (Asobu)', N'tra-diep-ca-mat-gan-giai-doc-orihiro-goi-60-tui-nhat-ban-asobu', 5, NULL, 124999, N'b48af89886964416e08a9e43d2f5d840.jpg', NULL, 58, NULL, N'Trà diếp cá mát gan- giải độc Orihiro gói 60 túi Nhật Bản - AsobuChắc hẳn các chị em không ai không biết đến công dụng của loại rau vừa phổ biến lại rẻ là diếp cá là làm trắng da- trị mụn trứng cá- kháng viêm- thải độc gan cực tốt cho sức khỏe nhưng thật khó uống. Với Trà diếp cá Dokudami Orihiro 60 túi sẽ giúp các bạn sở hữu nước thần trong việc làm đẹp thật đơn giản và tiện lợi- lại rất thơm dễ uống thay vì phải lích kích làm mặt nạ diếp cá mỗi lần- kì công nhặt đun và phải “ngây ngất” với mùi đặc trưng của rau diếp cá.Qui cách: 60 góiHãng sản xuất: OrihiroXuất xứ: Nhật BảnMã sản phẩm: 4971493201198Orihiro là thương hiệu dược phẩm lớn tại Nhật Bản- Rất nổi tiếng với nhóm sản phẩm thực phẩm chức năng như: xương khớp glucosamin- vitamin- etc- trong khoảng thời gian gần đây nhất thì Trà thải độc diếp cá Dokudami Orihiro cũng là một trong các sản phẩm được ưa chuộng ở xứ sở mặt trời mọc- cũng mang đến điểm cộng cho thương hiệu nàyTrà lá diếp cá của hãng Orihiro Sử dụng 100% lá diếp cá ...', 21, 15, 68, 19)
SET IDENTITY_INSERT [dbo].[HANGHOA] OFF
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (5, 9, NULL, NULL, N'Nguyễn Văn ABC', N'132 Nguyễn Văn Cừ Quận 5', N'abc', N'abc', 0, 1, N'abc')
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (7, 31, NULL, NULL, N'Nguyễn Văn ABC', N'56 Nguyen Duy, Ward 3, Binh Thanh District', N'Trực tiếp', NULL, NULL, 1, N'abc')
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (8, 31, NULL, NULL, N'ha phi tu', N'132 Nguyễn Văn Cừ Quận 5', N'Trực tiếp', NULL, NULL, 1, N'abc')
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (9, 31, CAST(0x0000AAAF01352C3B AS DateTime), CAST(0x0000AAB601352C41 AS DateTime), NULL, NULL, N'Paypal', NULL, NULL, 1, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (10, 31, CAST(0x0000AAAF015EAF00 AS DateTime), CAST(0x0000AAB6015EAF00 AS DateTime), NULL, NULL, N'Onepay', NULL, NULL, 1, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (11, 31, CAST(0x0000AAAF015F417C AS DateTime), CAST(0x0000AAB6015F417C AS DateTime), NULL, NULL, N'Onepay', NULL, NULL, 1, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (12, 31, CAST(0x0000AAB10135E386 AS DateTime), CAST(0x0000AAB80135E38E AS DateTime), NULL, NULL, N'Paypal', NULL, NULL, 1, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (13, 31, CAST(0x0000AAB101370811 AS DateTime), CAST(0x0000AAB801370811 AS DateTime), NULL, NULL, N'Paypal', NULL, NULL, 1, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (14, 31, CAST(0x0000AAB101379109 AS DateTime), CAST(0x0000AAB801379109 AS DateTime), NULL, NULL, N'Paypal', NULL, NULL, 1, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (15, 31, CAST(0x0000AAB101383B60 AS DateTime), CAST(0x0000AAB801383B60 AS DateTime), NULL, NULL, N'Paypal', NULL, NULL, 1, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (16, 31, CAST(0x0000AAB1013A90E2 AS DateTime), CAST(0x0000AAB8013A90E2 AS DateTime), NULL, NULL, N'Paypal', NULL, NULL, 1, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (17, 31, CAST(0x0000AAB1013C93DD AS DateTime), CAST(0x0000AAB8013C93DD AS DateTime), NULL, NULL, N'Paypal', NULL, NULL, 1, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (18, 32, CAST(0x0000AAB3002E07E2 AS DateTime), CAST(0x0000AABA002E07E5 AS DateTime), NULL, NULL, N'Paypal', NULL, NULL, 1, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (19, 32, CAST(0x0000AAB3006BD3E6 AS DateTime), CAST(0x0000AABA006BD40F AS DateTime), NULL, NULL, N'Paypal', NULL, NULL, 1, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (20, 31, CAST(0x0000AAB3006F3588 AS DateTime), CAST(0x0000AABA006F3588 AS DateTime), NULL, NULL, N'Onepay', NULL, NULL, 1, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (24, 31, CAST(0x0000AAB400F83D84 AS DateTime), CAST(0x0000AABB00F83D86 AS DateTime), N'Mai Vo', N'123 nguyen van a', N'Trực tiếp', NULL, NULL, 1, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (25, 32, CAST(0x0000AAB400BC14C1 AS DateTime), CAST(0x0000AABB00BC14C1 AS DateTime), NULL, NULL, N'Onepay', NULL, NULL, 1, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MAKH], [NGAYDAT], [NGAYGIAO], [HOTEN], [DIACHI], [CACHTHANHTOAN], [CACHVANCHUYEN], [PHIVANCHUYEN], [MATRANGTHAI], [GHICHU]) VALUES (26, 32, CAST(0x0000AAB400BC6A37 AS DateTime), CAST(0x0000AABB00BC6A37 AS DateTime), NULL, NULL, N'Paypal', NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[HOADON] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MAKH], [MATKHAU], [HOTEN], [GIOITINH], [NGAYSINH], [DIACHI], [DIENTHOAI], [EMAIL], [RANDOMKEY]) VALUES (9, N'111', N'ha phi tu', 1, CAST(0x00009E7000735B40 AS DateTime), N'11111', N'111', N'hpt7777@gmail.com', N'111')
INSERT [dbo].[KHACHHANG] ([MAKH], [MATKHAU], [HOTEN], [GIOITINH], [NGAYSINH], [DIACHI], [DIENTHOAI], [EMAIL], [RANDOMKEY]) VALUES (15, N'5555555', N'555555555', 0, CAST(0x00009EAF00000000 AS DateTime), N'Hoang Van Thu', N'5555', N'hoahonglua817@yahoo.com', N'Penguins.jpg')
INSERT [dbo].[KHACHHANG] ([MAKH], [MATKHAU], [HOTEN], [GIOITINH], [NGAYSINH], [DIACHI], [DIENTHOAI], [EMAIL], [RANDOMKEY]) VALUES (31, N'123456', N'Võ Ngọc Quỳnh Mai', 0, NULL, NULL, NULL, N'vnqmai01@gmail.com', NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [MATKHAU], [HOTEN], [GIOITINH], [NGAYSINH], [DIACHI], [DIENTHOAI], [EMAIL], [RANDOMKEY]) VALUES (32, N'123456', N'Test1', 1, NULL, NULL, NULL, N'test1@gmail.com', NULL)
INSERT [dbo].[KHACHHANG] ([MAKH], [MATKHAU], [HOTEN], [GIOITINH], [NGAYSINH], [DIACHI], [DIENTHOAI], [EMAIL], [RANDOMKEY]) VALUES (33, N'admin@bachhoaonline.herokuapp.com', NULL, NULL, NULL, NULL, NULL, N'admin@bachhoaonline.herokuapp.com', NULL)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[LOAI] ON 

INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI], [TENLOAIALIAS], [HINH], [MOTA]) VALUES (1, N'Chăm sóc nhà cửa', N'cham-soc-nha-cua', N'', N'')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI], [TENLOAIALIAS], [HINH], [MOTA]) VALUES (2, N'Bánh kẹo', N'banh-keo', N'', N'')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI], [TENLOAIALIAS], [HINH], [MOTA]) VALUES (3, N'Thực phẩm', N'thuc-pham', N'', N'')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI], [TENLOAIALIAS], [HINH], [MOTA]) VALUES (4, N'Gia vị', N'gia-vi', N'', N'')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI], [TENLOAIALIAS], [HINH], [MOTA]) VALUES (5, N'Đồ uống - Pha chế', N'do-uong---pha-che', N'', N'')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI], [TENLOAIALIAS], [HINH], [MOTA]) VALUES (6, N'Thực phẩm bổ dưỡng', N'thuc-pham-bo-duong', N'', N'')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI], [TENLOAIALIAS], [HINH], [MOTA]) VALUES (7, N'Đồ uống - Giải khát', N'do-uong---giai-khat', N'', N'')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI], [TENLOAIALIAS], [HINH], [MOTA]) VALUES (8, N'Chăm sóc thú cưng', N'cham-soc-thu-cung', N'', N'')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI], [TENLOAIALIAS], [HINH], [MOTA]) VALUES (9, N'Bộ quà tặng', N'bo-qua-tang', N'', N'')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI], [TENLOAIALIAS], [HINH], [MOTA]) VALUES (10, N'Thực phẩm chay', N'thuc-pham-chay', N'', N'')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI], [TENLOAIALIAS], [HINH], [MOTA]) VALUES (11, N'Thực phẩm bảo vệ sức khỏe', N'thuc-pham-bao-ve-suc-khoe', N'', N'')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI], [TENLOAIALIAS], [HINH], [MOTA]) VALUES (12, N'Thực phẩm cao cấp', N'thuc-pham-cao-cap', N'', N'')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI], [TENLOAIALIAS], [HINH], [MOTA]) VALUES (13, N'Thực phẩm hữu cơ', N'thuc-pham-huu-co', N'', N'')
SET IDENTITY_INSERT [dbo].[LOAI] OFF
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (1, N'P&G; Việt Nam', N'', N'7818745299', N'', N'p&g;-viet-nam@gmail.com', N'p&g;-viet-nam.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (2, N'Tiki Trading', N'', N'5292554193', N'', N'tiki-trading@gmail.com', N'tiki-trading.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (3, N'Siêu Thị Nhập Khẩu', N'', N'3192438882', N'', N'sieu-thi-nhap-khau@gmail.com', N'sieu-thi-nhap-khau.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (4, N'Rabbitshop', N'', N'4425561404', N'', N'rabbitshop@gmail.com', N'rabbitshop.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (5, N'Genyo', N'', N'6023832465', N'', N'genyo@gmail.com', N'genyo.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (6, N'Liko Việt Nam', N'', N'3744800544', N'', N'liko-viet-nam@gmail.com', N'liko-viet-nam.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (7, N'Văn phòng phẩm Thiên Quân', N'', N'1983704602', N'', N'van-phong-pham-thien-quan@gmail.com', N'van-phong-pham-thien-quan.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (8, N'MAZIK', N'', N'6102665972', N'', N'mazik@gmail.com', N'mazik.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (9, N'KIM THỦY', N'', N'5027024801', N'', N'kim-thuy@gmail.com', N'kim-thuy.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (10, N'Thái Bình Bakery', N'', N'2411148375', N'', N'thai-binh-bakery@gmail.com', N'thai-binh-bakery.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (11, N'ĐT Food', N'', N'3135364663', N'', N'dt-food@gmail.com', N'dt-food.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (12, N'Lửa Vàng', N'', N'2397125755', N'', N'lua-vang@gmail.com', N'lua-vang.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (13, N'The True Japan', N'', N'9882780947', N'', N'the-true-japan@gmail.com', N'the-true-japan.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (14, N'Đông Vũ', N'', N'6678012447', N'', N'dong-vũ@gmail.com', N'dong-vũ.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (15, N'quatangme', N'', N'3607849763', N'', N'quatangme@gmail.com', N'quatangme.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (16, N'TADA FOODS', N'', N'5760077668', N'', N'tada-foods@gmail.com', N'tada-foods.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (17, N'Sinai', N'', N'4558318258', N'', N'sinai@gmail.com', N'sinai.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (18, N'Thành Thuận Thiên', N'', N'9923843008', N'', N'thanh-thuan-thien@gmail.com', N'thanh-thuan-thien.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (19, N'suahanquocnhapkhauchinhhang', N'', N'7938241798', N'', N'suahanquocnhapkhauchinhhang@gmail.com', N'suahanquocnhapkhauchinhhang.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (20, N'Tầm Nhìn Xanh', N'', N'7151702082', N'', N'tam-nhin-xanh@gmail.com', N'tam-nhin-xanh.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (21, N'Asobu AU', N'', N'8853520245', N'', N'asobu-au@gmail.com', N'asobu-au.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (22, N'TOMATO T&P;', N'', N'3234625949', N'', N'tomato-t&p;@gmail.com', N'tomato-t&p;.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (23, N'Mắm Lê Gia', N'', N'4993815610', N'', N'mam-le-gia@gmail.com', N'mam-le-gia.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (24, N'Kún Miu Pet shop', N'', N'8544157837', N'', N'kún-miu-pet-shop@gmail.com', N'kún-miu-pet-shop.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (25, N'ATZSHOP', N'', N'4473636816', N'', N'atzshop@gmail.com', N'atzshop.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (26, N'Titinow', N'', N'1208479100', N'', N'titinow@gmail.com', N'titinow.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (27, N'Cà Phê Hello 5', N'', N'4595530319', N'', N'ca-phe-hello-5@gmail.com', N'ca-phe-hello-5.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (28, N'Tân Cương Xanh', N'', N'6302775472', N'', N'tan-cương-xanh@gmail.com', N'tan-cương-xanh.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (29, N'LỘC TÂN CƯƠNG TEA', N'', N'3478051836', N'', N'lộc-tan-cương-tea@gmail.com', N'lộc-tan-cương-tea.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (30, N'Trà Việt', N'', N'8504059151', N'', N'tra-viet@gmail.com', N'tra-viet.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (31, N'Ân Lộc Phúc', N'', N'6111648316', N'', N'an-lộc-phuc@gmail.com', N'an-lộc-phuc.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (32, N'Hạt Ngon', N'', N'1267126359', N'', N'hat-ngon@gmail.com', N'hat-ngon.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (33, N'Thực phẩm Hải Long', N'', N'9876284776', N'', N'thuc-pham-hai-long@gmail.com', N'thuc-pham-hai-long.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (34, N'GOLD ROAST', N'', N'4260021104', N'', N'gold-roast@gmail.com', N'gold-roast.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (35, N'Highlands Coffee', N'', N'9563531724', N'', N'highlands-coffee@gmail.com', N'highlands-coffee.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (36, N'Shop Gia Vị', N'', N'8828316900', N'', N'shop-gia-vi@gmail.com', N'shop-gia-vi.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (37, N'GUfoods', N'', N'7771570933', N'', N'gufoods@gmail.com', N'gufoods.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (38, N'Coffee and Tea Wonderland', N'', N'1120685097', N'', N'coffee-and-tea-wonderland@gmail.com', N'coffee-and-tea-wonderland.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (39, N'Nước yến sào win''sNest', N'', N'4436605516', N'', N'nưoc-yen-sao-win''snest@gmail.com', N'nưoc-yen-sao-win''snest.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (40, N'NẤM LINH CHI HQGANO', N'', N'4316342533', N'', N'nam-linh-chi-hqgano@gmail.com', N'nam-linh-chi-hqgano.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (41, N'thaiphongfood', N'', N'6313473921', N'', N'thaiphongfood@gmail.com', N'thaiphongfood.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (42, N'Phong Yen Trading 2', N'', N'5843184120', N'', N'phong-yen-trading-2@gmail.com', N'phong-yen-trading-2.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (43, N'Nok Cha Won Vietnam', N'', N'3196300239', N'', N'nok-cha-won-vietnam@gmail.com', N'nok-cha-won-vietnam.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (44, N'Nhân Sâm Hàn Quốc', N'', N'8122382883', N'', N'nhan-sam-han-quoc@gmail.com', N'nhan-sam-han-quoc.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (45, N'Beauty Republic', N'', N'7807002365', N'', N'beauty-republic@gmail.com', N'beauty-republic.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (46, N'Naropharma', N'', N'4001337798', N'', N'naropharma@gmail.com', N'naropharma.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (47, N'KOBIVINA', N'', N'2586064186', N'', N'kobivina@gmail.com', N'kobivina.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (48, N'Sức Khỏe Nguồn Thiên Nhiên', N'', N'2195113581', N'', N'sức-khoe-nguon-thien-nhien@gmail.com', N'sức-khoe-nguon-thien-nhien.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (49, N'BTStore', N'', N'2440240810', N'', N'btstore@gmail.com', N'btstore.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (50, N'PAT Trading', N'', N'9631117216', N'', N'pat-trading@gmail.com', N'pat-trading.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (51, N'Sữa Cadilac', N'', N'4244126503', N'', N'sua-cadilac@gmail.com', N'sua-cadilac.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (52, N'SKU VIET', N'', N'4590028371', N'', N'sku-viet@gmail.com', N'sku-viet.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (53, N'Tieuduong365', N'', N'2065677196', N'', N'tieuduong365@gmail.com', N'tieuduong365.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (54, N'EPCOFOODS', N'', N'3893013623', N'', N'epcofoods@gmail.com', N'epcofoods.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (55, N'LIF SHOP', N'', N'4570212256', N'', N'lif-shop@gmail.com', N'lif-shop.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (56, N'HẠT ĐIỀU VINAHE', N'', N'1705816264', N'', N'hat-dieu-vinahe@gmail.com', N'hat-dieu-vinahe.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (57, N'HẠT DINH DƯỠNG HẢO HẠNG', N'', N'1403637161', N'', N'hat-dinh-dưong-hao-hang@gmail.com', N'hat-dinh-dưong-hao-hang.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (58, N'DWOA ORGANIC', N'', N'7428488153', N'', N'dwoa-organic@gmail.com', N'dwoa-organic.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (59, N'BIOGARTEN', N'', N'4273074147', N'', N'biogarten@gmail.com', N'biogarten.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (60, N'OneLife Matcha', N'', N'9186653262', N'', N'onelife-matcha@gmail.com', N'onelife-matcha.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (61, N'Hoa Nắng', N'', N'4233235203', N'', N'hoa-nang@gmail.com', N'hoa-nang.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (62, N'mbeefarm', N'', N'1610474732', N'', N'mbeefarm@gmail.com', N'mbeefarm.jpg', N'')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [NGUOILIENHE], [DIENTHOAI], [DIACHI], [EMAIL], [LOGO], [MOTA]) VALUES (63, N'Công ty TNHH Phân Phối MP', N'', N'3263516443', N'', N'cong-ty-tnhh-phan-phoi-mp@gmail.com', N'cong-ty-tnhh-phan-phoi-mp.jpg', N'')
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [EMAIL], [MATKHAU], [RANDOMKEY]) VALUES (1, N'Lê Van C', N'lvc@gmail.com', N'lvc@gmail.com', N'123')
INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [EMAIL], [MATKHAU], [RANDOMKEY]) VALUES (2, N'Tran Van A', N'tva@gmail.com', N'tva@gmail.com', N'123')
INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [EMAIL], [MATKHAU], [RANDOMKEY]) VALUES (3, N'Nguyen Van B', N'nvb@gmail.com', N'nvb@gmail.com', N'123')
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
SET IDENTITY_INSERT [dbo].[NHANXET] ON 

INSERT [dbo].[NHANXET] ([MANX], [MAKH], [MAHH], [NOIDUNG], [RATING], [NGAYGUI]) VALUES (1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[NHANXET] ([MANX], [MAKH], [MAHH], [NOIDUNG], [RATING], [NGAYGUI]) VALUES (2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[NHANXET] ([MANX], [MAKH], [MAHH], [NOIDUNG], [RATING], [NGAYGUI]) VALUES (3, 31, 2, NULL, 5, CAST(0x0000AAB2015E2330 AS DateTime))
INSERT [dbo].[NHANXET] ([MANX], [MAKH], [MAHH], [NOIDUNG], [RATING], [NGAYGUI]) VALUES (4, 31, 2, NULL, 5, CAST(0x0000AAB2015ECCDA AS DateTime))
INSERT [dbo].[NHANXET] ([MANX], [MAKH], [MAHH], [NOIDUNG], [RATING], [NGAYGUI]) VALUES (5, 31, 4, NULL, 5, CAST(0x0000AAB2016E2BE5 AS DateTime))
INSERT [dbo].[NHANXET] ([MANX], [MAKH], [MAHH], [NOIDUNG], [RATING], [NGAYGUI]) VALUES (6, 31, 4, NULL, 5, CAST(0x0000AAB2016E39E0 AS DateTime))
INSERT [dbo].[NHANXET] ([MANX], [MAKH], [MAHH], [NOIDUNG], [RATING], [NGAYGUI]) VALUES (7, 31, 4, N'tot', 5, CAST(0x0000AAB201700929 AS DateTime))
INSERT [dbo].[NHANXET] ([MANX], [MAKH], [MAHH], [NOIDUNG], [RATING], [NGAYGUI]) VALUES (8, 32, 3, N'tot', 5, CAST(0x0000AAB201732EB6 AS DateTime))
INSERT [dbo].[NHANXET] ([MANX], [MAKH], [MAHH], [NOIDUNG], [RATING], [NGAYGUI]) VALUES (9, 32, 3, N'tuyet', 4, CAST(0x0000AAB201747150 AS DateTime))
INSERT [dbo].[NHANXET] ([MANX], [MAKH], [MAHH], [NOIDUNG], [RATING], [NGAYGUI]) VALUES (10, 32, 3, N'khong tot', 1, CAST(0x0000AAB2017484C9 AS DateTime))
INSERT [dbo].[NHANXET] ([MANX], [MAKH], [MAHH], [NOIDUNG], [RATING], [NGAYGUI]) VALUES (11, 32, 4, N'khá ok', 3, CAST(0x0000AAB20177EB82 AS DateTime))
INSERT [dbo].[NHANXET] ([MANX], [MAKH], [MAHH], [NOIDUNG], [RATING], [NGAYGUI]) VALUES (12, 31, 2, N'thom', 4, CAST(0x0000AAB2017E289F AS DateTime))
SET IDENTITY_INSERT [dbo].[NHANXET] OFF
SET IDENTITY_INSERT [dbo].[PHANCONG] ON 

INSERT [dbo].[PHANCONG] ([MAPC], [MANV], [MAPB], [NGAYPC], [HIEULUC]) VALUES (2, 1, 1, CAST(0x0000A84C00A792AF AS DateTime), CAST(0x0000000000000000 AS DateTime))
INSERT [dbo].[PHANCONG] ([MAPC], [MANV], [MAPB], [NGAYPC], [HIEULUC]) VALUES (3, 2, 1, CAST(0x0000A82800000000 AS DateTime), CAST(0x0000000000000000 AS DateTime))
INSERT [dbo].[PHANCONG] ([MAPC], [MANV], [MAPB], [NGAYPC], [HIEULUC]) VALUES (4, 1, 1, CAST(0x0000A84C00A9264F AS DateTime), CAST(0x0000000100000000 AS DateTime))
INSERT [dbo].[PHANCONG] ([MAPC], [MANV], [MAPB], [NGAYPC], [HIEULUC]) VALUES (5, 2, 1, CAST(0x0000A84C00A92658 AS DateTime), CAST(0x0000000100000000 AS DateTime))
INSERT [dbo].[PHANCONG] ([MAPC], [MANV], [MAPB], [NGAYPC], [HIEULUC]) VALUES (6, 2, 3, CAST(0x0000A84C00A94701 AS DateTime), CAST(0x0000000000000000 AS DateTime))
INSERT [dbo].[PHANCONG] ([MAPC], [MANV], [MAPB], [NGAYPC], [HIEULUC]) VALUES (7, 3, 3, CAST(0x0000A84C00A94704 AS DateTime), CAST(0x0000000000000000 AS DateTime))
INSERT [dbo].[PHANCONG] ([MAPC], [MANV], [MAPB], [NGAYPC], [HIEULUC]) VALUES (8, 3, 3, CAST(0x0000A84C00A95E6A AS DateTime), CAST(0x0000000100000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[PHANCONG] OFF
SET IDENTITY_INSERT [dbo].[PHANQUYEN] ON 

INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAPB], [MATRANG], [THEM], [XOA], [SUA], [XEM]) VALUES (2, 1, 1, 0, 0, 0, 0)
INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAPB], [MATRANG], [THEM], [XOA], [SUA], [XEM]) VALUES (3, 1, 2, 0, 0, 0, 0)
INSERT [dbo].[PHANQUYEN] ([MAPQ], [MAPB], [MATRANG], [THEM], [XOA], [SUA], [XEM]) VALUES (4, 1, 3, 0, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[PHANQUYEN] OFF
SET IDENTITY_INSERT [dbo].[PHONGBAN] ON 

INSERT [dbo].[PHONGBAN] ([MAPB], [TENPB], [THONTIN]) VALUES (1, N'Ban Giám Đốc', NULL)
INSERT [dbo].[PHONGBAN] ([MAPB], [TENPB], [THONTIN]) VALUES (2, N'Phòng kinh doanh', NULL)
INSERT [dbo].[PHONGBAN] ([MAPB], [TENPB], [THONTIN]) VALUES (3, N'Phòng Kỹ thuật', NULL)
INSERT [dbo].[PHONGBAN] ([MAPB], [TENPB], [THONTIN]) VALUES (4, N'Phòng Kế toán', NULL)
SET IDENTITY_INSERT [dbo].[PHONGBAN] OFF
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (0, N'N''Combo Nước Giặt Ariel Đậm Đặc Dạng Túi 2.4kg  + Nước Xả Vải Downy Huyền Bí Dạng Túi 2.4L''', N'combo-nưoc-giat-ariel-dam-dac-dang-tui-2.4kg--+-nưoc-xa-vai-downy-huyen-bi-dang-tui-2.4l', N'288000', N'', N'bf950e5f6b12d9504938bf9dfb1d3165.jpg', N'1001', N'1', N'2', N'"
BỘ SẢN PHẨM BAO GỒM:01 X Nước Giặt Ariel Đậm Đặc Dạng Chai 2.4kg01 X Nước Xả Vải Downy Huyền Bí Dạng Túi 2.4LTHÔNG TIN SẢN PHẨM1. Nước giặt chai Ariel đậm đặc là bột giặt dạng gel đậm đặc giúp Loại sạch vết bẩn tốt hơn gấp 2X chỉ trong 1 bước giặt. sản phẩm thế hệ mới được áp dụng công nghệ cao với khả năng loại sạch vết bẩn vượt trội - chứa nhiều thành phần làm sạch hiệu quả giúp loại bỏ được nhiều vết bẩn cứng đầu như vết bẩn dầu mỡ - vết cà phê


Đặc điểm:- Sản phẩm dạng gel đậm đặc cho khả năng giặt tẩy vượt trội - giúp đánh bật mọi vết bẩn tốt hơn gấp 2 lần chỉ trong 1 bước giặt - quần áo sẽ được trắng sáng - không để lại chất cặn và lưu lại hương thơm tươi mát.- Là sản phẩm phù hợp cả giặt tay và giặt bằng máy - nước giặt Ariel đậm đặc sẽ giúp cho việc giặt giũ của bạn trở nên nhẹ nhàng và hiệu quả hơn - giúp các bà nội trợ tiết kiệm được thời gian và công sức của mình.- An toàn cho làn da của người sử dụng nếu giặt bằng tay.HDSD:- Giặt tay: 15ml cho 5 - 7 chiếc quần áo- Giặt máy: 45ml cho 1 lần giặt thông thường (15 - 20 chiếc quần áo)
2. Nước xả vải Downy Hương nước hoa huyền bí với hương thơm bung tỏa dài lâu - cho cả gia đình bạn cùng tận hưởng sự mềm mại và thơm mát trên quần áo suốt cả ngày dài. Công thức chứa các phân tử hương li ti bám sâu vào từng sợi vải - khử đi những mùi khó chịu trên quần áo - xua tan mùi ẩm mốc vào những ngày mưa.


Đặc điểm: - Downy Hương nước hoa huyền bí có khả năng lưu giữ mùi hương lâu hơn trên trang phục và trong từng cử động.- Bí mật của công nghệ chuyển hương nằm ở các hạt nước hoa siêu nhỏ với đặc tính linh hoạt trước những di chuyển tự nhiên của con người.- Khi được chà nhẹ - các hạt siêu nhỏ chứa nước hoa sẽ quyện vào nhau và tỏa ra mùi hương đầy lý thú.- Đặc biệt - mỗi lần chạm nhẹ - bạn sẽ được cảm nhận một mùi hương hoàn toàn khác nhau tùy theo nồng độ của các loại hạt tại vị trí ma sát.HDSD:- Không đổ trực tiếp lên quần áo- Đối với giặt tay: Dùng 1/2 nắp Downy cho 15-20 chiếc quần áo - ngâm trong vài phút - vắt và phơi khô- Đối với giặt máy:  Dùng 1/2 nắp Downy cho nửa thùng giặt (khoảng 35L) hoặc 1 nắp rưỡi cho đầy thùng giặt (khoảng 52L); sau khi máy hoàn tất công đoạn xả - vắt và sấy khô như thường lệ- Để tốt cho jeans - chăn - khă nên dùng 1 nắp đầyTHÔNG TIN THƯƠNG HIỆUP&G sở hữu một trong những danh mục sản phẩm đa dạng và chất lượng nhất. Trong số 50 nhãn hiệu hàng tiêu dùng và chăm sóc sức khỏe hàng đầu của P&G - 25 nhãn hiệu được xếp vào danh mục “Thương hiệu tỉ dollar” với mức doanh thu hằng năm đạt trên 1 tỉ dollar Mỹ. Với mong muốn mang lại cuộc sống tốt đẹp hơn cho người tiêu dùng Việt Nam - P&G đã mang đến các thương hiệu hàng đầu vào thị trường Việt Nam như : Ariel - Tide - Downy - Pampers - Head & Shoulders - Pantene - Rejoice - Olay - Gillette - Oral – B - Safeguard - Whispers - Ambi Pur "', N'1', N'2', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (1, N'N''Combo 2 Nước Xả Vải Downy Expert Thể Thao Dạng Túi 2.4L''', N'combo-2-nưoc-xa-vai-downy-expert-the-thao-dang-tui-2.4l', N'309000', N'3', N'bf8344bf6abae3990ff4033beaa711a8.jpg', N'1001', N'2', N'29', N'"
Nước Xả Vải Downy Expert Thể Thao là dòng làm mềm vải mới của Downy - kết hợp công nghệ mới được thiết kế để loại bỏ mùi không mong muốn trên quần áo. Đây là dòng sản phẩm đầu tiên có công nghệ chống mồ hôi lên đến 24 giờ - tăng cường sự tự tin với hương thơm lâu dài cho mọi người trong gia đình.
TÍNH NĂNG NỔI BẬT- Với khả năng chống mùi tối ưu và kéo dài 24 giờ - Downy Expert hoạt động thông qua ma sát trên quần áo - giúp giữ quần áo thơm mát suốt cả ngày.- Ngoài ra - Downy Sport còn bao gồm các tính năng như ngăn mùi hôi từ quần áo ướt đẫm mồ hôi. - Loại bỏ mùi mốc từ quần áo - lưu giữ hương thơm tươi mát - lâu phai với hương nước hoa. - Ngăn chặn sự phát triển của mùi ẩm mốc cả ngày dài.

HƯỚNG DẪN SỬ DỤNG- Không đổ trực tiếp lên quần áo- Đối với giặt tay: Dùng 1/2 nắp Downy cho 15-20 chiếc quần áo - ngâm trong vài phút - vắt và phơi khô- Đối với giặt máy: Dùng 1/2 nắp Downy cho nửa thùng giặt (khoảng 35L) hoặc 1 nắp rưỡi cho đầy thùng giặt (khoảng 52L); sau khi máy hoàn tất công đoạn xả - vắt và sấy khô như thường lệ- Để tốt cho jeans - chăn - khă nên dùng 1 nắp đầyHƯỚNG DẪN BẢO QUẢN- Sau mỗi lần sử dụng - bạn hãy đóng chặt nắp lại- Không nên để tiếp xúc với ánh nắng mặt trời và nhiệt độ cao trong thời gian dài- Để xa tầm tay trẻ emTHÔNG TIN THƯƠNG HIỆUDowny là nhãn hàng thuộc tập đa quốc gia P&G nổi tiếng. P&G được biết đến là một tập đoàn luôn đi đầu trong việc đổi mới công nghệ để liên tục đem đến nhiều lợi ích cho người tiêu dùng. Nhãn hàng nước xả vải Downy của P&G đã nghiên cứu thành công Công Nghệ Chuyển Hương độc đáo giúp phái đẹp thỏa mong muốn được thêm phần “cuốn hút” người đối diện với chính mùi hương quyến rũ của mình chỉ sau những cái chạm tay chà nhẹ lên quần áo. "', N'1', N'2', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (2, N'N''Combo 2 Túi Nước Giặt Omo Dịu Nhẹ (2.4kg / Túi)''', N'combo-2-tui-nưoc-giat-omo-diu-nhe-(2.4kg-/-tui)', N'259000', N'2', N'2fd72cd14d2ec98c59b4137faafc5e7c.jpg', N'25', N'3', N'6', N'"
Combo 2 Túi Nước Giặt Omo Dịu Nhẹ (2.4 kg/túi) - Nước giặt có công thức dịu nhẹ với làn da - bạn không cần phải vò tay trước mà quần áo vẫn được làm sạch nhanh chóng trong môi trường giặt máy. Sản phẩm với sức mạnh đánh bật hoàn toàn vết bẩn ngay trong lồng giặt. Sản phẩm được thiết kế phù hợp nhất cho giặt máy - giúp quần áo luôn sạch sẽ - thơm tho.

Sản phẩm có thành phần an toàn cho làn da - kể cả làn da nhạy cảm.
Sản phẩm được thiết kế cho dòng  cửa trên - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Nước giặt tạo ít bọt - không gây trào bọt trong lúc giặt và bảo vệ máy giặt cùng quần áo của bạn tốt hơn.
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
Nước Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn.
Công thức cân bằng pH - dịu nhẹ cho da.
Hương phấn thơm dịu nhẹ với hương thơm từ comfort cho da nhạy cảm.
 "', N'1', N'2', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (3, N'N''Nước Giặt Máy Bền Đẹp Cửa Trên OMO Túi 2.4kg''', N'nưoc-giat-may-ben-dep-cua-tren-omo-tui-2.4kg', N'109000', N'22', N'07f59defa647dfde4601d7301034879d.jpg', N'25', N'3', N'6', N'"
Nước Giặt Máy Bền Đẹp Cửa Trên OMO Túi 2.4kg có công thức được thiết kế chuyên biệt - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt. OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng.
Thông tin sản phẩm
Công thức làm sạch vết bẩn độc đáo
Sản phẩm nước giặt OMO được THIẾT KẾ PHÙ HỢP NHẤT cho GIẶT MÁY và có công thức ít bọt để bảo vệ máy giặt của gia đình bạn giúp quần áo luôn sạch và thơm
Đột phá từ các hoạt chất loại bỏ vết bẩn - giúp không cần ngâm hay vò lâu. Kết hợp 3 lợi ích vượt trội: làm trắng - làm sáng & xoáy bay hoàn toàn vết bẩn
Hương thơm bung tỏa theo từng cử động
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
An toàn - thân thiện với môi trường
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm của tập đoàn Unilever được kiểm nghiệm và khuyên dùng bởi 11 hãng máy giặt hàng đầu thế giới như Sanyo - Toshiba - LG - Panasonic - Haier - Sharp - Bosch - Electrolux - Fagor 
Hướng dẫn sử dụng
- Đổ nước giặt OMO vào nắp với liều lượng theo hướng dẫn.
- Thoa một lượng nhỏ nước giặt trực tiếp lên vết bẩn.
- Đổ phần nước giặt còn lại trong nắp vào máy giặt cùng với quần áo.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng
 
  "', N'2', N'3', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (4, N'N''Xà phòng thanh giặt cổ áo nội địa Nhật Bản''', N'xa-phong-thanh-giat-co-ao-nội-dia-nhat-ban', N'29500', N'64', N'a212e7ae18c54d119becd1861e1064e6.jpg', N'23', N'4', N'6', N'"

Trọng lượng: 100g
Công dụng: Sản phẩm giúp dễ dàng loại bỏ các vết bẩn hiệu quả - đặc biệt là vùng cánh tay và cổ áo…
Hướng dẫn sử dụng: chỉ cần thấm ướt quần áo - chà nhẹ sản phẩm lên những chỗ có vết bẩn và ngâm - rồi giặt (giặt tay hay giặt máy đều được).
Nhập khẩu trực tiếp từ Nhật. Sản xuất tại Nhật
 "', N'3', N'4', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (5, N'N''Diệt kiến dạng Gel Bayer Maxforce Quantum 03% (12g)''', N'diet-kien-dang-gel-bayer-maxforce-quantum-03%-(12g)', N'135000', N'16', N'54ac37ca7fbafb1a1a5d2ba62c6fb752.jpg', N'25', N'5', N'17', N'"
Gel Diệt Kiến Bayer Maxforce Quantum 03% (12g)

An toàn cho người sử dụng: Không mùi - không gây phản ứng phụ cho người và vật nuôi trong nhà.
Hiệu ứng Domino tiêu diệt cả tổ kiến.
Hiệu quả trên nhiều loại kiến.
Thân thiện - sử dụng linh hoạt.
Công thức dạng gel - không cần phun xịt.
 "', N'4', N'5', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (6, N'N''Set 12 hộp diệt gián tận gốc hiệu quả ngay tức thì - Nội địa Nhật Bản''', N'set-12-hộp-diet-gian-tan-goc-hieu-qua-ngay-tức-thi--nội-dia-nhat-ban', N'148999', N'42', N'0c1c4d55aa28473c7816395be411bf7d.jpg', N'1', N'4', N'6', N'"
Gián là loài côn trùng gây khó chịu - khó diệt bằng các biện pháp cơ học hay đập bằng vỉ. Góc bếp - tủ quần áo - phòng làm việc... rất nhiều nơi trong gia đình dễ dàng là nơi trú ẩn cho gián - gây mùi hôi khó chịu và mất vệ sinh - hư hỏng đồ.

Thuốc diệt gián Black Cap Nhật - hộp 12 viên sẽ đuổi sạch các loại gián ra khỏi gia đình bạn mà không gây hại cho con người - vật nuôi giống như khi dùng thuốc xịt - hay các biện pháp truyền thống. Là sản phẩm hữu ích và rất cần thiết cho mỗi gia đình. Sản phẩm diệt tận gốc lũ gián trong nhà bạn bằng cơ chế tỏa mùi hương dễ chịu thu hút gián đến ăn - gián chưa chết ngay mà về gây bệnh cho cả tổ - diệt sạch tận gốc - diệt cả ấu trùng con - thậm chí ngay cả trứng gián cũng sẽ bị tiêu diệt. Hiệu quả cao - với 12 viên bạn có thể sử dụng ở 12 điểm khác nhau trong nhà bạn tại các vị trí xuất hiện nhiều gián như: góc tủ bếp - bạn có thể đặt tại các đường ống cống thoát nước - góc tủ bếp - gầm tủ lạnh - góc tủ quần áo... bất cứ nơi nào có gián đi qua. Nếu bạn duy trì thay viên diệt gián này 6 tháng 1 lần thì gián sẽ không bao giờ đến làm phiền bạn.

Đặc điểm của sản phẩm: - Hiệu quả nhanh chóng nhờ hợp chất Fipronil sẽ cho tác dụng diệt ngay lập tức với những con gián ăn phải. - Diệt gián tận gốc ngay cả với những loại gián đã kháng thuốc thông thường. - Thiết kế hộp đựng thông minh vừa dễ dàng đặt vào mọi ngóc ngách - vừa bảo vệ được thuốc gián tránh xa tầm với của trẻ nhỏ. - Thời gian sử dụng lâu dài - duy trì hiệu quả diệt gián đến 6 tháng. Công dụng : 1. Đuổi gián siêu tốc bằng chất Fipronil ngay từ khi đặt viên đuổi gián 2. Có tác dụng với cả trứng gián lẫn gián to. Đuổi diệt được tất cả các loại gián. 3. Đuổi diệt được cả gián ăn trực tiếp hạt - gián ăn phải phân gián hay gián đã chết có ăn thuốc. 4. Diệt hết tất cả các loại gián đã kháng thuốc thông thường Hộp đuổi gián thu hút gián tới ăn - Gián sẽ tha về tổ khiến cho cả đàn bị tiêu diệt.Gián sẽ biến mất hoàn toàn khỏi nhà bạn chỉ sau 2 – 5 ngày sử dụng. Hướng dẫn sử dụng: B1. Bóc lớp gói thiếc bọc sản phẩm và tách dời từng viên 1 ra B2. Đặt viên diệt gián đã tách ra ở những nơi gián thường hay qua lại như: gầm bếp - gầm trạn bát - tủ quần áo - máy giặt -… gián sau khi ăn thuốc và bị bệnh - đi về tổ và lây bệnh cho cả đàn. Chúng sẽ chết dần dần cả tổ chứ không chỉ chết một vài con. Liều lượng đặt: - Đối với viên diệt gián 12 viên: Đặt 4 viên/ diện tích 10m². - Ở những nơi gián sinh sôi nhiều nên đặt 2 viên/ 5m² quanh khu vực bạn không muốn gián lại gần. Lưu ý: - Bảo quản ở nơi thoáng mát - tránh ánh sáng trực tiếp. - Nếu bạn ăn nhầm - vui lòng tìm kiếm sự chăm sóc y tế. - Nên rửa tay kỹ bằng xà phòng và nước nếu tay tiếp xúc với thuốc - Tránh đặt thuốc dưới trời mưa - nơi có độ ẩm cao. - Tránh đặt ở những nơi lưu trữ - thực phẩm - đồ ăn - tránh nhầm lẫn với đồ ăn. "', N'5', N'6', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (7, N'N''Lốc 9 Cuộn Giấy Vệ Sinh Cao Cấp Bless You L''amour 3 Lớp''', N'loc-9-cuộn-giay-ve-sinh-cao-cap-bless-you-l''amour-3-lop', N'89000', N'9', N'897cb5ec889afeda13d54c7b074755b0.jpg', N'25', N'6', N'6', N'"
Lốc 9 Cuộn Giấy Vệ Sinh Cao Cấp Sài Gòn Bless You  Lamour 3 Lớp được nhiều người tiêu dùng lựa chọn bởi những ưu điểm vượt trội. Giấy được làm từ chất liệu bột giấy cao cấp - có thiết kế 3 lớp đặc biệt - bề mặt giấy mềm mại nhưng vẫn giữ được độ dai cần thiết - khả năng thấm hút nước tốt. Sản phẩm dễ phân hủy - thân thiện với môi trường - được thiết kế dạng cuộn tiện dụng - dùng cho các việc vệ sinh hàng ngày trong gia đình.

Sài Gòn Bless You Hold Me được làm từ bột giấy nguyên chất 100% - kết hợp với dây chuyền sản xuất khép kín đạt tiêu chuẩn an toàn tại Việt Nam
Bề mặt giấy mịn màng - có độ dai hoàn hảo - khả năng thấm hút nước tuyệt vời - mang đến cho bạn sự hài lòng và cảm giác thoải  mái khi sử dụng.
Giấy được thiết kế 3 lớp - dày dặn - có thể sử dụng cho nhiều mục đích khác nhau
Sản phẩm đặc biệt thân thiện với môi trường - dễ phân hủy.
 "', N'1', N'7', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (8, N'N''Nước diệt kiến sạch kiến sau hai giờ - Hantox 50ml''', N'nưoc-diet-kien-sach-kien-sau-hai-gio--hantox-50ml', N'45000', N'35', N'e31a668b4ec10e6c411fe8c3c1f21e4f.jpg', N'1002', N'7', N'6', N'"
Nước Diệt Kiến Trong 1 Ngày Sạch Kiến Không Quay Lại Hanvet là hóa chất diệt côn trùng đạt tiêu chuẩn của Tổ Chức Y Tế Thế Giới (WHO).

An toàn cho người sử dụng: Không mùi - không gây phản ứng phụ cho người và vật nuôi trong nhà - chính vì lợi điểm đó nên được áp dụng phun ULV cả trong và ngoài nhà - trong khi đó các hóa chất cùng gốc Deltamethrin chỉ áp dụng phun ULV ngoài nhà.
Sử dụng tiện lợi cho các hộ gia đình - dùng để phun tồn lưu để diệt muỗi - ruồi - kiến - gián - bọ chét và côn trùng có cánh khác..

Công dụng:

Diệt muỗi - ruồi - kiến - gián - bọ chét trong gia dụng và y tế.
Phòng chống dịch sốt xuất huyết - sốt rét - dịch tiêu chảy cấp - dịch hạch trong cộng đồng.

Cách dùng:

Diệt muỗi - kiến - gián: Cứ 5ml pha với 0 -5 lít nước - phun 10 m2 bề mặt - tường - vách - cống rãnh - phun kỹ các khe kẽ nơi côn trùng hay trú đậu.
Diệt ruồi: Cứ 5 ml pha với 0 -5 lít nước phun 5 m2 bề mặt - bãi rác - nhà tiêu - các nơi ruồi cư trú. Hiệu lực kéo dài 6-8 tuần sau 1 lần phun.
Diệt bọ chét: Cứ 5ml pha với 2 lít nước - phun kỹ bề mặt hốc kẽ nơi bọ chét trú ẩn và qua lại. Phun 2 lần - mỗi lần cách nhau 10 ngày.
 "', N'2', N'8', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (9, N'N''Nước Giặt Máy Bền Đẹp Cửa Trước OMO 4.2kg - 21122578 ''', N'nưoc-giat-may-ben-dep-cua-trưoc-omo-4.2kg--21122578-', N'210000', N'22', N'68a253a747e2c5e00e7fdf6c28fd34ab.jpg', N'25', N'3', N'6', N'"
Nước Giặt Máy Bền Đẹp Cửa Trước OMO 4.2kg - 21122578 với công nghệ giặt sạch nhanh giúp đánh bật nhiều loại vết bẩn khô cứng nhanh hơn chỉ trong 1 lần giặt. Sản phẩm dành cho máy giặt cửa trước - tạo ít bọt bảo vệ máy và giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.

Sản phẩm được thiết kế cho dòng máy giặt cửa trước - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm có thiết kế chai lớn 4.2 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.

Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng





 "', N'3', N'9', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (10, N'N''Thuốc viên diệt gián nội địa Nhật Bản''', N'thuoc-vien-diet-gian-nội-dia-nhat-ban', N'142927', N'56', N'a03fbd2517232658892e81873e95c5fb.jpg', N'23', N'4', N'6', N'"
-Đuổi gián siêu tốc bằng chất Fipronil ngay từ khi đặt viên đuổi gián.
-Có tác dụng với cả trứng gián lẫn gián to. Đuổi diệt được tất cả các loại gián.
-Đuổi diệt được cả gián ăn trực tiếp hạt - gián ăn phải phân gián hay gián đã chết có ăn thuốc. Đuổi diệt dán tận gốc.
Mỗi viên diệt gián Nhật Bản được bao bọc bởi hộp nhựa cứng chỉ có gián chui lọt vào lấy thức ăn. An toàn tuyệt đối vs trẻ con và thú cưng. Loại 12 viên diệt dc nhiều loại gián to và nhỏ.
Đặc tính sản phẩm: Trọng lượng 24g x 12 viên
Kích thước 211 * 31 * 151 (mm)
Lưu ý: Để xa tầm tay trẻ em. "', N'4', N'10', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (11, N'N''Nước tẩy vệ sinh lồng máy giặt Rocket nội địa Nhật Bản''', N'nưoc-tay-ve-sinh-long-may-giat-rocket-nội-dia-nhat-ban', N'40000', N'49', N'69685e1bfc6207c96ff1f04842aef333.jpg', N'23', N'4', N'6', N'"
Công dụng
Sản phẩm sử dụng cho cả máy giặt lồng đứng (cửa trên) và lồng ngang (cửa dưới) tiện lợi.
Giúp tiêu diệt toàn bộ nấm mốc và vi khuẩn bên trong máy giặt - đánh tan mảng bám canxi nơi lồng giặt - giúp quần áo sau khi giặt thơm tho hơn.
Ngoài ra - sản phẩm cũng giúp đánh bay mùi hôi khó chịu bên trong lồng máy giặt.
Hướng dẫn sử dụng
Đối với máy giặt cửa trên:+ Chọn chế độ giặt với mức nước cao nhất+ Ngâm trong 30 phút đóng nắp+ Chọn chế độ giặt Standard (Giặt → Giũ → Làm khô)
Đối với máy giặt cửa dưới:+ Sau khi bật máy - cho dung dịch tẩy rửa vào lồng giặt+ Chọn chế độ giặt Standard (Giặt → Giũ → Làm khô)
Chú ý+ Không dùng với nước nóng.+ Đối với máy dưới 4kg thì nên dùng 1/2 chai. Máy 4-9kg thì nên dùng cả chai.+ Nên dùng sản phẩm này để tẩy rửa lồng máy giặt cứ 1-2 tháng 1 lần để giữ cho máy giặt luôn sạch sẽ - thơm tho và nâng cao tuổi thọ cho máyXuất xứ: Rocket Soap (Nhật bản)Dung tích: 550ml "', N'5', N'11', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (12, N'N''Nước Giặt OMO Matic Comfort Tinh Dầu Thơm 21122479 (2.4kg)''', N'nưoc-giat-omo-matic-comfort-tinh-dau-thơm-21122479-(2.4kg)', N'110000', N'21', N'eaf33b2ab8935df375d488fe2ab6da17.jpg', N'25', N'3', N'6', N'"
Nước Giặt OMO Comfort Tinh Dầu Thơm giúp xoáy tan vết bẩn cứng đầu hiệu quả trong lồng giặt với công nghệ tiên tiến - tăng cường thêm sức mạnh gấp 3 lần - mang lại 3 hiệu quả vượt trội: làm trắng - làm sáng và xoáy bay hoàn toàn vết bẩn. Hương thơm của Comfort giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.
Thông tin sản phẩm
Công thức làm sạch vết bẩn độc đáo
Bột Giặt OMO Hương Comfort ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Hương thơm comfort dịu nhẹ
OMO Comfort Mới kết hợp sức mạnh đánh bật vết bẩn của OMO cải tiến và hương thơm quyến rũ của Comfort sẽ giúp quần áo thơm mát dài lâu. Bạn sẽ yêu ngay mùi hương cải tiến mới của OMO Comfort
An toàn - thân thiện với môi trường
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm của tập đoàn Unilever được kiểm nghiệm và khuyên dùng bởi 11 hãng máy giặt hàng đầu thế giới như Sanyo - Toshiba - LG - Panasonic - Haier - Sharp - Bosch - Electrolux - Fagor 
Hướng dẫn sử dụng
- Đổ nước giặt OMO vào nắp với liều lượng theo hướng dẫn.
- Thoa một lượng nhỏ nước giặt trực tiếp lên vết bẩn.
- Đổ phần nước giặt còn lại trong nắp vào máy giặt cùng với quần áo.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'6', N'12', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (13, N'N''Nước Giặt  OMO Comfort Tinh Dầu Thơm 21122480 (3.8kg)  ''', N'nưoc-giat--omo-comfort-tinh-dau-thơm-21122480-(3.8kg)--', N'191000', N'20', N'8906f979723c498666802292db7a195e.jpg', N'25', N'3', N'6', N'"
Nước Giặt  OMO Comfort Tinh Dầu Thơm (3 -8kg) - 21122480 với công nghệ đột phá - có tác dụng xoáy bay những vết bẩn cứng đầu nhất - đồng thời không để lại cặn bột giặt như các loại bột thông thường khác - giúp cho quần áo luôn trắng sạch - thơm ngát như mới. Hương thơm của Comfort giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.

Bột Giặt OMO Hương Comfort ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt.
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng.
OMO Comfort Mới kết hợp sức mạnh đánh bật vết bẩn của OMO cài tiến và hương thơm quyến rũ của Comfort sẽ giúp quần áo thơm mát dài lâu. Bạn sẽ yêu ngay mùi hương cải tiến mới của OMO Comfort.
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn.
Sản phẩm có thiết kế chai lớn 3.8 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.

Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'7', N'13', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (14, N'N''Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen (400g)''', N'bột-tay-ve-sinh-long-may-giat-homes-queen-(400g)', N'41000', N'18', N'6e80377ea27789e57bbbc6a98a9cb3f5.jpg', N'25', N'8', N'4', N'"


Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen (400g) tự động làm sạch máy giặt từ sâu bên trong - những vị trí khó nhìn thấy và khó vệ sinh nhất - tẩy sạch chất cặn bã từ quần áo tích tụ lâu ngày trong máy giặt - tiết kiệm thời gian - công sức khi vệ sinh máy giặt.
Khử mùi - khử vi khuẩn - nấm mốc gây ra các bệnh hô hấp - dị ứng
Bảo dưỡng - làm thông thoáng máy giặt - hạn chế tình trạng tắc nghẽn - tăng tuổi thọ cho máy giặt
Bột tẩy lồng máy giặt Homes Queen được sản xuất từ công ty Hàn Quốc với công nghệ tiên tiến và hơn 30 năm kinh nghiệm sản xuất các sản phẩm tẩy rửa đồ dùng nhà cửa - không cần tháo lắp máy giặt vẫn có thể vệ sinh máy sạch sẽ.
Sản phẩm được chứng nhận an toàn với người sử dụng và môi trường - dùng được cho cả máy giặt lồng ngang - lồng đứng
 

 "', N'8', N'14', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (15, N'N''Nước Giặt  OMO Cho Máy Giặt Cửa Trên (4.2kg) - 21122477''', N'nưoc-giat--omo-cho-may-giat-cua-tren-(4.2kg)--21122477', N'191000', N'20', N'a9ac639943b1a9c2977ebd67e53cac04.jpg', N'25', N'3', N'6', N'"
Nước Giặt  OMO Cho Máy Giặt Cửa Trên (4.2kg) - 21122477 có công thức dành cho máy giặt - tạo ít bọt giúp bảo vệ tốt nhất cho máy giặt và quần áo của bạn. Sản phẩm đánh tan mọi vết bẩn cứng đầu trong lồng giặt. Hương thơm nhẹ nhàng giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.

Sản phẩm được thiết kế cho dòng máy giặt cửa trên - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Nước giặt tạo ít bọt - không gây trào bọt trong lúc giặt và bảo vệ máy giặt cùng quần áo của bạn tốt hơn.
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm có thiết kế chai lớn 4.2 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.

Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng








 "', N'9', N'15', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (16, N'N''Lốc 4 Hộp Khăn Giấy Bless You Tết 2019 - Tặng 1 Hộp Cùng Loại''', N'loc-4-hộp-khan-giay-bless-you-tet-2019--tang-1-hộp-cung-loai', N'75000', N'6', N'ddd82cdfd78ee772f36236b48fb2e283.jpg', N'25', N'6', N'6', N'"




Giấy Lụa Hộp - Bless You Selection 2019 được sản xuất từ 100% bột giấy tự nhiên - kết hợp dây chuyền khép kín với công nghệ mới - cho ra loại giấy chất lượng cao - đảm bảo an toàn vệ sinh và an toàn cho sức khỏe người tiêu dùng. Giấy có đặc tính dai - mềm - mỏng nhưng không dễ rách - rất dễ phân hủy - hạn chế gây ô nhiễm môi trường.
Giấy được làm từ chất liệu bột giấy 100% thiên nhiên - không chứa chất tẩy độc hại - đảm bảo chất lượng - không gây kích ứng da và dùng được cho cả trẻ em
Ngoài ra - sự kết hợp hoàn hảo về độ dai và bề mặt mềm mại của sản phẩm còn mang đến cho bạn loại giấy chất lượng để sử dụng hàng ngày.
Tùy nhu cầu sử dụng - có thể sử dụng vào nhiều mục đích khác nhau.
 "', N'10', N'16', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (17, N'N''Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Chanh Sả Chai 475ml''', N'gel-tay-rua-bon-cau-va-nha-tam-vim-trang-sang-hương-chanh-sa-chai-475ml', N'23000', N'8', N'6e85699878e93345cab01a1f60ec460e.jpg', N'25', N'9', N'6', N'"




Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Chanh Sả Chai 475ml dịu mát giúp tẩy rửa bồn cầu và nhà tắm - diệt sạch vi khuẩn gây bệnh - cho bồn cầu và phòng tắm trắng sáng và lưu lại hương thơm dịu mát - sạch sẽ.Với công thức diệt 99 -99% vi khuẩn được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - Vim là sản phẩm tẩy rửa có công thức đậm đặc giúp diệt sạch vi khuẩn gây bệnh - và có khả năng tấn công hoá học vào protein của tế bào vi khuẩn - phá huỷ tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus.Sản phẩm an toàn cho sức khoẻ của người sử dụng - không gây hư hại bồn cầu.Đặc biệt - với công thức đổi màu igups tăng khả năng quan sát trực quan khi tẩy rửa - cho bạn thấy kết quả ngay khi sử dụng. Với hương chanh sả với chiết suất từ thiên nhiên cho bồn cầu và nhà tắm thơm mát dễ chịu. "', N'11', N'17', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (18, N'N''Nước giặt ZEINO tím 3.5kg''', N'nưoc-giat-zeino-tim-3.5kg', N'80000', N'45', N'fe28f1559d8f3fa6e624b26a3b3bb9c7.jpg', N'1003', N'10', N'6', N'"
ZEINO nước giặt tiên tiến can tím 3.5kg.
Hương sữa tắm cá ngựa - thơm mát gấp nhiều lần
Nước giặt ZEINO thấm sâu vào từng sợi vải - vừa giặt sạch dễ dàng vừa lưu lại hương thơm như sữa tắm.
Dùng được cho cả giặt tay và giặt máy (cửa trên và cửa ngang)
Dịu nhẹ - an toàn với da tay "', N'12', N'18', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (19, N'N''Giấy Vệ Sinh Lency (15 Cuộn)''', N'giay-ve-sinh-lency-(15-cuộn)', N'86501', N'9', N'1a1e4de0499c5fd63cc77c7c0373be9c.png', N'19', N'11', N'6', N'"
Giấy Vệ Sinh Lency (15 Cuộn) được sản xuất với dây chuyền sản xuất khép kín và hiện đại đạt tiêu chuẩn an toàn tại Việt Nam. Giấy vệ sinh Lency cao cấp có độ dai - mềm mịn - trắng và khả năng thấm hút nước cao đem đến cho người dùng sự thoải mái - dễ chịu khi tiếp xúc với làn da. 
Giấy vệ sinh Lency cao cấp được sử dụng được với nhiều mục đích khác nhau. Với thiết kế dạng cuộn có lõi giúp bạn dễ dàng cài vào móc đựng giấy vệ sinh - mang lại sự tiện lợi khi sử dụng. 
 "', N'13', N'19', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (20, N'N''Nước Tẩy Bồn Cầu Vim Diệt Khuẩn 500ml - Xanh Biển''', N'nưoc-tay-bon-cau-vim-diet-khuan-500ml--xanh-bien', N'21000', N'5', N'dabf9450a8e89ed2bb21a7a8f81bf22b.jpg', N'25', N'9', N'6', N'"
Nước Tẩy Bồn Cầu Vim Diệt Khuẩn 500ml - Xanh Biển
Nước Tẩy Bồn Cầu Vim Diệt Khuẩn 500ml - Xanh Biển có hương thơm nhẹ nhàng - tươi mát - cùng công thức diệt khuẩn Sodium Hypochlorite được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur - Vim giúp bạn tiêu diệt vi khuẩn gây bệnh đồng thời tẩy sạch vết bẩn mà không làm ăn mòn các bề mặt gạch hay bồn cầu

Thông tin sản phẩm
Công thức tẩy sạch mảng bám
Với công thức diệt khuẩn Sodium Hypochlorite được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - VIM là sản phẩm tẩy rửa có khả năng:
- Diệt sạch vi khuẩn gây bệnh
- VIM chứa Sodium Hypochlorite có khả năng tấn công hóa học vào protein của tế bào vi khuẩn - phá hủy tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus (siêu vi)
An toàn - không gây hư hại bồn cầu
Sản phẩm có khả năng tẩy sạch các vết ban hữu cơ trong bồn cầu mà không làm mất độ bóng của gạch men. Công thức của VIM không chứa acid như các sản phẩm tẩy rửa thông thường khác nên không ăn mòn các bề mặt gạch hay bồn cầu
Thiết kế dạng chai tiện dụng
Nước Tẩy Bồn Cầu Vim Diệt Khuẩn có thiết kế dạng chai tiện lợi - dễ sử dụng - giúp phân tán chất lỏng đến tất cả mọi bề mặt - mọi vị trí mong muốn - cho hiệu quả vệ sinh cao hơn.
Hương thơm tươi mát
Sản phẩm có mùi hương nhẹ nhàng - tươi mát - để lại hương thơm dễ chịu và tạo cảm giác sạch thoáng cho toilet nhà bạn.
Hướng dẫn sử dụng
Xịt Vim trực tiếp dưới vùng bồn cầu - đậy nắp
Sau khoảng 10 phút - dùng bàn chải chà nhẹ và xả nước
Hòa 2 nắp sản phẩm vào 1/2 xô nước (2.5L)
Dùng để tẩy rửa sàn và nhiều bề mặt khác nhau
Hướng dẫn diệt khuẩn với dung dịch đậm đặc
Rãnh thoát nước trong nhà tắm/nhà bếp: xịt trực tiếp lên rãnh thoát nước để tẩy sạch và loại bỏ mùi hôi rồi xả nước
Bồn rửa: Xịt vào lỗ thoát thước - để 5 phút và sau đó xả nước
Lưu ý
Mang bao tay và khẩu trang khi sử dụng sản phẩm
Tránh tiếp xúc với mắt và da vì có thể gây kích ứng
Nếu sản phẩm dính lên da - rửa sạch ngay bằng nhiều nước
Nếu dính vào mắt - rửa sạch ngay với nhiều nước và đến kiểm tra tại cơ sở y tế
Nếu nuốt phải - đến ngay sơ sở y tế và mang theo chai hoặc nhãn mác "', N'1', N'20', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (21, N'N''Nước Lau Kính Cif (520ml)''', N'nưoc-lau-kinh-cif-(520ml)', N'24000', N'8', N'af8368ede480990d544c6c07960d658a.jpg', N'25', N'12', N'6', N'"
Nước Lau Kính Cif là sản phẩm tiện ích giúp làm sáng bóng bề mặt làm bằng kính và các vật  dụng khác. Công thức đậm đặc và hoạt chất tẩy rửa tiên tiến sẽ giúp bạn lau  sạch bóng mặt kính với hiệu quả cực mạnh. Sản phẩm thích hợp sử dụng  cho các loại  cửa kính - gương soi - màn hình TV - các bề mặt làm bằng crôm -  inox…
Thông tin sản phẩm
Công thức đậm đặc với hiệu quả làm sạch nhanh chóng
Công thức đậm đặc và hoạt chất tẩy rửa tiên tiến cho hiệu quả làm sạch  kính cực mạnh khi sử dụng - ngay cả những vết khó lau chùi như dầu mỡ -  mảng bám.
Ngăn đọng hơi nước tốt và không để lại vết ố lên kính.
Duy trì độ sáng bóng - giúp mặt kính sạch bong như mới - đồng thời chống bám bụi trở lại.
Hiệu quả trên các bề mặt kính
Sản phẩm thích hợp sử dụng cho các loại kính như kính trong - kính mờ -  gương soi và đồ dùng pha lê - bề mặt formica - đồ inox. Những thành phần  hóa học trong sản phẩm sẽ nhanh chóng giúp loại sạch mọi bụi bẩn để trả  lại một bề mặt kính sáng bóng - tô điểm cho ngôi nhà của bạn thêm sang  trọng.
An toàn - không độc hại
Sản phẩm không tồn đọng chất gây hại - an toàn cho sức khỏe người sử dụng.
Hương thơm nhẹ nhàng - tươi mát
Nước Lau Kính Cif có mùi hương tự nhiên thơm mát - mang đến cho bạn cảm giác thoải mái - dễ chịu.
Hướng dẫn sử dụng
Vặn nút chai qua ON.
Phun Cif lên bề mặt cần làm sạch rồi lau lại bằng khăn ẩm. Sau khi sử dụng vặn nút chai về OFF.
Đối với những vết bẩn cứng đầu như dầu mỡ - mảng bám lâu ngày - nên chờ ít phút rồi mới lau sẽ cho kết quả làm sạch cao hơn.
Lưu ý
Tránh để hóa chất vào mắt - để xa tầm tay trẻ em - không được uống.
Để nơi khô thoáng - tránh nơi có nhiệt độ cao.
Tránh nhiệt độ cao và ánh sáng trực tiếp "', N'1', N'21', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (22, N'N''Nước Xả  Vải Comfort Đậm Đặc 1 Lần xả Hương Ban Mai Chai 3.8L ''', N'nưoc-xa--vai-comfort-dam-dac-1-lan-xa-hương-ban-mai-chai-3.8l-', N'185000', N'16', N'2b39108827b8c62fb4f20189d73510d1.jpg', N'25', N'13', N'6', N'"
Nước Xả  Vải Comfort Đậm Đặc 1 Lần xả Hương Ban Mai Chai 3.8L
Nước Xả  Vải Comfort Đậm Đặc 1 Lần xả Hương Ban Mai Chai 3.8L sẽ giúp quần áo của cả gia đình bạn luôn thơm mát cả ngày. Bên cạnh đó - công thức đậm đặc 1 lần xả sẽ giúp bạn tiết kiệm chi phí hơn so với các loại nước vải thông thường khác.
Thông tin sản phẩm
Công thức 1 lần xả
Comfort Một lần xả áp dụng công thức cắt bọt và chống tái bám giúp áo quần hoàn toàn sạch bọt xà phòng chỉ trong 1 lần xả. Với cách này - bạn không chỉ an tâm với áo quần hoàn sạch bọt xà phòng mà còn tiết kiệmthời gian và công sức. Ngoài ra - sử dụng Comfort Một lần xả là bạn đã góp phần giúp tiết kiệm nước - bảo vệ môi trường.
Công thức đậm đặc
Sản phẩm có công thức đậm đặc giúp cho vải không bị khô cứng nhất là đối với quần áo cũ. Công thức đậm đặc sẽ giúp bạn tiết kiệm hơn so với các loại nước xả thông thường khác.
Hương ban mai thanh khiết
Nước Xả Vải Comfort Đậm Đặc Hương Ban Mai chứa tinh dầu thơm 100% tự nhiên được chưng cất từ hoa và thảo mộc cho hương thơm thanh khiết như ánh nắng ban mai - xua tan đi mùi ẩm mốc khó chịu trong những ngày mưa bão.
Lưu hương thơm thật lâu trên quần áo
Công nghệ tỏa hương mới từ Comfort Đậm Đặc giúp áo quần tỏa hương thơm ngát theo từng cử động của bạn suốt cả ngày dài. Chỉ cần một lần xả - áo quần sạch xà phòng và thơm ngát đến bất ngờ.
Thiết kế chai lớn 3.8L
Nước Xả Vải Comfort Đậm Đặc Hương Ban Mai nay có thêm thiết kế chai lớn 3.8L giúp bạn tiết kiệm chi phí và thời gian mua sắm.
Hướng dẫn sử dụng
- Giặt tay: Sau khi giặt với xà phòng - vắt quần áo cho bớt bọt. Hòa nước xả vải vào nước - đảm bảo lượng nước đủ ngập hết quần áo. Ngâm quần áo ít nhất 10 phút. Sau đó vắt và phơi khô - không cần xả thêm với nước.
- Giặt máy: Hòa nước xả vải vào ngay nước xả đầu tiên - không cần xả thêm với nước. "', N'1', N'22', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (23, N'N''Khăn Giấy Thếp Paseo Hoa Lan (220 Tờ x 2 Lớp) - Màu Ngẫu Nhiên''', N'khan-giay-thep-paseo-hoa-lan-(220-to-x-2-lop)--mau-ngau-nhien', N'22000', N'12', N'5fa60b9079c731bd17cfe1160f6c66ec.jpg', N'1001', N'1', N'2', N'"
BỘ SẢN PHẨM BAO GỒM:01 X Nước Giặt Ariel Đậm Đặc Dạng Chai 2.4kg01 X Nước Xả Vải Downy Huyền Bí Dạng Túi 2.4LTHÔNG TIN SẢN PHẨM1. Nước giặt chai Ariel đậm đặc là bột giặt dạng gel đậm đặc giúp Loại sạch vết bẩn tốt hơn gấp 2X chỉ trong 1 bước giặt. sản phẩm thế hệ mới được áp dụng công nghệ cao với khả năng loại sạch vết bẩn vượt trội - chứa nhiều thành phần làm sạch hiệu quả giúp loại bỏ được nhiều vết bẩn cứng đầu như vết bẩn dầu mỡ - vết cà phê


Đặc điểm:- Sản phẩm dạng gel đậm đặc cho khả năng giặt tẩy vượt trội - giúp đánh bật mọi vết bẩn tốt hơn gấp 2 lần chỉ trong 1 bước giặt - quần áo sẽ được trắng sáng - không để lại chất cặn và lưu lại hương thơm tươi mát.- Là sản phẩm phù hợp cả giặt tay và giặt bằng máy - nước giặt Ariel đậm đặc sẽ giúp cho việc giặt giũ của bạn trở nên nhẹ nhàng và hiệu quả hơn - giúp các bà nội trợ tiết kiệm được thời gian và công sức của mình.- An toàn cho làn da của người sử dụng nếu giặt bằng tay.HDSD:- Giặt tay: 15ml cho 5 - 7 chiếc quần áo- Giặt máy: 45ml cho 1 lần giặt thông thường (15 - 20 chiếc quần áo)
2. Nước xả vải Downy Hương nước hoa huyền bí với hương thơm bung tỏa dài lâu - cho cả gia đình bạn cùng tận hưởng sự mềm mại và thơm mát trên quần áo suốt cả ngày dài. Công thức chứa các phân tử hương li ti bám sâu vào từng sợi vải - khử đi những mùi khó chịu trên quần áo - xua tan mùi ẩm mốc vào những ngày mưa.


Đặc điểm: - Downy Hương nước hoa huyền bí có khả năng lưu giữ mùi hương lâu hơn trên trang phục và trong từng cử động.- Bí mật của công nghệ chuyển hương nằm ở các hạt nước hoa siêu nhỏ với đặc tính linh hoạt trước những di chuyển tự nhiên của con người.- Khi được chà nhẹ - các hạt siêu nhỏ chứa nước hoa sẽ quyện vào nhau và tỏa ra mùi hương đầy lý thú.- Đặc biệt - mỗi lần chạm nhẹ - bạn sẽ được cảm nhận một mùi hương hoàn toàn khác nhau tùy theo nồng độ của các loại hạt tại vị trí ma sát.HDSD:- Không đổ trực tiếp lên quần áo- Đối với giặt tay: Dùng 1/2 nắp Downy cho 15-20 chiếc quần áo - ngâm trong vài phút - vắt và phơi khô- Đối với giặt máy:  Dùng 1/2 nắp Downy cho nửa thùng giặt (khoảng 35L) hoặc 1 nắp rưỡi cho đầy thùng giặt (khoảng 52L); sau khi máy hoàn tất công đoạn xả - vắt và sấy khô như thường lệ- Để tốt cho jeans - chăn - khă nên dùng 1 nắp đầyTHÔNG TIN THƯƠNG HIỆUP&G sở hữu một trong những danh mục sản phẩm đa dạng và chất lượng nhất. Trong số 50 nhãn hiệu hàng tiêu dùng và chăm sóc sức khỏe hàng đầu của P&G - 25 nhãn hiệu được xếp vào danh mục “Thương hiệu tỉ dollar” với mức doanh thu hằng năm đạt trên 1 tỉ dollar Mỹ. Với mong muốn mang lại cuộc sống tốt đẹp hơn cho người tiêu dùng Việt Nam - P&G đã mang đến các thương hiệu hàng đầu vào thị trường Việt Nam như : Ariel - Tide - Downy - Pampers - Head & Shoulders - Pantene - Rejoice - Olay - Gillette - Oral – B - Safeguard - Whispers - Ambi Pur "', N'1', N'23', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (24, N'N''Combo Nước Giặt Ariel Đậm Đặc Dạng Túi 2.4kg  + Nước Xả Vải Downy Huyền Bí Dạng Túi 2.4L''', N'combo-nưoc-giat-ariel-dam-dac-dang-tui-2.4kg--+-nưoc-xa-vai-downy-huyen-bi-dang-tui-2.4l', N'288000', N'', N'bf950e5f6b12d9504938bf9dfb1d3165.jpg', N'1001', N'2', N'29', N'"
Nước Xả Vải Downy Expert Thể Thao là dòng làm mềm vải mới của Downy - kết hợp công nghệ mới được thiết kế để loại bỏ mùi không mong muốn trên quần áo. Đây là dòng sản phẩm đầu tiên có công nghệ chống mồ hôi lên đến 24 giờ - tăng cường sự tự tin với hương thơm lâu dài cho mọi người trong gia đình.
TÍNH NĂNG NỔI BẬT- Với khả năng chống mùi tối ưu và kéo dài 24 giờ - Downy Expert hoạt động thông qua ma sát trên quần áo - giúp giữ quần áo thơm mát suốt cả ngày.- Ngoài ra - Downy Sport còn bao gồm các tính năng như ngăn mùi hôi từ quần áo ướt đẫm mồ hôi. - Loại bỏ mùi mốc từ quần áo - lưu giữ hương thơm tươi mát - lâu phai với hương nước hoa. - Ngăn chặn sự phát triển của mùi ẩm mốc cả ngày dài.

HƯỚNG DẪN SỬ DỤNG- Không đổ trực tiếp lên quần áo- Đối với giặt tay: Dùng 1/2 nắp Downy cho 15-20 chiếc quần áo - ngâm trong vài phút - vắt và phơi khô- Đối với giặt máy: Dùng 1/2 nắp Downy cho nửa thùng giặt (khoảng 35L) hoặc 1 nắp rưỡi cho đầy thùng giặt (khoảng 52L); sau khi máy hoàn tất công đoạn xả - vắt và sấy khô như thường lệ- Để tốt cho jeans - chăn - khă nên dùng 1 nắp đầyHƯỚNG DẪN BẢO QUẢN- Sau mỗi lần sử dụng - bạn hãy đóng chặt nắp lại- Không nên để tiếp xúc với ánh nắng mặt trời và nhiệt độ cao trong thời gian dài- Để xa tầm tay trẻ emTHÔNG TIN THƯƠNG HIỆUDowny là nhãn hàng thuộc tập đa quốc gia P&G nổi tiếng. P&G được biết đến là một tập đoàn luôn đi đầu trong việc đổi mới công nghệ để liên tục đem đến nhiều lợi ích cho người tiêu dùng. Nhãn hàng nước xả vải Downy của P&G đã nghiên cứu thành công Công Nghệ Chuyển Hương độc đáo giúp phái đẹp thỏa mong muốn được thêm phần “cuốn hút” người đối diện với chính mùi hương quyến rũ của mình chỉ sau những cái chạm tay chà nhẹ lên quần áo. "', N'1', N'24', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (25, N'N''Combo 2 Nước Xả Vải Downy Expert Thể Thao Dạng Túi 2.4L''', N'combo-2-nưoc-xa-vai-downy-expert-the-thao-dang-tui-2.4l', N'309000', N'3', N'bf8344bf6abae3990ff4033beaa711a8.jpg', N'25', N'3', N'6', N'"
Combo 2 Túi Nước Giặt Omo Dịu Nhẹ (2.4 kg/túi) - Nước giặt có công thức dịu nhẹ với làn da - bạn không cần phải vò tay trước mà quần áo vẫn được làm sạch nhanh chóng trong môi trường giặt máy. Sản phẩm với sức mạnh đánh bật hoàn toàn vết bẩn ngay trong lồng giặt. Sản phẩm được thiết kế phù hợp nhất cho giặt máy - giúp quần áo luôn sạch sẽ - thơm tho.

Sản phẩm có thành phần an toàn cho làn da - kể cả làn da nhạy cảm.
Sản phẩm được thiết kế cho dòng  cửa trên - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Nước giặt tạo ít bọt - không gây trào bọt trong lúc giặt và bảo vệ máy giặt cùng quần áo của bạn tốt hơn.
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
Nước Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn.
Công thức cân bằng pH - dịu nhẹ cho da.
Hương phấn thơm dịu nhẹ với hương thơm từ comfort cho da nhạy cảm.
 "', N'1', N'25', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (26, N'N''Combo 2 Túi Nước Giặt Omo Dịu Nhẹ (2.4kg / Túi)''', N'combo-2-tui-nưoc-giat-omo-diu-nhe-(2.4kg-/-tui)', N'259000', N'2', N'2fd72cd14d2ec98c59b4137faafc5e7c.jpg', N'25', N'3', N'6', N'"
Nước Giặt Máy Bền Đẹp Cửa Trên OMO Túi 2.4kg có công thức được thiết kế chuyên biệt - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt. OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng.
Thông tin sản phẩm
Công thức làm sạch vết bẩn độc đáo
Sản phẩm nước giặt OMO được THIẾT KẾ PHÙ HỢP NHẤT cho GIẶT MÁY và có công thức ít bọt để bảo vệ máy giặt của gia đình bạn giúp quần áo luôn sạch và thơm
Đột phá từ các hoạt chất loại bỏ vết bẩn - giúp không cần ngâm hay vò lâu. Kết hợp 3 lợi ích vượt trội: làm trắng - làm sáng & xoáy bay hoàn toàn vết bẩn
Hương thơm bung tỏa theo từng cử động
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
An toàn - thân thiện với môi trường
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm của tập đoàn Unilever được kiểm nghiệm và khuyên dùng bởi 11 hãng máy giặt hàng đầu thế giới như Sanyo - Toshiba - LG - Panasonic - Haier - Sharp - Bosch - Electrolux - Fagor 
Hướng dẫn sử dụng
- Đổ nước giặt OMO vào nắp với liều lượng theo hướng dẫn.
- Thoa một lượng nhỏ nước giặt trực tiếp lên vết bẩn.
- Đổ phần nước giặt còn lại trong nắp vào máy giặt cùng với quần áo.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng
 
  "', N'1', N'26', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (27, N'N''Nước Giặt Máy Bền Đẹp Cửa Trên OMO Túi 2.4kg''', N'nưoc-giat-may-ben-dep-cua-tren-omo-tui-2.4kg', N'109000', N'22', N'07f59defa647dfde4601d7301034879d.jpg', N'23', N'4', N'6', N'"

Trọng lượng: 100g
Công dụng: Sản phẩm giúp dễ dàng loại bỏ các vết bẩn hiệu quả - đặc biệt là vùng cánh tay và cổ áo…
Hướng dẫn sử dụng: chỉ cần thấm ướt quần áo - chà nhẹ sản phẩm lên những chỗ có vết bẩn và ngâm - rồi giặt (giặt tay hay giặt máy đều được).
Nhập khẩu trực tiếp từ Nhật. Sản xuất tại Nhật
 "', N'1', N'27', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (28, N'N''Xà phòng thanh giặt cổ áo nội địa Nhật Bản''', N'xa-phong-thanh-giat-co-ao-nội-dia-nhat-ban', N'29500', N'64', N'a212e7ae18c54d119becd1861e1064e6.jpg', N'25', N'5', N'17', N'"
Gel Diệt Kiến Bayer Maxforce Quantum 03% (12g)

An toàn cho người sử dụng: Không mùi - không gây phản ứng phụ cho người và vật nuôi trong nhà.
Hiệu ứng Domino tiêu diệt cả tổ kiến.
Hiệu quả trên nhiều loại kiến.
Thân thiện - sử dụng linh hoạt.
Công thức dạng gel - không cần phun xịt.
 "', N'1', N'28', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (29, N'N''Diệt kiến dạng Gel Bayer Maxforce Quantum 03% (12g)''', N'diet-kien-dang-gel-bayer-maxforce-quantum-03%-(12g)', N'135000', N'16', N'54ac37ca7fbafb1a1a5d2ba62c6fb752.jpg', N'1', N'4', N'6', N'"
Gián là loài côn trùng gây khó chịu - khó diệt bằng các biện pháp cơ học hay đập bằng vỉ. Góc bếp - tủ quần áo - phòng làm việc... rất nhiều nơi trong gia đình dễ dàng là nơi trú ẩn cho gián - gây mùi hôi khó chịu và mất vệ sinh - hư hỏng đồ.

Thuốc diệt gián Black Cap Nhật - hộp 12 viên sẽ đuổi sạch các loại gián ra khỏi gia đình bạn mà không gây hại cho con người - vật nuôi giống như khi dùng thuốc xịt - hay các biện pháp truyền thống. Là sản phẩm hữu ích và rất cần thiết cho mỗi gia đình. Sản phẩm diệt tận gốc lũ gián trong nhà bạn bằng cơ chế tỏa mùi hương dễ chịu thu hút gián đến ăn - gián chưa chết ngay mà về gây bệnh cho cả tổ - diệt sạch tận gốc - diệt cả ấu trùng con - thậm chí ngay cả trứng gián cũng sẽ bị tiêu diệt. Hiệu quả cao - với 12 viên bạn có thể sử dụng ở 12 điểm khác nhau trong nhà bạn tại các vị trí xuất hiện nhiều gián như: góc tủ bếp - bạn có thể đặt tại các đường ống cống thoát nước - góc tủ bếp - gầm tủ lạnh - góc tủ quần áo... bất cứ nơi nào có gián đi qua. Nếu bạn duy trì thay viên diệt gián này 6 tháng 1 lần thì gián sẽ không bao giờ đến làm phiền bạn.

Đặc điểm của sản phẩm: - Hiệu quả nhanh chóng nhờ hợp chất Fipronil sẽ cho tác dụng diệt ngay lập tức với những con gián ăn phải. - Diệt gián tận gốc ngay cả với những loại gián đã kháng thuốc thông thường. - Thiết kế hộp đựng thông minh vừa dễ dàng đặt vào mọi ngóc ngách - vừa bảo vệ được thuốc gián tránh xa tầm với của trẻ nhỏ. - Thời gian sử dụng lâu dài - duy trì hiệu quả diệt gián đến 6 tháng. Công dụng : 1. Đuổi gián siêu tốc bằng chất Fipronil ngay từ khi đặt viên đuổi gián 2. Có tác dụng với cả trứng gián lẫn gián to. Đuổi diệt được tất cả các loại gián. 3. Đuổi diệt được cả gián ăn trực tiếp hạt - gián ăn phải phân gián hay gián đã chết có ăn thuốc. 4. Diệt hết tất cả các loại gián đã kháng thuốc thông thường Hộp đuổi gián thu hút gián tới ăn - Gián sẽ tha về tổ khiến cho cả đàn bị tiêu diệt.Gián sẽ biến mất hoàn toàn khỏi nhà bạn chỉ sau 2 – 5 ngày sử dụng. Hướng dẫn sử dụng: B1. Bóc lớp gói thiếc bọc sản phẩm và tách dời từng viên 1 ra B2. Đặt viên diệt gián đã tách ra ở những nơi gián thường hay qua lại như: gầm bếp - gầm trạn bát - tủ quần áo - máy giặt -… gián sau khi ăn thuốc và bị bệnh - đi về tổ và lây bệnh cho cả đàn. Chúng sẽ chết dần dần cả tổ chứ không chỉ chết một vài con. Liều lượng đặt: - Đối với viên diệt gián 12 viên: Đặt 4 viên/ diện tích 10m². - Ở những nơi gián sinh sôi nhiều nên đặt 2 viên/ 5m² quanh khu vực bạn không muốn gián lại gần. Lưu ý: - Bảo quản ở nơi thoáng mát - tránh ánh sáng trực tiếp. - Nếu bạn ăn nhầm - vui lòng tìm kiếm sự chăm sóc y tế. - Nên rửa tay kỹ bằng xà phòng và nước nếu tay tiếp xúc với thuốc - Tránh đặt thuốc dưới trời mưa - nơi có độ ẩm cao. - Tránh đặt ở những nơi lưu trữ - thực phẩm - đồ ăn - tránh nhầm lẫn với đồ ăn. "', N'1', N'29', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (30, N'N''Set 12 hộp diệt gián tận gốc hiệu quả ngay tức thì - Nội địa Nhật Bản''', N'set-12-hộp-diet-gian-tan-goc-hieu-qua-ngay-tức-thi--nội-dia-nhat-ban', N'148999', N'42', N'0c1c4d55aa28473c7816395be411bf7d.jpg', N'25', N'6', N'6', N'"
Lốc 9 Cuộn Giấy Vệ Sinh Cao Cấp Sài Gòn Bless You  Lamour 3 Lớp được nhiều người tiêu dùng lựa chọn bởi những ưu điểm vượt trội. Giấy được làm từ chất liệu bột giấy cao cấp - có thiết kế 3 lớp đặc biệt - bề mặt giấy mềm mại nhưng vẫn giữ được độ dai cần thiết - khả năng thấm hút nước tốt. Sản phẩm dễ phân hủy - thân thiện với môi trường - được thiết kế dạng cuộn tiện dụng - dùng cho các việc vệ sinh hàng ngày trong gia đình.

Sài Gòn Bless You Hold Me được làm từ bột giấy nguyên chất 100% - kết hợp với dây chuyền sản xuất khép kín đạt tiêu chuẩn an toàn tại Việt Nam
Bề mặt giấy mịn màng - có độ dai hoàn hảo - khả năng thấm hút nước tuyệt vời - mang đến cho bạn sự hài lòng và cảm giác thoải  mái khi sử dụng.
Giấy được thiết kế 3 lớp - dày dặn - có thể sử dụng cho nhiều mục đích khác nhau
Sản phẩm đặc biệt thân thiện với môi trường - dễ phân hủy.
 "', N'1', N'30', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (31, N'N''Lốc 9 Cuộn Giấy Vệ Sinh Cao Cấp Bless You L''amour 3 Lớp''', N'loc-9-cuộn-giay-ve-sinh-cao-cap-bless-you-l''amour-3-lop', N'89000', N'9', N'897cb5ec889afeda13d54c7b074755b0.jpg', N'1002', N'7', N'6', N'"
Nước Diệt Kiến Trong 1 Ngày Sạch Kiến Không Quay Lại Hanvet là hóa chất diệt côn trùng đạt tiêu chuẩn của Tổ Chức Y Tế Thế Giới (WHO).

An toàn cho người sử dụng: Không mùi - không gây phản ứng phụ cho người và vật nuôi trong nhà - chính vì lợi điểm đó nên được áp dụng phun ULV cả trong và ngoài nhà - trong khi đó các hóa chất cùng gốc Deltamethrin chỉ áp dụng phun ULV ngoài nhà.
Sử dụng tiện lợi cho các hộ gia đình - dùng để phun tồn lưu để diệt muỗi - ruồi - kiến - gián - bọ chét và côn trùng có cánh khác..

Công dụng:

Diệt muỗi - ruồi - kiến - gián - bọ chét trong gia dụng và y tế.
Phòng chống dịch sốt xuất huyết - sốt rét - dịch tiêu chảy cấp - dịch hạch trong cộng đồng.

Cách dùng:

Diệt muỗi - kiến - gián: Cứ 5ml pha với 0 -5 lít nước - phun 10 m2 bề mặt - tường - vách - cống rãnh - phun kỹ các khe kẽ nơi côn trùng hay trú đậu.
Diệt ruồi: Cứ 5 ml pha với 0 -5 lít nước phun 5 m2 bề mặt - bãi rác - nhà tiêu - các nơi ruồi cư trú. Hiệu lực kéo dài 6-8 tuần sau 1 lần phun.
Diệt bọ chét: Cứ 5ml pha với 2 lít nước - phun kỹ bề mặt hốc kẽ nơi bọ chét trú ẩn và qua lại. Phun 2 lần - mỗi lần cách nhau 10 ngày.
 "', N'1', N'31', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (32, N'N''Nước diệt kiến sạch kiến sau hai giờ - Hantox 50ml''', N'nưoc-diet-kien-sach-kien-sau-hai-gio--hantox-50ml', N'45000', N'35', N'e31a668b4ec10e6c411fe8c3c1f21e4f.jpg', N'25', N'3', N'6', N'"
Nước Giặt Máy Bền Đẹp Cửa Trước OMO 4.2kg - 21122578 với công nghệ giặt sạch nhanh giúp đánh bật nhiều loại vết bẩn khô cứng nhanh hơn chỉ trong 1 lần giặt. Sản phẩm dành cho máy giặt cửa trước - tạo ít bọt bảo vệ máy và giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.

Sản phẩm được thiết kế cho dòng máy giặt cửa trước - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm có thiết kế chai lớn 4.2 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.

Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng





 "', N'1', N'32', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (33, N'N''Nước Giặt Máy Bền Đẹp Cửa Trước OMO 4.2kg - 21122578 ''', N'nưoc-giat-may-ben-dep-cua-trưoc-omo-4.2kg--21122578-', N'210000', N'22', N'68a253a747e2c5e00e7fdf6c28fd34ab.jpg', N'1', N'4', N'6', N'"
-Đuổi gián siêu tốc bằng chất Fipronil ngay từ khi đặt viên đuổi gián.
-Có tác dụng với cả trứng gián lẫn gián to. Đuổi diệt được tất cả các loại gián.
-Đuổi diệt được cả gián ăn trực tiếp hạt - gián ăn phải phân gián hay gián đã chết có ăn thuốc. Đuổi diệt dán tận gốc.
Mỗi viên diệt gián Nhật Bản được bao bọc bởi hộp nhựa cứng chỉ có gián chui lọt vào lấy thức ăn. An toàn tuyệt đối vs trẻ con và thú cưng. Loại 12 viên diệt dc nhiều loại gián to và nhỏ.
Đặc tính sản phẩm: Trọng lượng 24g x 12 viên
Kích thước 211 * 31 * 151 (mm)
Lưu ý: Để xa tầm tay trẻ em. "', N'2', N'33', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (34, N'N''Thuốc viên diệt gián nội địa Nhật Bản''', N'thuoc-vien-diet-gian-nội-dia-nhat-ban', N'142915', N'56', N'a03fbd2517232658892e81873e95c5fb.jpg', N'23', N'4', N'6', N'"
Công dụng
Sản phẩm sử dụng cho cả máy giặt lồng đứng (cửa trên) và lồng ngang (cửa dưới) tiện lợi.
Giúp tiêu diệt toàn bộ nấm mốc và vi khuẩn bên trong máy giặt - đánh tan mảng bám canxi nơi lồng giặt - giúp quần áo sau khi giặt thơm tho hơn.
Ngoài ra - sản phẩm cũng giúp đánh bay mùi hôi khó chịu bên trong lồng máy giặt.
Hướng dẫn sử dụng
Đối với máy giặt cửa trên:+ Chọn chế độ giặt với mức nước cao nhất+ Ngâm trong 30 phút đóng nắp+ Chọn chế độ giặt Standard (Giặt → Giũ → Làm khô)
Đối với máy giặt cửa dưới:+ Sau khi bật máy - cho dung dịch tẩy rửa vào lồng giặt+ Chọn chế độ giặt Standard (Giặt → Giũ → Làm khô)
Chú ý+ Không dùng với nước nóng.+ Đối với máy dưới 4kg thì nên dùng 1/2 chai. Máy 4-9kg thì nên dùng cả chai.+ Nên dùng sản phẩm này để tẩy rửa lồng máy giặt cứ 1-2 tháng 1 lần để giữ cho máy giặt luôn sạch sẽ - thơm tho và nâng cao tuổi thọ cho máyXuất xứ: Rocket Soap (Nhật bản)Dung tích: 550ml "', N'2', N'34', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (35, N'N''Nước tẩy vệ sinh lồng máy giặt Rocket nội địa Nhật Bản''', N'nưoc-tay-ve-sinh-long-may-giat-rocket-nội-dia-nhat-ban', N'40000', N'49', N'69685e1bfc6207c96ff1f04842aef333.jpg', N'25', N'3', N'6', N'"
Nước Giặt OMO Comfort Tinh Dầu Thơm giúp xoáy tan vết bẩn cứng đầu hiệu quả trong lồng giặt với công nghệ tiên tiến - tăng cường thêm sức mạnh gấp 3 lần - mang lại 3 hiệu quả vượt trội: làm trắng - làm sáng và xoáy bay hoàn toàn vết bẩn. Hương thơm của Comfort giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.
Thông tin sản phẩm
Công thức làm sạch vết bẩn độc đáo
Bột Giặt OMO Hương Comfort ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Hương thơm comfort dịu nhẹ
OMO Comfort Mới kết hợp sức mạnh đánh bật vết bẩn của OMO cải tiến và hương thơm quyến rũ của Comfort sẽ giúp quần áo thơm mát dài lâu. Bạn sẽ yêu ngay mùi hương cải tiến mới của OMO Comfort
An toàn - thân thiện với môi trường
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm của tập đoàn Unilever được kiểm nghiệm và khuyên dùng bởi 11 hãng máy giặt hàng đầu thế giới như Sanyo - Toshiba - LG - Panasonic - Haier - Sharp - Bosch - Electrolux - Fagor 
Hướng dẫn sử dụng
- Đổ nước giặt OMO vào nắp với liều lượng theo hướng dẫn.
- Thoa một lượng nhỏ nước giặt trực tiếp lên vết bẩn.
- Đổ phần nước giặt còn lại trong nắp vào máy giặt cùng với quần áo.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'2', N'35', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (36, N'N''Nước Giặt OMO Matic Comfort Tinh Dầu Thơm 21122479 (2.4kg)''', N'nưoc-giat-omo-matic-comfort-tinh-dau-thơm-21122479-(2.4kg)', N'110000', N'21', N'eaf33b2ab8935df375d488fe2ab6da17.jpg', N'25', N'3', N'6', N'"
Nước Giặt  OMO Comfort Tinh Dầu Thơm (3 -8kg) - 21122480 với công nghệ đột phá - có tác dụng xoáy bay những vết bẩn cứng đầu nhất - đồng thời không để lại cặn bột giặt như các loại bột thông thường khác - giúp cho quần áo luôn trắng sạch - thơm ngát như mới. Hương thơm của Comfort giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.

Bột Giặt OMO Hương Comfort ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt.
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng.
OMO Comfort Mới kết hợp sức mạnh đánh bật vết bẩn của OMO cài tiến và hương thơm quyến rũ của Comfort sẽ giúp quần áo thơm mát dài lâu. Bạn sẽ yêu ngay mùi hương cải tiến mới của OMO Comfort.
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn.
Sản phẩm có thiết kế chai lớn 3.8 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.

Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'2', N'36', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (37, N'N''Nước Giặt  OMO Comfort Tinh Dầu Thơm 21122480 (3.8kg)  ''', N'nưoc-giat--omo-comfort-tinh-dau-thơm-21122480-(3.8kg)--', N'191000', N'20', N'8906f979723c498666802292db7a195e.jpg', N'25', N'8', N'4', N'"


Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen (400g) tự động làm sạch máy giặt từ sâu bên trong - những vị trí khó nhìn thấy và khó vệ sinh nhất - tẩy sạch chất cặn bã từ quần áo tích tụ lâu ngày trong máy giặt - tiết kiệm thời gian - công sức khi vệ sinh máy giặt.
Khử mùi - khử vi khuẩn - nấm mốc gây ra các bệnh hô hấp - dị ứng
Bảo dưỡng - làm thông thoáng máy giặt - hạn chế tình trạng tắc nghẽn - tăng tuổi thọ cho máy giặt
Bột tẩy lồng máy giặt Homes Queen được sản xuất từ công ty Hàn Quốc với công nghệ tiên tiến và hơn 30 năm kinh nghiệm sản xuất các sản phẩm tẩy rửa đồ dùng nhà cửa - không cần tháo lắp máy giặt vẫn có thể vệ sinh máy sạch sẽ.
Sản phẩm được chứng nhận an toàn với người sử dụng và môi trường - dùng được cho cả máy giặt lồng ngang - lồng đứng
 

 "', N'2', N'37', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (38, N'N''Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen (400g)''', N'bột-tay-ve-sinh-long-may-giat-homes-queen-(400g)', N'41000', N'18', N'6e80377ea27789e57bbbc6a98a9cb3f5.jpg', N'25', N'3', N'6', N'"
Nước Giặt  OMO Cho Máy Giặt Cửa Trên (4.2kg) - 21122477 có công thức dành cho máy giặt - tạo ít bọt giúp bảo vệ tốt nhất cho máy giặt và quần áo của bạn. Sản phẩm đánh tan mọi vết bẩn cứng đầu trong lồng giặt. Hương thơm nhẹ nhàng giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.

Sản phẩm được thiết kế cho dòng máy giặt cửa trên - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Nước giặt tạo ít bọt - không gây trào bọt trong lúc giặt và bảo vệ máy giặt cùng quần áo của bạn tốt hơn.
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm có thiết kế chai lớn 4.2 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.

Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng








 "', N'2', N'38', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (39, N'N''Nước Giặt  OMO Cho Máy Giặt Cửa Trên (4.2kg) - 21122477''', N'nưoc-giat--omo-cho-may-giat-cua-tren-(4.2kg)--21122477', N'191000', N'20', N'a9ac639943b1a9c2977ebd67e53cac04.jpg', N'25', N'6', N'6', N'"




Giấy Lụa Hộp - Bless You Selection 2019 được sản xuất từ 100% bột giấy tự nhiên - kết hợp dây chuyền khép kín với công nghệ mới - cho ra loại giấy chất lượng cao - đảm bảo an toàn vệ sinh và an toàn cho sức khỏe người tiêu dùng. Giấy có đặc tính dai - mềm - mỏng nhưng không dễ rách - rất dễ phân hủy - hạn chế gây ô nhiễm môi trường.
Giấy được làm từ chất liệu bột giấy 100% thiên nhiên - không chứa chất tẩy độc hại - đảm bảo chất lượng - không gây kích ứng da và dùng được cho cả trẻ em
Ngoài ra - sự kết hợp hoàn hảo về độ dai và bề mặt mềm mại của sản phẩm còn mang đến cho bạn loại giấy chất lượng để sử dụng hàng ngày.
Tùy nhu cầu sử dụng - có thể sử dụng vào nhiều mục đích khác nhau.
 "', N'2', N'39', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (40, N'N''Lốc 4 Hộp Khăn Giấy Bless You Tết 2019 - Tặng 1 Hộp Cùng Loại''', N'loc-4-hộp-khan-giay-bless-you-tet-2019--tang-1-hộp-cung-loai', N'75000', N'6', N'ddd82cdfd78ee772f36236b48fb2e283.jpg', N'25', N'9', N'6', N'"




Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Chanh Sả Chai 475ml dịu mát giúp tẩy rửa bồn cầu và nhà tắm - diệt sạch vi khuẩn gây bệnh - cho bồn cầu và phòng tắm trắng sáng và lưu lại hương thơm dịu mát - sạch sẽ.Với công thức diệt 99 -99% vi khuẩn được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - Vim là sản phẩm tẩy rửa có công thức đậm đặc giúp diệt sạch vi khuẩn gây bệnh - và có khả năng tấn công hoá học vào protein của tế bào vi khuẩn - phá huỷ tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus.Sản phẩm an toàn cho sức khoẻ của người sử dụng - không gây hư hại bồn cầu.Đặc biệt - với công thức đổi màu igups tăng khả năng quan sát trực quan khi tẩy rửa - cho bạn thấy kết quả ngay khi sử dụng. Với hương chanh sả với chiết suất từ thiên nhiên cho bồn cầu và nhà tắm thơm mát dễ chịu. "', N'2', N'40', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (41, N'N''Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Chanh Sả Chai 475ml''', N'gel-tay-rua-bon-cau-va-nha-tam-vim-trang-sang-hương-chanh-sa-chai-475ml', N'23000', N'8', N'6e85699878e93345cab01a1f60ec460e.jpg', N'1003', N'10', N'6', N'"
ZEINO nước giặt tiên tiến can tím 3.5kg.
Hương sữa tắm cá ngựa - thơm mát gấp nhiều lần
Nước giặt ZEINO thấm sâu vào từng sợi vải - vừa giặt sạch dễ dàng vừa lưu lại hương thơm như sữa tắm.
Dùng được cho cả giặt tay và giặt máy (cửa trên và cửa ngang)
Dịu nhẹ - an toàn với da tay "', N'2', N'41', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (42, N'N''Nước giặt ZEINO tím 3.5kg''', N'nưoc-giat-zeino-tim-3.5kg', N'80000', N'45', N'fe28f1559d8f3fa6e624b26a3b3bb9c7.jpg', N'19', N'11', N'6', N'"
Giấy Vệ Sinh Lency (15 Cuộn) được sản xuất với dây chuyền sản xuất khép kín và hiện đại đạt tiêu chuẩn an toàn tại Việt Nam. Giấy vệ sinh Lency cao cấp có độ dai - mềm mịn - trắng và khả năng thấm hút nước cao đem đến cho người dùng sự thoải mái - dễ chịu khi tiếp xúc với làn da. 
Giấy vệ sinh Lency cao cấp được sử dụng được với nhiều mục đích khác nhau. Với thiết kế dạng cuộn có lõi giúp bạn dễ dàng cài vào móc đựng giấy vệ sinh - mang lại sự tiện lợi khi sử dụng. 
 "', N'2', N'42', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (43, N'N''Giấy Vệ Sinh Lency (15 Cuộn)''', N'giay-ve-sinh-lency-(15-cuộn)', N'86501', N'9', N'1a1e4de0499c5fd63cc77c7c0373be9c.png', N'25', N'9', N'6', N'"
Nước Tẩy Bồn Cầu Vim Diệt Khuẩn 500ml - Xanh Biển
Nước Tẩy Bồn Cầu Vim Diệt Khuẩn 500ml - Xanh Biển có hương thơm nhẹ nhàng - tươi mát - cùng công thức diệt khuẩn Sodium Hypochlorite được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur - Vim giúp bạn tiêu diệt vi khuẩn gây bệnh đồng thời tẩy sạch vết bẩn mà không làm ăn mòn các bề mặt gạch hay bồn cầu

Thông tin sản phẩm
Công thức tẩy sạch mảng bám
Với công thức diệt khuẩn Sodium Hypochlorite được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - VIM là sản phẩm tẩy rửa có khả năng:
- Diệt sạch vi khuẩn gây bệnh
- VIM chứa Sodium Hypochlorite có khả năng tấn công hóa học vào protein của tế bào vi khuẩn - phá hủy tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus (siêu vi)
An toàn - không gây hư hại bồn cầu
Sản phẩm có khả năng tẩy sạch các vết ban hữu cơ trong bồn cầu mà không làm mất độ bóng của gạch men. Công thức của VIM không chứa acid như các sản phẩm tẩy rửa thông thường khác nên không ăn mòn các bề mặt gạch hay bồn cầu
Thiết kế dạng chai tiện dụng
Nước Tẩy Bồn Cầu Vim Diệt Khuẩn có thiết kế dạng chai tiện lợi - dễ sử dụng - giúp phân tán chất lỏng đến tất cả mọi bề mặt - mọi vị trí mong muốn - cho hiệu quả vệ sinh cao hơn.
Hương thơm tươi mát
Sản phẩm có mùi hương nhẹ nhàng - tươi mát - để lại hương thơm dễ chịu và tạo cảm giác sạch thoáng cho toilet nhà bạn.
Hướng dẫn sử dụng
Xịt Vim trực tiếp dưới vùng bồn cầu - đậy nắp
Sau khoảng 10 phút - dùng bàn chải chà nhẹ và xả nước
Hòa 2 nắp sản phẩm vào 1/2 xô nước (2.5L)
Dùng để tẩy rửa sàn và nhiều bề mặt khác nhau
Hướng dẫn diệt khuẩn với dung dịch đậm đặc
Rãnh thoát nước trong nhà tắm/nhà bếp: xịt trực tiếp lên rãnh thoát nước để tẩy sạch và loại bỏ mùi hôi rồi xả nước
Bồn rửa: Xịt vào lỗ thoát thước - để 5 phút và sau đó xả nước
Lưu ý
Mang bao tay và khẩu trang khi sử dụng sản phẩm
Tránh tiếp xúc với mắt và da vì có thể gây kích ứng
Nếu sản phẩm dính lên da - rửa sạch ngay bằng nhiều nước
Nếu dính vào mắt - rửa sạch ngay với nhiều nước và đến kiểm tra tại cơ sở y tế
Nếu nuốt phải - đến ngay sơ sở y tế và mang theo chai hoặc nhãn mác "', N'2', N'43', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (44, N'N''Nước Tẩy Bồn Cầu Vim Diệt Khuẩn 500ml - Xanh Biển''', N'nưoc-tay-bon-cau-vim-diet-khuan-500ml--xanh-bien', N'21000', N'5', N'dabf9450a8e89ed2bb21a7a8f81bf22b.jpg', N'25', N'12', N'6', N'"
Nước Lau Kính Cif là sản phẩm tiện ích giúp làm sáng bóng bề mặt làm bằng kính và các vật  dụng khác. Công thức đậm đặc và hoạt chất tẩy rửa tiên tiến sẽ giúp bạn lau  sạch bóng mặt kính với hiệu quả cực mạnh. Sản phẩm thích hợp sử dụng  cho các loại  cửa kính - gương soi - màn hình TV - các bề mặt làm bằng crôm -  inox…
Thông tin sản phẩm
Công thức đậm đặc với hiệu quả làm sạch nhanh chóng
Công thức đậm đặc và hoạt chất tẩy rửa tiên tiến cho hiệu quả làm sạch  kính cực mạnh khi sử dụng - ngay cả những vết khó lau chùi như dầu mỡ -  mảng bám.
Ngăn đọng hơi nước tốt và không để lại vết ố lên kính.
Duy trì độ sáng bóng - giúp mặt kính sạch bong như mới - đồng thời chống bám bụi trở lại.
Hiệu quả trên các bề mặt kính
Sản phẩm thích hợp sử dụng cho các loại kính như kính trong - kính mờ -  gương soi và đồ dùng pha lê - bề mặt formica - đồ inox. Những thành phần  hóa học trong sản phẩm sẽ nhanh chóng giúp loại sạch mọi bụi bẩn để trả  lại một bề mặt kính sáng bóng - tô điểm cho ngôi nhà của bạn thêm sang  trọng.
An toàn - không độc hại
Sản phẩm không tồn đọng chất gây hại - an toàn cho sức khỏe người sử dụng.
Hương thơm nhẹ nhàng - tươi mát
Nước Lau Kính Cif có mùi hương tự nhiên thơm mát - mang đến cho bạn cảm giác thoải mái - dễ chịu.
Hướng dẫn sử dụng
Vặn nút chai qua ON.
Phun Cif lên bề mặt cần làm sạch rồi lau lại bằng khăn ẩm. Sau khi sử dụng vặn nút chai về OFF.
Đối với những vết bẩn cứng đầu như dầu mỡ - mảng bám lâu ngày - nên chờ ít phút rồi mới lau sẽ cho kết quả làm sạch cao hơn.
Lưu ý
Tránh để hóa chất vào mắt - để xa tầm tay trẻ em - không được uống.
Để nơi khô thoáng - tránh nơi có nhiệt độ cao.
Tránh nhiệt độ cao và ánh sáng trực tiếp "', N'2', N'44', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (45, N'N''Nước Lau Kính Cif (520ml)''', N'nưoc-lau-kinh-cif-(520ml)', N'24000', N'8', N'af8368ede480990d544c6c07960d658a.jpg', N'25', N'13', N'6', N'"
Nước Xả  Vải Comfort Đậm Đặc 1 Lần xả Hương Ban Mai Chai 3.8L
Nước Xả  Vải Comfort Đậm Đặc 1 Lần xả Hương Ban Mai Chai 3.8L sẽ giúp quần áo của cả gia đình bạn luôn thơm mát cả ngày. Bên cạnh đó - công thức đậm đặc 1 lần xả sẽ giúp bạn tiết kiệm chi phí hơn so với các loại nước vải thông thường khác.
Thông tin sản phẩm
Công thức 1 lần xả
Comfort Một lần xả áp dụng công thức cắt bọt và chống tái bám giúp áo quần hoàn toàn sạch bọt xà phòng chỉ trong 1 lần xả. Với cách này - bạn không chỉ an tâm với áo quần hoàn sạch bọt xà phòng mà còn tiết kiệmthời gian và công sức. Ngoài ra - sử dụng Comfort Một lần xả là bạn đã góp phần giúp tiết kiệm nước - bảo vệ môi trường.
Công thức đậm đặc
Sản phẩm có công thức đậm đặc giúp cho vải không bị khô cứng nhất là đối với quần áo cũ. Công thức đậm đặc sẽ giúp bạn tiết kiệm hơn so với các loại nước xả thông thường khác.
Hương ban mai thanh khiết
Nước Xả Vải Comfort Đậm Đặc Hương Ban Mai chứa tinh dầu thơm 100% tự nhiên được chưng cất từ hoa và thảo mộc cho hương thơm thanh khiết như ánh nắng ban mai - xua tan đi mùi ẩm mốc khó chịu trong những ngày mưa bão.
Lưu hương thơm thật lâu trên quần áo
Công nghệ tỏa hương mới từ Comfort Đậm Đặc giúp áo quần tỏa hương thơm ngát theo từng cử động của bạn suốt cả ngày dài. Chỉ cần một lần xả - áo quần sạch xà phòng và thơm ngát đến bất ngờ.
Thiết kế chai lớn 3.8L
Nước Xả Vải Comfort Đậm Đặc Hương Ban Mai nay có thêm thiết kế chai lớn 3.8L giúp bạn tiết kiệm chi phí và thời gian mua sắm.
Hướng dẫn sử dụng
- Giặt tay: Sau khi giặt với xà phòng - vắt quần áo cho bớt bọt. Hòa nước xả vải vào nước - đảm bảo lượng nước đủ ngập hết quần áo. Ngâm quần áo ít nhất 10 phút. Sau đó vắt và phơi khô - không cần xả thêm với nước.
- Giặt máy: Hòa nước xả vải vào ngay nước xả đầu tiên - không cần xả thêm với nước. "', N'2', N'45', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (46, N'N''Nước Xả  Vải Comfort Đậm Đặc 1 Lần xả Hương Ban Mai Chai 3.8L ''', N'nưoc-xa--vai-comfort-dam-dac-1-lan-xa-hương-ban-mai-chai-3.8l-', N'185000', N'16', N'2b39108827b8c62fb4f20189d73510d1.jpg', N'1001', N'1', N'2', N'"
BỘ SẢN PHẨM BAO GỒM:01 X Nước Giặt Ariel Đậm Đặc Dạng Chai 2.4kg01 X Nước Xả Vải Downy Huyền Bí Dạng Túi 2.4LTHÔNG TIN SẢN PHẨM1. Nước giặt chai Ariel đậm đặc là bột giặt dạng gel đậm đặc giúp Loại sạch vết bẩn tốt hơn gấp 2X chỉ trong 1 bước giặt. sản phẩm thế hệ mới được áp dụng công nghệ cao với khả năng loại sạch vết bẩn vượt trội - chứa nhiều thành phần làm sạch hiệu quả giúp loại bỏ được nhiều vết bẩn cứng đầu như vết bẩn dầu mỡ - vết cà phê


Đặc điểm:- Sản phẩm dạng gel đậm đặc cho khả năng giặt tẩy vượt trội - giúp đánh bật mọi vết bẩn tốt hơn gấp 2 lần chỉ trong 1 bước giặt - quần áo sẽ được trắng sáng - không để lại chất cặn và lưu lại hương thơm tươi mát.- Là sản phẩm phù hợp cả giặt tay và giặt bằng máy - nước giặt Ariel đậm đặc sẽ giúp cho việc giặt giũ của bạn trở nên nhẹ nhàng và hiệu quả hơn - giúp các bà nội trợ tiết kiệm được thời gian và công sức của mình.- An toàn cho làn da của người sử dụng nếu giặt bằng tay.HDSD:- Giặt tay: 15ml cho 5 - 7 chiếc quần áo- Giặt máy: 45ml cho 1 lần giặt thông thường (15 - 20 chiếc quần áo)
2. Nước xả vải Downy Hương nước hoa huyền bí với hương thơm bung tỏa dài lâu - cho cả gia đình bạn cùng tận hưởng sự mềm mại và thơm mát trên quần áo suốt cả ngày dài. Công thức chứa các phân tử hương li ti bám sâu vào từng sợi vải - khử đi những mùi khó chịu trên quần áo - xua tan mùi ẩm mốc vào những ngày mưa.


Đặc điểm: - Downy Hương nước hoa huyền bí có khả năng lưu giữ mùi hương lâu hơn trên trang phục và trong từng cử động.- Bí mật của công nghệ chuyển hương nằm ở các hạt nước hoa siêu nhỏ với đặc tính linh hoạt trước những di chuyển tự nhiên của con người.- Khi được chà nhẹ - các hạt siêu nhỏ chứa nước hoa sẽ quyện vào nhau và tỏa ra mùi hương đầy lý thú.- Đặc biệt - mỗi lần chạm nhẹ - bạn sẽ được cảm nhận một mùi hương hoàn toàn khác nhau tùy theo nồng độ của các loại hạt tại vị trí ma sát.HDSD:- Không đổ trực tiếp lên quần áo- Đối với giặt tay: Dùng 1/2 nắp Downy cho 15-20 chiếc quần áo - ngâm trong vài phút - vắt và phơi khô- Đối với giặt máy:  Dùng 1/2 nắp Downy cho nửa thùng giặt (khoảng 35L) hoặc 1 nắp rưỡi cho đầy thùng giặt (khoảng 52L); sau khi máy hoàn tất công đoạn xả - vắt và sấy khô như thường lệ- Để tốt cho jeans - chăn - khă nên dùng 1 nắp đầyTHÔNG TIN THƯƠNG HIỆUP&G sở hữu một trong những danh mục sản phẩm đa dạng và chất lượng nhất. Trong số 50 nhãn hiệu hàng tiêu dùng và chăm sóc sức khỏe hàng đầu của P&G - 25 nhãn hiệu được xếp vào danh mục “Thương hiệu tỉ dollar” với mức doanh thu hằng năm đạt trên 1 tỉ dollar Mỹ. Với mong muốn mang lại cuộc sống tốt đẹp hơn cho người tiêu dùng Việt Nam - P&G đã mang đến các thương hiệu hàng đầu vào thị trường Việt Nam như : Ariel - Tide - Downy - Pampers - Head & Shoulders - Pantene - Rejoice - Olay - Gillette - Oral – B - Safeguard - Whispers - Ambi Pur "', N'3', N'46', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (47, N'N''Khăn Giấy Thếp Paseo Hoa Lan (220 Tờ x 2 Lớp) - Màu Ngẫu Nhiên''', N'khan-giay-thep-paseo-hoa-lan-(220-to-x-2-lop)--mau-ngau-nhien', N'22000', N'12', N'5fa60b9079c731bd17cfe1160f6c66ec.jpg', N'1001', N'2', N'29', N'"
Nước Xả Vải Downy Expert Thể Thao là dòng làm mềm vải mới của Downy - kết hợp công nghệ mới được thiết kế để loại bỏ mùi không mong muốn trên quần áo. Đây là dòng sản phẩm đầu tiên có công nghệ chống mồ hôi lên đến 24 giờ - tăng cường sự tự tin với hương thơm lâu dài cho mọi người trong gia đình.
TÍNH NĂNG NỔI BẬT- Với khả năng chống mùi tối ưu và kéo dài 24 giờ - Downy Expert hoạt động thông qua ma sát trên quần áo - giúp giữ quần áo thơm mát suốt cả ngày.- Ngoài ra - Downy Sport còn bao gồm các tính năng như ngăn mùi hôi từ quần áo ướt đẫm mồ hôi. - Loại bỏ mùi mốc từ quần áo - lưu giữ hương thơm tươi mát - lâu phai với hương nước hoa. - Ngăn chặn sự phát triển của mùi ẩm mốc cả ngày dài.

HƯỚNG DẪN SỬ DỤNG- Không đổ trực tiếp lên quần áo- Đối với giặt tay: Dùng 1/2 nắp Downy cho 15-20 chiếc quần áo - ngâm trong vài phút - vắt và phơi khô- Đối với giặt máy: Dùng 1/2 nắp Downy cho nửa thùng giặt (khoảng 35L) hoặc 1 nắp rưỡi cho đầy thùng giặt (khoảng 52L); sau khi máy hoàn tất công đoạn xả - vắt và sấy khô như thường lệ- Để tốt cho jeans - chăn - khă nên dùng 1 nắp đầyHƯỚNG DẪN BẢO QUẢN- Sau mỗi lần sử dụng - bạn hãy đóng chặt nắp lại- Không nên để tiếp xúc với ánh nắng mặt trời và nhiệt độ cao trong thời gian dài- Để xa tầm tay trẻ emTHÔNG TIN THƯƠNG HIỆUDowny là nhãn hàng thuộc tập đa quốc gia P&G nổi tiếng. P&G được biết đến là một tập đoàn luôn đi đầu trong việc đổi mới công nghệ để liên tục đem đến nhiều lợi ích cho người tiêu dùng. Nhãn hàng nước xả vải Downy của P&G đã nghiên cứu thành công Công Nghệ Chuyển Hương độc đáo giúp phái đẹp thỏa mong muốn được thêm phần “cuốn hút” người đối diện với chính mùi hương quyến rũ của mình chỉ sau những cái chạm tay chà nhẹ lên quần áo. "', N'3', N'47', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (48, N'N''Combo Nước Giặt Ariel Đậm Đặc Dạng Túi 2.4kg  + Nước Xả Vải Downy Huyền Bí Dạng Túi 2.4L''', N'combo-nưoc-giat-ariel-dam-dac-dang-tui-2.4kg--+-nưoc-xa-vai-downy-huyen-bi-dang-tui-2.4l', N'288000', N'', N'bf950e5f6b12d9504938bf9dfb1d3165.jpg', N'25', N'3', N'6', N'"
Combo 2 Túi Nước Giặt Omo Dịu Nhẹ (2.4 kg/túi) - Nước giặt có công thức dịu nhẹ với làn da - bạn không cần phải vò tay trước mà quần áo vẫn được làm sạch nhanh chóng trong môi trường giặt máy. Sản phẩm với sức mạnh đánh bật hoàn toàn vết bẩn ngay trong lồng giặt. Sản phẩm được thiết kế phù hợp nhất cho giặt máy - giúp quần áo luôn sạch sẽ - thơm tho.

Sản phẩm có thành phần an toàn cho làn da - kể cả làn da nhạy cảm.
Sản phẩm được thiết kế cho dòng  cửa trên - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Nước giặt tạo ít bọt - không gây trào bọt trong lúc giặt và bảo vệ máy giặt cùng quần áo của bạn tốt hơn.
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
Nước Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn.
Công thức cân bằng pH - dịu nhẹ cho da.
Hương phấn thơm dịu nhẹ với hương thơm từ comfort cho da nhạy cảm.
 "', N'3', N'48', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (49, N'N''Combo 2 Nước Xả Vải Downy Expert Thể Thao Dạng Túi 2.4L''', N'combo-2-nưoc-xa-vai-downy-expert-the-thao-dang-tui-2.4l', N'309000', N'3', N'bf8344bf6abae3990ff4033beaa711a8.jpg', N'25', N'3', N'6', N'"
Nước Giặt Máy Bền Đẹp Cửa Trên OMO Túi 2.4kg có công thức được thiết kế chuyên biệt - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt. OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng.
Thông tin sản phẩm
Công thức làm sạch vết bẩn độc đáo
Sản phẩm nước giặt OMO được THIẾT KẾ PHÙ HỢP NHẤT cho GIẶT MÁY và có công thức ít bọt để bảo vệ máy giặt của gia đình bạn giúp quần áo luôn sạch và thơm
Đột phá từ các hoạt chất loại bỏ vết bẩn - giúp không cần ngâm hay vò lâu. Kết hợp 3 lợi ích vượt trội: làm trắng - làm sáng & xoáy bay hoàn toàn vết bẩn
Hương thơm bung tỏa theo từng cử động
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
An toàn - thân thiện với môi trường
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm của tập đoàn Unilever được kiểm nghiệm và khuyên dùng bởi 11 hãng máy giặt hàng đầu thế giới như Sanyo - Toshiba - LG - Panasonic - Haier - Sharp - Bosch - Electrolux - Fagor 
Hướng dẫn sử dụng
- Đổ nước giặt OMO vào nắp với liều lượng theo hướng dẫn.
- Thoa một lượng nhỏ nước giặt trực tiếp lên vết bẩn.
- Đổ phần nước giặt còn lại trong nắp vào máy giặt cùng với quần áo.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng
 
  "', N'3', N'49', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (50, N'N''Combo 2 Túi Nước Giặt Omo Dịu Nhẹ (2.4kg / Túi)''', N'combo-2-tui-nưoc-giat-omo-diu-nhe-(2.4kg-/-tui)', N'259000', N'2', N'2fd72cd14d2ec98c59b4137faafc5e7c.jpg', N'23', N'4', N'6', N'"

Trọng lượng: 100g
Công dụng: Sản phẩm giúp dễ dàng loại bỏ các vết bẩn hiệu quả - đặc biệt là vùng cánh tay và cổ áo…
Hướng dẫn sử dụng: chỉ cần thấm ướt quần áo - chà nhẹ sản phẩm lên những chỗ có vết bẩn và ngâm - rồi giặt (giặt tay hay giặt máy đều được).
Nhập khẩu trực tiếp từ Nhật. Sản xuất tại Nhật
 "', N'3', N'50', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (51, N'N''Nước Giặt Máy Bền Đẹp Cửa Trên OMO Túi 2.4kg''', N'nưoc-giat-may-ben-dep-cua-tren-omo-tui-2.4kg', N'109000', N'22', N'07f59defa647dfde4601d7301034879d.jpg', N'25', N'5', N'17', N'"
Gel Diệt Kiến Bayer Maxforce Quantum 03% (12g)

An toàn cho người sử dụng: Không mùi - không gây phản ứng phụ cho người và vật nuôi trong nhà.
Hiệu ứng Domino tiêu diệt cả tổ kiến.
Hiệu quả trên nhiều loại kiến.
Thân thiện - sử dụng linh hoạt.
Công thức dạng gel - không cần phun xịt.
 "', N'3', N'51', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (52, N'N''Xà phòng thanh giặt cổ áo nội địa Nhật Bản''', N'xa-phong-thanh-giat-co-ao-nội-dia-nhat-ban', N'29500', N'64', N'a212e7ae18c54d119becd1861e1064e6.jpg', N'1', N'4', N'6', N'"
Gián là loài côn trùng gây khó chịu - khó diệt bằng các biện pháp cơ học hay đập bằng vỉ. Góc bếp - tủ quần áo - phòng làm việc... rất nhiều nơi trong gia đình dễ dàng là nơi trú ẩn cho gián - gây mùi hôi khó chịu và mất vệ sinh - hư hỏng đồ.

Thuốc diệt gián Black Cap Nhật - hộp 12 viên sẽ đuổi sạch các loại gián ra khỏi gia đình bạn mà không gây hại cho con người - vật nuôi giống như khi dùng thuốc xịt - hay các biện pháp truyền thống. Là sản phẩm hữu ích và rất cần thiết cho mỗi gia đình. Sản phẩm diệt tận gốc lũ gián trong nhà bạn bằng cơ chế tỏa mùi hương dễ chịu thu hút gián đến ăn - gián chưa chết ngay mà về gây bệnh cho cả tổ - diệt sạch tận gốc - diệt cả ấu trùng con - thậm chí ngay cả trứng gián cũng sẽ bị tiêu diệt. Hiệu quả cao - với 12 viên bạn có thể sử dụng ở 12 điểm khác nhau trong nhà bạn tại các vị trí xuất hiện nhiều gián như: góc tủ bếp - bạn có thể đặt tại các đường ống cống thoát nước - góc tủ bếp - gầm tủ lạnh - góc tủ quần áo... bất cứ nơi nào có gián đi qua. Nếu bạn duy trì thay viên diệt gián này 6 tháng 1 lần thì gián sẽ không bao giờ đến làm phiền bạn.

Đặc điểm của sản phẩm: - Hiệu quả nhanh chóng nhờ hợp chất Fipronil sẽ cho tác dụng diệt ngay lập tức với những con gián ăn phải. - Diệt gián tận gốc ngay cả với những loại gián đã kháng thuốc thông thường. - Thiết kế hộp đựng thông minh vừa dễ dàng đặt vào mọi ngóc ngách - vừa bảo vệ được thuốc gián tránh xa tầm với của trẻ nhỏ. - Thời gian sử dụng lâu dài - duy trì hiệu quả diệt gián đến 6 tháng. Công dụng : 1. Đuổi gián siêu tốc bằng chất Fipronil ngay từ khi đặt viên đuổi gián 2. Có tác dụng với cả trứng gián lẫn gián to. Đuổi diệt được tất cả các loại gián. 3. Đuổi diệt được cả gián ăn trực tiếp hạt - gián ăn phải phân gián hay gián đã chết có ăn thuốc. 4. Diệt hết tất cả các loại gián đã kháng thuốc thông thường Hộp đuổi gián thu hút gián tới ăn - Gián sẽ tha về tổ khiến cho cả đàn bị tiêu diệt.Gián sẽ biến mất hoàn toàn khỏi nhà bạn chỉ sau 2 – 5 ngày sử dụng. Hướng dẫn sử dụng: B1. Bóc lớp gói thiếc bọc sản phẩm và tách dời từng viên 1 ra B2. Đặt viên diệt gián đã tách ra ở những nơi gián thường hay qua lại như: gầm bếp - gầm trạn bát - tủ quần áo - máy giặt -… gián sau khi ăn thuốc và bị bệnh - đi về tổ và lây bệnh cho cả đàn. Chúng sẽ chết dần dần cả tổ chứ không chỉ chết một vài con. Liều lượng đặt: - Đối với viên diệt gián 12 viên: Đặt 4 viên/ diện tích 10m². - Ở những nơi gián sinh sôi nhiều nên đặt 2 viên/ 5m² quanh khu vực bạn không muốn gián lại gần. Lưu ý: - Bảo quản ở nơi thoáng mát - tránh ánh sáng trực tiếp. - Nếu bạn ăn nhầm - vui lòng tìm kiếm sự chăm sóc y tế. - Nên rửa tay kỹ bằng xà phòng và nước nếu tay tiếp xúc với thuốc - Tránh đặt thuốc dưới trời mưa - nơi có độ ẩm cao. - Tránh đặt ở những nơi lưu trữ - thực phẩm - đồ ăn - tránh nhầm lẫn với đồ ăn. "', N'3', N'52', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (53, N'N''Diệt kiến dạng Gel Bayer Maxforce Quantum 03% (12g)''', N'diet-kien-dang-gel-bayer-maxforce-quantum-03%-(12g)', N'135000', N'16', N'54ac37ca7fbafb1a1a5d2ba62c6fb752.jpg', N'25', N'6', N'6', N'"
Lốc 9 Cuộn Giấy Vệ Sinh Cao Cấp Sài Gòn Bless You  Lamour 3 Lớp được nhiều người tiêu dùng lựa chọn bởi những ưu điểm vượt trội. Giấy được làm từ chất liệu bột giấy cao cấp - có thiết kế 3 lớp đặc biệt - bề mặt giấy mềm mại nhưng vẫn giữ được độ dai cần thiết - khả năng thấm hút nước tốt. Sản phẩm dễ phân hủy - thân thiện với môi trường - được thiết kế dạng cuộn tiện dụng - dùng cho các việc vệ sinh hàng ngày trong gia đình.

Sài Gòn Bless You Hold Me được làm từ bột giấy nguyên chất 100% - kết hợp với dây chuyền sản xuất khép kín đạt tiêu chuẩn an toàn tại Việt Nam
Bề mặt giấy mịn màng - có độ dai hoàn hảo - khả năng thấm hút nước tuyệt vời - mang đến cho bạn sự hài lòng và cảm giác thoải  mái khi sử dụng.
Giấy được thiết kế 3 lớp - dày dặn - có thể sử dụng cho nhiều mục đích khác nhau
Sản phẩm đặc biệt thân thiện với môi trường - dễ phân hủy.
 "', N'3', N'53', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (54, N'N''Set 12 hộp diệt gián tận gốc hiệu quả ngay tức thì - Nội địa Nhật Bản''', N'set-12-hộp-diet-gian-tan-goc-hieu-qua-ngay-tức-thi--nội-dia-nhat-ban', N'148999', N'42', N'0c1c4d55aa28473c7816395be411bf7d.jpg', N'1002', N'7', N'6', N'"
Nước Diệt Kiến Trong 1 Ngày Sạch Kiến Không Quay Lại Hanvet là hóa chất diệt côn trùng đạt tiêu chuẩn của Tổ Chức Y Tế Thế Giới (WHO).

An toàn cho người sử dụng: Không mùi - không gây phản ứng phụ cho người và vật nuôi trong nhà - chính vì lợi điểm đó nên được áp dụng phun ULV cả trong và ngoài nhà - trong khi đó các hóa chất cùng gốc Deltamethrin chỉ áp dụng phun ULV ngoài nhà.
Sử dụng tiện lợi cho các hộ gia đình - dùng để phun tồn lưu để diệt muỗi - ruồi - kiến - gián - bọ chét và côn trùng có cánh khác..

Công dụng:

Diệt muỗi - ruồi - kiến - gián - bọ chét trong gia dụng và y tế.
Phòng chống dịch sốt xuất huyết - sốt rét - dịch tiêu chảy cấp - dịch hạch trong cộng đồng.

Cách dùng:

Diệt muỗi - kiến - gián: Cứ 5ml pha với 0 -5 lít nước - phun 10 m2 bề mặt - tường - vách - cống rãnh - phun kỹ các khe kẽ nơi côn trùng hay trú đậu.
Diệt ruồi: Cứ 5 ml pha với 0 -5 lít nước phun 5 m2 bề mặt - bãi rác - nhà tiêu - các nơi ruồi cư trú. Hiệu lực kéo dài 6-8 tuần sau 1 lần phun.
Diệt bọ chét: Cứ 5ml pha với 2 lít nước - phun kỹ bề mặt hốc kẽ nơi bọ chét trú ẩn và qua lại. Phun 2 lần - mỗi lần cách nhau 10 ngày.
 "', N'3', N'54', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (55, N'N''Lốc 9 Cuộn Giấy Vệ Sinh Cao Cấp Bless You L''amour 3 Lớp''', N'loc-9-cuộn-giay-ve-sinh-cao-cap-bless-you-l''amour-3-lop', N'89000', N'9', N'897cb5ec889afeda13d54c7b074755b0.jpg', N'25', N'3', N'6', N'"
Nước Giặt Máy Bền Đẹp Cửa Trước OMO 4.2kg - 21122578 với công nghệ giặt sạch nhanh giúp đánh bật nhiều loại vết bẩn khô cứng nhanh hơn chỉ trong 1 lần giặt. Sản phẩm dành cho máy giặt cửa trước - tạo ít bọt bảo vệ máy và giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.

Sản phẩm được thiết kế cho dòng máy giặt cửa trước - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm có thiết kế chai lớn 4.2 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.

Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng





 "', N'3', N'55', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (56, N'N''Nước diệt kiến sạch kiến sau hai giờ - Hantox 50ml''', N'nưoc-diet-kien-sach-kien-sau-hai-gio--hantox-50ml', N'45000', N'35', N'e31a668b4ec10e6c411fe8c3c1f21e4f.jpg', N'23', N'4', N'6', N'"
-Đuổi gián siêu tốc bằng chất Fipronil ngay từ khi đặt viên đuổi gián.
-Có tác dụng với cả trứng gián lẫn gián to. Đuổi diệt được tất cả các loại gián.
-Đuổi diệt được cả gián ăn trực tiếp hạt - gián ăn phải phân gián hay gián đã chết có ăn thuốc. Đuổi diệt dán tận gốc.
Mỗi viên diệt gián Nhật Bản được bao bọc bởi hộp nhựa cứng chỉ có gián chui lọt vào lấy thức ăn. An toàn tuyệt đối vs trẻ con và thú cưng. Loại 12 viên diệt dc nhiều loại gián to và nhỏ.
Đặc tính sản phẩm: Trọng lượng 24g x 12 viên
Kích thước 211 * 31 * 151 (mm)
Lưu ý: Để xa tầm tay trẻ em. "', N'3', N'56', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (57, N'N''Nước Giặt Máy Bền Đẹp Cửa Trước OMO 4.2kg - 21122578 ''', N'nưoc-giat-may-ben-dep-cua-trưoc-omo-4.2kg--21122578-', N'210000', N'22', N'68a253a747e2c5e00e7fdf6c28fd34ab.jpg', N'23', N'4', N'6', N'"
Công dụng
Sản phẩm sử dụng cho cả máy giặt lồng đứng (cửa trên) và lồng ngang (cửa dưới) tiện lợi.
Giúp tiêu diệt toàn bộ nấm mốc và vi khuẩn bên trong máy giặt - đánh tan mảng bám canxi nơi lồng giặt - giúp quần áo sau khi giặt thơm tho hơn.
Ngoài ra - sản phẩm cũng giúp đánh bay mùi hôi khó chịu bên trong lồng máy giặt.
Hướng dẫn sử dụng
Đối với máy giặt cửa trên:+ Chọn chế độ giặt với mức nước cao nhất+ Ngâm trong 30 phút đóng nắp+ Chọn chế độ giặt Standard (Giặt → Giũ → Làm khô)
Đối với máy giặt cửa dưới:+ Sau khi bật máy - cho dung dịch tẩy rửa vào lồng giặt+ Chọn chế độ giặt Standard (Giặt → Giũ → Làm khô)
Chú ý+ Không dùng với nước nóng.+ Đối với máy dưới 4kg thì nên dùng 1/2 chai. Máy 4-9kg thì nên dùng cả chai.+ Nên dùng sản phẩm này để tẩy rửa lồng máy giặt cứ 1-2 tháng 1 lần để giữ cho máy giặt luôn sạch sẽ - thơm tho và nâng cao tuổi thọ cho máyXuất xứ: Rocket Soap (Nhật bản)Dung tích: 550ml "', N'3', N'57', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (58, N'N''Thuốc viên diệt gián nội địa Nhật Bản''', N'thuoc-vien-diet-gian-nội-dia-nhat-ban', N'142910', N'56', N'a03fbd2517232658892e81873e95c5fb.jpg', N'25', N'3', N'6', N'"
Nước Giặt OMO Comfort Tinh Dầu Thơm giúp xoáy tan vết bẩn cứng đầu hiệu quả trong lồng giặt với công nghệ tiên tiến - tăng cường thêm sức mạnh gấp 3 lần - mang lại 3 hiệu quả vượt trội: làm trắng - làm sáng và xoáy bay hoàn toàn vết bẩn. Hương thơm của Comfort giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.
Thông tin sản phẩm
Công thức làm sạch vết bẩn độc đáo
Bột Giặt OMO Hương Comfort ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Hương thơm comfort dịu nhẹ
OMO Comfort Mới kết hợp sức mạnh đánh bật vết bẩn của OMO cải tiến và hương thơm quyến rũ của Comfort sẽ giúp quần áo thơm mát dài lâu. Bạn sẽ yêu ngay mùi hương cải tiến mới của OMO Comfort
An toàn - thân thiện với môi trường
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm của tập đoàn Unilever được kiểm nghiệm và khuyên dùng bởi 11 hãng máy giặt hàng đầu thế giới như Sanyo - Toshiba - LG - Panasonic - Haier - Sharp - Bosch - Electrolux - Fagor 
Hướng dẫn sử dụng
- Đổ nước giặt OMO vào nắp với liều lượng theo hướng dẫn.
- Thoa một lượng nhỏ nước giặt trực tiếp lên vết bẩn.
- Đổ phần nước giặt còn lại trong nắp vào máy giặt cùng với quần áo.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'3', N'58', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (59, N'N''Nước tẩy vệ sinh lồng máy giặt Rocket nội địa Nhật Bản''', N'nưoc-tay-ve-sinh-long-may-giat-rocket-nội-dia-nhat-ban', N'40000', N'49', N'69685e1bfc6207c96ff1f04842aef333.jpg', N'25', N'3', N'6', N'"
Nước Giặt  OMO Comfort Tinh Dầu Thơm (3 -8kg) - 21122480 với công nghệ đột phá - có tác dụng xoáy bay những vết bẩn cứng đầu nhất - đồng thời không để lại cặn bột giặt như các loại bột thông thường khác - giúp cho quần áo luôn trắng sạch - thơm ngát như mới. Hương thơm của Comfort giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.

Bột Giặt OMO Hương Comfort ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt.
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng.
OMO Comfort Mới kết hợp sức mạnh đánh bật vết bẩn của OMO cài tiến và hương thơm quyến rũ của Comfort sẽ giúp quần áo thơm mát dài lâu. Bạn sẽ yêu ngay mùi hương cải tiến mới của OMO Comfort.
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn.
Sản phẩm có thiết kế chai lớn 3.8 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.

Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'4', N'2', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (60, N'N''Nước Giặt OMO Matic Comfort Tinh Dầu Thơm 21122479 (2.4kg)''', N'nưoc-giat-omo-matic-comfort-tinh-dau-thơm-21122479-(2.4kg)', N'110000', N'21', N'eaf33b2ab8935df375d488fe2ab6da17.jpg', N'25', N'8', N'4', N'"


Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen (400g) tự động làm sạch máy giặt từ sâu bên trong - những vị trí khó nhìn thấy và khó vệ sinh nhất - tẩy sạch chất cặn bã từ quần áo tích tụ lâu ngày trong máy giặt - tiết kiệm thời gian - công sức khi vệ sinh máy giặt.
Khử mùi - khử vi khuẩn - nấm mốc gây ra các bệnh hô hấp - dị ứng
Bảo dưỡng - làm thông thoáng máy giặt - hạn chế tình trạng tắc nghẽn - tăng tuổi thọ cho máy giặt
Bột tẩy lồng máy giặt Homes Queen được sản xuất từ công ty Hàn Quốc với công nghệ tiên tiến và hơn 30 năm kinh nghiệm sản xuất các sản phẩm tẩy rửa đồ dùng nhà cửa - không cần tháo lắp máy giặt vẫn có thể vệ sinh máy sạch sẽ.
Sản phẩm được chứng nhận an toàn với người sử dụng và môi trường - dùng được cho cả máy giặt lồng ngang - lồng đứng
 

 "', N'4', N'3', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (61, N'N''Nước Giặt  OMO Comfort Tinh Dầu Thơm 21122480 (3.8kg)  ''', N'nưoc-giat--omo-comfort-tinh-dau-thơm-21122480-(3.8kg)--', N'191000', N'20', N'8906f979723c498666802292db7a195e.jpg', N'25', N'3', N'6', N'"
Nước Giặt  OMO Cho Máy Giặt Cửa Trên (4.2kg) - 21122477 có công thức dành cho máy giặt - tạo ít bọt giúp bảo vệ tốt nhất cho máy giặt và quần áo của bạn. Sản phẩm đánh tan mọi vết bẩn cứng đầu trong lồng giặt. Hương thơm nhẹ nhàng giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.

Sản phẩm được thiết kế cho dòng máy giặt cửa trên - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Nước giặt tạo ít bọt - không gây trào bọt trong lúc giặt và bảo vệ máy giặt cùng quần áo của bạn tốt hơn.
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm có thiết kế chai lớn 4.2 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.

Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng








 "', N'4', N'4', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (62, N'N''Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen (400g)''', N'bột-tay-ve-sinh-long-may-giat-homes-queen-(400g)', N'41000', N'18', N'6e80377ea27789e57bbbc6a98a9cb3f5.jpg', N'25', N'6', N'6', N'"




Giấy Lụa Hộp - Bless You Selection 2019 được sản xuất từ 100% bột giấy tự nhiên - kết hợp dây chuyền khép kín với công nghệ mới - cho ra loại giấy chất lượng cao - đảm bảo an toàn vệ sinh và an toàn cho sức khỏe người tiêu dùng. Giấy có đặc tính dai - mềm - mỏng nhưng không dễ rách - rất dễ phân hủy - hạn chế gây ô nhiễm môi trường.
Giấy được làm từ chất liệu bột giấy 100% thiên nhiên - không chứa chất tẩy độc hại - đảm bảo chất lượng - không gây kích ứng da và dùng được cho cả trẻ em
Ngoài ra - sự kết hợp hoàn hảo về độ dai và bề mặt mềm mại của sản phẩm còn mang đến cho bạn loại giấy chất lượng để sử dụng hàng ngày.
Tùy nhu cầu sử dụng - có thể sử dụng vào nhiều mục đích khác nhau.
 "', N'4', N'5', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (63, N'N''Nước Giặt  OMO Cho Máy Giặt Cửa Trên (4.2kg) - 21122477''', N'nưoc-giat--omo-cho-may-giat-cua-tren-(4.2kg)--21122477', N'191000', N'20', N'a9ac639943b1a9c2977ebd67e53cac04.jpg', N'25', N'9', N'6', N'"




Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Chanh Sả Chai 475ml dịu mát giúp tẩy rửa bồn cầu và nhà tắm - diệt sạch vi khuẩn gây bệnh - cho bồn cầu và phòng tắm trắng sáng và lưu lại hương thơm dịu mát - sạch sẽ.Với công thức diệt 99 -99% vi khuẩn được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - Vim là sản phẩm tẩy rửa có công thức đậm đặc giúp diệt sạch vi khuẩn gây bệnh - và có khả năng tấn công hoá học vào protein của tế bào vi khuẩn - phá huỷ tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus.Sản phẩm an toàn cho sức khoẻ của người sử dụng - không gây hư hại bồn cầu.Đặc biệt - với công thức đổi màu igups tăng khả năng quan sát trực quan khi tẩy rửa - cho bạn thấy kết quả ngay khi sử dụng. Với hương chanh sả với chiết suất từ thiên nhiên cho bồn cầu và nhà tắm thơm mát dễ chịu. "', N'4', N'6', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (64, N'N''Lốc 4 Hộp Khăn Giấy Bless You Tết 2019 - Tặng 1 Hộp Cùng Loại''', N'loc-4-hộp-khan-giay-bless-you-tet-2019--tang-1-hộp-cung-loai', N'75000', N'6', N'ddd82cdfd78ee772f36236b48fb2e283.jpg', N'1003', N'10', N'6', N'"
ZEINO nước giặt tiên tiến can tím 3.5kg.
Hương sữa tắm cá ngựa - thơm mát gấp nhiều lần
Nước giặt ZEINO thấm sâu vào từng sợi vải - vừa giặt sạch dễ dàng vừa lưu lại hương thơm như sữa tắm.
Dùng được cho cả giặt tay và giặt máy (cửa trên và cửa ngang)
Dịu nhẹ - an toàn với da tay "', N'4', N'7', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (65, N'N''Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Chanh Sả Chai 475ml''', N'gel-tay-rua-bon-cau-va-nha-tam-vim-trang-sang-hương-chanh-sa-chai-475ml', N'23000', N'8', N'6e85699878e93345cab01a1f60ec460e.jpg', N'19', N'11', N'6', N'"
Giấy Vệ Sinh Lency (15 Cuộn) được sản xuất với dây chuyền sản xuất khép kín và hiện đại đạt tiêu chuẩn an toàn tại Việt Nam. Giấy vệ sinh Lency cao cấp có độ dai - mềm mịn - trắng và khả năng thấm hút nước cao đem đến cho người dùng sự thoải mái - dễ chịu khi tiếp xúc với làn da. 
Giấy vệ sinh Lency cao cấp được sử dụng được với nhiều mục đích khác nhau. Với thiết kế dạng cuộn có lõi giúp bạn dễ dàng cài vào móc đựng giấy vệ sinh - mang lại sự tiện lợi khi sử dụng. 
 "', N'4', N'8', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (66, N'N''Nước giặt ZEINO tím 3.5kg''', N'nưoc-giat-zeino-tim-3.5kg', N'80000', N'45', N'fe28f1559d8f3fa6e624b26a3b3bb9c7.jpg', N'25', N'9', N'6', N'"
Nước Tẩy Bồn Cầu Vim Diệt Khuẩn 500ml - Xanh Biển
Nước Tẩy Bồn Cầu Vim Diệt Khuẩn 500ml - Xanh Biển có hương thơm nhẹ nhàng - tươi mát - cùng công thức diệt khuẩn Sodium Hypochlorite được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur - Vim giúp bạn tiêu diệt vi khuẩn gây bệnh đồng thời tẩy sạch vết bẩn mà không làm ăn mòn các bề mặt gạch hay bồn cầu

Thông tin sản phẩm
Công thức tẩy sạch mảng bám
Với công thức diệt khuẩn Sodium Hypochlorite được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - VIM là sản phẩm tẩy rửa có khả năng:
- Diệt sạch vi khuẩn gây bệnh
- VIM chứa Sodium Hypochlorite có khả năng tấn công hóa học vào protein của tế bào vi khuẩn - phá hủy tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus (siêu vi)
An toàn - không gây hư hại bồn cầu
Sản phẩm có khả năng tẩy sạch các vết ban hữu cơ trong bồn cầu mà không làm mất độ bóng của gạch men. Công thức của VIM không chứa acid như các sản phẩm tẩy rửa thông thường khác nên không ăn mòn các bề mặt gạch hay bồn cầu
Thiết kế dạng chai tiện dụng
Nước Tẩy Bồn Cầu Vim Diệt Khuẩn có thiết kế dạng chai tiện lợi - dễ sử dụng - giúp phân tán chất lỏng đến tất cả mọi bề mặt - mọi vị trí mong muốn - cho hiệu quả vệ sinh cao hơn.
Hương thơm tươi mát
Sản phẩm có mùi hương nhẹ nhàng - tươi mát - để lại hương thơm dễ chịu và tạo cảm giác sạch thoáng cho toilet nhà bạn.
Hướng dẫn sử dụng
Xịt Vim trực tiếp dưới vùng bồn cầu - đậy nắp
Sau khoảng 10 phút - dùng bàn chải chà nhẹ và xả nước
Hòa 2 nắp sản phẩm vào 1/2 xô nước (2.5L)
Dùng để tẩy rửa sàn và nhiều bề mặt khác nhau
Hướng dẫn diệt khuẩn với dung dịch đậm đặc
Rãnh thoát nước trong nhà tắm/nhà bếp: xịt trực tiếp lên rãnh thoát nước để tẩy sạch và loại bỏ mùi hôi rồi xả nước
Bồn rửa: Xịt vào lỗ thoát thước - để 5 phút và sau đó xả nước
Lưu ý
Mang bao tay và khẩu trang khi sử dụng sản phẩm
Tránh tiếp xúc với mắt và da vì có thể gây kích ứng
Nếu sản phẩm dính lên da - rửa sạch ngay bằng nhiều nước
Nếu dính vào mắt - rửa sạch ngay với nhiều nước và đến kiểm tra tại cơ sở y tế
Nếu nuốt phải - đến ngay sơ sở y tế và mang theo chai hoặc nhãn mác "', N'4', N'9', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (67, N'N''Giấy Vệ Sinh Lency (15 Cuộn)''', N'giay-ve-sinh-lency-(15-cuộn)', N'86501', N'9', N'1a1e4de0499c5fd63cc77c7c0373be9c.png', N'25', N'12', N'6', N'"
Nước Lau Kính Cif là sản phẩm tiện ích giúp làm sáng bóng bề mặt làm bằng kính và các vật  dụng khác. Công thức đậm đặc và hoạt chất tẩy rửa tiên tiến sẽ giúp bạn lau  sạch bóng mặt kính với hiệu quả cực mạnh. Sản phẩm thích hợp sử dụng  cho các loại  cửa kính - gương soi - màn hình TV - các bề mặt làm bằng crôm -  inox…
Thông tin sản phẩm
Công thức đậm đặc với hiệu quả làm sạch nhanh chóng
Công thức đậm đặc và hoạt chất tẩy rửa tiên tiến cho hiệu quả làm sạch  kính cực mạnh khi sử dụng - ngay cả những vết khó lau chùi như dầu mỡ -  mảng bám.
Ngăn đọng hơi nước tốt và không để lại vết ố lên kính.
Duy trì độ sáng bóng - giúp mặt kính sạch bong như mới - đồng thời chống bám bụi trở lại.
Hiệu quả trên các bề mặt kính
Sản phẩm thích hợp sử dụng cho các loại kính như kính trong - kính mờ -  gương soi và đồ dùng pha lê - bề mặt formica - đồ inox. Những thành phần  hóa học trong sản phẩm sẽ nhanh chóng giúp loại sạch mọi bụi bẩn để trả  lại một bề mặt kính sáng bóng - tô điểm cho ngôi nhà của bạn thêm sang  trọng.
An toàn - không độc hại
Sản phẩm không tồn đọng chất gây hại - an toàn cho sức khỏe người sử dụng.
Hương thơm nhẹ nhàng - tươi mát
Nước Lau Kính Cif có mùi hương tự nhiên thơm mát - mang đến cho bạn cảm giác thoải mái - dễ chịu.
Hướng dẫn sử dụng
Vặn nút chai qua ON.
Phun Cif lên bề mặt cần làm sạch rồi lau lại bằng khăn ẩm. Sau khi sử dụng vặn nút chai về OFF.
Đối với những vết bẩn cứng đầu như dầu mỡ - mảng bám lâu ngày - nên chờ ít phút rồi mới lau sẽ cho kết quả làm sạch cao hơn.
Lưu ý
Tránh để hóa chất vào mắt - để xa tầm tay trẻ em - không được uống.
Để nơi khô thoáng - tránh nơi có nhiệt độ cao.
Tránh nhiệt độ cao và ánh sáng trực tiếp "', N'4', N'10', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (68, N'N''Nước Tẩy Bồn Cầu Vim Diệt Khuẩn 500ml - Xanh Biển''', N'nưoc-tay-bon-cau-vim-diet-khuan-500ml--xanh-bien', N'21000', N'5', N'dabf9450a8e89ed2bb21a7a8f81bf22b.jpg', N'25', N'13', N'6', N'"
Nước Xả  Vải Comfort Đậm Đặc 1 Lần xả Hương Ban Mai Chai 3.8L
Nước Xả  Vải Comfort Đậm Đặc 1 Lần xả Hương Ban Mai Chai 3.8L sẽ giúp quần áo của cả gia đình bạn luôn thơm mát cả ngày. Bên cạnh đó - công thức đậm đặc 1 lần xả sẽ giúp bạn tiết kiệm chi phí hơn so với các loại nước vải thông thường khác.
Thông tin sản phẩm
Công thức 1 lần xả
Comfort Một lần xả áp dụng công thức cắt bọt và chống tái bám giúp áo quần hoàn toàn sạch bọt xà phòng chỉ trong 1 lần xả. Với cách này - bạn không chỉ an tâm với áo quần hoàn sạch bọt xà phòng mà còn tiết kiệmthời gian và công sức. Ngoài ra - sử dụng Comfort Một lần xả là bạn đã góp phần giúp tiết kiệm nước - bảo vệ môi trường.
Công thức đậm đặc
Sản phẩm có công thức đậm đặc giúp cho vải không bị khô cứng nhất là đối với quần áo cũ. Công thức đậm đặc sẽ giúp bạn tiết kiệm hơn so với các loại nước xả thông thường khác.
Hương ban mai thanh khiết
Nước Xả Vải Comfort Đậm Đặc Hương Ban Mai chứa tinh dầu thơm 100% tự nhiên được chưng cất từ hoa và thảo mộc cho hương thơm thanh khiết như ánh nắng ban mai - xua tan đi mùi ẩm mốc khó chịu trong những ngày mưa bão.
Lưu hương thơm thật lâu trên quần áo
Công nghệ tỏa hương mới từ Comfort Đậm Đặc giúp áo quần tỏa hương thơm ngát theo từng cử động của bạn suốt cả ngày dài. Chỉ cần một lần xả - áo quần sạch xà phòng và thơm ngát đến bất ngờ.
Thiết kế chai lớn 3.8L
Nước Xả Vải Comfort Đậm Đặc Hương Ban Mai nay có thêm thiết kế chai lớn 3.8L giúp bạn tiết kiệm chi phí và thời gian mua sắm.
Hướng dẫn sử dụng
- Giặt tay: Sau khi giặt với xà phòng - vắt quần áo cho bớt bọt. Hòa nước xả vải vào nước - đảm bảo lượng nước đủ ngập hết quần áo. Ngâm quần áo ít nhất 10 phút. Sau đó vắt và phơi khô - không cần xả thêm với nước.
- Giặt máy: Hòa nước xả vải vào ngay nước xả đầu tiên - không cần xả thêm với nước. "', N'4', N'11', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (69, N'N''Nước Lau Kính Cif (520ml)''', N'nưoc-lau-kinh-cif-(520ml)', N'24000', N'8', N'af8368ede480990d544c6c07960d658a.jpg', N'', N'14', N'5', N'"

Khăn Giấy Thếp Paseo Hoa Lan (220 Tờ x 2 Lớp) được làm hoàn toàn từ bột giấy tự nhiên đã qua nhiều khâu xử lý bằng máy móc hiện đại nên hoàn toàn không có chất tẩy trắng độc hại - không gây kích ứng da - đảm bảo an toàn tuyệt đối cho người dùng.
Thiết kế 2 lớp nên giấy có độ dai tuyệt hảo - độ mềm mại cùng khả năng thấm hút vượt trội - mang lại sự thoải mái và yên tâm tuyệt đối khi sử dụng.
Sản phẩm gồm 220 tờ khăn giấy 2 lớp Paseo - tiện lợi hơn khi sử dụng - đáp ứng tối đa nhu cầu đa dạng và ngày càng khắt khe của người tiêu dùng.​
 "', N'4', N'12', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (70, N'N''Nước Xả  Vải Comfort Đậm Đặc 1 Lần xả Hương Ban Mai Chai 3.8L ''', N'nưoc-xa--vai-comfort-dam-dac-1-lan-xa-hương-ban-mai-chai-3.8l-', N'185000', N'16', N'2b39108827b8c62fb4f20189d73510d1.jpg', N'26', N'15', N'6', N'"

Nước Rửa Chén Sinh Học Tero Hương Quế Cam (700g) đánh bay mọi vết dầu mỡ nhờ chứa các enzyme được chiết xuất 100% từ tự nhiên - có chức năng làm sạch nhanh. 
Ngoài ra - sản phẩm có độ pH trung tính (pH 5.5 – 7) - để bạn hoàn toan yên tâm rửa chén bát mà không lo kích ứng da. 
9/10 phụ nữ Việt Nam đã trải nghiệm và xác nhận khả năng làm sạch nhanh chén bát và bảo vệ da tay vượt trội của Tero. 
Nước rửa chén bát sinh học Tero - Bảo vệ tay - bay dầu mỡ.
 "', N'4', N'13', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (71, N'N''Khăn Giấy Thếp Paseo Hoa Lan (220 Tờ x 2 Lớp) - Màu Ngẫu Nhiên''', N'khan-giay-thep-paseo-hoa-lan-(220-to-x-2-lop)--mau-ngau-nhien', N'22000', N'12', N'5fa60b9079c731bd17cfe1160f6c66ec.jpg', N'26', N'15', N'6', N'"

Nước Giặt Trung Tính Tero (3.8Kg) - Một trong những nguyên nhân làm bạn bị khô da hay bong tróc da tay trong khi giặt tay đó là nồng độ pH quá cao trong bột giặt hoặc nước giặt mà bạn đang sử dụng. Nước giặt trung tính Tero với độ pH Trung tính pH7 thân thiện với làn da - ngoài ra với công nghệ Ultra Clean đánh bay mọi vết bẩn giúp bạn hoàn toan yên tâm khi chăm sóc gia đình.
Nước giặt trung tính Tero pH = 7 an toàn - không gây hại cho da khi giặt tay và công nghệ Ultra Clean sạch gấp 3 lần bột giặt thông thường - giúp tiết kiệm thời gian và chi phí giặt giũ hơn hẳn. Từ đây - người phụ nữ có thể hoàn toàn yên tâm trong việc chăm sóc gia đình.
Dùng được cho cả giặt tay và giặt máy.
 "', N'4', N'14', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (72, N'N''Nước Rửa Chén Sinh Học Tero Hương Quế Cam (700g)''', N'nưoc-rua-chen-sinh-hoc-tero-hương-que-cam-(700g)', N'22960', N'18', N'ccecbd5b9b675b9e3e32f8adbdc0c114.jpg', N'25', N'16', N'6', N'"

Giấy Vệ Sinh Sài Gòn Clean 1 (10 Cuộn / Lốc) là sản phẩm giấy vệ sinh chất lượng cao được sản xuất trên dây chuyền khép kín với công nghệ mới đảm bảo an toàn vệ sinh.
Sản phẩm có độ dai và khả năng thấm hút nước cao.
Được sản xuất bằng chất liệu bột giấy ngoại nhập - những cuộn giấy này rất mềm mại - không gây kích ứng da và dùng được cho cả trẻ em.
Sản phẩm được sử dụng được với nhiều mục đích khác nhau - đáp ứng mọi nhu cầu sử dụng trong nhà cũng như các chuyến dã ngoại.
Mang lại sự tiện lợi khi sử dụng - đáp ứng tối đa nhu cầu đa dạng và ngày càng khắt khe của người tiêu dùng.
 "', N'5', N'15', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (73, N'N''Nước Giặt Trung Tính Tero (3.8Kg)''', N'nưoc-giat-trung-tinh-tero-(3.8kg)', N'125300', N'30', N'1fda7cf4dc7d6958ea4bc1e8a4e1a210.jpg', N'25', N'9', N'6', N'"




Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Oải Hương Dịu Mát Chai 880ml dịu mát giúp tẩy rửa bồn cầu và nhà tắm - diệt sạch vi khuẩn gây bệnh - cho bồn cầu và phòng tắm trắng sáng và lưu lại hương thơm dịu mát - sạch sẽ.Với công thức diệt 99 -99% vi khuẩn được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - Vim là sản phẩm tẩy rửa có công thức đậm đặc giúp diệt sạch vi khuẩn gây bệnh - có khả năng tấn công hoá học vào protein của tế bào vi khuẩn - phá huỷ tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus.Sản phẩm an toàn cho sức khoẻ của người sử dụng - không gây hư hại bồn cầu.Đặc biệt - với công thức đổi màu igups tăng khả năng quan sát trực quan khi tẩy rửa - cho bạn thấy kết quả ngay khi sử dụng. Với hương Oải Hương với chiết suất từ thiên nhiên cho bồn cầu và nhà tắm thơm mát dễ chịu. "', N'5', N'16', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (74, N'N''Giấy Vệ Sinh Sài Gòn Clean 1 (10 Cuộn / Lốc)''', N'giay-ve-sinh-sai-gon-clean-1-(10-cuộn-/-loc)', N'45000', N'', N'5fab74ba18259ebb369007203e9660ef.png', N'26', N'15', N'6', N'"

Nước Rửa Chén Sinh Học Tero Hương Chanh (700g) đánh bay mọi vết dầu mỡ nhờ chứa các enzyme được chiết xuất 100% từ tự nhiên - có chức năng làm sạch nhanh. 
Ngoài ra - sản phẩm có độ pH trung tính (pH 5.5 – 7) - để bạn hoàn toan yên tâm rửa chén bát mà không lo kích ứng da. 
9/10 phụ nữ Việt Nam đã trải nghiệm và xác nhận khả năng làm sạch nhanh chén bát và bảo vệ da tay vượt trội của Tero. 
Nước rửa chén bát sinh học Tero - Bảo vệ tay - bay dầu mỡ.
 "', N'5', N'17', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (75, N'N''Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Oải Hương Dịu Mát Chai 880ml''', N'gel-tay-rua-bon-cau-va-nha-tam-vim-trang-sang-hương-oai-hương-diu-mat-chai-880ml', N'31000', N'16', N'455a35f7f8697852ebb6c2f7250f8bea.jpg', N'25', N'6', N'6', N'"
Lốc 10 Gói Khăn Giấy Bỏ Túi Cao Cấp Sài Gòn Bless You Lamour 4 Lớp có thiết kế nhỏ gọn - bao bì đẹp mắt - dễ dàng cho bạn bỏ túi mang theo sử dụng ở bất cứ đâu. Giấy có bề mặt mịn màng - có khả năng thấm hút nước tốt. Sản phẩm không chỉ chất lượng - an toàn cho sức khỏe người tiêu dùng mà còn thân thiện với môi trường - dễ dàng phân hủy.

Sài Gòn Bless You Hold Me được làm từ bột giấy nguyên chất 100% - cho bề mặt giấy mịn màng - có độ dai hoàn hảo - khả năng thấm hút nước tuyệt vời - mang đến cho bạn sự hài lòng và cảm giác thoải mái.
Giấy không sử dụng các hóa chất độc hại để làm trắng - kết hợp với dây chuyền sản xuất khép kín đạt tiêu chuẩn an toàn tại Việt Nam - mang đến cho bạn sự an tâm khi sử dụng
Giấy được đựng trong gói nhỏ đẹp mắt và tiện dụng - dễ dàng cho bạn bỏ túi để mang theo sử dụng ở bất cứ đâu.
Sản phẩm đặc biệt thân thiện với môi trường - dễ phân hủy.
 "', N'5', N'18', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (76, N'N''Nước Rửa Chén Sinh Học Tero Hương Chanh (700g)''', N'nưoc-rua-chen-sinh-hoc-tero-hương-chanh-(700g)', N'22960', N'18', N'f20ec987bf5b6990ea46eee9c3198e1c.jpg', N'1004', N'17', N'6', N'"

Nước Rửa Chén Hương Quả Hồng Layer Clean (5L / Bình) là nước rửa chén hữu cơ - bảo vệ da tay - không độc hại - hương liệu tự nhiên.
Thành phần chính là tinh chất trà xanh đủ sức mạnh làm sạch dầu mỡ - khử mùi thức ăn - sạch nhanh - sáng bóng - không bị cảm giác nhờn dính - khó chịu ngay cả với đồ nhựa.
Sản phẩm tạo bọt tốt - giúp đánh bật những mùi hôi khó chịu nhất như cá - mắm tôm và tỏi - ngay cả trên đồ nhựa ngát hương thơm.
Nước rửa chén Layer Clean không làm nhờn tay - không lưu mùi - an toàn và dịu nhẹ.
 "', N'5', N'19', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (77, N'N''Lốc 10 Gói Khăn Giấy Bỏ Túi Cao Cấp 4 Lớp Bless You L''amour''', N'loc-10-goi-khan-giay-bo-tui-cao-cap-4-lop-bless-you-l''amour', N'24000', N'11', N'7e0e38a95fa489e4004de4ba3633e81e.jpg', N'25', N'18', N'5', N'"

Giấy Vệ Sinh Toply (12 Cuộn x 2 Lớp) được làm từ 100% bột giấy nguyên chất được nhập khẩu từ APP Indonesia - sản xuất theo dây chuyền công nghệ tiên tiến tại nhà máy PT. Pindo Deli Puld và Paper Mil.
Giấy vệ sinh Toply thấm mịn - mềm mại - không dính bụi bẩn - không tạp chất. Đặc biệt - sản phẩm không gây kích ứng da - không ảnh hưởng đến sức khỏe người sử dụng.
Giấy vệ sinh Toply là sự lựa chọn tuyệt vời nhất cho bạn và những người thân yêu. Giấy vệ sinh Toply đem tất cả yêu thương chăm sóc cho cuộc sống của bạn và những người thân yêu mỗi ngày.
 "', N'5', N'20', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (78, N'N''Nước Rửa Chén Hương Quả Hồng Layer Clean (5L / Bình)''', N'nưoc-rua-chen-hương-qua-hong-layer-clean-(5l-/-binh)', N'135000', N'', N'd27b0375a01d843f710db1c96ab5adb9.jpg', N'25', N'8', N'4', N'"


Combo 3 Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen tự động làm sạch máy giặt từ sâu bên trong - những vị trí khó nhìn thấy và khó vệ sinh nhất - tẩy sạch chất cặn bã từ quần áo tích tụ lâu ngày trong máy giặt - tiết kiệm thời gian - công sức khi vệ sinh máy giặt.
Khử mùi - khử vi khuẩn - nấm mốc gây ra các bệnh hô hấp - dị ứng
Bảo dưỡng - làm thông thoáng máy giặt - hạn chế tình trạng tắc nghẽn - tăng tuổi thọ cho máy giặt
Bột tẩy lồng máy giặt Homes Queen được sản xuất từ công ty Hàn Quốc với công nghệ tiên tiến và hơn 30 năm kinh nghiệm sản xuất các sản phẩm tẩy rửa đồ dùng nhà cửa - không cần tháo lắp máy giặt vẫn có thể vệ sinh máy sạch sẽ.
Sản phẩm được chứng nhận an toàn với người sử dụng và môi trường - dùng được cho cả máy giặt lồng ngang - lồng đứng
 "', N'5', N'21', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (79, N'N''Giấy Vệ Sinh Toply (12 Cuộn x 2 Lớp)''', N'giay-ve-sinh-toply-(12-cuộn-x-2-lop)', N'48000', N'26', N'8021c7a8a3188b22542dbf56f946ee27.jpg', N'1005', N'19', N'10', N'"

Nước Giặt Xả Maxkleen Hương Nước Hoa Huyền Diệu được chiết xuất từ tự nhiên cho mùi hương thơm ngát.
Công nghệ Ultra Kép đột phá kết hợp hài hoà 2 sức mạnh giặt & xả trong 1 nắp giặt cho áo quần sạch khuẩn & thơm mềm.
Mang lại cảm giác thoải mái cho người sử dụng.
 "', N'5', N'22', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (80, N'N''Combo 3 Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen (400g / Túi)''', N'combo-3-bột-tay-ve-sinh-long-may-giat-homes-queen-(400g-/-tui)', N'119000', N'21', N'4de1396ee9b9d6625aba32c5725b4342.png', N'25', N'14', N'5', N'"

Giấy Vệ Sinh Paseo 2 Lớp (10 Cuộn) là sản phẩm giấy chất lượng có xuất xứ từ Indonesia - được làm bằng bột giấy nguyên chất - không chứa các hóa chất độc hại - không gây kích ứng da - đảm bảo an toàn tuyệt đối cho người dùng.
Sản phẩm gồm 10 cuộn giấy vệ sinh 2 lớp có độ dai - mềm và khả năng thấm hút nước cao - mang lại sự thoải mái và yên tâm tuyệt đối khi sử dụng - đặc biệt dễ chịu khi tiếp xúc với làn da.
Sản phẩm hoàn toàn không có hóa chất tẩy trắng độc hại - sử dụng được với nhiều mục đích khác nhau. Với thiết kế dạng cuộn có lõi giúp bạn dễ dàng cài vào móc đựng giấy vệ sinh - mang lại sự tiện lợi khi sử dụng - đáp ứng tối đa nhu cầu đa dạng và ngày càng khắt khe của người tiêu dùng.
 "', N'5', N'23', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (81, N'N''Túi Nước Giặt Xả Maxkleen Hương Nước Hoa Huyền Diệu (2.4kg)''', N'tui-nưoc-giat-xa-maxkleen-hương-nưoc-hoa-huyen-dieu-(2.4kg)', N'116000', N'15', N'8004c99cd0c5b49bd8ff901d9db9a6b7.jpg', N'25', N'20', N'6', N'"
Nước Rửa Chén Sunlight Chanh Dạng Chai 750g
Nước Rửa Chén Sunlight Chanh Dạng Chai 750g sẽ giúp cho chén bát sạch bong kin kít và ngát hương thơm. Sản phẩm mang lại sức mạnh đánh bay dầu mỡ tương đương 100 trái chanh. Sản phẩm có khả năng rửa sạch dầu mỡ cả trên đồ nhựa và dịu nhẹ dịu với da tay - an toàn cho người dùng. Với hương chanh tươi mát - đây sẽ là sự lựa chọn hoàn hảo cho các bà nội trợ.

Thông tin sản phẩm
Công thức đánh bay dầu mỡ hiệu quả
Sunlight với chiết xuất chanh tươi và muối khoáng tự nhiên - giúp đánh bay dầu mỡ với sức mạnh như 100 trái chanh.
Turbo sạch cực nhanh - kết hợp chiết xuất chanh với các hoạt chất tẩy rửa - giúp làm yếu liên kết dầu mỡ - làm sạch nhanh - sạch dầu mỡ trên cả đồ nhựa - cho chén dĩa sạch bong kin kít chỉ với một lần rửa.
Khử sạch mùi tanh
Ngoài khả năng đánh tan dầu mỡ - Nước Rửa Chén Sunlight Chanh còn có hương thơm thanh mát từ chanh - giúp khử sạch các loại mùi tanh khó chịu và bám lâu bao gồm: mùi tanh của cá - trứng tanh - tỏi - nước mắm và mắm tôm ngay cả trên đồ nhựa; mang lại hương thơm tự nhiên - thơm mát cho bát đĩa.

An toàn - dịu nhẹ
Nước Rửa Chén Sunlight Chanh sử dụng các thành phần tự nhiên - bảo vệ bàn tay và mang lại cảm giác an toàn - dịu nhẹ.
Thiết kế chai 750g tiện dụng 
Nước Rửa Chén Sunlight Chanh chai 750g có dung tích vừa phải - thiết kế chai không quá lớn - không chiếm nhiều diện tích quanh bệ rửa bát nhà bạn.
Hướng dẫn sử dụng
Pha loãng sản phẩm vào nước hoặc sử dụng trực tiếp - rửa sạch các vết bẩn và tráng lại chén đĩa bằng nước sạch.
Lưu ý
Không được uống. Để xa tầm tay trẻ em. Nếu sản phẩm dính vào mắt - rửa sạch bằng nước. Nếu nuốt phải - uống ngay 1 ly nước hoặc sữa - nếu cần thì đến cơ sở y tế.
Lưu trữ nơi khô ráo - tránh ánh nắng trực tiếp. "', N'5', N'24', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (82, N'N''Giấy Vệ Sinh Paseo 2 Lớp (10 Cuộn)''', N'giay-ve-sinh-paseo-2-lop-(10-cuộn)', N'67000', N'11', N'2e5ade69e4a60a3710720541943a7e7f.jpg', N'25', N'20', N'6', N'"
                Nước Lau Sàn Sunlight Tinh Dầu Thiên Nhiên - Hương hoa Diên Vỹ (2.6kg/Túi) là nước lau sàn mới với công nghệ tiên tiến - giúp sàn nhà bạn sạch bóng không tì vết và ngát hương thơm chỉ sau một lần lau nhẹ. Bạn có thể sử dụng sản phẩm cho các không gian trong nhà như: phòng ngủ - phòng khách bếp và phòng tắm - mang lại vẻ sáng bóng cho tổ ấm của bạn.
Đánh bay vết bẩn nhanh chóng
Với hoạt chất tẩy rửa năng động cùng công thức tiên tiến - nước lau sàn sẽ đánh bật các vết bẩn và bụi bám ở mọi ngóc ngách hiệu quả - cho sàn nhà sạch bong và sáng bóng chỉ sau một lần lau.
Chất hoạt động bề mặt tiên tiến có trong nước lau sàn tách vết dơ ra khỏi sàn nhà ngay khi vừa tiếp xúc - đồng thời các hoạt chất tẩy rửa sẽ diệt khuẩn - hạn chế bám bụi trở lại.
Cùng với động tác lau sàn của bạn - vết dơ sẽ bị cuốn trôi - không để lại cảm giác dính chân - giúp cho sàn nhà sạch bóng - và lưu lại hương thơm trong nhà.
Khử sạch mùi khó chịu với hương Hoa Diên Vỹ
Nước Lau Sàn Sunlight Hương Hoa Diên Vỹ còn có hương Hoa Diên Vỹ dịu nhẹ giúp khử sạch các loại mùi khó chịu trong phòng. Hương hoa dễ chịu lưu lại trên sàn sẽ mang lại cảm giác dễ chịu - sảng khoái cho ngôi nhà của bạn.
An toàn - dễ sử dụng
Công thức độc đáo hiệu quả có thể đuổi côn trùng - không có hại cho sức khỏe của bạn.
Sử dụng nước Lau sàn Sunlight thường xuyên có thể làm cho sàn nhà bạn nhìn như mới với hương thơm ngát.
Thiết kế dạng chai tiện dụng
Nước Lau Sàn Sunlight Hương Hoa Diên Vỹ có thiết kế dạng chai tiện lợi - dễ sử dụng - dễ dàng lấy đủ lượng dung dịch cần dùng và dễ dàng cất giữ sau khi sử dụng xong.

Hướng dẫn sử dụng
Hòa 1 nắp đầy Sunlight vào nửa xô nước
Nhúng ướt giẻ lau rồi lau sạch các vết bẩn
Không lau lại bằng nước

Lưu ý
Tránh để hóa chất vào mắt - để xa tầm tay trẻ em - không được uống.
Để nơi khô thoáng - tránh nơi có nhiệt độ cao.
Tránh nhiệt độ cao và ánh sáng trực tiếp            "', N'5', N'25', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (83, N'N''Nước Rửa Chén Sunlight Chanh Dạng Chai 750g''', N'nưoc-rua-chen-sunlight-chanh-dang-chai-750g', N'23000', N'', N'607ef2da7bce9756f53415ef239f3b4f.jpg', N'11', N'21', N'6', N'"

Đường ống ở trong phòng tắm - toilet và nhà bếp thường xuyên rơi vào trạng thái bị tắc - làm tập chung vi khuẩn và gây mùi hôi thối làm bạn khó chịu - bận đừng lo lắng với sản phẩm Chai thông tắc đường ống loại to 800g Daiichi tình trạng trên hoàn toàn được khắc phục.
Công dụng: loại bỏ bùn tắc - bùn ướt ở trong ống thoát nước. Dung dịch sẽ tiếp xúc với phần đường ống bị tắc - nhanh chóng hòa tan và loại bỏ các phần tóc - bùn - bùn nhão diệt tận gốc vi khuẩn - các chất bẩn và mùi hôi thối. Sử dụng cho đường ống ở trong phòng tắm - toilet và nhà bếp. Không sử dụng với các đồ bằng men - nhôm - đồng. Liều lượng sử dụng: Sử dụng khoảng 320 ~ 480ml cho 1 lần làm sạch. Sau khi đổ chất tẩy - đợi 30 đến 60 phút và xả nước làm sạch.
Thông tin sản phẩm:
Trọng lượng: 800g/chai
Hàng nhập khẩu từ Nhật Bản.
Sản xuất tại Nhật
Mã sản phẩm: 4902050473000
 "', N'5', N'26', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (84, N'N''Nước Lau Sàn Sunlight Tinh Dầu Thiên Nhiên - Hương hoa Diên Vỹ (2.6kg/Túi)''', N'nưoc-lau-san-sunlight-tinh-dau-thien-nhien--hương-hoa-dien-vy-(2.6kg/tui)', N'56000', N'2', N'02c88276a33783aa309831c63e30dabb.jpg', N'25', N'9', N'6', N'"




Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Oải Hương Dịu Mát Chai 475ml dịu mát giúp tẩy rửa bồn cầu và nhà tắm - diệt sạch vi khuẩn gây bệnh - cho bồn cầu và phòng tắm trắng sáng và lưu lại hương thơm dịu mát - sạch sẽ.Với công thức diệt 99 -99% vi khuẩn được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - Vim là sản phẩm tẩy rửa có công thức đậm đặc giúp diệt sạch vi khuẩn gây bệnh - có khả năng tấn công hoá học vào protein của tế bào vi khuẩn - phá huỷ tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus.Sản phẩm an toàn cho sức khoẻ của người sử dụng - không gây hư hại bồn cầu.Đặc biệt - với công thức đổi màu igups tăng khả năng quan sát trực quan khi tẩy rửa - cho bạn thấy kết quả ngay khi sử dụng. Với hương Oải Hương với chiết suất từ thiên nhiên cho bồn cầu và nhà tắm thơm mát dễ chịu. "', N'5', N'27', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (85, N'N''Chai thông tắc đường ống cống Daiichi 800g nội địa Nhật Bản''', N'chai-thong-tac-dưong-ong-cong-daiichi-800g-nội-dia-nhat-ban', N'54990', N'57', N'63d713b6bbcac45cff93b17b2c74f7c3.jpg', N'25', N'3', N'6', N'"
Nước Giặt Máy Bền Đẹp Cửa Trước OMO 2.7kg - 21122484 có công thức cải tiến mới - thiết kế dành riêng cho máy giặt cửa trước - giúp nhanh chóng đánh bay những vết bẩn cứng đầu. Ngoài ra - sản phẩm có hương thơm nhẹ nhàng - thanh khiết mang đến sự dễ chịu khi sử dụng.
Thông tin sản phẩm
Nước giặt cho máy giặt cửa trước
Sản phẩm được thiết kế cho dòng máy giặt cửa trước - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Hương thơm bền lâu
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
An toàn - thân thiện với môi trường
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Hướng dẫn sử dụng
- Đổ nước giặt OMO vào nắp với liều lượng theo hướng dẫn.
- Thoa một lượng nhỏ nước giặt trực tiếp lên vết bẩn.
- Đổ phần nước giặt còn lại trong nắp vào máy giặt cùng với quần áo.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'6', N'28', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (86, N'N''Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Oải Hương Dịu Mát  Chai 475ml''', N'gel-tay-rua-bon-cau-va-nha-tam-vim-trang-sang-hương-oai-hương-diu-mat--chai-475ml', N'23000', N'8', N'77e2a7cb1c58fb0763712818591a5532.jpg', N'8', N'22', N'6', N'"
Thông tin sản phẩmTên sản phẩm : Bột thông cống Hando 100g nội địaThành phần : Nước - hydrogen peroxide - sodium silicat - sodiumhypo chloriteCông dụng : Thông cống - chống phá tắc nghẽnHướng dẫn bảo quản : Nơi khô ráo - thoáng mát. Để xa tầm tay trẻ em. Khi bị bắn vào mắt phải rửa ngay bằng nước sạch.
- Bột thông cống Hando 100g nội địa với công thức tiên tiến - các thành phần hóa học chuyên dụng - độ tẩy cực mạnh sẽ xoáy tan mọi cặn bẩn trong đường ống một cách hiệu quả.- Sản phẩm sẽ thông sạch mọi loại cặn bẩn như giấy - giẻ - rác - rau - mỡ - thịt - gạo - tóc...kẹt trong đường ống thoát nước của chậu rửa nhà bếp - lavabo - bồn tắm -...mà không làm hư hại đường ống và các thiết bị vệ sinh.- Sản phẩm được đóng gói nhỏ tiện lợi - dễ sử dụng.

Hướng dẫn sử dụng- Cắt chéo túi - đổ hạt bột vào xô nhựa - hòa tan với khoảng nửa lít nước - đổ dung dịch vào cổ ống nơi bị tắc nghẽn- Để từ 1- 3 giờ rồi xả mạnh nước cho chảy đi (tốt nhất là đổ buổi tối - để tới sáng hôm sau mới xả mạnh nước hoặc dùng thụt cao su thụt cho chảy đi)- Trong trường hợp cống bị tắc nghẽn nặng hoặc đường ống lớn - nên dùng 2 gói "', N'6', N'29', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (87, N'N''Nước Giặt Máy Bền Đẹp Cửa Trước OMO 2.7kg - 21122484''', N'nưoc-giat-may-ben-dep-cua-trưoc-omo-2.7kg--21122484', N'147000', N'21', N'7154361c9278d4892c1d56e6335bae99.jpg', N'1001', N'1', N'29', N'"

Combo 2 Túi Nước Giặt Ariel Khử Mùi Ẩm Mốc (2.15Kg/ Túi) là sản phẩm được nhiều người ưa chuộng bởi tính năng đánh bay vết bẩn ngay từ lần giặt đầu tiên - làm trắng sáng vải - giúp vải mềm mịn và khử mùi ẩm mốc - lưu lại hương thơm trên quần áo.
Giúp loại sạch vết bẩn cứng đầu tốt hơn trong 1 bước giặt với hương thơm bền lâu. 
Loại bỏ các vết bẩn cứng đầu chỉ trong 1 bước và giúp giữ được quần áo trắng sáng - mềm mịn như mới.
Bổ sung hương thơm đam mê quyến rũ lưu lại - khử sạch mùi ẩm mốc. 

Hướng dẫn sử dụng :

Giặt tay: 15ml cho 5 - 7 chiếc quần áo
Giặt máy: 45ml cho 1 lần giặt thông thường (15 - 20 chiếc quần áo)
 "', N'6', N'30', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (88, N'N''Bột thông cống cực mạnh 100g nội địa Hando''', N'bột-thong-cong-cuc-manh-100g-nội-dia-hando', N'24000', N'40', N'150bace8e7e59f8ba65e164b86726cea.jpg', N'1006', N'23', N'29', N'"
Sản phẩm vi sinh thân thiện với môi trường. Hiệu quả nhanh chóng sau khi sử dụng.Thành phần:Tập hợp các chủng vi sinh vật chuyên dụng: Bacillus spp - Rhodopseudomonas spp - Nitrobacter spp - Nitrosomonas spp … được sản xuất theo công nghệ độc quyền tại Mỹ. Hoạt động tích cực trong môi trường hiếu khí - kỵ khí hoặc tùy nghi.
 Cách dùng:
1. Phân hủy hầm cầu - bể phốt:
Lắc đều và đổ 1 chai 350ml vào hầm cầu - bể phốt để phân hủy chất thải định kỳ 3 tháng/ lần - nếu nghẹt dùng định kỳ 1 - 2 tháng/lần - sử dụng sản phẩm vào cuối ngày - tránh sử dụng hóa chất có tính tẩy mạnh như javen - clo -..trước và sau 3 ngày sử dụng vi sinh để tránh ảnh hưởng đến hệ vi sinh.
 
2. Thông cống - bồn rửa chén:
Đối với bồn rửa chén - cống thoát nước: lắc đều và đổ thật chậm 1 chai 350 ml vào cuối ngày - xả nhẹ bằng nước để sản phẩm trôi và lưu trên đường ống và phát huy tác dụng. Có thể pha loãng đổ từ từ sản phẩm vào cống. Sử dụng định kỳ 3 tháng/lần.Công dụng:Phân hủy nhanh hầm cầu - cống thoát nước nghẹt.Thông nhanh hầm cầu - tránh bị nước xối chậm - xử lý mùi hôi.Phân hủy chất cặn cống thoát nước bị tắc nghẽn.Phân hủy dầu mỡ - chất béo (FOG).Phân hủy protein (thịt - cá).Phân hủy tinh bột - carbohydrate.Phân hủy cellulose (giấy vệ sinh - rau - thực phẩm khác).Phân hủy chất hữu cơ - chất thải con người. Kiểm soát mùi hôi.
Hạn sử dụng:
 Chưa mở nắp: Hạn dùng 2 năm kể từ ngày sản xuất in trên chai. (MFG năm/tháng/ngày).Sau khi mở nắp: 6 tháng. "', N'6', N'31', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (89, N'N''Combo 2 Túi Nước Giặt Ariel Khử Mùi Ẩm Mốc (2.15Kg/ Túi)''', N'combo-2-tui-nưoc-giat-ariel-khu-mui-am-moc-(2.15kg/-tui)', N'269000', N'1', N'32f61b06d4b919ade9763caa41e0b3af.jpg', N'25', N'3', N'6', N'"
Bột Giặt OMO Comfort Tinh Dầu Thơm bung tỏa hương thơm tươi mát kết hợp công thức mới với sức mạnh xoáy bay vết bẩn cứng đầu nhanh hơn chỉ trong 1 lần giặt cho quần áo của bạn luôn sạch thơm như mới.Hương Comfort tinh dầu thơm  bền lâu cho quần áo ngát hương theo từng cử động - giúp bạn thoải mái vận động suốt cả ngày.

Thông tin sản phẩm
Công thức làm sạch vết bẩn độc đáo
Bột Giặt OMO Comfort Tinh Dầu Thơm (2.7g) - 32004710 chứa các hạt Năng Lượng Xoáy hòa tan - thấm sâu thật nhanh vào sợi vải - giúp xoáy bay các bết bẩn cứng đầu chỉ trong 1 lần giặt.
Hương thơm bền lâu
Bột giặt có hương tinh dầu thơm của nước xả Comfort Tinh dầu thơm tinh tế giúp quần áo thơm mát dài lâu - các phân tử hương bung tỏa theo từng cử động
An toàn - thân thiện với môi trường
Bột Giặt OMO Đỏ chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Hướng dẫn sử dụng
Sản phẩm dùng cho giặt tay và máy giặt cửa trên.
Đọc kỹ hướng dẫn sử dụng trước khi dùng.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'6', N'32', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (91, N'N''Bột Giặt OMO Comfort Tinh Dầu Thơm 32004710 (2.7kg) ''', N'bột-giat-omo-comfort-tinh-dau-thơm-32004710-(2.7kg)-', N'110000', N'13', N'ada5be0d58e5a478ba098157efb5294c.jpg', N'25', N'14', N'5', N'"

Combo 4 Hộp Khăn Giấy Hộp Aloe Vera Paseo từ lâu đã trở thành một sản phẩm tiện ích trong cuộc sống hàng ngày của mọi người. Từ sự xuất hiện phổ biến trong các quán ăn - nhà hàng đến các buổi đi chơi - dã ngoại...
Sản phẩm được làm từ bột giấy nguyên chất 100% - kết hợp với dây chuyền sản xuất khép kín đạt tiêu chuẩn an toàn tại Việt Nam - đã cho ra đời loại giấy ăn trắng - dai - mềm mịn.
Khăn giấy đặc biệt thân thiện với môi trường - dễ phân hủy lại nhỏ gọn - giúp bạn có thể mang đi bất cứ đâu. Không chỉ chú trọng về chất lượng - mà mẫu mã của hộp giấy cũng khá đẹp mắt - bạn có thể sử dụng trong nhà ăn - văn phòng làm việc...
 "', N'6', N'34', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (92, N'N''Túi Nước Giặt Xả Maxkleen Hương Hoa Nắng (2.4kg)''', N'tui-nưoc-giat-xa-maxkleen-hương-hoa-nang-(2.4kg)', N'116000', N'15', N'09d3e2501f4689f664452b62f50e1ca6.jpg', N'2', N'4', N'6', N'"
Cùng với gián - kiến cũng là một trong những loài côn trùng gây nhiều phiền toái cho con người. Chúng ta có thể bị dị ứng rất nghiêm trọng nếu như bị kiến cắn. Không những vậy - kiến còn là trung gian truyền nhiếm các bệnh nguy hiểm như tiêu chảy - đậu mùa… Vậy làm cách nào để tiêu diệt chúng một cách nhanh chóng - triệt để mà vẫn đảm bảo an toàn? Thuốc diệt kiến Nhật Bản chính là lời giải cho những băn khoăn trên. Thuốc có tác dụng diệt sạch kiến trong ngôi nhà của bạn một cách nhanh chóng nhất mà không hề gây độc hại cho sức khỏe của bạn cũng như vật nuôi trong nhà.

*Thông tin về sản phẩm:
Thuốc diệt kiến Nhật Bản SUPER ARINOSU KOROKI với cơ chế thu hút kiến từ hương phấn hoa kết hợp hương mật ong loại hương thơm mạnh thu hút kiến nhất - kích thích kiến ăn và mang hạt thức ăn về tổ. Những con kiến ăn và mang thức ăn về tổ đều bị nhiễm thuốc và chết ngay sau đó nên khi dùng thuốc diệt kiến sau 1-2 ngày sẽ thấy hiệu quả tức thì.



Công dụng của thuốc diệt kiến Nhật Bản

Tiêu diệt kiến một cách nhanh chóng. Kiến sẽ bị tiêu diệt ngay lập tức nếu ăn hoặc chạm vào thuốc.
Tiêu diệt các ấu trùng và kiến con khi kiến trưởng thành tha thuốc về tổ.
Tiêu diệt kiến hàng loạt. Thuốc diệt kiến của Nhật với mùi thơm đặc trưng sẽ thu hút bầy kiến - Dinotefuran và chất Hydramethylnon có trong thuốc sẽ làm cho kiến bị đứt ruột.
Tiêu diệt được nhiều loại kiến trong đó cả những loại kiến đã kháng thuốc.

Cách sử dụng và bảo quản thuốc diệt kiến SUPER ARINOSU KOROKI Nhật Bản

Lấy thuốc diệt kiến ra khỏi lớp bảo vệ bằng cách kéo từ từ băng dán trên miệng hộp theo chiều ngang để loại bỏ lớp bảo vệ. Tuyệt đối không được lấy thuốc bằng cách mở lắp hộp.
Để những nơi mà kiến thường đi qua hoặc ở gần tổ kiến. Sau 1 tuần không thấy có hiệu quả nên đổi chỗ đặt của thuốc diệt kiến SUPER ARINOSU KOROKI Nhật Bản.
Bảo quản nơi khô ráo - thoáng mát - tránh những nơi ẩm ướt - có nhiệt độ cao - tránh tiếp xúc trực tiếp với ánh nắng mặt trời. Để xa tầm tay trẻ em. Đến ngay cơ sở y tế gần nhất nếu chẳng may ăn - uống phải loại thuốc này.

 "', N'6', N'35', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (93, N'N''Combo 4 Hộp Khăn Giấy Hộp Aloe Vera Paseo''', N'combo-4-hộp-khan-giay-hộp-aloe-vera-paseo', N'104000', N'19', N'df3df30b46eae95d2d88985734039b89.jpg', N'14', N'24', N'6', N'"
  Sáp Thơm Glade Hương Lavender 180g đảm bảo cho không gian sống của bạn có hương thơm an toàn và tinh khiết. Trải nghiệm mùi hương lavender nhẹ nhàng     góp phần làm tăng cảm nhận tích cực về không gian sống cũng như gia tăng hưng phấn cho tinh thần của bạn. Giữ cho không gian     luôn sạch và thơm mát nhất.



Sáp Thơm Glade Hương Lavender được sản xuất và đóng gói tại Thái Lan - đảm bảo chất lượng và mùi hương.
Sản phẩm có thành phần tự nhiên - an toàn với sức khỏe người sử dụng.
Mang đến hương  thơm lavender tự nhiên - dịu nhẹ - tươi mát cho không gian - phù hợp đặt trong  phòng khách - phòng ngủ - nhà bếp - nhà tắm - bếp - ô tô…
Sản phẩm được đóng hộp nhỏ gọn - hiện đại - tiện dụng.


 "', N'6', N'36', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (94, N'N''Thuốc diệt kiến Nhật bản''', N'thuoc-diet-kien-nhat-ban', N'155125', N'38', N'b5240db45216294c95d6601f31747dbe.jpg', N'1001', N'1', N'2', N'"
BỘ SẢN PHẨM BAO GỒM:01 X Nước Giặt Ariel Đậm Đặc Dạng Chai 2.4kg01 X Nước Xả Vải Downy Huyền Bí Dạng Túi 2.4LTHÔNG TIN SẢN PHẨM1. Nước giặt chai Ariel đậm đặc là bột giặt dạng gel đậm đặc giúp Loại sạch vết bẩn tốt hơn gấp 2X chỉ trong 1 bước giặt. sản phẩm thế hệ mới được áp dụng công nghệ cao với khả năng loại sạch vết bẩn vượt trội - chứa nhiều thành phần làm sạch hiệu quả giúp loại bỏ được nhiều vết bẩn cứng đầu như vết bẩn dầu mỡ - vết cà phê


Đặc điểm:- Sản phẩm dạng gel đậm đặc cho khả năng giặt tẩy vượt trội - giúp đánh bật mọi vết bẩn tốt hơn gấp 2 lần chỉ trong 1 bước giặt - quần áo sẽ được trắng sáng - không để lại chất cặn và lưu lại hương thơm tươi mát.- Là sản phẩm phù hợp cả giặt tay và giặt bằng máy - nước giặt Ariel đậm đặc sẽ giúp cho việc giặt giũ của bạn trở nên nhẹ nhàng và hiệu quả hơn - giúp các bà nội trợ tiết kiệm được thời gian và công sức của mình.- An toàn cho làn da của người sử dụng nếu giặt bằng tay.HDSD:- Giặt tay: 15ml cho 5 - 7 chiếc quần áo- Giặt máy: 45ml cho 1 lần giặt thông thường (15 - 20 chiếc quần áo)
2. Nước xả vải Downy Hương nước hoa huyền bí với hương thơm bung tỏa dài lâu - cho cả gia đình bạn cùng tận hưởng sự mềm mại và thơm mát trên quần áo suốt cả ngày dài. Công thức chứa các phân tử hương li ti bám sâu vào từng sợi vải - khử đi những mùi khó chịu trên quần áo - xua tan mùi ẩm mốc vào những ngày mưa.


Đặc điểm: - Downy Hương nước hoa huyền bí có khả năng lưu giữ mùi hương lâu hơn trên trang phục và trong từng cử động.- Bí mật của công nghệ chuyển hương nằm ở các hạt nước hoa siêu nhỏ với đặc tính linh hoạt trước những di chuyển tự nhiên của con người.- Khi được chà nhẹ - các hạt siêu nhỏ chứa nước hoa sẽ quyện vào nhau và tỏa ra mùi hương đầy lý thú.- Đặc biệt - mỗi lần chạm nhẹ - bạn sẽ được cảm nhận một mùi hương hoàn toàn khác nhau tùy theo nồng độ của các loại hạt tại vị trí ma sát.HDSD:- Không đổ trực tiếp lên quần áo- Đối với giặt tay: Dùng 1/2 nắp Downy cho 15-20 chiếc quần áo - ngâm trong vài phút - vắt và phơi khô- Đối với giặt máy:  Dùng 1/2 nắp Downy cho nửa thùng giặt (khoảng 35L) hoặc 1 nắp rưỡi cho đầy thùng giặt (khoảng 52L); sau khi máy hoàn tất công đoạn xả - vắt và sấy khô như thường lệ- Để tốt cho jeans - chăn - khă nên dùng 1 nắp đầyTHÔNG TIN THƯƠNG HIỆUP&G sở hữu một trong những danh mục sản phẩm đa dạng và chất lượng nhất. Trong số 50 nhãn hiệu hàng tiêu dùng và chăm sóc sức khỏe hàng đầu của P&G - 25 nhãn hiệu được xếp vào danh mục “Thương hiệu tỉ dollar” với mức doanh thu hằng năm đạt trên 1 tỉ dollar Mỹ. Với mong muốn mang lại cuộc sống tốt đẹp hơn cho người tiêu dùng Việt Nam - P&G đã mang đến các thương hiệu hàng đầu vào thị trường Việt Nam như : Ariel - Tide - Downy - Pampers - Head & Shoulders - Pantene - Rejoice - Olay - Gillette - Oral – B - Safeguard - Whispers - Ambi Pur "', N'6', N'37', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (95, N'N''Sáp Thơm Glade Hương Lavender 180g''', N'sap-thơm-glade-hương-lavender-180g', N'47900', N'13', N'sap-thom-glade-huong-hoa-lavender-180gr-1.u2409.d20170222.t170039.497243.jpg', N'1001', N'2', N'29', N'"
Nước Xả Vải Downy Expert Thể Thao là dòng làm mềm vải mới của Downy - kết hợp công nghệ mới được thiết kế để loại bỏ mùi không mong muốn trên quần áo. Đây là dòng sản phẩm đầu tiên có công nghệ chống mồ hôi lên đến 24 giờ - tăng cường sự tự tin với hương thơm lâu dài cho mọi người trong gia đình.
TÍNH NĂNG NỔI BẬT- Với khả năng chống mùi tối ưu và kéo dài 24 giờ - Downy Expert hoạt động thông qua ma sát trên quần áo - giúp giữ quần áo thơm mát suốt cả ngày.- Ngoài ra - Downy Sport còn bao gồm các tính năng như ngăn mùi hôi từ quần áo ướt đẫm mồ hôi. - Loại bỏ mùi mốc từ quần áo - lưu giữ hương thơm tươi mát - lâu phai với hương nước hoa. - Ngăn chặn sự phát triển của mùi ẩm mốc cả ngày dài.

HƯỚNG DẪN SỬ DỤNG- Không đổ trực tiếp lên quần áo- Đối với giặt tay: Dùng 1/2 nắp Downy cho 15-20 chiếc quần áo - ngâm trong vài phút - vắt và phơi khô- Đối với giặt máy: Dùng 1/2 nắp Downy cho nửa thùng giặt (khoảng 35L) hoặc 1 nắp rưỡi cho đầy thùng giặt (khoảng 52L); sau khi máy hoàn tất công đoạn xả - vắt và sấy khô như thường lệ- Để tốt cho jeans - chăn - khă nên dùng 1 nắp đầyHƯỚNG DẪN BẢO QUẢN- Sau mỗi lần sử dụng - bạn hãy đóng chặt nắp lại- Không nên để tiếp xúc với ánh nắng mặt trời và nhiệt độ cao trong thời gian dài- Để xa tầm tay trẻ emTHÔNG TIN THƯƠNG HIỆUDowny là nhãn hàng thuộc tập đa quốc gia P&G nổi tiếng. P&G được biết đến là một tập đoàn luôn đi đầu trong việc đổi mới công nghệ để liên tục đem đến nhiều lợi ích cho người tiêu dùng. Nhãn hàng nước xả vải Downy của P&G đã nghiên cứu thành công Công Nghệ Chuyển Hương độc đáo giúp phái đẹp thỏa mong muốn được thêm phần “cuốn hút” người đối diện với chính mùi hương quyến rũ của mình chỉ sau những cái chạm tay chà nhẹ lên quần áo. "', N'6', N'38', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (96, N'N''Combo Nước Giặt Ariel Đậm Đặc Dạng Túi 2.4kg  + Nước Xả Vải Downy Huyền Bí Dạng Túi 2.4L''', N'combo-nưoc-giat-ariel-dam-dac-dang-tui-2.4kg--+-nưoc-xa-vai-downy-huyen-bi-dang-tui-2.4l', N'288000', N'', N'bf950e5f6b12d9504938bf9dfb1d3165.jpg', N'25', N'3', N'6', N'"
Combo 2 Túi Nước Giặt Omo Dịu Nhẹ (2.4 kg/túi) - Nước giặt có công thức dịu nhẹ với làn da - bạn không cần phải vò tay trước mà quần áo vẫn được làm sạch nhanh chóng trong môi trường giặt máy. Sản phẩm với sức mạnh đánh bật hoàn toàn vết bẩn ngay trong lồng giặt. Sản phẩm được thiết kế phù hợp nhất cho giặt máy - giúp quần áo luôn sạch sẽ - thơm tho.

Sản phẩm có thành phần an toàn cho làn da - kể cả làn da nhạy cảm.
Sản phẩm được thiết kế cho dòng  cửa trên - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Nước giặt tạo ít bọt - không gây trào bọt trong lúc giặt và bảo vệ máy giặt cùng quần áo của bạn tốt hơn.
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
Nước Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn.
Công thức cân bằng pH - dịu nhẹ cho da.
Hương phấn thơm dịu nhẹ với hương thơm từ comfort cho da nhạy cảm.
 "', N'6', N'39', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (97, N'N''Combo 2 Nước Xả Vải Downy Expert Thể Thao Dạng Túi 2.4L''', N'combo-2-nưoc-xa-vai-downy-expert-the-thao-dang-tui-2.4l', N'309000', N'3', N'bf8344bf6abae3990ff4033beaa711a8.jpg', N'25', N'3', N'6', N'"
Nước Giặt Máy Bền Đẹp Cửa Trên OMO Túi 2.4kg có công thức được thiết kế chuyên biệt - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt. OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng.
Thông tin sản phẩm
Công thức làm sạch vết bẩn độc đáo
Sản phẩm nước giặt OMO được THIẾT KẾ PHÙ HỢP NHẤT cho GIẶT MÁY và có công thức ít bọt để bảo vệ máy giặt của gia đình bạn giúp quần áo luôn sạch và thơm
Đột phá từ các hoạt chất loại bỏ vết bẩn - giúp không cần ngâm hay vò lâu. Kết hợp 3 lợi ích vượt trội: làm trắng - làm sáng & xoáy bay hoàn toàn vết bẩn
Hương thơm bung tỏa theo từng cử động
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
An toàn - thân thiện với môi trường
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm của tập đoàn Unilever được kiểm nghiệm và khuyên dùng bởi 11 hãng máy giặt hàng đầu thế giới như Sanyo - Toshiba - LG - Panasonic - Haier - Sharp - Bosch - Electrolux - Fagor 
Hướng dẫn sử dụng
- Đổ nước giặt OMO vào nắp với liều lượng theo hướng dẫn.
- Thoa một lượng nhỏ nước giặt trực tiếp lên vết bẩn.
- Đổ phần nước giặt còn lại trong nắp vào máy giặt cùng với quần áo.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng
 
  "', N'6', N'40', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (98, N'N''Combo 2 Túi Nước Giặt Omo Dịu Nhẹ (2.4kg / Túi)''', N'combo-2-tui-nưoc-giat-omo-diu-nhe-(2.4kg-/-tui)', N'259000', N'2', N'2fd72cd14d2ec98c59b4137faafc5e7c.jpg', N'23', N'4', N'6', N'"

Trọng lượng: 100g
Công dụng: Sản phẩm giúp dễ dàng loại bỏ các vết bẩn hiệu quả - đặc biệt là vùng cánh tay và cổ áo…
Hướng dẫn sử dụng: chỉ cần thấm ướt quần áo - chà nhẹ sản phẩm lên những chỗ có vết bẩn và ngâm - rồi giặt (giặt tay hay giặt máy đều được).
Nhập khẩu trực tiếp từ Nhật. Sản xuất tại Nhật
 "', N'7', N'41', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (99, N'N''Nước Giặt Máy Bền Đẹp Cửa Trên OMO Túi 2.4kg''', N'nưoc-giat-may-ben-dep-cua-tren-omo-tui-2.4kg', N'109000', N'22', N'07f59defa647dfde4601d7301034879d.jpg', N'25', N'5', N'17', N'"
Gel Diệt Kiến Bayer Maxforce Quantum 03% (12g)

An toàn cho người sử dụng: Không mùi - không gây phản ứng phụ cho người và vật nuôi trong nhà.
Hiệu ứng Domino tiêu diệt cả tổ kiến.
Hiệu quả trên nhiều loại kiến.
Thân thiện - sử dụng linh hoạt.
Công thức dạng gel - không cần phun xịt.
 "', N'7', N'42', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (100, N'N''Xà phòng thanh giặt cổ áo nội địa Nhật Bản''', N'xa-phong-thanh-giat-co-ao-nội-dia-nhat-ban', N'29500', N'64', N'a212e7ae18c54d119becd1861e1064e6.jpg', N'1', N'4', N'6', N'"
Gián là loài côn trùng gây khó chịu - khó diệt bằng các biện pháp cơ học hay đập bằng vỉ. Góc bếp - tủ quần áo - phòng làm việc... rất nhiều nơi trong gia đình dễ dàng là nơi trú ẩn cho gián - gây mùi hôi khó chịu và mất vệ sinh - hư hỏng đồ.

Thuốc diệt gián Black Cap Nhật - hộp 12 viên sẽ đuổi sạch các loại gián ra khỏi gia đình bạn mà không gây hại cho con người - vật nuôi giống như khi dùng thuốc xịt - hay các biện pháp truyền thống. Là sản phẩm hữu ích và rất cần thiết cho mỗi gia đình. Sản phẩm diệt tận gốc lũ gián trong nhà bạn bằng cơ chế tỏa mùi hương dễ chịu thu hút gián đến ăn - gián chưa chết ngay mà về gây bệnh cho cả tổ - diệt sạch tận gốc - diệt cả ấu trùng con - thậm chí ngay cả trứng gián cũng sẽ bị tiêu diệt. Hiệu quả cao - với 12 viên bạn có thể sử dụng ở 12 điểm khác nhau trong nhà bạn tại các vị trí xuất hiện nhiều gián như: góc tủ bếp - bạn có thể đặt tại các đường ống cống thoát nước - góc tủ bếp - gầm tủ lạnh - góc tủ quần áo... bất cứ nơi nào có gián đi qua. Nếu bạn duy trì thay viên diệt gián này 6 tháng 1 lần thì gián sẽ không bao giờ đến làm phiền bạn.

Đặc điểm của sản phẩm: - Hiệu quả nhanh chóng nhờ hợp chất Fipronil sẽ cho tác dụng diệt ngay lập tức với những con gián ăn phải. - Diệt gián tận gốc ngay cả với những loại gián đã kháng thuốc thông thường. - Thiết kế hộp đựng thông minh vừa dễ dàng đặt vào mọi ngóc ngách - vừa bảo vệ được thuốc gián tránh xa tầm với của trẻ nhỏ. - Thời gian sử dụng lâu dài - duy trì hiệu quả diệt gián đến 6 tháng. Công dụng : 1. Đuổi gián siêu tốc bằng chất Fipronil ngay từ khi đặt viên đuổi gián 2. Có tác dụng với cả trứng gián lẫn gián to. Đuổi diệt được tất cả các loại gián. 3. Đuổi diệt được cả gián ăn trực tiếp hạt - gián ăn phải phân gián hay gián đã chết có ăn thuốc. 4. Diệt hết tất cả các loại gián đã kháng thuốc thông thường Hộp đuổi gián thu hút gián tới ăn - Gián sẽ tha về tổ khiến cho cả đàn bị tiêu diệt.Gián sẽ biến mất hoàn toàn khỏi nhà bạn chỉ sau 2 – 5 ngày sử dụng. Hướng dẫn sử dụng: B1. Bóc lớp gói thiếc bọc sản phẩm và tách dời từng viên 1 ra B2. Đặt viên diệt gián đã tách ra ở những nơi gián thường hay qua lại như: gầm bếp - gầm trạn bát - tủ quần áo - máy giặt -… gián sau khi ăn thuốc và bị bệnh - đi về tổ và lây bệnh cho cả đàn. Chúng sẽ chết dần dần cả tổ chứ không chỉ chết một vài con. Liều lượng đặt: - Đối với viên diệt gián 12 viên: Đặt 4 viên/ diện tích 10m². - Ở những nơi gián sinh sôi nhiều nên đặt 2 viên/ 5m² quanh khu vực bạn không muốn gián lại gần. Lưu ý: - Bảo quản ở nơi thoáng mát - tránh ánh sáng trực tiếp. - Nếu bạn ăn nhầm - vui lòng tìm kiếm sự chăm sóc y tế. - Nên rửa tay kỹ bằng xà phòng và nước nếu tay tiếp xúc với thuốc - Tránh đặt thuốc dưới trời mưa - nơi có độ ẩm cao. - Tránh đặt ở những nơi lưu trữ - thực phẩm - đồ ăn - tránh nhầm lẫn với đồ ăn. "', N'7', N'43', N'5000', N'''2019/07/10''', N'cái')
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (101, N'N''Diệt kiến dạng Gel Bayer Maxforce Quantum 03% (12g)''', N'diet-kien-dang-gel-bayer-maxforce-quantum-03%-(12g)', N'135000', N'16', N'54ac37ca7fbafb1a1a5d2ba62c6fb752.jpg', N'25', N'6', N'6', N'"
Lốc 9 Cuộn Giấy Vệ Sinh Cao Cấp Sài Gòn Bless You  Lamour 3 Lớp được nhiều người tiêu dùng lựa chọn bởi những ưu điểm vượt trội. Giấy được làm từ chất liệu bột giấy cao cấp - có thiết kế 3 lớp đặc biệt - bề mặt giấy mềm mại nhưng vẫn giữ được độ dai cần thiết - khả năng thấm hút nước tốt. Sản phẩm dễ phân hủy - thân thiện với môi trường - được thiết kế dạng cuộn tiện dụng - dùng cho các việc vệ sinh hàng ngày trong gia đình.

Sài Gòn Bless You Hold Me được làm từ bột giấy nguyên chất 100% - kết hợp với dây chuyền sản xuất khép kín đạt tiêu chuẩn an toàn tại Việt Nam
Bề mặt giấy mịn màng - có độ dai hoàn hảo - khả năng thấm hút nước tuyệt vời - mang đến cho bạn sự hài lòng và cảm giác thoải  mái khi sử dụng.
Giấy được thiết kế 3 lớp - dày dặn - có thể sử dụng cho nhiều mục đích khác nhau
Sản phẩm đặc biệt thân thiện với môi trường - dễ phân hủy.
 "', N'7', N'44', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (102, N'N''Set 12 hộp diệt gián tận gốc hiệu quả ngay tức thì - Nội địa Nhật Bản''', N'set-12-hộp-diet-gian-tan-goc-hieu-qua-ngay-tức-thi--nội-dia-nhat-ban', N'148999', N'42', N'0c1c4d55aa28473c7816395be411bf7d.jpg', N'1002', N'7', N'6', N'"
Nước Diệt Kiến Trong 1 Ngày Sạch Kiến Không Quay Lại Hanvet là hóa chất diệt côn trùng đạt tiêu chuẩn của Tổ Chức Y Tế Thế Giới (WHO).

An toàn cho người sử dụng: Không mùi - không gây phản ứng phụ cho người và vật nuôi trong nhà - chính vì lợi điểm đó nên được áp dụng phun ULV cả trong và ngoài nhà - trong khi đó các hóa chất cùng gốc Deltamethrin chỉ áp dụng phun ULV ngoài nhà.
Sử dụng tiện lợi cho các hộ gia đình - dùng để phun tồn lưu để diệt muỗi - ruồi - kiến - gián - bọ chét và côn trùng có cánh khác..

Công dụng:

Diệt muỗi - ruồi - kiến - gián - bọ chét trong gia dụng và y tế.
Phòng chống dịch sốt xuất huyết - sốt rét - dịch tiêu chảy cấp - dịch hạch trong cộng đồng.

Cách dùng:

Diệt muỗi - kiến - gián: Cứ 5ml pha với 0 -5 lít nước - phun 10 m2 bề mặt - tường - vách - cống rãnh - phun kỹ các khe kẽ nơi côn trùng hay trú đậu.
Diệt ruồi: Cứ 5 ml pha với 0 -5 lít nước phun 5 m2 bề mặt - bãi rác - nhà tiêu - các nơi ruồi cư trú. Hiệu lực kéo dài 6-8 tuần sau 1 lần phun.
Diệt bọ chét: Cứ 5ml pha với 2 lít nước - phun kỹ bề mặt hốc kẽ nơi bọ chét trú ẩn và qua lại. Phun 2 lần - mỗi lần cách nhau 10 ngày.
 "', N'7', N'45', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (103, N'N''Lốc 9 Cuộn Giấy Vệ Sinh Cao Cấp Bless You L''amour 3 Lớp''', N'loc-9-cuộn-giay-ve-sinh-cao-cap-bless-you-l''amour-3-lop', N'89000', N'9', N'897cb5ec889afeda13d54c7b074755b0.jpg', N'25', N'3', N'6', N'"
Nước Giặt Máy Bền Đẹp Cửa Trước OMO 4.2kg - 21122578 với công nghệ giặt sạch nhanh giúp đánh bật nhiều loại vết bẩn khô cứng nhanh hơn chỉ trong 1 lần giặt. Sản phẩm dành cho máy giặt cửa trước - tạo ít bọt bảo vệ máy và giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.

Sản phẩm được thiết kế cho dòng máy giặt cửa trước - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm có thiết kế chai lớn 4.2 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.

Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng





 "', N'7', N'46', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (104, N'N''Nước diệt kiến sạch kiến sau hai giờ - Hantox 50ml''', N'nưoc-diet-kien-sach-kien-sau-hai-gio--hantox-50ml', N'45000', N'35', N'e31a668b4ec10e6c411fe8c3c1f21e4f.jpg', N'23', N'4', N'6', N'"
-Đuổi gián siêu tốc bằng chất Fipronil ngay từ khi đặt viên đuổi gián.
-Có tác dụng với cả trứng gián lẫn gián to. Đuổi diệt được tất cả các loại gián.
-Đuổi diệt được cả gián ăn trực tiếp hạt - gián ăn phải phân gián hay gián đã chết có ăn thuốc. Đuổi diệt dán tận gốc.
Mỗi viên diệt gián Nhật Bản được bao bọc bởi hộp nhựa cứng chỉ có gián chui lọt vào lấy thức ăn. An toàn tuyệt đối vs trẻ con và thú cưng. Loại 12 viên diệt dc nhiều loại gián to và nhỏ.
Đặc tính sản phẩm: Trọng lượng 24g x 12 viên
Kích thước 211 * 31 * 151 (mm)
Lưu ý: Để xa tầm tay trẻ em. "', N'7', N'47', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (105, N'N''Nước Giặt Máy Bền Đẹp Cửa Trước OMO 4.2kg - 21122578 ''', N'nưoc-giat-may-ben-dep-cua-trưoc-omo-4.2kg--21122578-', N'210000', N'22', N'68a253a747e2c5e00e7fdf6c28fd34ab.jpg', N'23', N'4', N'6', N'"
Công dụng
Sản phẩm sử dụng cho cả máy giặt lồng đứng (cửa trên) và lồng ngang (cửa dưới) tiện lợi.
Giúp tiêu diệt toàn bộ nấm mốc và vi khuẩn bên trong máy giặt - đánh tan mảng bám canxi nơi lồng giặt - giúp quần áo sau khi giặt thơm tho hơn.
Ngoài ra - sản phẩm cũng giúp đánh bay mùi hôi khó chịu bên trong lồng máy giặt.
Hướng dẫn sử dụng
Đối với máy giặt cửa trên:+ Chọn chế độ giặt với mức nước cao nhất+ Ngâm trong 30 phút đóng nắp+ Chọn chế độ giặt Standard (Giặt → Giũ → Làm khô)
Đối với máy giặt cửa dưới:+ Sau khi bật máy - cho dung dịch tẩy rửa vào lồng giặt+ Chọn chế độ giặt Standard (Giặt → Giũ → Làm khô)
Chú ý+ Không dùng với nước nóng.+ Đối với máy dưới 4kg thì nên dùng 1/2 chai. Máy 4-9kg thì nên dùng cả chai.+ Nên dùng sản phẩm này để tẩy rửa lồng máy giặt cứ 1-2 tháng 1 lần để giữ cho máy giặt luôn sạch sẽ - thơm tho và nâng cao tuổi thọ cho máyXuất xứ: Rocket Soap (Nhật bản)Dung tích: 550ml "', N'7', N'48', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (106, N'N''Thuốc viên diệt gián nội địa Nhật Bản''', N'thuoc-vien-diet-gian-nội-dia-nhat-ban', N'142909', N'56', N'a03fbd2517232658892e81873e95c5fb.jpg', N'25', N'3', N'6', N'"
Nước Giặt OMO Comfort Tinh Dầu Thơm giúp xoáy tan vết bẩn cứng đầu hiệu quả trong lồng giặt với công nghệ tiên tiến - tăng cường thêm sức mạnh gấp 3 lần - mang lại 3 hiệu quả vượt trội: làm trắng - làm sáng và xoáy bay hoàn toàn vết bẩn. Hương thơm của Comfort giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.
Thông tin sản phẩm
Công thức làm sạch vết bẩn độc đáo
Bột Giặt OMO Hương Comfort ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Hương thơm comfort dịu nhẹ
OMO Comfort Mới kết hợp sức mạnh đánh bật vết bẩn của OMO cải tiến và hương thơm quyến rũ của Comfort sẽ giúp quần áo thơm mát dài lâu. Bạn sẽ yêu ngay mùi hương cải tiến mới của OMO Comfort
An toàn - thân thiện với môi trường
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm của tập đoàn Unilever được kiểm nghiệm và khuyên dùng bởi 11 hãng máy giặt hàng đầu thế giới như Sanyo - Toshiba - LG - Panasonic - Haier - Sharp - Bosch - Electrolux - Fagor 
Hướng dẫn sử dụng
- Đổ nước giặt OMO vào nắp với liều lượng theo hướng dẫn.
- Thoa một lượng nhỏ nước giặt trực tiếp lên vết bẩn.
- Đổ phần nước giặt còn lại trong nắp vào máy giặt cùng với quần áo.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'7', N'49', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (107, N'N''Nước tẩy vệ sinh lồng máy giặt Rocket nội địa Nhật Bản''', N'nưoc-tay-ve-sinh-long-may-giat-rocket-nội-dia-nhat-ban', N'40000', N'49', N'69685e1bfc6207c96ff1f04842aef333.jpg', N'25', N'3', N'6', N'"
Nước Giặt  OMO Comfort Tinh Dầu Thơm (3 -8kg) - 21122480 với công nghệ đột phá - có tác dụng xoáy bay những vết bẩn cứng đầu nhất - đồng thời không để lại cặn bột giặt như các loại bột thông thường khác - giúp cho quần áo luôn trắng sạch - thơm ngát như mới. Hương thơm của Comfort giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.

Bột Giặt OMO Hương Comfort ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt.
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng.
OMO Comfort Mới kết hợp sức mạnh đánh bật vết bẩn của OMO cài tiến và hương thơm quyến rũ của Comfort sẽ giúp quần áo thơm mát dài lâu. Bạn sẽ yêu ngay mùi hương cải tiến mới của OMO Comfort.
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn.
Sản phẩm có thiết kế chai lớn 3.8 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.

Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'7', N'50', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (108, N'N''Nước Giặt OMO Matic Comfort Tinh Dầu Thơm 21122479 (2.4kg)''', N'nưoc-giat-omo-matic-comfort-tinh-dau-thơm-21122479-(2.4kg)', N'110000', N'21', N'eaf33b2ab8935df375d488fe2ab6da17.jpg', N'25', N'8', N'4', N'"


Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen (400g) tự động làm sạch máy giặt từ sâu bên trong - những vị trí khó nhìn thấy và khó vệ sinh nhất - tẩy sạch chất cặn bã từ quần áo tích tụ lâu ngày trong máy giặt - tiết kiệm thời gian - công sức khi vệ sinh máy giặt.
Khử mùi - khử vi khuẩn - nấm mốc gây ra các bệnh hô hấp - dị ứng
Bảo dưỡng - làm thông thoáng máy giặt - hạn chế tình trạng tắc nghẽn - tăng tuổi thọ cho máy giặt
Bột tẩy lồng máy giặt Homes Queen được sản xuất từ công ty Hàn Quốc với công nghệ tiên tiến và hơn 30 năm kinh nghiệm sản xuất các sản phẩm tẩy rửa đồ dùng nhà cửa - không cần tháo lắp máy giặt vẫn có thể vệ sinh máy sạch sẽ.
Sản phẩm được chứng nhận an toàn với người sử dụng và môi trường - dùng được cho cả máy giặt lồng ngang - lồng đứng
 

 "', N'7', N'51', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (109, N'N''Nước Giặt  OMO Comfort Tinh Dầu Thơm 21122480 (3.8kg)  ''', N'nưoc-giat--omo-comfort-tinh-dau-thơm-21122480-(3.8kg)--', N'191000', N'20', N'8906f979723c498666802292db7a195e.jpg', N'25', N'3', N'6', N'"
Nước Giặt  OMO Cho Máy Giặt Cửa Trên (4.2kg) - 21122477 có công thức dành cho máy giặt - tạo ít bọt giúp bảo vệ tốt nhất cho máy giặt và quần áo của bạn. Sản phẩm đánh tan mọi vết bẩn cứng đầu trong lồng giặt. Hương thơm nhẹ nhàng giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.

Sản phẩm được thiết kế cho dòng máy giặt cửa trên - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Nước giặt tạo ít bọt - không gây trào bọt trong lúc giặt và bảo vệ máy giặt cùng quần áo của bạn tốt hơn.
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm có thiết kế chai lớn 4.2 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.

Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng








 "', N'7', N'52', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (110, N'N''Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen (400g)''', N'bột-tay-ve-sinh-long-may-giat-homes-queen-(400g)', N'41000', N'18', N'6e80377ea27789e57bbbc6a98a9cb3f5.jpg', N'25', N'6', N'6', N'"




Giấy Lụa Hộp - Bless You Selection 2019 được sản xuất từ 100% bột giấy tự nhiên - kết hợp dây chuyền khép kín với công nghệ mới - cho ra loại giấy chất lượng cao - đảm bảo an toàn vệ sinh và an toàn cho sức khỏe người tiêu dùng. Giấy có đặc tính dai - mềm - mỏng nhưng không dễ rách - rất dễ phân hủy - hạn chế gây ô nhiễm môi trường.
Giấy được làm từ chất liệu bột giấy 100% thiên nhiên - không chứa chất tẩy độc hại - đảm bảo chất lượng - không gây kích ứng da và dùng được cho cả trẻ em
Ngoài ra - sự kết hợp hoàn hảo về độ dai và bề mặt mềm mại của sản phẩm còn mang đến cho bạn loại giấy chất lượng để sử dụng hàng ngày.
Tùy nhu cầu sử dụng - có thể sử dụng vào nhiều mục đích khác nhau.
 "', N'7', N'53', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (111, N'N''Nước Giặt  OMO Cho Máy Giặt Cửa Trên (4.2kg) - 21122477''', N'nưoc-giat--omo-cho-may-giat-cua-tren-(4.2kg)--21122477', N'191000', N'20', N'a9ac639943b1a9c2977ebd67e53cac04.jpg', N'25', N'9', N'6', N'"




Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Chanh Sả Chai 475ml dịu mát giúp tẩy rửa bồn cầu và nhà tắm - diệt sạch vi khuẩn gây bệnh - cho bồn cầu và phòng tắm trắng sáng và lưu lại hương thơm dịu mát - sạch sẽ.Với công thức diệt 99 -99% vi khuẩn được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - Vim là sản phẩm tẩy rửa có công thức đậm đặc giúp diệt sạch vi khuẩn gây bệnh - và có khả năng tấn công hoá học vào protein của tế bào vi khuẩn - phá huỷ tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus.Sản phẩm an toàn cho sức khoẻ của người sử dụng - không gây hư hại bồn cầu.Đặc biệt - với công thức đổi màu igups tăng khả năng quan sát trực quan khi tẩy rửa - cho bạn thấy kết quả ngay khi sử dụng. Với hương chanh sả với chiết suất từ thiên nhiên cho bồn cầu và nhà tắm thơm mát dễ chịu. "', N'8', N'54', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (112, N'N''Lốc 4 Hộp Khăn Giấy Bless You Tết 2019 - Tặng 1 Hộp Cùng Loại''', N'loc-4-hộp-khan-giay-bless-you-tet-2019--tang-1-hộp-cung-loai', N'75000', N'6', N'ddd82cdfd78ee772f36236b48fb2e283.jpg', N'1003', N'10', N'6', N'"
ZEINO nước giặt tiên tiến can tím 3.5kg.
Hương sữa tắm cá ngựa - thơm mát gấp nhiều lần
Nước giặt ZEINO thấm sâu vào từng sợi vải - vừa giặt sạch dễ dàng vừa lưu lại hương thơm như sữa tắm.
Dùng được cho cả giặt tay và giặt máy (cửa trên và cửa ngang)
Dịu nhẹ - an toàn với da tay "', N'8', N'55', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (113, N'N''Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Chanh Sả Chai 475ml''', N'gel-tay-rua-bon-cau-va-nha-tam-vim-trang-sang-hương-chanh-sa-chai-475ml', N'23000', N'8', N'6e85699878e93345cab01a1f60ec460e.jpg', N'19', N'11', N'6', N'"
Giấy Vệ Sinh Lency (15 Cuộn) được sản xuất với dây chuyền sản xuất khép kín và hiện đại đạt tiêu chuẩn an toàn tại Việt Nam. Giấy vệ sinh Lency cao cấp có độ dai - mềm mịn - trắng và khả năng thấm hút nước cao đem đến cho người dùng sự thoải mái - dễ chịu khi tiếp xúc với làn da. 
Giấy vệ sinh Lency cao cấp được sử dụng được với nhiều mục đích khác nhau. Với thiết kế dạng cuộn có lõi giúp bạn dễ dàng cài vào móc đựng giấy vệ sinh - mang lại sự tiện lợi khi sử dụng. 
 "', N'8', N'56', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (114, N'N''Nước giặt ZEINO tím 3.5kg''', N'nưoc-giat-zeino-tim-3.5kg', N'80000', N'45', N'fe28f1559d8f3fa6e624b26a3b3bb9c7.jpg', N'25', N'9', N'6', N'"
Nước Tẩy Bồn Cầu Vim Diệt Khuẩn 500ml - Xanh Biển
Nước Tẩy Bồn Cầu Vim Diệt Khuẩn 500ml - Xanh Biển có hương thơm nhẹ nhàng - tươi mát - cùng công thức diệt khuẩn Sodium Hypochlorite được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur - Vim giúp bạn tiêu diệt vi khuẩn gây bệnh đồng thời tẩy sạch vết bẩn mà không làm ăn mòn các bề mặt gạch hay bồn cầu

Thông tin sản phẩm
Công thức tẩy sạch mảng bám
Với công thức diệt khuẩn Sodium Hypochlorite được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - VIM là sản phẩm tẩy rửa có khả năng:
- Diệt sạch vi khuẩn gây bệnh
- VIM chứa Sodium Hypochlorite có khả năng tấn công hóa học vào protein của tế bào vi khuẩn - phá hủy tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus (siêu vi)
An toàn - không gây hư hại bồn cầu
Sản phẩm có khả năng tẩy sạch các vết ban hữu cơ trong bồn cầu mà không làm mất độ bóng của gạch men. Công thức của VIM không chứa acid như các sản phẩm tẩy rửa thông thường khác nên không ăn mòn các bề mặt gạch hay bồn cầu
Thiết kế dạng chai tiện dụng
Nước Tẩy Bồn Cầu Vim Diệt Khuẩn có thiết kế dạng chai tiện lợi - dễ sử dụng - giúp phân tán chất lỏng đến tất cả mọi bề mặt - mọi vị trí mong muốn - cho hiệu quả vệ sinh cao hơn.
Hương thơm tươi mát
Sản phẩm có mùi hương nhẹ nhàng - tươi mát - để lại hương thơm dễ chịu và tạo cảm giác sạch thoáng cho toilet nhà bạn.
Hướng dẫn sử dụng
Xịt Vim trực tiếp dưới vùng bồn cầu - đậy nắp
Sau khoảng 10 phút - dùng bàn chải chà nhẹ và xả nước
Hòa 2 nắp sản phẩm vào 1/2 xô nước (2.5L)
Dùng để tẩy rửa sàn và nhiều bề mặt khác nhau
Hướng dẫn diệt khuẩn với dung dịch đậm đặc
Rãnh thoát nước trong nhà tắm/nhà bếp: xịt trực tiếp lên rãnh thoát nước để tẩy sạch và loại bỏ mùi hôi rồi xả nước
Bồn rửa: Xịt vào lỗ thoát thước - để 5 phút và sau đó xả nước
Lưu ý
Mang bao tay và khẩu trang khi sử dụng sản phẩm
Tránh tiếp xúc với mắt và da vì có thể gây kích ứng
Nếu sản phẩm dính lên da - rửa sạch ngay bằng nhiều nước
Nếu dính vào mắt - rửa sạch ngay với nhiều nước và đến kiểm tra tại cơ sở y tế
Nếu nuốt phải - đến ngay sơ sở y tế và mang theo chai hoặc nhãn mác "', N'8', N'57', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (115, N'N''Giấy Vệ Sinh Lency (15 Cuộn)''', N'giay-ve-sinh-lency-(15-cuộn)', N'86501', N'9', N'1a1e4de0499c5fd63cc77c7c0373be9c.png', N'25', N'12', N'6', N'"
Nước Lau Kính Cif là sản phẩm tiện ích giúp làm sáng bóng bề mặt làm bằng kính và các vật  dụng khác. Công thức đậm đặc và hoạt chất tẩy rửa tiên tiến sẽ giúp bạn lau  sạch bóng mặt kính với hiệu quả cực mạnh. Sản phẩm thích hợp sử dụng  cho các loại  cửa kính - gương soi - màn hình TV - các bề mặt làm bằng crôm -  inox…
Thông tin sản phẩm
Công thức đậm đặc với hiệu quả làm sạch nhanh chóng
Công thức đậm đặc và hoạt chất tẩy rửa tiên tiến cho hiệu quả làm sạch  kính cực mạnh khi sử dụng - ngay cả những vết khó lau chùi như dầu mỡ -  mảng bám.
Ngăn đọng hơi nước tốt và không để lại vết ố lên kính.
Duy trì độ sáng bóng - giúp mặt kính sạch bong như mới - đồng thời chống bám bụi trở lại.
Hiệu quả trên các bề mặt kính
Sản phẩm thích hợp sử dụng cho các loại kính như kính trong - kính mờ -  gương soi và đồ dùng pha lê - bề mặt formica - đồ inox. Những thành phần  hóa học trong sản phẩm sẽ nhanh chóng giúp loại sạch mọi bụi bẩn để trả  lại một bề mặt kính sáng bóng - tô điểm cho ngôi nhà của bạn thêm sang  trọng.
An toàn - không độc hại
Sản phẩm không tồn đọng chất gây hại - an toàn cho sức khỏe người sử dụng.
Hương thơm nhẹ nhàng - tươi mát
Nước Lau Kính Cif có mùi hương tự nhiên thơm mát - mang đến cho bạn cảm giác thoải mái - dễ chịu.
Hướng dẫn sử dụng
Vặn nút chai qua ON.
Phun Cif lên bề mặt cần làm sạch rồi lau lại bằng khăn ẩm. Sau khi sử dụng vặn nút chai về OFF.
Đối với những vết bẩn cứng đầu như dầu mỡ - mảng bám lâu ngày - nên chờ ít phút rồi mới lau sẽ cho kết quả làm sạch cao hơn.
Lưu ý
Tránh để hóa chất vào mắt - để xa tầm tay trẻ em - không được uống.
Để nơi khô thoáng - tránh nơi có nhiệt độ cao.
Tránh nhiệt độ cao và ánh sáng trực tiếp "', N'8', N'58', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (116, N'N''Nước Tẩy Bồn Cầu Vim Diệt Khuẩn 500ml - Xanh Biển''', N'nưoc-tay-bon-cau-vim-diet-khuan-500ml--xanh-bien', N'21000', N'5', N'dabf9450a8e89ed2bb21a7a8f81bf22b.jpg', N'25', N'13', N'6', N'"
Nước Xả  Vải Comfort Đậm Đặc 1 Lần xả Hương Ban Mai Chai 3.8L
Nước Xả  Vải Comfort Đậm Đặc 1 Lần xả Hương Ban Mai Chai 3.8L sẽ giúp quần áo của cả gia đình bạn luôn thơm mát cả ngày. Bên cạnh đó - công thức đậm đặc 1 lần xả sẽ giúp bạn tiết kiệm chi phí hơn so với các loại nước vải thông thường khác.
Thông tin sản phẩm
Công thức 1 lần xả
Comfort Một lần xả áp dụng công thức cắt bọt và chống tái bám giúp áo quần hoàn toàn sạch bọt xà phòng chỉ trong 1 lần xả. Với cách này - bạn không chỉ an tâm với áo quần hoàn sạch bọt xà phòng mà còn tiết kiệmthời gian và công sức. Ngoài ra - sử dụng Comfort Một lần xả là bạn đã góp phần giúp tiết kiệm nước - bảo vệ môi trường.
Công thức đậm đặc
Sản phẩm có công thức đậm đặc giúp cho vải không bị khô cứng nhất là đối với quần áo cũ. Công thức đậm đặc sẽ giúp bạn tiết kiệm hơn so với các loại nước xả thông thường khác.
Hương ban mai thanh khiết
Nước Xả Vải Comfort Đậm Đặc Hương Ban Mai chứa tinh dầu thơm 100% tự nhiên được chưng cất từ hoa và thảo mộc cho hương thơm thanh khiết như ánh nắng ban mai - xua tan đi mùi ẩm mốc khó chịu trong những ngày mưa bão.
Lưu hương thơm thật lâu trên quần áo
Công nghệ tỏa hương mới từ Comfort Đậm Đặc giúp áo quần tỏa hương thơm ngát theo từng cử động của bạn suốt cả ngày dài. Chỉ cần một lần xả - áo quần sạch xà phòng và thơm ngát đến bất ngờ.
Thiết kế chai lớn 3.8L
Nước Xả Vải Comfort Đậm Đặc Hương Ban Mai nay có thêm thiết kế chai lớn 3.8L giúp bạn tiết kiệm chi phí và thời gian mua sắm.
Hướng dẫn sử dụng
- Giặt tay: Sau khi giặt với xà phòng - vắt quần áo cho bớt bọt. Hòa nước xả vải vào nước - đảm bảo lượng nước đủ ngập hết quần áo. Ngâm quần áo ít nhất 10 phút. Sau đó vắt và phơi khô - không cần xả thêm với nước.
- Giặt máy: Hòa nước xả vải vào ngay nước xả đầu tiên - không cần xả thêm với nước. "', N'8', N'59', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (117, N'N''Nước Lau Kính Cif (520ml)''', N'nưoc-lau-kinh-cif-(520ml)', N'24000', N'8', N'af8368ede480990d544c6c07960d658a.jpg', N'', N'14', N'5', N'"

Khăn Giấy Thếp Paseo Hoa Lan (220 Tờ x 2 Lớp) được làm hoàn toàn từ bột giấy tự nhiên đã qua nhiều khâu xử lý bằng máy móc hiện đại nên hoàn toàn không có chất tẩy trắng độc hại - không gây kích ứng da - đảm bảo an toàn tuyệt đối cho người dùng.
Thiết kế 2 lớp nên giấy có độ dai tuyệt hảo - độ mềm mại cùng khả năng thấm hút vượt trội - mang lại sự thoải mái và yên tâm tuyệt đối khi sử dụng.
Sản phẩm gồm 220 tờ khăn giấy 2 lớp Paseo - tiện lợi hơn khi sử dụng - đáp ứng tối đa nhu cầu đa dạng và ngày càng khắt khe của người tiêu dùng.​
 "', N'8', N'60', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (118, N'N''Nước Xả  Vải Comfort Đậm Đặc 1 Lần xả Hương Ban Mai Chai 3.8L ''', N'nưoc-xa--vai-comfort-dam-dac-1-lan-xa-hương-ban-mai-chai-3.8l-', N'185000', N'16', N'2b39108827b8c62fb4f20189d73510d1.jpg', N'26', N'15', N'6', N'"

Nước Rửa Chén Sinh Học Tero Hương Quế Cam (700g) đánh bay mọi vết dầu mỡ nhờ chứa các enzyme được chiết xuất 100% từ tự nhiên - có chức năng làm sạch nhanh. 
Ngoài ra - sản phẩm có độ pH trung tính (pH 5.5 – 7) - để bạn hoàn toan yên tâm rửa chén bát mà không lo kích ứng da. 
9/10 phụ nữ Việt Nam đã trải nghiệm và xác nhận khả năng làm sạch nhanh chén bát và bảo vệ da tay vượt trội của Tero. 
Nước rửa chén bát sinh học Tero - Bảo vệ tay - bay dầu mỡ.
 "', N'8', N'61', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (119, N'N''Khăn Giấy Thếp Paseo Hoa Lan (220 Tờ x 2 Lớp) - Màu Ngẫu Nhiên''', N'khan-giay-thep-paseo-hoa-lan-(220-to-x-2-lop)--mau-ngau-nhien', N'22000', N'12', N'5fa60b9079c731bd17cfe1160f6c66ec.jpg', N'26', N'15', N'6', N'"

Nước Giặt Trung Tính Tero (3.8Kg) - Một trong những nguyên nhân làm bạn bị khô da hay bong tróc da tay trong khi giặt tay đó là nồng độ pH quá cao trong bột giặt hoặc nước giặt mà bạn đang sử dụng. Nước giặt trung tính Tero với độ pH Trung tính pH7 thân thiện với làn da - ngoài ra với công nghệ Ultra Clean đánh bay mọi vết bẩn giúp bạn hoàn toan yên tâm khi chăm sóc gia đình.
Nước giặt trung tính Tero pH = 7 an toàn - không gây hại cho da khi giặt tay và công nghệ Ultra Clean sạch gấp 3 lần bột giặt thông thường - giúp tiết kiệm thời gian và chi phí giặt giũ hơn hẳn. Từ đây - người phụ nữ có thể hoàn toàn yên tâm trong việc chăm sóc gia đình.
Dùng được cho cả giặt tay và giặt máy.
 "', N'8', N'62', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (120, N'N''Nước Rửa Chén Sinh Học Tero Hương Quế Cam (700g)''', N'nưoc-rua-chen-sinh-hoc-tero-hương-que-cam-(700g)', N'22960', N'18', N'ccecbd5b9b675b9e3e32f8adbdc0c114.jpg', N'25', N'16', N'6', N'"

Giấy Vệ Sinh Sài Gòn Clean 1 (10 Cuộn / Lốc) là sản phẩm giấy vệ sinh chất lượng cao được sản xuất trên dây chuyền khép kín với công nghệ mới đảm bảo an toàn vệ sinh.
Sản phẩm có độ dai và khả năng thấm hút nước cao.
Được sản xuất bằng chất liệu bột giấy ngoại nhập - những cuộn giấy này rất mềm mại - không gây kích ứng da và dùng được cho cả trẻ em.
Sản phẩm được sử dụng được với nhiều mục đích khác nhau - đáp ứng mọi nhu cầu sử dụng trong nhà cũng như các chuyến dã ngoại.
Mang lại sự tiện lợi khi sử dụng - đáp ứng tối đa nhu cầu đa dạng và ngày càng khắt khe của người tiêu dùng.
 "', N'8', N'63', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (121, N'N''Nước Giặt Trung Tính Tero (3.8Kg)''', N'nưoc-giat-trung-tinh-tero-(3.8kg)', N'125300', N'30', N'1fda7cf4dc7d6958ea4bc1e8a4e1a210.jpg', N'25', N'9', N'6', N'"




Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Oải Hương Dịu Mát Chai 880ml dịu mát giúp tẩy rửa bồn cầu và nhà tắm - diệt sạch vi khuẩn gây bệnh - cho bồn cầu và phòng tắm trắng sáng và lưu lại hương thơm dịu mát - sạch sẽ.Với công thức diệt 99 -99% vi khuẩn được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - Vim là sản phẩm tẩy rửa có công thức đậm đặc giúp diệt sạch vi khuẩn gây bệnh - có khả năng tấn công hoá học vào protein của tế bào vi khuẩn - phá huỷ tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus.Sản phẩm an toàn cho sức khoẻ của người sử dụng - không gây hư hại bồn cầu.Đặc biệt - với công thức đổi màu igups tăng khả năng quan sát trực quan khi tẩy rửa - cho bạn thấy kết quả ngay khi sử dụng. Với hương Oải Hương với chiết suất từ thiên nhiên cho bồn cầu và nhà tắm thơm mát dễ chịu. "', N'8', N'64', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (122, N'N''Giấy Vệ Sinh Sài Gòn Clean 1 (10 Cuộn / Lốc)''', N'giay-ve-sinh-sai-gon-clean-1-(10-cuộn-/-loc)', N'45000', N'', N'5fab74ba18259ebb369007203e9660ef.png', N'26', N'15', N'6', N'"

Nước Rửa Chén Sinh Học Tero Hương Chanh (700g) đánh bay mọi vết dầu mỡ nhờ chứa các enzyme được chiết xuất 100% từ tự nhiên - có chức năng làm sạch nhanh. 
Ngoài ra - sản phẩm có độ pH trung tính (pH 5.5 – 7) - để bạn hoàn toan yên tâm rửa chén bát mà không lo kích ứng da. 
9/10 phụ nữ Việt Nam đã trải nghiệm và xác nhận khả năng làm sạch nhanh chén bát và bảo vệ da tay vượt trội của Tero. 
Nước rửa chén bát sinh học Tero - Bảo vệ tay - bay dầu mỡ.
 "', N'8', N'65', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (123, N'N''Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Oải Hương Dịu Mát Chai 880ml''', N'gel-tay-rua-bon-cau-va-nha-tam-vim-trang-sang-hương-oai-hương-diu-mat-chai-880ml', N'31000', N'16', N'455a35f7f8697852ebb6c2f7250f8bea.jpg', N'25', N'6', N'6', N'"
Lốc 10 Gói Khăn Giấy Bỏ Túi Cao Cấp Sài Gòn Bless You Lamour 4 Lớp có thiết kế nhỏ gọn - bao bì đẹp mắt - dễ dàng cho bạn bỏ túi mang theo sử dụng ở bất cứ đâu. Giấy có bề mặt mịn màng - có khả năng thấm hút nước tốt. Sản phẩm không chỉ chất lượng - an toàn cho sức khỏe người tiêu dùng mà còn thân thiện với môi trường - dễ dàng phân hủy.

Sài Gòn Bless You Hold Me được làm từ bột giấy nguyên chất 100% - cho bề mặt giấy mịn màng - có độ dai hoàn hảo - khả năng thấm hút nước tuyệt vời - mang đến cho bạn sự hài lòng và cảm giác thoải mái.
Giấy không sử dụng các hóa chất độc hại để làm trắng - kết hợp với dây chuyền sản xuất khép kín đạt tiêu chuẩn an toàn tại Việt Nam - mang đến cho bạn sự an tâm khi sử dụng
Giấy được đựng trong gói nhỏ đẹp mắt và tiện dụng - dễ dàng cho bạn bỏ túi để mang theo sử dụng ở bất cứ đâu.
Sản phẩm đặc biệt thân thiện với môi trường - dễ phân hủy.
 "', N'8', N'66', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (124, N'N''Nước Rửa Chén Sinh Học Tero Hương Chanh (700g)''', N'nưoc-rua-chen-sinh-hoc-tero-hương-chanh-(700g)', N'22960', N'18', N'f20ec987bf5b6990ea46eee9c3198e1c.jpg', N'1004', N'17', N'6', N'"

Nước Rửa Chén Hương Quả Hồng Layer Clean (5L / Bình) là nước rửa chén hữu cơ - bảo vệ da tay - không độc hại - hương liệu tự nhiên.
Thành phần chính là tinh chất trà xanh đủ sức mạnh làm sạch dầu mỡ - khử mùi thức ăn - sạch nhanh - sáng bóng - không bị cảm giác nhờn dính - khó chịu ngay cả với đồ nhựa.
Sản phẩm tạo bọt tốt - giúp đánh bật những mùi hôi khó chịu nhất như cá - mắm tôm và tỏi - ngay cả trên đồ nhựa ngát hương thơm.
Nước rửa chén Layer Clean không làm nhờn tay - không lưu mùi - an toàn và dịu nhẹ.
 "', N'9', N'67', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (125, N'N''Lốc 10 Gói Khăn Giấy Bỏ Túi Cao Cấp 4 Lớp Bless You L''amour''', N'loc-10-goi-khan-giay-bo-tui-cao-cap-4-lop-bless-you-l''amour', N'24000', N'11', N'7e0e38a95fa489e4004de4ba3633e81e.jpg', N'25', N'18', N'5', N'"

Giấy Vệ Sinh Toply (12 Cuộn x 2 Lớp) được làm từ 100% bột giấy nguyên chất được nhập khẩu từ APP Indonesia - sản xuất theo dây chuyền công nghệ tiên tiến tại nhà máy PT. Pindo Deli Puld và Paper Mil.
Giấy vệ sinh Toply thấm mịn - mềm mại - không dính bụi bẩn - không tạp chất. Đặc biệt - sản phẩm không gây kích ứng da - không ảnh hưởng đến sức khỏe người sử dụng.
Giấy vệ sinh Toply là sự lựa chọn tuyệt vời nhất cho bạn và những người thân yêu. Giấy vệ sinh Toply đem tất cả yêu thương chăm sóc cho cuộc sống của bạn và những người thân yêu mỗi ngày.
 "', N'9', N'68', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (126, N'N''Nước Rửa Chén Hương Quả Hồng Layer Clean (5L / Bình)''', N'nưoc-rua-chen-hương-qua-hong-layer-clean-(5l-/-binh)', N'135000', N'', N'd27b0375a01d843f710db1c96ab5adb9.jpg', N'25', N'8', N'4', N'"


Combo 3 Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen tự động làm sạch máy giặt từ sâu bên trong - những vị trí khó nhìn thấy và khó vệ sinh nhất - tẩy sạch chất cặn bã từ quần áo tích tụ lâu ngày trong máy giặt - tiết kiệm thời gian - công sức khi vệ sinh máy giặt.
Khử mùi - khử vi khuẩn - nấm mốc gây ra các bệnh hô hấp - dị ứng
Bảo dưỡng - làm thông thoáng máy giặt - hạn chế tình trạng tắc nghẽn - tăng tuổi thọ cho máy giặt
Bột tẩy lồng máy giặt Homes Queen được sản xuất từ công ty Hàn Quốc với công nghệ tiên tiến và hơn 30 năm kinh nghiệm sản xuất các sản phẩm tẩy rửa đồ dùng nhà cửa - không cần tháo lắp máy giặt vẫn có thể vệ sinh máy sạch sẽ.
Sản phẩm được chứng nhận an toàn với người sử dụng và môi trường - dùng được cho cả máy giặt lồng ngang - lồng đứng
 "', N'9', N'69', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (127, N'N''Giấy Vệ Sinh Toply (12 Cuộn x 2 Lớp)''', N'giay-ve-sinh-toply-(12-cuộn-x-2-lop)', N'48000', N'26', N'8021c7a8a3188b22542dbf56f946ee27.jpg', N'1005', N'19', N'10', N'"

Nước Giặt Xả Maxkleen Hương Nước Hoa Huyền Diệu được chiết xuất từ tự nhiên cho mùi hương thơm ngát.
Công nghệ Ultra Kép đột phá kết hợp hài hoà 2 sức mạnh giặt & xả trong 1 nắp giặt cho áo quần sạch khuẩn & thơm mềm.
Mang lại cảm giác thoải mái cho người sử dụng.
 "', N'9', N'70', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (128, N'N''Combo 3 Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen (400g / Túi)''', N'combo-3-bột-tay-ve-sinh-long-may-giat-homes-queen-(400g-/-tui)', N'119000', N'21', N'4de1396ee9b9d6625aba32c5725b4342.png', N'25', N'14', N'5', N'"

Giấy Vệ Sinh Paseo 2 Lớp (10 Cuộn) là sản phẩm giấy chất lượng có xuất xứ từ Indonesia - được làm bằng bột giấy nguyên chất - không chứa các hóa chất độc hại - không gây kích ứng da - đảm bảo an toàn tuyệt đối cho người dùng.
Sản phẩm gồm 10 cuộn giấy vệ sinh 2 lớp có độ dai - mềm và khả năng thấm hút nước cao - mang lại sự thoải mái và yên tâm tuyệt đối khi sử dụng - đặc biệt dễ chịu khi tiếp xúc với làn da.
Sản phẩm hoàn toàn không có hóa chất tẩy trắng độc hại - sử dụng được với nhiều mục đích khác nhau. Với thiết kế dạng cuộn có lõi giúp bạn dễ dàng cài vào móc đựng giấy vệ sinh - mang lại sự tiện lợi khi sử dụng - đáp ứng tối đa nhu cầu đa dạng và ngày càng khắt khe của người tiêu dùng.
 "', N'9', N'71', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (129, N'N''Túi Nước Giặt Xả Maxkleen Hương Nước Hoa Huyền Diệu (2.4kg)''', N'tui-nưoc-giat-xa-maxkleen-hương-nưoc-hoa-huyen-dieu-(2.4kg)', N'116000', N'15', N'8004c99cd0c5b49bd8ff901d9db9a6b7.jpg', N'25', N'20', N'6', N'"
Nước Rửa Chén Sunlight Chanh Dạng Chai 750g
Nước Rửa Chén Sunlight Chanh Dạng Chai 750g sẽ giúp cho chén bát sạch bong kin kít và ngát hương thơm. Sản phẩm mang lại sức mạnh đánh bay dầu mỡ tương đương 100 trái chanh. Sản phẩm có khả năng rửa sạch dầu mỡ cả trên đồ nhựa và dịu nhẹ dịu với da tay - an toàn cho người dùng. Với hương chanh tươi mát - đây sẽ là sự lựa chọn hoàn hảo cho các bà nội trợ.

Thông tin sản phẩm
Công thức đánh bay dầu mỡ hiệu quả
Sunlight với chiết xuất chanh tươi và muối khoáng tự nhiên - giúp đánh bay dầu mỡ với sức mạnh như 100 trái chanh.
Turbo sạch cực nhanh - kết hợp chiết xuất chanh với các hoạt chất tẩy rửa - giúp làm yếu liên kết dầu mỡ - làm sạch nhanh - sạch dầu mỡ trên cả đồ nhựa - cho chén dĩa sạch bong kin kít chỉ với một lần rửa.
Khử sạch mùi tanh
Ngoài khả năng đánh tan dầu mỡ - Nước Rửa Chén Sunlight Chanh còn có hương thơm thanh mát từ chanh - giúp khử sạch các loại mùi tanh khó chịu và bám lâu bao gồm: mùi tanh của cá - trứng tanh - tỏi - nước mắm và mắm tôm ngay cả trên đồ nhựa; mang lại hương thơm tự nhiên - thơm mát cho bát đĩa.

An toàn - dịu nhẹ
Nước Rửa Chén Sunlight Chanh sử dụng các thành phần tự nhiên - bảo vệ bàn tay và mang lại cảm giác an toàn - dịu nhẹ.
Thiết kế chai 750g tiện dụng 
Nước Rửa Chén Sunlight Chanh chai 750g có dung tích vừa phải - thiết kế chai không quá lớn - không chiếm nhiều diện tích quanh bệ rửa bát nhà bạn.
Hướng dẫn sử dụng
Pha loãng sản phẩm vào nước hoặc sử dụng trực tiếp - rửa sạch các vết bẩn và tráng lại chén đĩa bằng nước sạch.
Lưu ý
Không được uống. Để xa tầm tay trẻ em. Nếu sản phẩm dính vào mắt - rửa sạch bằng nước. Nếu nuốt phải - uống ngay 1 ly nước hoặc sữa - nếu cần thì đến cơ sở y tế.
Lưu trữ nơi khô ráo - tránh ánh nắng trực tiếp. "', N'9', N'72', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (130, N'N''Giấy Vệ Sinh Paseo 2 Lớp (10 Cuộn)''', N'giay-ve-sinh-paseo-2-lop-(10-cuộn)', N'67000', N'11', N'2e5ade69e4a60a3710720541943a7e7f.jpg', N'25', N'20', N'6', N'"
                Nước Lau Sàn Sunlight Tinh Dầu Thiên Nhiên - Hương hoa Diên Vỹ (2.6kg/Túi) là nước lau sàn mới với công nghệ tiên tiến - giúp sàn nhà bạn sạch bóng không tì vết và ngát hương thơm chỉ sau một lần lau nhẹ. Bạn có thể sử dụng sản phẩm cho các không gian trong nhà như: phòng ngủ - phòng khách bếp và phòng tắm - mang lại vẻ sáng bóng cho tổ ấm của bạn.
Đánh bay vết bẩn nhanh chóng
Với hoạt chất tẩy rửa năng động cùng công thức tiên tiến - nước lau sàn sẽ đánh bật các vết bẩn và bụi bám ở mọi ngóc ngách hiệu quả - cho sàn nhà sạch bong và sáng bóng chỉ sau một lần lau.
Chất hoạt động bề mặt tiên tiến có trong nước lau sàn tách vết dơ ra khỏi sàn nhà ngay khi vừa tiếp xúc - đồng thời các hoạt chất tẩy rửa sẽ diệt khuẩn - hạn chế bám bụi trở lại.
Cùng với động tác lau sàn của bạn - vết dơ sẽ bị cuốn trôi - không để lại cảm giác dính chân - giúp cho sàn nhà sạch bóng - và lưu lại hương thơm trong nhà.
Khử sạch mùi khó chịu với hương Hoa Diên Vỹ
Nước Lau Sàn Sunlight Hương Hoa Diên Vỹ còn có hương Hoa Diên Vỹ dịu nhẹ giúp khử sạch các loại mùi khó chịu trong phòng. Hương hoa dễ chịu lưu lại trên sàn sẽ mang lại cảm giác dễ chịu - sảng khoái cho ngôi nhà của bạn.
An toàn - dễ sử dụng
Công thức độc đáo hiệu quả có thể đuổi côn trùng - không có hại cho sức khỏe của bạn.
Sử dụng nước Lau sàn Sunlight thường xuyên có thể làm cho sàn nhà bạn nhìn như mới với hương thơm ngát.
Thiết kế dạng chai tiện dụng
Nước Lau Sàn Sunlight Hương Hoa Diên Vỹ có thiết kế dạng chai tiện lợi - dễ sử dụng - dễ dàng lấy đủ lượng dung dịch cần dùng và dễ dàng cất giữ sau khi sử dụng xong.

Hướng dẫn sử dụng
Hòa 1 nắp đầy Sunlight vào nửa xô nước
Nhúng ướt giẻ lau rồi lau sạch các vết bẩn
Không lau lại bằng nước

Lưu ý
Tránh để hóa chất vào mắt - để xa tầm tay trẻ em - không được uống.
Để nơi khô thoáng - tránh nơi có nhiệt độ cao.
Tránh nhiệt độ cao và ánh sáng trực tiếp            "', N'9', N'73', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (131, N'N''Nước Rửa Chén Sunlight Chanh Dạng Chai 750g''', N'nưoc-rua-chen-sunlight-chanh-dang-chai-750g', N'23000', N'', N'607ef2da7bce9756f53415ef239f3b4f.jpg', N'11', N'21', N'6', N'"

Đường ống ở trong phòng tắm - toilet và nhà bếp thường xuyên rơi vào trạng thái bị tắc - làm tập chung vi khuẩn và gây mùi hôi thối làm bạn khó chịu - bận đừng lo lắng với sản phẩm Chai thông tắc đường ống loại to 800g Daiichi tình trạng trên hoàn toàn được khắc phục.
Công dụng: loại bỏ bùn tắc - bùn ướt ở trong ống thoát nước. Dung dịch sẽ tiếp xúc với phần đường ống bị tắc - nhanh chóng hòa tan và loại bỏ các phần tóc - bùn - bùn nhão diệt tận gốc vi khuẩn - các chất bẩn và mùi hôi thối. Sử dụng cho đường ống ở trong phòng tắm - toilet và nhà bếp. Không sử dụng với các đồ bằng men - nhôm - đồng. Liều lượng sử dụng: Sử dụng khoảng 320 ~ 480ml cho 1 lần làm sạch. Sau khi đổ chất tẩy - đợi 30 đến 60 phút và xả nước làm sạch.
Thông tin sản phẩm:
Trọng lượng: 800g/chai
Hàng nhập khẩu từ Nhật Bản.
Sản xuất tại Nhật
Mã sản phẩm: 4902050473000
 "', N'9', N'74', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (132, N'N''Nước Lau Sàn Sunlight Tinh Dầu Thiên Nhiên - Hương hoa Diên Vỹ (2.6kg/Túi)''', N'nưoc-lau-san-sunlight-tinh-dau-thien-nhien--hương-hoa-dien-vy-(2.6kg/tui)', N'56000', N'2', N'02c88276a33783aa309831c63e30dabb.jpg', N'25', N'9', N'6', N'"




Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Oải Hương Dịu Mát Chai 475ml dịu mát giúp tẩy rửa bồn cầu và nhà tắm - diệt sạch vi khuẩn gây bệnh - cho bồn cầu và phòng tắm trắng sáng và lưu lại hương thơm dịu mát - sạch sẽ.Với công thức diệt 99 -99% vi khuẩn được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - Vim là sản phẩm tẩy rửa có công thức đậm đặc giúp diệt sạch vi khuẩn gây bệnh - có khả năng tấn công hoá học vào protein của tế bào vi khuẩn - phá huỷ tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus.Sản phẩm an toàn cho sức khoẻ của người sử dụng - không gây hư hại bồn cầu.Đặc biệt - với công thức đổi màu igups tăng khả năng quan sát trực quan khi tẩy rửa - cho bạn thấy kết quả ngay khi sử dụng. Với hương Oải Hương với chiết suất từ thiên nhiên cho bồn cầu và nhà tắm thơm mát dễ chịu. "', N'9', N'75', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (133, N'N''Chai thông tắc đường ống cống Daiichi 800g nội địa Nhật Bản''', N'chai-thong-tac-dưong-ong-cong-daiichi-800g-nội-dia-nhat-ban', N'54990', N'57', N'63d713b6bbcac45cff93b17b2c74f7c3.jpg', N'25', N'3', N'6', N'"
Nước Giặt Máy Bền Đẹp Cửa Trước OMO 2.7kg - 21122484 có công thức cải tiến mới - thiết kế dành riêng cho máy giặt cửa trước - giúp nhanh chóng đánh bay những vết bẩn cứng đầu. Ngoài ra - sản phẩm có hương thơm nhẹ nhàng - thanh khiết mang đến sự dễ chịu khi sử dụng.
Thông tin sản phẩm
Nước giặt cho máy giặt cửa trước
Sản phẩm được thiết kế cho dòng máy giặt cửa trước - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Hương thơm bền lâu
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
An toàn - thân thiện với môi trường
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Hướng dẫn sử dụng
- Đổ nước giặt OMO vào nắp với liều lượng theo hướng dẫn.
- Thoa một lượng nhỏ nước giặt trực tiếp lên vết bẩn.
- Đổ phần nước giặt còn lại trong nắp vào máy giặt cùng với quần áo.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'9', N'76', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (134, N'N''Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Oải Hương Dịu Mát  Chai 475ml''', N'gel-tay-rua-bon-cau-va-nha-tam-vim-trang-sang-hương-oai-hương-diu-mat--chai-475ml', N'23000', N'8', N'77e2a7cb1c58fb0763712818591a5532.jpg', N'8', N'22', N'6', N'"
Thông tin sản phẩmTên sản phẩm : Bột thông cống Hando 100g nội địaThành phần : Nước - hydrogen peroxide - sodium silicat - sodiumhypo chloriteCông dụng : Thông cống - chống phá tắc nghẽnHướng dẫn bảo quản : Nơi khô ráo - thoáng mát. Để xa tầm tay trẻ em. Khi bị bắn vào mắt phải rửa ngay bằng nước sạch.
- Bột thông cống Hando 100g nội địa với công thức tiên tiến - các thành phần hóa học chuyên dụng - độ tẩy cực mạnh sẽ xoáy tan mọi cặn bẩn trong đường ống một cách hiệu quả.- Sản phẩm sẽ thông sạch mọi loại cặn bẩn như giấy - giẻ - rác - rau - mỡ - thịt - gạo - tóc...kẹt trong đường ống thoát nước của chậu rửa nhà bếp - lavabo - bồn tắm -...mà không làm hư hại đường ống và các thiết bị vệ sinh.- Sản phẩm được đóng gói nhỏ tiện lợi - dễ sử dụng.

Hướng dẫn sử dụng- Cắt chéo túi - đổ hạt bột vào xô nhựa - hòa tan với khoảng nửa lít nước - đổ dung dịch vào cổ ống nơi bị tắc nghẽn- Để từ 1- 3 giờ rồi xả mạnh nước cho chảy đi (tốt nhất là đổ buổi tối - để tới sáng hôm sau mới xả mạnh nước hoặc dùng thụt cao su thụt cho chảy đi)- Trong trường hợp cống bị tắc nghẽn nặng hoặc đường ống lớn - nên dùng 2 gói "', N'9', N'77', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (135, N'N''Nước Giặt Máy Bền Đẹp Cửa Trước OMO 2.7kg - 21122484''', N'nưoc-giat-may-ben-dep-cua-trưoc-omo-2.7kg--21122484', N'147000', N'21', N'7154361c9278d4892c1d56e6335bae99.jpg', N'1001', N'1', N'29', N'"

Combo 2 Túi Nước Giặt Ariel Khử Mùi Ẩm Mốc (2.15Kg/ Túi) là sản phẩm được nhiều người ưa chuộng bởi tính năng đánh bay vết bẩn ngay từ lần giặt đầu tiên - làm trắng sáng vải - giúp vải mềm mịn và khử mùi ẩm mốc - lưu lại hương thơm trên quần áo.
Giúp loại sạch vết bẩn cứng đầu tốt hơn trong 1 bước giặt với hương thơm bền lâu. 
Loại bỏ các vết bẩn cứng đầu chỉ trong 1 bước và giúp giữ được quần áo trắng sáng - mềm mịn như mới.
Bổ sung hương thơm đam mê quyến rũ lưu lại - khử sạch mùi ẩm mốc. 

Hướng dẫn sử dụng :

Giặt tay: 15ml cho 5 - 7 chiếc quần áo
Giặt máy: 45ml cho 1 lần giặt thông thường (15 - 20 chiếc quần áo)
 "', N'9', N'78', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (136, N'N''Bột thông cống cực mạnh 100g nội địa Hando''', N'bột-thong-cong-cuc-manh-100g-nội-dia-hando', N'24000', N'40', N'150bace8e7e59f8ba65e164b86726cea.jpg', N'1006', N'23', N'29', N'"
Sản phẩm vi sinh thân thiện với môi trường. Hiệu quả nhanh chóng sau khi sử dụng.Thành phần:Tập hợp các chủng vi sinh vật chuyên dụng: Bacillus spp - Rhodopseudomonas spp - Nitrobacter spp - Nitrosomonas spp … được sản xuất theo công nghệ độc quyền tại Mỹ. Hoạt động tích cực trong môi trường hiếu khí - kỵ khí hoặc tùy nghi.
 Cách dùng:
1. Phân hủy hầm cầu - bể phốt:
Lắc đều và đổ 1 chai 350ml vào hầm cầu - bể phốt để phân hủy chất thải định kỳ 3 tháng/ lần - nếu nghẹt dùng định kỳ 1 - 2 tháng/lần - sử dụng sản phẩm vào cuối ngày - tránh sử dụng hóa chất có tính tẩy mạnh như javen - clo -..trước và sau 3 ngày sử dụng vi sinh để tránh ảnh hưởng đến hệ vi sinh.
 
2. Thông cống - bồn rửa chén:
Đối với bồn rửa chén - cống thoát nước: lắc đều và đổ thật chậm 1 chai 350 ml vào cuối ngày - xả nhẹ bằng nước để sản phẩm trôi và lưu trên đường ống và phát huy tác dụng. Có thể pha loãng đổ từ từ sản phẩm vào cống. Sử dụng định kỳ 3 tháng/lần.Công dụng:Phân hủy nhanh hầm cầu - cống thoát nước nghẹt.Thông nhanh hầm cầu - tránh bị nước xối chậm - xử lý mùi hôi.Phân hủy chất cặn cống thoát nước bị tắc nghẽn.Phân hủy dầu mỡ - chất béo (FOG).Phân hủy protein (thịt - cá).Phân hủy tinh bột - carbohydrate.Phân hủy cellulose (giấy vệ sinh - rau - thực phẩm khác).Phân hủy chất hữu cơ - chất thải con người. Kiểm soát mùi hôi.
Hạn sử dụng:
 Chưa mở nắp: Hạn dùng 2 năm kể từ ngày sản xuất in trên chai. (MFG năm/tháng/ngày).Sau khi mở nắp: 6 tháng. "', N'9', N'79', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (137, N'N''Combo 2 Túi Nước Giặt Ariel Khử Mùi Ẩm Mốc (2.15Kg/ Túi)''', N'combo-2-tui-nưoc-giat-ariel-khu-mui-am-moc-(2.15kg/-tui)', N'269000', N'1', N'32f61b06d4b919ade9763caa41e0b3af.jpg', N'25', N'3', N'6', N'"
Bột Giặt OMO Comfort Tinh Dầu Thơm bung tỏa hương thơm tươi mát kết hợp công thức mới với sức mạnh xoáy bay vết bẩn cứng đầu nhanh hơn chỉ trong 1 lần giặt cho quần áo của bạn luôn sạch thơm như mới.Hương Comfort tinh dầu thơm  bền lâu cho quần áo ngát hương theo từng cử động - giúp bạn thoải mái vận động suốt cả ngày.

Thông tin sản phẩm
Công thức làm sạch vết bẩn độc đáo
Bột Giặt OMO Comfort Tinh Dầu Thơm (2.7g) - 32004710 chứa các hạt Năng Lượng Xoáy hòa tan - thấm sâu thật nhanh vào sợi vải - giúp xoáy bay các bết bẩn cứng đầu chỉ trong 1 lần giặt.
Hương thơm bền lâu
Bột giặt có hương tinh dầu thơm của nước xả Comfort Tinh dầu thơm tinh tế giúp quần áo thơm mát dài lâu - các phân tử hương bung tỏa theo từng cử động
An toàn - thân thiện với môi trường
Bột Giặt OMO Đỏ chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Hướng dẫn sử dụng
Sản phẩm dùng cho giặt tay và máy giặt cửa trên.
Đọc kỹ hướng dẫn sử dụng trước khi dùng.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'10', N'80', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (138, N'"N''Vi sinh thông cống', N' xử lý hầm cầu', N' bể phốt', N' tự hoại BIO - SEPTIC - Chai 350ml''"', N'"vi-sinh-thong-cong', N'-xu-ly-ham-cau', N'-be-phot', N'-tu-hoai-bio--septic--chai-350ml"', N'99001', N'17', N'06c9a5f36b31557eb8cd2bb2deaa2e31.jpg', N'1005', N'19', N'10,"

Nước Giặt Xả MaxKleen Hương Hoa Nắng được chiết xuất từ tự nhiên cho mùi hương thơm ngát.
Công nghệ Ultra Kép đột phá kết hợp hài hoà 2 sức mạnh giặt & xả trong 1 nắp giặt cho áo quần sạch khuẩn & thơm mềm.
Mang lại cảm giác thoải mái cho người sử dụng.
 ",10,81,5000,''2019/07/10'',cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (139, N'N''Bột Giặt OMO Comfort Tinh Dầu Thơm 32004710 (2.7kg) ''', N'bột-giat-omo-comfort-tinh-dau-thơm-32004710-(2.7kg)-', N'110000', N'13', N'ada5be0d58e5a478ba098157efb5294c.jpg', N'25', N'14', N'5', N'"

Combo 4 Hộp Khăn Giấy Hộp Aloe Vera Paseo từ lâu đã trở thành một sản phẩm tiện ích trong cuộc sống hàng ngày của mọi người. Từ sự xuất hiện phổ biến trong các quán ăn - nhà hàng đến các buổi đi chơi - dã ngoại...
Sản phẩm được làm từ bột giấy nguyên chất 100% - kết hợp với dây chuyền sản xuất khép kín đạt tiêu chuẩn an toàn tại Việt Nam - đã cho ra đời loại giấy ăn trắng - dai - mềm mịn.
Khăn giấy đặc biệt thân thiện với môi trường - dễ phân hủy lại nhỏ gọn - giúp bạn có thể mang đi bất cứ đâu. Không chỉ chú trọng về chất lượng - mà mẫu mã của hộp giấy cũng khá đẹp mắt - bạn có thể sử dụng trong nhà ăn - văn phòng làm việc...
 "', N'10', N'82', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (140, N'N''Túi Nước Giặt Xả Maxkleen Hương Hoa Nắng (2.4kg)''', N'tui-nưoc-giat-xa-maxkleen-hương-hoa-nang-(2.4kg)', N'116000', N'15', N'09d3e2501f4689f664452b62f50e1ca6.jpg', N'1', N'4', N'6', N'"
Cùng với gián - kiến cũng là một trong những loài côn trùng gây nhiều phiền toái cho con người. Chúng ta có thể bị dị ứng rất nghiêm trọng nếu như bị kiến cắn. Không những vậy - kiến còn là trung gian truyền nhiếm các bệnh nguy hiểm như tiêu chảy - đậu mùa… Vậy làm cách nào để tiêu diệt chúng một cách nhanh chóng - triệt để mà vẫn đảm bảo an toàn? Thuốc diệt kiến Nhật Bản chính là lời giải cho những băn khoăn trên. Thuốc có tác dụng diệt sạch kiến trong ngôi nhà của bạn một cách nhanh chóng nhất mà không hề gây độc hại cho sức khỏe của bạn cũng như vật nuôi trong nhà.

*Thông tin về sản phẩm:
Thuốc diệt kiến Nhật Bản SUPER ARINOSU KOROKI với cơ chế thu hút kiến từ hương phấn hoa kết hợp hương mật ong loại hương thơm mạnh thu hút kiến nhất - kích thích kiến ăn và mang hạt thức ăn về tổ. Những con kiến ăn và mang thức ăn về tổ đều bị nhiễm thuốc và chết ngay sau đó nên khi dùng thuốc diệt kiến sau 1-2 ngày sẽ thấy hiệu quả tức thì.



Công dụng của thuốc diệt kiến Nhật Bản

Tiêu diệt kiến một cách nhanh chóng. Kiến sẽ bị tiêu diệt ngay lập tức nếu ăn hoặc chạm vào thuốc.
Tiêu diệt các ấu trùng và kiến con khi kiến trưởng thành tha thuốc về tổ.
Tiêu diệt kiến hàng loạt. Thuốc diệt kiến của Nhật với mùi thơm đặc trưng sẽ thu hút bầy kiến - Dinotefuran và chất Hydramethylnon có trong thuốc sẽ làm cho kiến bị đứt ruột.
Tiêu diệt được nhiều loại kiến trong đó cả những loại kiến đã kháng thuốc.

Cách sử dụng và bảo quản thuốc diệt kiến SUPER ARINOSU KOROKI Nhật Bản

Lấy thuốc diệt kiến ra khỏi lớp bảo vệ bằng cách kéo từ từ băng dán trên miệng hộp theo chiều ngang để loại bỏ lớp bảo vệ. Tuyệt đối không được lấy thuốc bằng cách mở lắp hộp.
Để những nơi mà kiến thường đi qua hoặc ở gần tổ kiến. Sau 1 tuần không thấy có hiệu quả nên đổi chỗ đặt của thuốc diệt kiến SUPER ARINOSU KOROKI Nhật Bản.
Bảo quản nơi khô ráo - thoáng mát - tránh những nơi ẩm ướt - có nhiệt độ cao - tránh tiếp xúc trực tiếp với ánh nắng mặt trời. Để xa tầm tay trẻ em. Đến ngay cơ sở y tế gần nhất nếu chẳng may ăn - uống phải loại thuốc này.

 "', N'10', N'83', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (141, N'N''Combo 4 Hộp Khăn Giấy Hộp Aloe Vera Paseo''', N'combo-4-hộp-khan-giay-hộp-aloe-vera-paseo', N'104000', N'19', N'df3df30b46eae95d2d88985734039b89.jpg', N'14', N'24', N'6', N'"
  Sáp Thơm Glade Hương Lavender 180g đảm bảo cho không gian sống của bạn có hương thơm an toàn và tinh khiết. Trải nghiệm mùi hương lavender nhẹ nhàng     góp phần làm tăng cảm nhận tích cực về không gian sống cũng như gia tăng hưng phấn cho tinh thần của bạn. Giữ cho không gian     luôn sạch và thơm mát nhất.



Sáp Thơm Glade Hương Lavender được sản xuất và đóng gói tại Thái Lan - đảm bảo chất lượng và mùi hương.
Sản phẩm có thành phần tự nhiên - an toàn với sức khỏe người sử dụng.
Mang đến hương  thơm lavender tự nhiên - dịu nhẹ - tươi mát cho không gian - phù hợp đặt trong  phòng khách - phòng ngủ - nhà bếp - nhà tắm - bếp - ô tô…
Sản phẩm được đóng hộp nhỏ gọn - hiện đại - tiện dụng.


 "', N'10', N'84', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (142, N'N''Thuốc diệt kiến Nhật bản''', N'thuoc-diet-kien-nhat-ban', N'155123', N'38', N'b5240db45216294c95d6601f31747dbe.jpg', N'1001', N'1', N'2', N'"
BỘ SẢN PHẨM BAO GỒM:01 X Nước Giặt Ariel Đậm Đặc Dạng Chai 2.4kg01 X Nước Xả Vải Downy Huyền Bí Dạng Túi 2.4LTHÔNG TIN SẢN PHẨM1. Nước giặt chai Ariel đậm đặc là bột giặt dạng gel đậm đặc giúp Loại sạch vết bẩn tốt hơn gấp 2X chỉ trong 1 bước giặt. sản phẩm thế hệ mới được áp dụng công nghệ cao với khả năng loại sạch vết bẩn vượt trội - chứa nhiều thành phần làm sạch hiệu quả giúp loại bỏ được nhiều vết bẩn cứng đầu như vết bẩn dầu mỡ - vết cà phê


Đặc điểm:- Sản phẩm dạng gel đậm đặc cho khả năng giặt tẩy vượt trội - giúp đánh bật mọi vết bẩn tốt hơn gấp 2 lần chỉ trong 1 bước giặt - quần áo sẽ được trắng sáng - không để lại chất cặn và lưu lại hương thơm tươi mát.- Là sản phẩm phù hợp cả giặt tay và giặt bằng máy - nước giặt Ariel đậm đặc sẽ giúp cho việc giặt giũ của bạn trở nên nhẹ nhàng và hiệu quả hơn - giúp các bà nội trợ tiết kiệm được thời gian và công sức của mình.- An toàn cho làn da của người sử dụng nếu giặt bằng tay.HDSD:- Giặt tay: 15ml cho 5 - 7 chiếc quần áo- Giặt máy: 45ml cho 1 lần giặt thông thường (15 - 20 chiếc quần áo)
2. Nước xả vải Downy Hương nước hoa huyền bí với hương thơm bung tỏa dài lâu - cho cả gia đình bạn cùng tận hưởng sự mềm mại và thơm mát trên quần áo suốt cả ngày dài. Công thức chứa các phân tử hương li ti bám sâu vào từng sợi vải - khử đi những mùi khó chịu trên quần áo - xua tan mùi ẩm mốc vào những ngày mưa.


Đặc điểm: - Downy Hương nước hoa huyền bí có khả năng lưu giữ mùi hương lâu hơn trên trang phục và trong từng cử động.- Bí mật của công nghệ chuyển hương nằm ở các hạt nước hoa siêu nhỏ với đặc tính linh hoạt trước những di chuyển tự nhiên của con người.- Khi được chà nhẹ - các hạt siêu nhỏ chứa nước hoa sẽ quyện vào nhau và tỏa ra mùi hương đầy lý thú.- Đặc biệt - mỗi lần chạm nhẹ - bạn sẽ được cảm nhận một mùi hương hoàn toàn khác nhau tùy theo nồng độ của các loại hạt tại vị trí ma sát.HDSD:- Không đổ trực tiếp lên quần áo- Đối với giặt tay: Dùng 1/2 nắp Downy cho 15-20 chiếc quần áo - ngâm trong vài phút - vắt và phơi khô- Đối với giặt máy:  Dùng 1/2 nắp Downy cho nửa thùng giặt (khoảng 35L) hoặc 1 nắp rưỡi cho đầy thùng giặt (khoảng 52L); sau khi máy hoàn tất công đoạn xả - vắt và sấy khô như thường lệ- Để tốt cho jeans - chăn - khă nên dùng 1 nắp đầyTHÔNG TIN THƯƠNG HIỆUP&G sở hữu một trong những danh mục sản phẩm đa dạng và chất lượng nhất. Trong số 50 nhãn hiệu hàng tiêu dùng và chăm sóc sức khỏe hàng đầu của P&G - 25 nhãn hiệu được xếp vào danh mục “Thương hiệu tỉ dollar” với mức doanh thu hằng năm đạt trên 1 tỉ dollar Mỹ. Với mong muốn mang lại cuộc sống tốt đẹp hơn cho người tiêu dùng Việt Nam - P&G đã mang đến các thương hiệu hàng đầu vào thị trường Việt Nam như : Ariel - Tide - Downy - Pampers - Head & Shoulders - Pantene - Rejoice - Olay - Gillette - Oral – B - Safeguard - Whispers - Ambi Pur "', N'10', N'85', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (143, N'N''Sáp Thơm Glade Hương Lavender 180g''', N'sap-thơm-glade-hương-lavender-180g', N'47900', N'13', N'sap-thom-glade-huong-hoa-lavender-180gr-1.u2409.d20170222.t170039.497243.jpg', N'1001', N'2', N'29', N'"
Nước Xả Vải Downy Expert Thể Thao là dòng làm mềm vải mới của Downy - kết hợp công nghệ mới được thiết kế để loại bỏ mùi không mong muốn trên quần áo. Đây là dòng sản phẩm đầu tiên có công nghệ chống mồ hôi lên đến 24 giờ - tăng cường sự tự tin với hương thơm lâu dài cho mọi người trong gia đình.
TÍNH NĂNG NỔI BẬT- Với khả năng chống mùi tối ưu và kéo dài 24 giờ - Downy Expert hoạt động thông qua ma sát trên quần áo - giúp giữ quần áo thơm mát suốt cả ngày.- Ngoài ra - Downy Sport còn bao gồm các tính năng như ngăn mùi hôi từ quần áo ướt đẫm mồ hôi. - Loại bỏ mùi mốc từ quần áo - lưu giữ hương thơm tươi mát - lâu phai với hương nước hoa. - Ngăn chặn sự phát triển của mùi ẩm mốc cả ngày dài.

HƯỚNG DẪN SỬ DỤNG- Không đổ trực tiếp lên quần áo- Đối với giặt tay: Dùng 1/2 nắp Downy cho 15-20 chiếc quần áo - ngâm trong vài phút - vắt và phơi khô- Đối với giặt máy: Dùng 1/2 nắp Downy cho nửa thùng giặt (khoảng 35L) hoặc 1 nắp rưỡi cho đầy thùng giặt (khoảng 52L); sau khi máy hoàn tất công đoạn xả - vắt và sấy khô như thường lệ- Để tốt cho jeans - chăn - khă nên dùng 1 nắp đầyHƯỚNG DẪN BẢO QUẢN- Sau mỗi lần sử dụng - bạn hãy đóng chặt nắp lại- Không nên để tiếp xúc với ánh nắng mặt trời và nhiệt độ cao trong thời gian dài- Để xa tầm tay trẻ emTHÔNG TIN THƯƠNG HIỆUDowny là nhãn hàng thuộc tập đa quốc gia P&G nổi tiếng. P&G được biết đến là một tập đoàn luôn đi đầu trong việc đổi mới công nghệ để liên tục đem đến nhiều lợi ích cho người tiêu dùng. Nhãn hàng nước xả vải Downy của P&G đã nghiên cứu thành công Công Nghệ Chuyển Hương độc đáo giúp phái đẹp thỏa mong muốn được thêm phần “cuốn hút” người đối diện với chính mùi hương quyến rũ của mình chỉ sau những cái chạm tay chà nhẹ lên quần áo. "', N'10', N'86', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (144, N'N''Combo Nước Giặt Ariel Đậm Đặc Dạng Túi 2.4kg  + Nước Xả Vải Downy Huyền Bí Dạng Túi 2.4L''', N'combo-nưoc-giat-ariel-dam-dac-dang-tui-2.4kg--+-nưoc-xa-vai-downy-huyen-bi-dang-tui-2.4l', N'288000', N'', N'bf950e5f6b12d9504938bf9dfb1d3165.jpg', N'25', N'3', N'6', N'"
Combo 2 Túi Nước Giặt Omo Dịu Nhẹ (2.4 kg/túi) - Nước giặt có công thức dịu nhẹ với làn da - bạn không cần phải vò tay trước mà quần áo vẫn được làm sạch nhanh chóng trong môi trường giặt máy. Sản phẩm với sức mạnh đánh bật hoàn toàn vết bẩn ngay trong lồng giặt. Sản phẩm được thiết kế phù hợp nhất cho giặt máy - giúp quần áo luôn sạch sẽ - thơm tho.

Sản phẩm có thành phần an toàn cho làn da - kể cả làn da nhạy cảm.
Sản phẩm được thiết kế cho dòng  cửa trên - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Nước giặt tạo ít bọt - không gây trào bọt trong lúc giặt và bảo vệ máy giặt cùng quần áo của bạn tốt hơn.
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
Nước Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn.
Công thức cân bằng pH - dịu nhẹ cho da.
Hương phấn thơm dịu nhẹ với hương thơm từ comfort cho da nhạy cảm.
 "', N'10', N'87', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (145, N'N''Combo 2 Nước Xả Vải Downy Expert Thể Thao Dạng Túi 2.4L''', N'combo-2-nưoc-xa-vai-downy-expert-the-thao-dang-tui-2.4l', N'309000', N'3', N'bf8344bf6abae3990ff4033beaa711a8.jpg', N'25', N'3', N'6', N'"
Nước Giặt Máy Bền Đẹp Cửa Trên OMO Túi 2.4kg có công thức được thiết kế chuyên biệt - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt. OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng.
Thông tin sản phẩm
Công thức làm sạch vết bẩn độc đáo
Sản phẩm nước giặt OMO được THIẾT KẾ PHÙ HỢP NHẤT cho GIẶT MÁY và có công thức ít bọt để bảo vệ máy giặt của gia đình bạn giúp quần áo luôn sạch và thơm
Đột phá từ các hoạt chất loại bỏ vết bẩn - giúp không cần ngâm hay vò lâu. Kết hợp 3 lợi ích vượt trội: làm trắng - làm sáng & xoáy bay hoàn toàn vết bẩn
Hương thơm bung tỏa theo từng cử động
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
An toàn - thân thiện với môi trường
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm của tập đoàn Unilever được kiểm nghiệm và khuyên dùng bởi 11 hãng máy giặt hàng đầu thế giới như Sanyo - Toshiba - LG - Panasonic - Haier - Sharp - Bosch - Electrolux - Fagor 
Hướng dẫn sử dụng
- Đổ nước giặt OMO vào nắp với liều lượng theo hướng dẫn.
- Thoa một lượng nhỏ nước giặt trực tiếp lên vết bẩn.
- Đổ phần nước giặt còn lại trong nắp vào máy giặt cùng với quần áo.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng
 
  "', N'10', N'88', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (146, N'N''Combo 2 Túi Nước Giặt Omo Dịu Nhẹ (2.4kg / Túi)''', N'combo-2-tui-nưoc-giat-omo-diu-nhe-(2.4kg-/-tui)', N'259000', N'2', N'2fd72cd14d2ec98c59b4137faafc5e7c.jpg', N'23', N'4', N'6', N'"

Trọng lượng: 100g
Công dụng: Sản phẩm giúp dễ dàng loại bỏ các vết bẩn hiệu quả - đặc biệt là vùng cánh tay và cổ áo…
Hướng dẫn sử dụng: chỉ cần thấm ướt quần áo - chà nhẹ sản phẩm lên những chỗ có vết bẩn và ngâm - rồi giặt (giặt tay hay giặt máy đều được).
Nhập khẩu trực tiếp từ Nhật. Sản xuất tại Nhật
 "', N'10', N'89', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (147, N'N''Nước Giặt Máy Bền Đẹp Cửa Trên OMO Túi 2.4kg''', N'nưoc-giat-may-ben-dep-cua-tren-omo-tui-2.4kg', N'109000', N'22', N'07f59defa647dfde4601d7301034879d.jpg', N'25', N'5', N'17', N'"
Gel Diệt Kiến Bayer Maxforce Quantum 03% (12g)

An toàn cho người sử dụng: Không mùi - không gây phản ứng phụ cho người và vật nuôi trong nhà.
Hiệu ứng Domino tiêu diệt cả tổ kiến.
Hiệu quả trên nhiều loại kiến.
Thân thiện - sử dụng linh hoạt.
Công thức dạng gel - không cần phun xịt.
 "', N'10', N'90', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (148, N'N''Xà phòng thanh giặt cổ áo nội địa Nhật Bản''', N'xa-phong-thanh-giat-co-ao-nội-dia-nhat-ban', N'29500', N'64', N'a212e7ae18c54d119becd1861e1064e6.jpg', N'1', N'4', N'6', N'"
Gián là loài côn trùng gây khó chịu - khó diệt bằng các biện pháp cơ học hay đập bằng vỉ. Góc bếp - tủ quần áo - phòng làm việc... rất nhiều nơi trong gia đình dễ dàng là nơi trú ẩn cho gián - gây mùi hôi khó chịu và mất vệ sinh - hư hỏng đồ.

Thuốc diệt gián Black Cap Nhật - hộp 12 viên sẽ đuổi sạch các loại gián ra khỏi gia đình bạn mà không gây hại cho con người - vật nuôi giống như khi dùng thuốc xịt - hay các biện pháp truyền thống. Là sản phẩm hữu ích và rất cần thiết cho mỗi gia đình. Sản phẩm diệt tận gốc lũ gián trong nhà bạn bằng cơ chế tỏa mùi hương dễ chịu thu hút gián đến ăn - gián chưa chết ngay mà về gây bệnh cho cả tổ - diệt sạch tận gốc - diệt cả ấu trùng con - thậm chí ngay cả trứng gián cũng sẽ bị tiêu diệt. Hiệu quả cao - với 12 viên bạn có thể sử dụng ở 12 điểm khác nhau trong nhà bạn tại các vị trí xuất hiện nhiều gián như: góc tủ bếp - bạn có thể đặt tại các đường ống cống thoát nước - góc tủ bếp - gầm tủ lạnh - góc tủ quần áo... bất cứ nơi nào có gián đi qua. Nếu bạn duy trì thay viên diệt gián này 6 tháng 1 lần thì gián sẽ không bao giờ đến làm phiền bạn.

Đặc điểm của sản phẩm: - Hiệu quả nhanh chóng nhờ hợp chất Fipronil sẽ cho tác dụng diệt ngay lập tức với những con gián ăn phải. - Diệt gián tận gốc ngay cả với những loại gián đã kháng thuốc thông thường. - Thiết kế hộp đựng thông minh vừa dễ dàng đặt vào mọi ngóc ngách - vừa bảo vệ được thuốc gián tránh xa tầm với của trẻ nhỏ. - Thời gian sử dụng lâu dài - duy trì hiệu quả diệt gián đến 6 tháng. Công dụng : 1. Đuổi gián siêu tốc bằng chất Fipronil ngay từ khi đặt viên đuổi gián 2. Có tác dụng với cả trứng gián lẫn gián to. Đuổi diệt được tất cả các loại gián. 3. Đuổi diệt được cả gián ăn trực tiếp hạt - gián ăn phải phân gián hay gián đã chết có ăn thuốc. 4. Diệt hết tất cả các loại gián đã kháng thuốc thông thường Hộp đuổi gián thu hút gián tới ăn - Gián sẽ tha về tổ khiến cho cả đàn bị tiêu diệt.Gián sẽ biến mất hoàn toàn khỏi nhà bạn chỉ sau 2 – 5 ngày sử dụng. Hướng dẫn sử dụng: B1. Bóc lớp gói thiếc bọc sản phẩm và tách dời từng viên 1 ra B2. Đặt viên diệt gián đã tách ra ở những nơi gián thường hay qua lại như: gầm bếp - gầm trạn bát - tủ quần áo - máy giặt -… gián sau khi ăn thuốc và bị bệnh - đi về tổ và lây bệnh cho cả đàn. Chúng sẽ chết dần dần cả tổ chứ không chỉ chết một vài con. Liều lượng đặt: - Đối với viên diệt gián 12 viên: Đặt 4 viên/ diện tích 10m². - Ở những nơi gián sinh sôi nhiều nên đặt 2 viên/ 5m² quanh khu vực bạn không muốn gián lại gần. Lưu ý: - Bảo quản ở nơi thoáng mát - tránh ánh sáng trực tiếp. - Nếu bạn ăn nhầm - vui lòng tìm kiếm sự chăm sóc y tế. - Nên rửa tay kỹ bằng xà phòng và nước nếu tay tiếp xúc với thuốc - Tránh đặt thuốc dưới trời mưa - nơi có độ ẩm cao. - Tránh đặt ở những nơi lưu trữ - thực phẩm - đồ ăn - tránh nhầm lẫn với đồ ăn. "', N'10', N'91', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (149, N'N''Diệt kiến dạng Gel Bayer Maxforce Quantum 03% (12g)''', N'diet-kien-dang-gel-bayer-maxforce-quantum-03%-(12g)', N'135000', N'16', N'54ac37ca7fbafb1a1a5d2ba62c6fb752.jpg', N'25', N'6', N'6', N'"
Lốc 9 Cuộn Giấy Vệ Sinh Cao Cấp Sài Gòn Bless You  Lamour 3 Lớp được nhiều người tiêu dùng lựa chọn bởi những ưu điểm vượt trội. Giấy được làm từ chất liệu bột giấy cao cấp - có thiết kế 3 lớp đặc biệt - bề mặt giấy mềm mại nhưng vẫn giữ được độ dai cần thiết - khả năng thấm hút nước tốt. Sản phẩm dễ phân hủy - thân thiện với môi trường - được thiết kế dạng cuộn tiện dụng - dùng cho các việc vệ sinh hàng ngày trong gia đình.

Sài Gòn Bless You Hold Me được làm từ bột giấy nguyên chất 100% - kết hợp với dây chuyền sản xuất khép kín đạt tiêu chuẩn an toàn tại Việt Nam
Bề mặt giấy mịn màng - có độ dai hoàn hảo - khả năng thấm hút nước tuyệt vời - mang đến cho bạn sự hài lòng và cảm giác thoải  mái khi sử dụng.
Giấy được thiết kế 3 lớp - dày dặn - có thể sử dụng cho nhiều mục đích khác nhau
Sản phẩm đặc biệt thân thiện với môi trường - dễ phân hủy.
 "', N'10', N'92', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (150, N'N''Set 12 hộp diệt gián tận gốc hiệu quả ngay tức thì - Nội địa Nhật Bản''', N'set-12-hộp-diet-gian-tan-goc-hieu-qua-ngay-tức-thi--nội-dia-nhat-ban', N'148999', N'42', N'0c1c4d55aa28473c7816395be411bf7d.jpg', N'1002', N'7', N'6', N'"
Nước Diệt Kiến Trong 1 Ngày Sạch Kiến Không Quay Lại Hanvet là hóa chất diệt côn trùng đạt tiêu chuẩn của Tổ Chức Y Tế Thế Giới (WHO).

An toàn cho người sử dụng: Không mùi - không gây phản ứng phụ cho người và vật nuôi trong nhà - chính vì lợi điểm đó nên được áp dụng phun ULV cả trong và ngoài nhà - trong khi đó các hóa chất cùng gốc Deltamethrin chỉ áp dụng phun ULV ngoài nhà.
Sử dụng tiện lợi cho các hộ gia đình - dùng để phun tồn lưu để diệt muỗi - ruồi - kiến - gián - bọ chét và côn trùng có cánh khác..

Công dụng:

Diệt muỗi - ruồi - kiến - gián - bọ chét trong gia dụng và y tế.
Phòng chống dịch sốt xuất huyết - sốt rét - dịch tiêu chảy cấp - dịch hạch trong cộng đồng.

Cách dùng:

Diệt muỗi - kiến - gián: Cứ 5ml pha với 0 -5 lít nước - phun 10 m2 bề mặt - tường - vách - cống rãnh - phun kỹ các khe kẽ nơi côn trùng hay trú đậu.
Diệt ruồi: Cứ 5 ml pha với 0 -5 lít nước phun 5 m2 bề mặt - bãi rác - nhà tiêu - các nơi ruồi cư trú. Hiệu lực kéo dài 6-8 tuần sau 1 lần phun.
Diệt bọ chét: Cứ 5ml pha với 2 lít nước - phun kỹ bề mặt hốc kẽ nơi bọ chét trú ẩn và qua lại. Phun 2 lần - mỗi lần cách nhau 10 ngày.
 "', N'11', N'93', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (151, N'N''Lốc 9 Cuộn Giấy Vệ Sinh Cao Cấp Bless You L''amour 3 Lớp''', N'loc-9-cuộn-giay-ve-sinh-cao-cap-bless-you-l''amour-3-lop', N'89000', N'9', N'897cb5ec889afeda13d54c7b074755b0.jpg', N'25', N'3', N'6', N'"
Nước Giặt Máy Bền Đẹp Cửa Trước OMO 4.2kg - 21122578 với công nghệ giặt sạch nhanh giúp đánh bật nhiều loại vết bẩn khô cứng nhanh hơn chỉ trong 1 lần giặt. Sản phẩm dành cho máy giặt cửa trước - tạo ít bọt bảo vệ máy và giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.

Sản phẩm được thiết kế cho dòng máy giặt cửa trước - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm có thiết kế chai lớn 4.2 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.

Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng





 "', N'11', N'94', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (152, N'N''Nước diệt kiến sạch kiến sau hai giờ - Hantox 50ml''', N'nưoc-diet-kien-sach-kien-sau-hai-gio--hantox-50ml', N'45000', N'35', N'e31a668b4ec10e6c411fe8c3c1f21e4f.jpg', N'23', N'4', N'6', N'"
-Đuổi gián siêu tốc bằng chất Fipronil ngay từ khi đặt viên đuổi gián.
-Có tác dụng với cả trứng gián lẫn gián to. Đuổi diệt được tất cả các loại gián.
-Đuổi diệt được cả gián ăn trực tiếp hạt - gián ăn phải phân gián hay gián đã chết có ăn thuốc. Đuổi diệt dán tận gốc.
Mỗi viên diệt gián Nhật Bản được bao bọc bởi hộp nhựa cứng chỉ có gián chui lọt vào lấy thức ăn. An toàn tuyệt đối vs trẻ con và thú cưng. Loại 12 viên diệt dc nhiều loại gián to và nhỏ.
Đặc tính sản phẩm: Trọng lượng 24g x 12 viên
Kích thước 211 * 31 * 151 (mm)
Lưu ý: Để xa tầm tay trẻ em. "', N'11', N'95', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (153, N'N''Nước Giặt Máy Bền Đẹp Cửa Trước OMO 4.2kg - 21122578 ''', N'nưoc-giat-may-ben-dep-cua-trưoc-omo-4.2kg--21122578-', N'210000', N'22', N'68a253a747e2c5e00e7fdf6c28fd34ab.jpg', N'23', N'4', N'6', N'"
Công dụng
Sản phẩm sử dụng cho cả máy giặt lồng đứng (cửa trên) và lồng ngang (cửa dưới) tiện lợi.
Giúp tiêu diệt toàn bộ nấm mốc và vi khuẩn bên trong máy giặt - đánh tan mảng bám canxi nơi lồng giặt - giúp quần áo sau khi giặt thơm tho hơn.
Ngoài ra - sản phẩm cũng giúp đánh bay mùi hôi khó chịu bên trong lồng máy giặt.
Hướng dẫn sử dụng
Đối với máy giặt cửa trên:+ Chọn chế độ giặt với mức nước cao nhất+ Ngâm trong 30 phút đóng nắp+ Chọn chế độ giặt Standard (Giặt → Giũ → Làm khô)
Đối với máy giặt cửa dưới:+ Sau khi bật máy - cho dung dịch tẩy rửa vào lồng giặt+ Chọn chế độ giặt Standard (Giặt → Giũ → Làm khô)
Chú ý+ Không dùng với nước nóng.+ Đối với máy dưới 4kg thì nên dùng 1/2 chai. Máy 4-9kg thì nên dùng cả chai.+ Nên dùng sản phẩm này để tẩy rửa lồng máy giặt cứ 1-2 tháng 1 lần để giữ cho máy giặt luôn sạch sẽ - thơm tho và nâng cao tuổi thọ cho máyXuất xứ: Rocket Soap (Nhật bản)Dung tích: 550ml "', N'11', N'96', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (154, N'N''Thuốc viên diệt gián nội địa Nhật Bản''', N'thuoc-vien-diet-gian-nội-dia-nhat-ban', N'142908', N'56', N'a03fbd2517232658892e81873e95c5fb.jpg', N'25', N'3', N'6', N'"
Nước Giặt OMO Comfort Tinh Dầu Thơm giúp xoáy tan vết bẩn cứng đầu hiệu quả trong lồng giặt với công nghệ tiên tiến - tăng cường thêm sức mạnh gấp 3 lần - mang lại 3 hiệu quả vượt trội: làm trắng - làm sáng và xoáy bay hoàn toàn vết bẩn. Hương thơm của Comfort giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.
Thông tin sản phẩm
Công thức làm sạch vết bẩn độc đáo
Bột Giặt OMO Hương Comfort ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Hương thơm comfort dịu nhẹ
OMO Comfort Mới kết hợp sức mạnh đánh bật vết bẩn của OMO cải tiến và hương thơm quyến rũ của Comfort sẽ giúp quần áo thơm mát dài lâu. Bạn sẽ yêu ngay mùi hương cải tiến mới của OMO Comfort
An toàn - thân thiện với môi trường
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm của tập đoàn Unilever được kiểm nghiệm và khuyên dùng bởi 11 hãng máy giặt hàng đầu thế giới như Sanyo - Toshiba - LG - Panasonic - Haier - Sharp - Bosch - Electrolux - Fagor 
Hướng dẫn sử dụng
- Đổ nước giặt OMO vào nắp với liều lượng theo hướng dẫn.
- Thoa một lượng nhỏ nước giặt trực tiếp lên vết bẩn.
- Đổ phần nước giặt còn lại trong nắp vào máy giặt cùng với quần áo.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'11', N'97', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (155, N'N''Nước tẩy vệ sinh lồng máy giặt Rocket nội địa Nhật Bản''', N'nưoc-tay-ve-sinh-long-may-giat-rocket-nội-dia-nhat-ban', N'40000', N'49', N'69685e1bfc6207c96ff1f04842aef333.jpg', N'25', N'3', N'6', N'"
Nước Giặt  OMO Comfort Tinh Dầu Thơm (3 -8kg) - 21122480 với công nghệ đột phá - có tác dụng xoáy bay những vết bẩn cứng đầu nhất - đồng thời không để lại cặn bột giặt như các loại bột thông thường khác - giúp cho quần áo luôn trắng sạch - thơm ngát như mới. Hương thơm của Comfort giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.

Bột Giặt OMO Hương Comfort ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt.
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng.
OMO Comfort Mới kết hợp sức mạnh đánh bật vết bẩn của OMO cài tiến và hương thơm quyến rũ của Comfort sẽ giúp quần áo thơm mát dài lâu. Bạn sẽ yêu ngay mùi hương cải tiến mới của OMO Comfort.
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn.
Sản phẩm có thiết kế chai lớn 3.8 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.

Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'11', N'98', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (156, N'N''Nước Giặt OMO Matic Comfort Tinh Dầu Thơm 21122479 (2.4kg)''', N'nưoc-giat-omo-matic-comfort-tinh-dau-thơm-21122479-(2.4kg)', N'110000', N'21', N'eaf33b2ab8935df375d488fe2ab6da17.jpg', N'25', N'8', N'4', N'"


Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen (400g) tự động làm sạch máy giặt từ sâu bên trong - những vị trí khó nhìn thấy và khó vệ sinh nhất - tẩy sạch chất cặn bã từ quần áo tích tụ lâu ngày trong máy giặt - tiết kiệm thời gian - công sức khi vệ sinh máy giặt.
Khử mùi - khử vi khuẩn - nấm mốc gây ra các bệnh hô hấp - dị ứng
Bảo dưỡng - làm thông thoáng máy giặt - hạn chế tình trạng tắc nghẽn - tăng tuổi thọ cho máy giặt
Bột tẩy lồng máy giặt Homes Queen được sản xuất từ công ty Hàn Quốc với công nghệ tiên tiến và hơn 30 năm kinh nghiệm sản xuất các sản phẩm tẩy rửa đồ dùng nhà cửa - không cần tháo lắp máy giặt vẫn có thể vệ sinh máy sạch sẽ.
Sản phẩm được chứng nhận an toàn với người sử dụng và môi trường - dùng được cho cả máy giặt lồng ngang - lồng đứng
 

 "', N'11', N'99', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (157, N'N''Nước Giặt  OMO Comfort Tinh Dầu Thơm 21122480 (3.8kg)  ''', N'nưoc-giat--omo-comfort-tinh-dau-thơm-21122480-(3.8kg)--', N'191000', N'20', N'8906f979723c498666802292db7a195e.jpg', N'25', N'3', N'6', N'"
Nước Giặt  OMO Cho Máy Giặt Cửa Trên (4.2kg) - 21122477 có công thức dành cho máy giặt - tạo ít bọt giúp bảo vệ tốt nhất cho máy giặt và quần áo của bạn. Sản phẩm đánh tan mọi vết bẩn cứng đầu trong lồng giặt. Hương thơm nhẹ nhàng giúp quần áo thơm mát dài lâu - giúp bạn thoải mái vận động suốt cả ngày.

Sản phẩm được thiết kế cho dòng máy giặt cửa trên - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Nước giặt tạo ít bọt - không gây trào bọt trong lúc giặt và bảo vệ máy giặt cùng quần áo của bạn tốt hơn.
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Sản phẩm có thiết kế chai lớn 4.2 kg giúp người nội trợ tiết kiệm hơn chi phí và thời gian mua sắm.

Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng








 "', N'11', N'100', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (158, N'N''Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen (400g)''', N'bột-tay-ve-sinh-long-may-giat-homes-queen-(400g)', N'41000', N'18', N'6e80377ea27789e57bbbc6a98a9cb3f5.jpg', N'25', N'6', N'6', N'"




Giấy Lụa Hộp - Bless You Selection 2019 được sản xuất từ 100% bột giấy tự nhiên - kết hợp dây chuyền khép kín với công nghệ mới - cho ra loại giấy chất lượng cao - đảm bảo an toàn vệ sinh và an toàn cho sức khỏe người tiêu dùng. Giấy có đặc tính dai - mềm - mỏng nhưng không dễ rách - rất dễ phân hủy - hạn chế gây ô nhiễm môi trường.
Giấy được làm từ chất liệu bột giấy 100% thiên nhiên - không chứa chất tẩy độc hại - đảm bảo chất lượng - không gây kích ứng da và dùng được cho cả trẻ em
Ngoài ra - sự kết hợp hoàn hảo về độ dai và bề mặt mềm mại của sản phẩm còn mang đến cho bạn loại giấy chất lượng để sử dụng hàng ngày.
Tùy nhu cầu sử dụng - có thể sử dụng vào nhiều mục đích khác nhau.
 "', N'11', N'101', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (159, N'N''Nước Giặt  OMO Cho Máy Giặt Cửa Trên (4.2kg) - 21122477''', N'nưoc-giat--omo-cho-may-giat-cua-tren-(4.2kg)--21122477', N'191000', N'20', N'a9ac639943b1a9c2977ebd67e53cac04.jpg', N'25', N'9', N'6', N'"




Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Chanh Sả Chai 475ml dịu mát giúp tẩy rửa bồn cầu và nhà tắm - diệt sạch vi khuẩn gây bệnh - cho bồn cầu và phòng tắm trắng sáng và lưu lại hương thơm dịu mát - sạch sẽ.Với công thức diệt 99 -99% vi khuẩn được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - Vim là sản phẩm tẩy rửa có công thức đậm đặc giúp diệt sạch vi khuẩn gây bệnh - và có khả năng tấn công hoá học vào protein của tế bào vi khuẩn - phá huỷ tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus.Sản phẩm an toàn cho sức khoẻ của người sử dụng - không gây hư hại bồn cầu.Đặc biệt - với công thức đổi màu igups tăng khả năng quan sát trực quan khi tẩy rửa - cho bạn thấy kết quả ngay khi sử dụng. Với hương chanh sả với chiết suất từ thiên nhiên cho bồn cầu và nhà tắm thơm mát dễ chịu. "', N'11', N'102', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (160, N'N''Lốc 4 Hộp Khăn Giấy Bless You Tết 2019 - Tặng 1 Hộp Cùng Loại''', N'loc-4-hộp-khan-giay-bless-you-tet-2019--tang-1-hộp-cung-loai', N'75000', N'6', N'ddd82cdfd78ee772f36236b48fb2e283.jpg', N'1003', N'10', N'6', N'"
ZEINO nước giặt tiên tiến can tím 3.5kg.
Hương sữa tắm cá ngựa - thơm mát gấp nhiều lần
Nước giặt ZEINO thấm sâu vào từng sợi vải - vừa giặt sạch dễ dàng vừa lưu lại hương thơm như sữa tắm.
Dùng được cho cả giặt tay và giặt máy (cửa trên và cửa ngang)
Dịu nhẹ - an toàn với da tay "', N'11', N'103', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (161, N'N''Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Chanh Sả Chai 475ml''', N'gel-tay-rua-bon-cau-va-nha-tam-vim-trang-sang-hương-chanh-sa-chai-475ml', N'23000', N'8', N'6e85699878e93345cab01a1f60ec460e.jpg', N'19', N'11', N'6', N'"
Giấy Vệ Sinh Lency (15 Cuộn) được sản xuất với dây chuyền sản xuất khép kín và hiện đại đạt tiêu chuẩn an toàn tại Việt Nam. Giấy vệ sinh Lency cao cấp có độ dai - mềm mịn - trắng và khả năng thấm hút nước cao đem đến cho người dùng sự thoải mái - dễ chịu khi tiếp xúc với làn da. 
Giấy vệ sinh Lency cao cấp được sử dụng được với nhiều mục đích khác nhau. Với thiết kế dạng cuộn có lõi giúp bạn dễ dàng cài vào móc đựng giấy vệ sinh - mang lại sự tiện lợi khi sử dụng. 
 "', N'11', N'104', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (162, N'N''Nước giặt ZEINO tím 3.5kg''', N'nưoc-giat-zeino-tim-3.5kg', N'80000', N'45', N'fe28f1559d8f3fa6e624b26a3b3bb9c7.jpg', N'25', N'9', N'6', N'"
Nước Tẩy Bồn Cầu Vim Diệt Khuẩn 500ml - Xanh Biển
Nước Tẩy Bồn Cầu Vim Diệt Khuẩn 500ml - Xanh Biển có hương thơm nhẹ nhàng - tươi mát - cùng công thức diệt khuẩn Sodium Hypochlorite được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur - Vim giúp bạn tiêu diệt vi khuẩn gây bệnh đồng thời tẩy sạch vết bẩn mà không làm ăn mòn các bề mặt gạch hay bồn cầu

Thông tin sản phẩm
Công thức tẩy sạch mảng bám
Với công thức diệt khuẩn Sodium Hypochlorite được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - VIM là sản phẩm tẩy rửa có khả năng:
- Diệt sạch vi khuẩn gây bệnh
- VIM chứa Sodium Hypochlorite có khả năng tấn công hóa học vào protein của tế bào vi khuẩn - phá hủy tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus (siêu vi)
An toàn - không gây hư hại bồn cầu
Sản phẩm có khả năng tẩy sạch các vết ban hữu cơ trong bồn cầu mà không làm mất độ bóng của gạch men. Công thức của VIM không chứa acid như các sản phẩm tẩy rửa thông thường khác nên không ăn mòn các bề mặt gạch hay bồn cầu
Thiết kế dạng chai tiện dụng
Nước Tẩy Bồn Cầu Vim Diệt Khuẩn có thiết kế dạng chai tiện lợi - dễ sử dụng - giúp phân tán chất lỏng đến tất cả mọi bề mặt - mọi vị trí mong muốn - cho hiệu quả vệ sinh cao hơn.
Hương thơm tươi mát
Sản phẩm có mùi hương nhẹ nhàng - tươi mát - để lại hương thơm dễ chịu và tạo cảm giác sạch thoáng cho toilet nhà bạn.
Hướng dẫn sử dụng
Xịt Vim trực tiếp dưới vùng bồn cầu - đậy nắp
Sau khoảng 10 phút - dùng bàn chải chà nhẹ và xả nước
Hòa 2 nắp sản phẩm vào 1/2 xô nước (2.5L)
Dùng để tẩy rửa sàn và nhiều bề mặt khác nhau
Hướng dẫn diệt khuẩn với dung dịch đậm đặc
Rãnh thoát nước trong nhà tắm/nhà bếp: xịt trực tiếp lên rãnh thoát nước để tẩy sạch và loại bỏ mùi hôi rồi xả nước
Bồn rửa: Xịt vào lỗ thoát thước - để 5 phút và sau đó xả nước
Lưu ý
Mang bao tay và khẩu trang khi sử dụng sản phẩm
Tránh tiếp xúc với mắt và da vì có thể gây kích ứng
Nếu sản phẩm dính lên da - rửa sạch ngay bằng nhiều nước
Nếu dính vào mắt - rửa sạch ngay với nhiều nước và đến kiểm tra tại cơ sở y tế
Nếu nuốt phải - đến ngay sơ sở y tế và mang theo chai hoặc nhãn mác "', N'11', N'105', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (163, N'N''Giấy Vệ Sinh Lency (15 Cuộn)''', N'giay-ve-sinh-lency-(15-cuộn)', N'86501', N'9', N'1a1e4de0499c5fd63cc77c7c0373be9c.png', N'25', N'12', N'6', N'"
Nước Lau Kính Cif là sản phẩm tiện ích giúp làm sáng bóng bề mặt làm bằng kính và các vật  dụng khác. Công thức đậm đặc và hoạt chất tẩy rửa tiên tiến sẽ giúp bạn lau  sạch bóng mặt kính với hiệu quả cực mạnh. Sản phẩm thích hợp sử dụng  cho các loại  cửa kính - gương soi - màn hình TV - các bề mặt làm bằng crôm -  inox…
Thông tin sản phẩm
Công thức đậm đặc với hiệu quả làm sạch nhanh chóng
Công thức đậm đặc và hoạt chất tẩy rửa tiên tiến cho hiệu quả làm sạch  kính cực mạnh khi sử dụng - ngay cả những vết khó lau chùi như dầu mỡ -  mảng bám.
Ngăn đọng hơi nước tốt và không để lại vết ố lên kính.
Duy trì độ sáng bóng - giúp mặt kính sạch bong như mới - đồng thời chống bám bụi trở lại.
Hiệu quả trên các bề mặt kính
Sản phẩm thích hợp sử dụng cho các loại kính như kính trong - kính mờ -  gương soi và đồ dùng pha lê - bề mặt formica - đồ inox. Những thành phần  hóa học trong sản phẩm sẽ nhanh chóng giúp loại sạch mọi bụi bẩn để trả  lại một bề mặt kính sáng bóng - tô điểm cho ngôi nhà của bạn thêm sang  trọng.
An toàn - không độc hại
Sản phẩm không tồn đọng chất gây hại - an toàn cho sức khỏe người sử dụng.
Hương thơm nhẹ nhàng - tươi mát
Nước Lau Kính Cif có mùi hương tự nhiên thơm mát - mang đến cho bạn cảm giác thoải mái - dễ chịu.
Hướng dẫn sử dụng
Vặn nút chai qua ON.
Phun Cif lên bề mặt cần làm sạch rồi lau lại bằng khăn ẩm. Sau khi sử dụng vặn nút chai về OFF.
Đối với những vết bẩn cứng đầu như dầu mỡ - mảng bám lâu ngày - nên chờ ít phút rồi mới lau sẽ cho kết quả làm sạch cao hơn.
Lưu ý
Tránh để hóa chất vào mắt - để xa tầm tay trẻ em - không được uống.
Để nơi khô thoáng - tránh nơi có nhiệt độ cao.
Tránh nhiệt độ cao và ánh sáng trực tiếp "', N'12', N'106', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (164, N'N''Nước Tẩy Bồn Cầu Vim Diệt Khuẩn 500ml - Xanh Biển''', N'nưoc-tay-bon-cau-vim-diet-khuan-500ml--xanh-bien', N'21000', N'5', N'dabf9450a8e89ed2bb21a7a8f81bf22b.jpg', N'25', N'13', N'6', N'"
Nước Xả  Vải Comfort Đậm Đặc 1 Lần xả Hương Ban Mai Chai 3.8L
Nước Xả  Vải Comfort Đậm Đặc 1 Lần xả Hương Ban Mai Chai 3.8L sẽ giúp quần áo của cả gia đình bạn luôn thơm mát cả ngày. Bên cạnh đó - công thức đậm đặc 1 lần xả sẽ giúp bạn tiết kiệm chi phí hơn so với các loại nước vải thông thường khác.
Thông tin sản phẩm
Công thức 1 lần xả
Comfort Một lần xả áp dụng công thức cắt bọt và chống tái bám giúp áo quần hoàn toàn sạch bọt xà phòng chỉ trong 1 lần xả. Với cách này - bạn không chỉ an tâm với áo quần hoàn sạch bọt xà phòng mà còn tiết kiệmthời gian và công sức. Ngoài ra - sử dụng Comfort Một lần xả là bạn đã góp phần giúp tiết kiệm nước - bảo vệ môi trường.
Công thức đậm đặc
Sản phẩm có công thức đậm đặc giúp cho vải không bị khô cứng nhất là đối với quần áo cũ. Công thức đậm đặc sẽ giúp bạn tiết kiệm hơn so với các loại nước xả thông thường khác.
Hương ban mai thanh khiết
Nước Xả Vải Comfort Đậm Đặc Hương Ban Mai chứa tinh dầu thơm 100% tự nhiên được chưng cất từ hoa và thảo mộc cho hương thơm thanh khiết như ánh nắng ban mai - xua tan đi mùi ẩm mốc khó chịu trong những ngày mưa bão.
Lưu hương thơm thật lâu trên quần áo
Công nghệ tỏa hương mới từ Comfort Đậm Đặc giúp áo quần tỏa hương thơm ngát theo từng cử động của bạn suốt cả ngày dài. Chỉ cần một lần xả - áo quần sạch xà phòng và thơm ngát đến bất ngờ.
Thiết kế chai lớn 3.8L
Nước Xả Vải Comfort Đậm Đặc Hương Ban Mai nay có thêm thiết kế chai lớn 3.8L giúp bạn tiết kiệm chi phí và thời gian mua sắm.
Hướng dẫn sử dụng
- Giặt tay: Sau khi giặt với xà phòng - vắt quần áo cho bớt bọt. Hòa nước xả vải vào nước - đảm bảo lượng nước đủ ngập hết quần áo. Ngâm quần áo ít nhất 10 phút. Sau đó vắt và phơi khô - không cần xả thêm với nước.
- Giặt máy: Hòa nước xả vải vào ngay nước xả đầu tiên - không cần xả thêm với nước. "', N'12', N'107', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (165, N'N''Nước Lau Kính Cif (520ml)''', N'nưoc-lau-kinh-cif-(520ml)', N'24000', N'8', N'af8368ede480990d544c6c07960d658a.jpg', N'', N'14', N'5', N'"

Khăn Giấy Thếp Paseo Hoa Lan (220 Tờ x 2 Lớp) được làm hoàn toàn từ bột giấy tự nhiên đã qua nhiều khâu xử lý bằng máy móc hiện đại nên hoàn toàn không có chất tẩy trắng độc hại - không gây kích ứng da - đảm bảo an toàn tuyệt đối cho người dùng.
Thiết kế 2 lớp nên giấy có độ dai tuyệt hảo - độ mềm mại cùng khả năng thấm hút vượt trội - mang lại sự thoải mái và yên tâm tuyệt đối khi sử dụng.
Sản phẩm gồm 220 tờ khăn giấy 2 lớp Paseo - tiện lợi hơn khi sử dụng - đáp ứng tối đa nhu cầu đa dạng và ngày càng khắt khe của người tiêu dùng.​
 "', N'12', N'108', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (166, N'N''Nước Xả  Vải Comfort Đậm Đặc 1 Lần xả Hương Ban Mai Chai 3.8L ''', N'nưoc-xa--vai-comfort-dam-dac-1-lan-xa-hương-ban-mai-chai-3.8l-', N'185000', N'16', N'2b39108827b8c62fb4f20189d73510d1.jpg', N'26', N'15', N'6', N'"

Nước Rửa Chén Sinh Học Tero Hương Quế Cam (700g) đánh bay mọi vết dầu mỡ nhờ chứa các enzyme được chiết xuất 100% từ tự nhiên - có chức năng làm sạch nhanh. 
Ngoài ra - sản phẩm có độ pH trung tính (pH 5.5 – 7) - để bạn hoàn toan yên tâm rửa chén bát mà không lo kích ứng da. 
9/10 phụ nữ Việt Nam đã trải nghiệm và xác nhận khả năng làm sạch nhanh chén bát và bảo vệ da tay vượt trội của Tero. 
Nước rửa chén bát sinh học Tero - Bảo vệ tay - bay dầu mỡ.
 "', N'12', N'109', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (167, N'N''Khăn Giấy Thếp Paseo Hoa Lan (220 Tờ x 2 Lớp) - Màu Ngẫu Nhiên''', N'khan-giay-thep-paseo-hoa-lan-(220-to-x-2-lop)--mau-ngau-nhien', N'22000', N'12', N'5fa60b9079c731bd17cfe1160f6c66ec.jpg', N'26', N'15', N'6', N'"

Nước Giặt Trung Tính Tero (3.8Kg) - Một trong những nguyên nhân làm bạn bị khô da hay bong tróc da tay trong khi giặt tay đó là nồng độ pH quá cao trong bột giặt hoặc nước giặt mà bạn đang sử dụng. Nước giặt trung tính Tero với độ pH Trung tính pH7 thân thiện với làn da - ngoài ra với công nghệ Ultra Clean đánh bay mọi vết bẩn giúp bạn hoàn toan yên tâm khi chăm sóc gia đình.
Nước giặt trung tính Tero pH = 7 an toàn - không gây hại cho da khi giặt tay và công nghệ Ultra Clean sạch gấp 3 lần bột giặt thông thường - giúp tiết kiệm thời gian và chi phí giặt giũ hơn hẳn. Từ đây - người phụ nữ có thể hoàn toàn yên tâm trong việc chăm sóc gia đình.
Dùng được cho cả giặt tay và giặt máy.
 "', N'12', N'110', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (168, N'N''Nước Rửa Chén Sinh Học Tero Hương Quế Cam (700g)''', N'nưoc-rua-chen-sinh-hoc-tero-hương-que-cam-(700g)', N'22960', N'18', N'ccecbd5b9b675b9e3e32f8adbdc0c114.jpg', N'25', N'16', N'6', N'"

Giấy Vệ Sinh Sài Gòn Clean 1 (10 Cuộn / Lốc) là sản phẩm giấy vệ sinh chất lượng cao được sản xuất trên dây chuyền khép kín với công nghệ mới đảm bảo an toàn vệ sinh.
Sản phẩm có độ dai và khả năng thấm hút nước cao.
Được sản xuất bằng chất liệu bột giấy ngoại nhập - những cuộn giấy này rất mềm mại - không gây kích ứng da và dùng được cho cả trẻ em.
Sản phẩm được sử dụng được với nhiều mục đích khác nhau - đáp ứng mọi nhu cầu sử dụng trong nhà cũng như các chuyến dã ngoại.
Mang lại sự tiện lợi khi sử dụng - đáp ứng tối đa nhu cầu đa dạng và ngày càng khắt khe của người tiêu dùng.
 "', N'12', N'111', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (169, N'N''Nước Giặt Trung Tính Tero (3.8Kg)''', N'nưoc-giat-trung-tinh-tero-(3.8kg)', N'125300', N'30', N'1fda7cf4dc7d6958ea4bc1e8a4e1a210.jpg', N'25', N'9', N'6', N'"




Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Oải Hương Dịu Mát Chai 880ml dịu mát giúp tẩy rửa bồn cầu và nhà tắm - diệt sạch vi khuẩn gây bệnh - cho bồn cầu và phòng tắm trắng sáng và lưu lại hương thơm dịu mát - sạch sẽ.Với công thức diệt 99 -99% vi khuẩn được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - Vim là sản phẩm tẩy rửa có công thức đậm đặc giúp diệt sạch vi khuẩn gây bệnh - có khả năng tấn công hoá học vào protein của tế bào vi khuẩn - phá huỷ tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus.Sản phẩm an toàn cho sức khoẻ của người sử dụng - không gây hư hại bồn cầu.Đặc biệt - với công thức đổi màu igups tăng khả năng quan sát trực quan khi tẩy rửa - cho bạn thấy kết quả ngay khi sử dụng. Với hương Oải Hương với chiết suất từ thiên nhiên cho bồn cầu và nhà tắm thơm mát dễ chịu. "', N'12', N'112', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (170, N'N''Giấy Vệ Sinh Sài Gòn Clean 1 (10 Cuộn / Lốc)''', N'giay-ve-sinh-sai-gon-clean-1-(10-cuộn-/-loc)', N'45000', N'', N'5fab74ba18259ebb369007203e9660ef.png', N'26', N'15', N'6', N'"

Nước Rửa Chén Sinh Học Tero Hương Chanh (700g) đánh bay mọi vết dầu mỡ nhờ chứa các enzyme được chiết xuất 100% từ tự nhiên - có chức năng làm sạch nhanh. 
Ngoài ra - sản phẩm có độ pH trung tính (pH 5.5 – 7) - để bạn hoàn toan yên tâm rửa chén bát mà không lo kích ứng da. 
9/10 phụ nữ Việt Nam đã trải nghiệm và xác nhận khả năng làm sạch nhanh chén bát và bảo vệ da tay vượt trội của Tero. 
Nước rửa chén bát sinh học Tero - Bảo vệ tay - bay dầu mỡ.
 "', N'12', N'113', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (171, N'N''Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Oải Hương Dịu Mát Chai 880ml''', N'gel-tay-rua-bon-cau-va-nha-tam-vim-trang-sang-hương-oai-hương-diu-mat-chai-880ml', N'31000', N'16', N'455a35f7f8697852ebb6c2f7250f8bea.jpg', N'25', N'6', N'6', N'"
Lốc 10 Gói Khăn Giấy Bỏ Túi Cao Cấp Sài Gòn Bless You Lamour 4 Lớp có thiết kế nhỏ gọn - bao bì đẹp mắt - dễ dàng cho bạn bỏ túi mang theo sử dụng ở bất cứ đâu. Giấy có bề mặt mịn màng - có khả năng thấm hút nước tốt. Sản phẩm không chỉ chất lượng - an toàn cho sức khỏe người tiêu dùng mà còn thân thiện với môi trường - dễ dàng phân hủy.

Sài Gòn Bless You Hold Me được làm từ bột giấy nguyên chất 100% - cho bề mặt giấy mịn màng - có độ dai hoàn hảo - khả năng thấm hút nước tuyệt vời - mang đến cho bạn sự hài lòng và cảm giác thoải mái.
Giấy không sử dụng các hóa chất độc hại để làm trắng - kết hợp với dây chuyền sản xuất khép kín đạt tiêu chuẩn an toàn tại Việt Nam - mang đến cho bạn sự an tâm khi sử dụng
Giấy được đựng trong gói nhỏ đẹp mắt và tiện dụng - dễ dàng cho bạn bỏ túi để mang theo sử dụng ở bất cứ đâu.
Sản phẩm đặc biệt thân thiện với môi trường - dễ phân hủy.
 "', N'12', N'114', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (172, N'N''Nước Rửa Chén Sinh Học Tero Hương Chanh (700g)''', N'nưoc-rua-chen-sinh-hoc-tero-hương-chanh-(700g)', N'22960', N'18', N'f20ec987bf5b6990ea46eee9c3198e1c.jpg', N'1004', N'17', N'6', N'"

Nước Rửa Chén Hương Quả Hồng Layer Clean (5L / Bình) là nước rửa chén hữu cơ - bảo vệ da tay - không độc hại - hương liệu tự nhiên.
Thành phần chính là tinh chất trà xanh đủ sức mạnh làm sạch dầu mỡ - khử mùi thức ăn - sạch nhanh - sáng bóng - không bị cảm giác nhờn dính - khó chịu ngay cả với đồ nhựa.
Sản phẩm tạo bọt tốt - giúp đánh bật những mùi hôi khó chịu nhất như cá - mắm tôm và tỏi - ngay cả trên đồ nhựa ngát hương thơm.
Nước rửa chén Layer Clean không làm nhờn tay - không lưu mùi - an toàn và dịu nhẹ.
 "', N'12', N'115', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (173, N'N''Lốc 10 Gói Khăn Giấy Bỏ Túi Cao Cấp 4 Lớp Bless You L''amour''', N'loc-10-goi-khan-giay-bo-tui-cao-cap-4-lop-bless-you-l''amour', N'24000', N'11', N'7e0e38a95fa489e4004de4ba3633e81e.jpg', N'25', N'18', N'5', N'"

Giấy Vệ Sinh Toply (12 Cuộn x 2 Lớp) được làm từ 100% bột giấy nguyên chất được nhập khẩu từ APP Indonesia - sản xuất theo dây chuyền công nghệ tiên tiến tại nhà máy PT. Pindo Deli Puld và Paper Mil.
Giấy vệ sinh Toply thấm mịn - mềm mại - không dính bụi bẩn - không tạp chất. Đặc biệt - sản phẩm không gây kích ứng da - không ảnh hưởng đến sức khỏe người sử dụng.
Giấy vệ sinh Toply là sự lựa chọn tuyệt vời nhất cho bạn và những người thân yêu. Giấy vệ sinh Toply đem tất cả yêu thương chăm sóc cho cuộc sống của bạn và những người thân yêu mỗi ngày.
 "', N'12', N'116', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (174, N'N''Nước Rửa Chén Hương Quả Hồng Layer Clean (5L / Bình)''', N'nưoc-rua-chen-hương-qua-hong-layer-clean-(5l-/-binh)', N'135000', N'', N'd27b0375a01d843f710db1c96ab5adb9.jpg', N'25', N'8', N'4', N'"


Combo 3 Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen tự động làm sạch máy giặt từ sâu bên trong - những vị trí khó nhìn thấy và khó vệ sinh nhất - tẩy sạch chất cặn bã từ quần áo tích tụ lâu ngày trong máy giặt - tiết kiệm thời gian - công sức khi vệ sinh máy giặt.
Khử mùi - khử vi khuẩn - nấm mốc gây ra các bệnh hô hấp - dị ứng
Bảo dưỡng - làm thông thoáng máy giặt - hạn chế tình trạng tắc nghẽn - tăng tuổi thọ cho máy giặt
Bột tẩy lồng máy giặt Homes Queen được sản xuất từ công ty Hàn Quốc với công nghệ tiên tiến và hơn 30 năm kinh nghiệm sản xuất các sản phẩm tẩy rửa đồ dùng nhà cửa - không cần tháo lắp máy giặt vẫn có thể vệ sinh máy sạch sẽ.
Sản phẩm được chứng nhận an toàn với người sử dụng và môi trường - dùng được cho cả máy giặt lồng ngang - lồng đứng
 "', N'12', N'117', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (175, N'N''Giấy Vệ Sinh Toply (12 Cuộn x 2 Lớp)''', N'giay-ve-sinh-toply-(12-cuộn-x-2-lop)', N'48000', N'26', N'8021c7a8a3188b22542dbf56f946ee27.jpg', N'1005', N'19', N'10', N'"

Nước Giặt Xả Maxkleen Hương Nước Hoa Huyền Diệu được chiết xuất từ tự nhiên cho mùi hương thơm ngát.
Công nghệ Ultra Kép đột phá kết hợp hài hoà 2 sức mạnh giặt & xả trong 1 nắp giặt cho áo quần sạch khuẩn & thơm mềm.
Mang lại cảm giác thoải mái cho người sử dụng.
 "', N'12', N'118', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (176, N'N''Combo 3 Bột Tẩy Vệ Sinh Lồng Máy Giặt Homes Queen (400g / Túi)''', N'combo-3-bột-tay-ve-sinh-long-may-giat-homes-queen-(400g-/-tui)', N'119000', N'21', N'4de1396ee9b9d6625aba32c5725b4342.png', N'25', N'14', N'5', N'"

Giấy Vệ Sinh Paseo 2 Lớp (10 Cuộn) là sản phẩm giấy chất lượng có xuất xứ từ Indonesia - được làm bằng bột giấy nguyên chất - không chứa các hóa chất độc hại - không gây kích ứng da - đảm bảo an toàn tuyệt đối cho người dùng.
Sản phẩm gồm 10 cuộn giấy vệ sinh 2 lớp có độ dai - mềm và khả năng thấm hút nước cao - mang lại sự thoải mái và yên tâm tuyệt đối khi sử dụng - đặc biệt dễ chịu khi tiếp xúc với làn da.
Sản phẩm hoàn toàn không có hóa chất tẩy trắng độc hại - sử dụng được với nhiều mục đích khác nhau. Với thiết kế dạng cuộn có lõi giúp bạn dễ dàng cài vào móc đựng giấy vệ sinh - mang lại sự tiện lợi khi sử dụng - đáp ứng tối đa nhu cầu đa dạng và ngày càng khắt khe của người tiêu dùng.
 "', N'13', N'119', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (177, N'N''Túi Nước Giặt Xả Maxkleen Hương Nước Hoa Huyền Diệu (2.4kg)''', N'tui-nưoc-giat-xa-maxkleen-hương-nưoc-hoa-huyen-dieu-(2.4kg)', N'116000', N'15', N'8004c99cd0c5b49bd8ff901d9db9a6b7.jpg', N'25', N'20', N'6', N'"
Nước Rửa Chén Sunlight Chanh Dạng Chai 750g
Nước Rửa Chén Sunlight Chanh Dạng Chai 750g sẽ giúp cho chén bát sạch bong kin kít và ngát hương thơm. Sản phẩm mang lại sức mạnh đánh bay dầu mỡ tương đương 100 trái chanh. Sản phẩm có khả năng rửa sạch dầu mỡ cả trên đồ nhựa và dịu nhẹ dịu với da tay - an toàn cho người dùng. Với hương chanh tươi mát - đây sẽ là sự lựa chọn hoàn hảo cho các bà nội trợ.

Thông tin sản phẩm
Công thức đánh bay dầu mỡ hiệu quả
Sunlight với chiết xuất chanh tươi và muối khoáng tự nhiên - giúp đánh bay dầu mỡ với sức mạnh như 100 trái chanh.
Turbo sạch cực nhanh - kết hợp chiết xuất chanh với các hoạt chất tẩy rửa - giúp làm yếu liên kết dầu mỡ - làm sạch nhanh - sạch dầu mỡ trên cả đồ nhựa - cho chén dĩa sạch bong kin kít chỉ với một lần rửa.
Khử sạch mùi tanh
Ngoài khả năng đánh tan dầu mỡ - Nước Rửa Chén Sunlight Chanh còn có hương thơm thanh mát từ chanh - giúp khử sạch các loại mùi tanh khó chịu và bám lâu bao gồm: mùi tanh của cá - trứng tanh - tỏi - nước mắm và mắm tôm ngay cả trên đồ nhựa; mang lại hương thơm tự nhiên - thơm mát cho bát đĩa.

An toàn - dịu nhẹ
Nước Rửa Chén Sunlight Chanh sử dụng các thành phần tự nhiên - bảo vệ bàn tay và mang lại cảm giác an toàn - dịu nhẹ.
Thiết kế chai 750g tiện dụng 
Nước Rửa Chén Sunlight Chanh chai 750g có dung tích vừa phải - thiết kế chai không quá lớn - không chiếm nhiều diện tích quanh bệ rửa bát nhà bạn.
Hướng dẫn sử dụng
Pha loãng sản phẩm vào nước hoặc sử dụng trực tiếp - rửa sạch các vết bẩn và tráng lại chén đĩa bằng nước sạch.
Lưu ý
Không được uống. Để xa tầm tay trẻ em. Nếu sản phẩm dính vào mắt - rửa sạch bằng nước. Nếu nuốt phải - uống ngay 1 ly nước hoặc sữa - nếu cần thì đến cơ sở y tế.
Lưu trữ nơi khô ráo - tránh ánh nắng trực tiếp. "', N'13', N'120', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (178, N'N''Giấy Vệ Sinh Paseo 2 Lớp (10 Cuộn)''', N'giay-ve-sinh-paseo-2-lop-(10-cuộn)', N'67000', N'11', N'2e5ade69e4a60a3710720541943a7e7f.jpg', N'25', N'20', N'6', N'"
                Nước Lau Sàn Sunlight Tinh Dầu Thiên Nhiên - Hương hoa Diên Vỹ (2.6kg/Túi) là nước lau sàn mới với công nghệ tiên tiến - giúp sàn nhà bạn sạch bóng không tì vết và ngát hương thơm chỉ sau một lần lau nhẹ. Bạn có thể sử dụng sản phẩm cho các không gian trong nhà như: phòng ngủ - phòng khách bếp và phòng tắm - mang lại vẻ sáng bóng cho tổ ấm của bạn.
Đánh bay vết bẩn nhanh chóng
Với hoạt chất tẩy rửa năng động cùng công thức tiên tiến - nước lau sàn sẽ đánh bật các vết bẩn và bụi bám ở mọi ngóc ngách hiệu quả - cho sàn nhà sạch bong và sáng bóng chỉ sau một lần lau.
Chất hoạt động bề mặt tiên tiến có trong nước lau sàn tách vết dơ ra khỏi sàn nhà ngay khi vừa tiếp xúc - đồng thời các hoạt chất tẩy rửa sẽ diệt khuẩn - hạn chế bám bụi trở lại.
Cùng với động tác lau sàn của bạn - vết dơ sẽ bị cuốn trôi - không để lại cảm giác dính chân - giúp cho sàn nhà sạch bóng - và lưu lại hương thơm trong nhà.
Khử sạch mùi khó chịu với hương Hoa Diên Vỹ
Nước Lau Sàn Sunlight Hương Hoa Diên Vỹ còn có hương Hoa Diên Vỹ dịu nhẹ giúp khử sạch các loại mùi khó chịu trong phòng. Hương hoa dễ chịu lưu lại trên sàn sẽ mang lại cảm giác dễ chịu - sảng khoái cho ngôi nhà của bạn.
An toàn - dễ sử dụng
Công thức độc đáo hiệu quả có thể đuổi côn trùng - không có hại cho sức khỏe của bạn.
Sử dụng nước Lau sàn Sunlight thường xuyên có thể làm cho sàn nhà bạn nhìn như mới với hương thơm ngát.
Thiết kế dạng chai tiện dụng
Nước Lau Sàn Sunlight Hương Hoa Diên Vỹ có thiết kế dạng chai tiện lợi - dễ sử dụng - dễ dàng lấy đủ lượng dung dịch cần dùng và dễ dàng cất giữ sau khi sử dụng xong.

Hướng dẫn sử dụng
Hòa 1 nắp đầy Sunlight vào nửa xô nước
Nhúng ướt giẻ lau rồi lau sạch các vết bẩn
Không lau lại bằng nước

Lưu ý
Tránh để hóa chất vào mắt - để xa tầm tay trẻ em - không được uống.
Để nơi khô thoáng - tránh nơi có nhiệt độ cao.
Tránh nhiệt độ cao và ánh sáng trực tiếp            "', N'13', N'121', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (179, N'N''Nước Rửa Chén Sunlight Chanh Dạng Chai 750g''', N'nưoc-rua-chen-sunlight-chanh-dang-chai-750g', N'23000', N'', N'607ef2da7bce9756f53415ef239f3b4f.jpg', N'11', N'21', N'6', N'"

Đường ống ở trong phòng tắm - toilet và nhà bếp thường xuyên rơi vào trạng thái bị tắc - làm tập chung vi khuẩn và gây mùi hôi thối làm bạn khó chịu - bận đừng lo lắng với sản phẩm Chai thông tắc đường ống loại to 800g Daiichi tình trạng trên hoàn toàn được khắc phục.
Công dụng: loại bỏ bùn tắc - bùn ướt ở trong ống thoát nước. Dung dịch sẽ tiếp xúc với phần đường ống bị tắc - nhanh chóng hòa tan và loại bỏ các phần tóc - bùn - bùn nhão diệt tận gốc vi khuẩn - các chất bẩn và mùi hôi thối. Sử dụng cho đường ống ở trong phòng tắm - toilet và nhà bếp. Không sử dụng với các đồ bằng men - nhôm - đồng. Liều lượng sử dụng: Sử dụng khoảng 320 ~ 480ml cho 1 lần làm sạch. Sau khi đổ chất tẩy - đợi 30 đến 60 phút và xả nước làm sạch.
Thông tin sản phẩm:
Trọng lượng: 800g/chai
Hàng nhập khẩu từ Nhật Bản.
Sản xuất tại Nhật
Mã sản phẩm: 4902050473000
 "', N'13', N'122', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (180, N'N''Nước Lau Sàn Sunlight Tinh Dầu Thiên Nhiên - Hương hoa Diên Vỹ (2.6kg/Túi)''', N'nưoc-lau-san-sunlight-tinh-dau-thien-nhien--hương-hoa-dien-vy-(2.6kg/tui)', N'56000', N'2', N'02c88276a33783aa309831c63e30dabb.jpg', N'25', N'9', N'6', N'"




Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Oải Hương Dịu Mát Chai 475ml dịu mát giúp tẩy rửa bồn cầu và nhà tắm - diệt sạch vi khuẩn gây bệnh - cho bồn cầu và phòng tắm trắng sáng và lưu lại hương thơm dịu mát - sạch sẽ.Với công thức diệt 99 -99% vi khuẩn được kiểm nghiệm và chứng nhận định kỳ tại viện Pasteur thành phố Hồ Chí Minh - Vim là sản phẩm tẩy rửa có công thức đậm đặc giúp diệt sạch vi khuẩn gây bệnh - có khả năng tấn công hoá học vào protein của tế bào vi khuẩn - phá huỷ tế bào và diệt khuẩn hiệu quả - có khả năng diệt cả virus.Sản phẩm an toàn cho sức khoẻ của người sử dụng - không gây hư hại bồn cầu.Đặc biệt - với công thức đổi màu igups tăng khả năng quan sát trực quan khi tẩy rửa - cho bạn thấy kết quả ngay khi sử dụng. Với hương Oải Hương với chiết suất từ thiên nhiên cho bồn cầu và nhà tắm thơm mát dễ chịu. "', N'13', N'123', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (181, N'N''Chai thông tắc đường ống cống Daiichi 800g nội địa Nhật Bản''', N'chai-thong-tac-dưong-ong-cong-daiichi-800g-nội-dia-nhat-ban', N'54990', N'57', N'63d713b6bbcac45cff93b17b2c74f7c3.jpg', N'25', N'3', N'6', N'"
Nước Giặt Máy Bền Đẹp Cửa Trước OMO 2.7kg - 21122484 có công thức cải tiến mới - thiết kế dành riêng cho máy giặt cửa trước - giúp nhanh chóng đánh bay những vết bẩn cứng đầu. Ngoài ra - sản phẩm có hương thơm nhẹ nhàng - thanh khiết mang đến sự dễ chịu khi sử dụng.
Thông tin sản phẩm
Nước giặt cho máy giặt cửa trước
Sản phẩm được thiết kế cho dòng máy giặt cửa trước - ứng dụng công nghệ mới với với các hạt năng lượng xoáy nay còn được cải tiến với công nghệ giặt sạch nhanh - giúp đánh bật vết bẩn nhanh hơn - chỉ trong 1 lần giặt
OMO hoàn tan - thấm nhanh thật nhanh vào từng sợi vải - nhanh chóng đánh bật các vết bẩn khô cứng
Hương thơm bền lâu
Hương thơm nhẹ nhàng - lưu lại thật lâu cho quần áo luôn ngát hương - bung tỏa hương thơm theo từng cử động.
An toàn - thân thiện với môi trường
Bột Giặt OMO chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Hướng dẫn sử dụng
- Đổ nước giặt OMO vào nắp với liều lượng theo hướng dẫn.
- Thoa một lượng nhỏ nước giặt trực tiếp lên vết bẩn.
- Đổ phần nước giặt còn lại trong nắp vào máy giặt cùng với quần áo.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'13', N'124', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (182, N'N''Gel Tẩy Rửa Bồn Cầu Và Nhà Tắm Vim Trắng Sáng Hương Oải Hương Dịu Mát  Chai 475ml''', N'gel-tay-rua-bon-cau-va-nha-tam-vim-trang-sang-hương-oai-hương-diu-mat--chai-475ml', N'23000', N'8', N'77e2a7cb1c58fb0763712818591a5532.jpg', N'8', N'22', N'6', N'"
Thông tin sản phẩmTên sản phẩm : Bột thông cống Hando 100g nội địaThành phần : Nước - hydrogen peroxide - sodium silicat - sodiumhypo chloriteCông dụng : Thông cống - chống phá tắc nghẽnHướng dẫn bảo quản : Nơi khô ráo - thoáng mát. Để xa tầm tay trẻ em. Khi bị bắn vào mắt phải rửa ngay bằng nước sạch.
- Bột thông cống Hando 100g nội địa với công thức tiên tiến - các thành phần hóa học chuyên dụng - độ tẩy cực mạnh sẽ xoáy tan mọi cặn bẩn trong đường ống một cách hiệu quả.- Sản phẩm sẽ thông sạch mọi loại cặn bẩn như giấy - giẻ - rác - rau - mỡ - thịt - gạo - tóc...kẹt trong đường ống thoát nước của chậu rửa nhà bếp - lavabo - bồn tắm -...mà không làm hư hại đường ống và các thiết bị vệ sinh.- Sản phẩm được đóng gói nhỏ tiện lợi - dễ sử dụng.

Hướng dẫn sử dụng- Cắt chéo túi - đổ hạt bột vào xô nhựa - hòa tan với khoảng nửa lít nước - đổ dung dịch vào cổ ống nơi bị tắc nghẽn- Để từ 1- 3 giờ rồi xả mạnh nước cho chảy đi (tốt nhất là đổ buổi tối - để tới sáng hôm sau mới xả mạnh nước hoặc dùng thụt cao su thụt cho chảy đi)- Trong trường hợp cống bị tắc nghẽn nặng hoặc đường ống lớn - nên dùng 2 gói "', N'13', N'125', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (183, N'N''Nước Giặt Máy Bền Đẹp Cửa Trước OMO 2.7kg - 21122484''', N'nưoc-giat-may-ben-dep-cua-trưoc-omo-2.7kg--21122484', N'147000', N'21', N'7154361c9278d4892c1d56e6335bae99.jpg', N'1001', N'1', N'29', N'"

Combo 2 Túi Nước Giặt Ariel Khử Mùi Ẩm Mốc (2.15Kg/ Túi) là sản phẩm được nhiều người ưa chuộng bởi tính năng đánh bay vết bẩn ngay từ lần giặt đầu tiên - làm trắng sáng vải - giúp vải mềm mịn và khử mùi ẩm mốc - lưu lại hương thơm trên quần áo.
Giúp loại sạch vết bẩn cứng đầu tốt hơn trong 1 bước giặt với hương thơm bền lâu. 
Loại bỏ các vết bẩn cứng đầu chỉ trong 1 bước và giúp giữ được quần áo trắng sáng - mềm mịn như mới.
Bổ sung hương thơm đam mê quyến rũ lưu lại - khử sạch mùi ẩm mốc. 

Hướng dẫn sử dụng :

Giặt tay: 15ml cho 5 - 7 chiếc quần áo
Giặt máy: 45ml cho 1 lần giặt thông thường (15 - 20 chiếc quần áo)
 "', N'13', N'126', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (184, N'N''Bột thông cống cực mạnh 100g nội địa Hando''', N'bột-thong-cong-cuc-manh-100g-nội-dia-hando', N'24000', N'40', N'150bace8e7e59f8ba65e164b86726cea.jpg', N'1006', N'23', N'29', N'"
Sản phẩm vi sinh thân thiện với môi trường. Hiệu quả nhanh chóng sau khi sử dụng.Thành phần:Tập hợp các chủng vi sinh vật chuyên dụng: Bacillus spp - Rhodopseudomonas spp - Nitrobacter spp - Nitrosomonas spp … được sản xuất theo công nghệ độc quyền tại Mỹ. Hoạt động tích cực trong môi trường hiếu khí - kỵ khí hoặc tùy nghi.
 Cách dùng:
1. Phân hủy hầm cầu - bể phốt:
Lắc đều và đổ 1 chai 350ml vào hầm cầu - bể phốt để phân hủy chất thải định kỳ 3 tháng/ lần - nếu nghẹt dùng định kỳ 1 - 2 tháng/lần - sử dụng sản phẩm vào cuối ngày - tránh sử dụng hóa chất có tính tẩy mạnh như javen - clo -..trước và sau 3 ngày sử dụng vi sinh để tránh ảnh hưởng đến hệ vi sinh.
 
2. Thông cống - bồn rửa chén:
Đối với bồn rửa chén - cống thoát nước: lắc đều và đổ thật chậm 1 chai 350 ml vào cuối ngày - xả nhẹ bằng nước để sản phẩm trôi và lưu trên đường ống và phát huy tác dụng. Có thể pha loãng đổ từ từ sản phẩm vào cống. Sử dụng định kỳ 3 tháng/lần.Công dụng:Phân hủy nhanh hầm cầu - cống thoát nước nghẹt.Thông nhanh hầm cầu - tránh bị nước xối chậm - xử lý mùi hôi.Phân hủy chất cặn cống thoát nước bị tắc nghẽn.Phân hủy dầu mỡ - chất béo (FOG).Phân hủy protein (thịt - cá).Phân hủy tinh bột - carbohydrate.Phân hủy cellulose (giấy vệ sinh - rau - thực phẩm khác).Phân hủy chất hữu cơ - chất thải con người. Kiểm soát mùi hôi.
Hạn sử dụng:
 Chưa mở nắp: Hạn dùng 2 năm kể từ ngày sản xuất in trên chai. (MFG năm/tháng/ngày).Sau khi mở nắp: 6 tháng. "', N'13', N'127', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (185, N'N''Combo 2 Túi Nước Giặt Ariel Khử Mùi Ẩm Mốc (2.15Kg/ Túi)''', N'combo-2-tui-nưoc-giat-ariel-khu-mui-am-moc-(2.15kg/-tui)', N'269000', N'1', N'32f61b06d4b919ade9763caa41e0b3af.jpg', N'25', N'3', N'6', N'"
Bột Giặt OMO Comfort Tinh Dầu Thơm bung tỏa hương thơm tươi mát kết hợp công thức mới với sức mạnh xoáy bay vết bẩn cứng đầu nhanh hơn chỉ trong 1 lần giặt cho quần áo của bạn luôn sạch thơm như mới.Hương Comfort tinh dầu thơm  bền lâu cho quần áo ngát hương theo từng cử động - giúp bạn thoải mái vận động suốt cả ngày.

Thông tin sản phẩm
Công thức làm sạch vết bẩn độc đáo
Bột Giặt OMO Comfort Tinh Dầu Thơm (2.7g) - 32004710 chứa các hạt Năng Lượng Xoáy hòa tan - thấm sâu thật nhanh vào sợi vải - giúp xoáy bay các bết bẩn cứng đầu chỉ trong 1 lần giặt.
Hương thơm bền lâu
Bột giặt có hương tinh dầu thơm của nước xả Comfort Tinh dầu thơm tinh tế giúp quần áo thơm mát dài lâu - các phân tử hương bung tỏa theo từng cử động
An toàn - thân thiện với môi trường
Bột Giặt OMO Đỏ chỉ sử dụng nguyên liệu chất lượng cao - đáp ứng các tiêu chuẩn quốc tế nghiêm ngặt về phân hủy sinh học và an toàn
Hướng dẫn sử dụng
Sản phẩm dùng cho giặt tay và máy giặt cửa trên.
Đọc kỹ hướng dẫn sử dụng trước khi dùng.
Lưu ý: Bao bì sản phẩm có thể thay đổi theo từng đợt nhập hàng "', N'13', N'128', N'5000', N'''2019/07/10''', N'cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (186, N'"N''Vi sinh thông cống', N' xử lý hầm cầu', N' bể phốt', N' tự hoại BIO - SEPTIC - Chai 350ml''"', N'"vi-sinh-thong-cong', N'-xu-ly-ham-cau', N'-be-phot', N'-tu-hoai-bio--septic--chai-350ml"', N'99001', N'17', N'06c9a5f36b31557eb8cd2bb2deaa2e31.jpg', N'1005', N'19', N'10,"

Nước Giặt Xả MaxKleen Hương Hoa Nắng được chiết xuất từ tự nhiên cho mùi hương thơm ngát.
Công nghệ Ultra Kép đột phá kết hợp hài hoà 2 sức mạnh giặt & xả trong 1 nắp giặt cho áo quần sạch khuẩn & thơm mềm.
Mang lại cảm giác thoải mái cho người sử dụng.
 ",13,129,5000,''2019/07/10'',cái')
INSERT [dbo].[SANPHAM] ([MASP], [TENHH], [TENALIAS], [DONGIA], [GIAMGIA], [HINH], [NCC], [THUONGHIEU], [XUATXU], [MOTA], [LOAI], [CHITIETLOAI], [SOLANXEM], [NGAYSX], [MOTADONVI]) VALUES (187, N'N''Bột Giặt OMO Comfort Tinh Dầu Thơm 32004710 (2.7kg) ''', N'bột-giat-omo-comfort-tinh-dau-thơm-32004710-(2.7kg)-', N'110000', N'13', N'ada5be0d58e5a478ba098157efb5294c.jpg', N'25', N'14', N'5', N'"

Combo 4 Hộp Khăn Giấy Hộp Aloe Vera Paseo từ lâu đã trở thành một sản phẩm tiện ích trong cuộc sống hàng ngày của mọi người. Từ sự xuất hiện phổ biến trong các quán ăn - nhà hàng đến các buổi đi chơi - dã ngoại...
Sản phẩm được làm từ bột giấy nguyên chất 100% - kết hợp với dây chuyền sản xuất khép kín đạt tiêu chuẩn an toàn tại Việt Nam - đã cho ra đời loại giấy ăn trắng - dai - mềm mịn.
Khăn giấy đặc biệt thân thiện với môi trường - dễ phân hủy lại nhỏ gọn - giúp bạn có thể mang đi bất cứ đâu. Không chỉ chú trọng về chất lượng - mà mẫu mã của hộp giấy cũng khá đẹp mắt - bạn có thể sử dụng trong nhà ăn - văn phòng làm việc...
 "', N'13', N'130', N'5000', N'''2019/07/10''', N'cái')
SET IDENTITY_INSERT [dbo].[THUONGHIEU] ON 

INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (1, N'Ariel', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (2, N'Downy', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (3, N'Omo', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (4, N'OEM', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (5, N'Maxforce', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (6, N'Hanvet', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (7, N'ZEINO', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (8, N'Lency', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (9, N'Hartbeat', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (10, N'indofood', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (11, N'Playmore', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (12, N'Chupa Chups', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (13, N'Bánh dừa nướng Thái Bình', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (14, N'Taiwan', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (15, N'Gemez Enaak', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (16, N'LIGO', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (17, N'Daegoung Food', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (18, N'Big Babol', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (19, N'Ricola', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (20, N'Rồng Vàng Hoàng Gia', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (21, N'Witors', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (22, N'Omachi', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (23, N'CHIN-SU', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (24, N'Calbee', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (25, N'QUAKER OATS', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (26, N'DEGLET NOUR', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (27, N'Quaker', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (28, N'Sunview', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (29, N'Chú Tiểu', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (30, N'SAGOTA', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (31, N'Nature', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (32, N'Corona ', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (33, N'Budweiser', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (34, N'MILO', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (35, N'Woongjin', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (36, N'Tiger Beer', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (37, N'Nestlé', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (38, N'National Brand', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (39, N'Promess', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (40, N'AJI-NO-MOTO', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (41, N'Nam Ngư', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (42, N'Simply', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (43, N'Cholimex', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (44, N'Ông Chà Và', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (45, N'Tornado', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (46, N'Toàn Phát', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (47, N'Neptune', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (48, N'CJ', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (49, N'Lê Gia', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (50, N'Me-O', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (51, N'Whiskas', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (52, N'Pedigree', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (53, N'Kitekat', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (54, N'Bio - FMCG', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (55, N'Hello 5 Coffee', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (56, N'Tân Cương Xanh', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (57, N'Lộc Tân Cương', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (58, N'Trà Việt', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (59, N'Ân Lộc Phúc', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (60, N'Hạt Ngon', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (61, N'Hải Long', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (62, N'Devondale', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (63, N'Bob''s Red Mill', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (64, N'A2', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (65, N'Koko Krunch', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (66, N'Royal Myanmar Teamix', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (67, N'NESCAFÉ', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (68, N'Orihiro', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (69, N'Highlands Coffee', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (70, N'Abbott', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (71, N'Lipton', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (72, N'An Nhiên', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (73, N'Nissin', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (74, N'Nước Mắm Phan Thiết Mũi Né ', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (75, N'Ohsawa Zozin', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (76, N'Hùng Phát', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (77, N'Thực phẩm Bông Mai', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (78, N'Kato', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (79, N'Acecook', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (80, N'Unif', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (81, N'Xuân Nguyên', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (82, N'Rowhani', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (83, N'DJ&A;', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (84, N'Yến Sào win''sNest', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (85, N'SANEST', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (86, N'QBB', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (87, N'Gavo farms co', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (88, N'HQGANO', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (89, N'Thái Phong ', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (90, N'SAFFRON', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (91, N'Nokchawon', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (92, N'Bio science', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (93, N'Brand''s', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (94, N'Collagen Youtheory ', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (95, N'Biok', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (96, N'Đông Dương', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (97, N'HIMA', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (98, N'Sahmyook Foods', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (99, N'Bahraman', NULL)
GO
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (100, N'Play more', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (101, N'Royal Nut Company', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (102, N'Cadilac', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (103, N'Korea Red Ginseng', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (104, N'Korea Natural Food', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (105, N' Daedong Korea Ginseng', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (106, N'Mudaru', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (107, N'OMD', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (108, N'LIF', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (109, N'VINAHE', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (110, N'Your SuperFood', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (111, N'Hellorice', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (112, N'Bragg', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (113, N'Beutelsbacher', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (114, N'OneLife', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (115, N'GẠO HC HOA NẮNG', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (116, N'M honey', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (117, N'Radiant', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (118, N'Australia''s Own Organic', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (119, N'NaturGreen', NULL)
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [MOTA]) VALUES (120, N'Bioitalia', NULL)
SET IDENTITY_INSERT [dbo].[THUONGHIEU] OFF
SET IDENTITY_INSERT [dbo].[TRANGTHAI] ON 

INSERT [dbo].[TRANGTHAI] ([MATRANGTHAI], [TENTRANGTHAI], [MOTRA]) VALUES (1, N'Mới đặt hàng', NULL)
INSERT [dbo].[TRANGTHAI] ([MATRANGTHAI], [TENTRANGTHAI], [MOTRA]) VALUES (2, N'Đã giao hàng', NULL)
INSERT [dbo].[TRANGTHAI] ([MATRANGTHAI], [TENTRANGTHAI], [MOTRA]) VALUES (3, N'Khách hàng hủy đơn hàng', NULL)
INSERT [dbo].[TRANGTHAI] ([MATRANGTHAI], [TENTRANGTHAI], [MOTRA]) VALUES (4, N'Đã thanh toán Online', NULL)
SET IDENTITY_INSERT [dbo].[TRANGTHAI] OFF
SET IDENTITY_INSERT [dbo].[TRANGWEB] ON 

INSERT [dbo].[TRANGWEB] ([MATRANG], [TENTRANG], [URL]) VALUES (1, N'Trang chủ Admin', N'Default.aspx')
INSERT [dbo].[TRANGWEB] ([MATRANG], [TENTRANG], [URL]) VALUES (2, N'Quản lý Đơn hàng', N'QLDonHang.aspx')
INSERT [dbo].[TRANGWEB] ([MATRANG], [TENTRANG], [URL]) VALUES (3, N'Quản lý Hàng hóa', N'QLHangHoa.aspx')
SET IDENTITY_INSERT [dbo].[TRANGWEB] OFF
SET IDENTITY_INSERT [dbo].[XUATXU] ON 

INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (1, N'TháiLan')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (2, N'Mỹ')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (3, N'ViệtNam')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (4, N'Đức')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (5, N'Indonesia')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (6, N'Ý')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (7, N'HànQuốc')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (8, N'ThụySĩ')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (9, N'Malaysia')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (10, N'Mexico')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (11, N'HàLan')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (12, N'Pháp')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (13, N'ẤnĐộ+ViệtNam')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (14, N'Úc')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (15, N'NhậtBản')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (16, N'Iran')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (17, N'Korea')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (18, N'Đangcậpnhật')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (19, N'Peru')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (20, N'TâyBanNha')
INSERT [dbo].[XUATXU] ([MAXX], [TENXX]) VALUES (21, N'Italy')
SET IDENTITY_INSERT [dbo].[XUATXU] OFF
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_HANGHOA] FOREIGN KEY([MAHH])
REFERENCES [dbo].[HANGHOA] ([MAHH])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_HANGHOA]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_HOADON] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([MAHD])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_HOADON]
GO
ALTER TABLE [dbo].[HANGHOA]  WITH CHECK ADD  CONSTRAINT [FK_HANGHOA_CHITIETLOAI] FOREIGN KEY([CHITIETLOAI])
REFERENCES [dbo].[CHITIETLOAI] ([MACTL])
GO
ALTER TABLE [dbo].[HANGHOA] CHECK CONSTRAINT [FK_HANGHOA_CHITIETLOAI]
GO
ALTER TABLE [dbo].[HANGHOA]  WITH CHECK ADD  CONSTRAINT [FK_HANGHOA_LOAI] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAI] ([MALOAI])
GO
ALTER TABLE [dbo].[HANGHOA] CHECK CONSTRAINT [FK_HANGHOA_LOAI]
GO
ALTER TABLE [dbo].[HANGHOA]  WITH CHECK ADD  CONSTRAINT [FK_HANGHOA_NHACUNGCAP] FOREIGN KEY([MANCC])
REFERENCES [dbo].[NHACUNGCAP] ([MANCC])
GO
ALTER TABLE [dbo].[HANGHOA] CHECK CONSTRAINT [FK_HANGHOA_NHACUNGCAP]
GO
ALTER TABLE [dbo].[HANGHOA]  WITH CHECK ADD  CONSTRAINT [FK_HANGHOA_THUONGHIEU] FOREIGN KEY([MATH])
REFERENCES [dbo].[THUONGHIEU] ([MATH])
GO
ALTER TABLE [dbo].[HANGHOA] CHECK CONSTRAINT [FK_HANGHOA_THUONGHIEU]
GO
ALTER TABLE [dbo].[HANGHOA]  WITH CHECK ADD  CONSTRAINT [FK_HANGHOA_XUATXU] FOREIGN KEY([MAXX])
REFERENCES [dbo].[XUATXU] ([MAXX])
GO
ALTER TABLE [dbo].[HANGHOA] CHECK CONSTRAINT [FK_HANGHOA_XUATXU]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_TRANGTHAI] FOREIGN KEY([MATRANGTHAI])
REFERENCES [dbo].[TRANGTHAI] ([MATRANGTHAI])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_TRANGTHAI]
GO
ALTER TABLE [dbo].[HOTRO]  WITH CHECK ADD  CONSTRAINT [FK_HOTRO_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[HOTRO] CHECK CONSTRAINT [FK_HOTRO_NHANVIEN]
GO
ALTER TABLE [dbo].[HOTRO]  WITH CHECK ADD  CONSTRAINT [FK_HOTRO_NHANXET] FOREIGN KEY([MANX])
REFERENCES [dbo].[NHANXET] ([MANX])
GO
ALTER TABLE [dbo].[HOTRO] CHECK CONSTRAINT [FK_HOTRO_NHANXET]
GO
ALTER TABLE [dbo].[NHANXET]  WITH CHECK ADD  CONSTRAINT [FK_NHANXET_HANGHOA] FOREIGN KEY([MAHH])
REFERENCES [dbo].[HANGHOA] ([MAHH])
GO
ALTER TABLE [dbo].[NHANXET] CHECK CONSTRAINT [FK_NHANXET_HANGHOA]
GO
ALTER TABLE [dbo].[NHANXET]  WITH CHECK ADD  CONSTRAINT [FK_NHANXET_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[NHANXET] CHECK CONSTRAINT [FK_NHANXET_KHACHHANG]
GO
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_NHANVIEN]
GO
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_PHONGBAN] FOREIGN KEY([MAPB])
REFERENCES [dbo].[PHONGBAN] ([MAPB])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_PHONGBAN]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PHANQUYEN_PHONGBAN] FOREIGN KEY([MAPB])
REFERENCES [dbo].[PHONGBAN] ([MAPB])
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_PHANQUYEN_PHONGBAN]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PHANQUYEN_TRANGWEB] FOREIGN KEY([MATRANG])
REFERENCES [dbo].[TRANGWEB] ([MATRANG])
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_PHANQUYEN_TRANGWEB]
GO
ALTER TABLE [dbo].[YEUTHICH]  WITH CHECK ADD  CONSTRAINT [FK_YEUTHICH_HANGHOA] FOREIGN KEY([MAHH])
REFERENCES [dbo].[HANGHOA] ([MAHH])
GO
ALTER TABLE [dbo].[YEUTHICH] CHECK CONSTRAINT [FK_YEUTHICH_HANGHOA]
GO
ALTER TABLE [dbo].[YEUTHICH]  WITH CHECK ADD  CONSTRAINT [FK_YEUTHICH_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[YEUTHICH] CHECK CONSTRAINT [FK_YEUTHICH_KHACHHANG]
GO
USE [master]
GO
ALTER DATABASE [BACHHOA_ONLINE] SET  READ_WRITE 
GO
