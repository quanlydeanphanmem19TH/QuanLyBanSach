USE [QLSach]
GO
/****** Object:  Table [dbo].[CTHoaDon]    Script Date: 5/21/2021 4:38:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHoaDon](
	[MaHD] [nvarchar](25) NOT NULL,
	[MaSach] [nvarchar](25) NOT NULL,
	[SoLuongBan] [int] NULL,
	[DonGiaBan] [float] NULL,
	[ThanhTien] [float] NOT NULL,
 CONSTRAINT [PK_CHITIETBAN] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTPhieuNhap]    Script Date: 5/21/2021 4:38:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuNhap](
	[MaPN] [nvarchar](25) NOT NULL,
	[MaSach] [nvarchar](25) NOT NULL,
	[SoLuongNhap] [int] NULL,
	[DonGiaNhap] [float] NULL,
	[ThanhTien] [float] NOT NULL,
 CONSTRAINT [PK_CTPhieuNhap_1] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/21/2021 4:38:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](25) NOT NULL,
	[NgayBan] [datetime] NULL,
	[TongTien] [float] NULL,
	[MaKH] [nvarchar](25) NULL,
	[MaNV] [nvarchar](25) NULL,
 CONSTRAINT [PK_BANHANG] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KeSach]    Script Date: 5/21/2021 4:38:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeSach](
	[MaKe] [nchar](10) NOT NULL,
	[TenKe] [nchar](10) NULL,
	[ViTri] [nchar](10) NULL,
 CONSTRAINT [PK_KeSach] PRIMARY KEY CLUSTERED 
(
	[MaKe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/21/2021 4:38:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](25) NOT NULL,
	[TenKH] [nvarchar](200) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SDT] [nvarchar](25) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiNV]    Script Date: 5/21/2021 4:38:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNV](
	[MaLoaiNV] [nchar](10) NOT NULL,
	[TenLoaiNV] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiNV] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/21/2021 4:38:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[TaiKhoan] [nvarchar](25) NOT NULL,
	[MatKhau] [nvarchar](25) NOT NULL,
	[Quyen] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_tblLogin_1] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCC]    Script Date: 5/21/2021 4:38:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCC](
	[MaNCC] [nvarchar](25) NOT NULL,
	[TenNCC] [nvarchar](200) NULL,
	[DiaChiNCC] [nvarchar](200) NULL,
	[SdtNCC] [nvarchar](25) NULL,
 CONSTRAINT [PK_NCC] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/21/2021 4:38:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](25) NOT NULL,
	[TenNV] [nvarchar](200) NULL,
	[DiaChiNV] [nvarchar](200) NULL,
	[SdtNV] [nvarchar](25) NULL,
	[Phai] [nvarchar](25) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[MaLoaiNV] [nchar](10) NULL,
 CONSTRAINT [PK_tblNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 5/21/2021 4:38:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [nvarchar](25) NOT NULL,
	[NgayNhap] [datetime] NULL,
	[TongTien] [float] NULL,
	[MaNCC] [nvarchar](25) NULL,
	[MaNV] [nvarchar](25) NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 5/21/2021 4:38:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [nvarchar](25) NOT NULL,
	[TenSach] [nvarchar](200) NULL,
	[NamXB] [nvarchar](25) NULL,
	[SoLuongTon] [int] NULL,
	[GiaNhap] [float] NULL,
	[GiaBan] [float] NULL,
	[TacGia] [nvarchar](200) NULL,
	[MaTheLoai] [nvarchar](25) NULL,
	[MaNCC] [nvarchar](25) NULL,
	[MaKe] [nchar](10) NULL,
 CONSTRAINT [PK_THUOC] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 5/21/2021 4:38:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [nvarchar](25) NOT NULL,
	[TenTheLoai] [nvarchar](200) NULL,
 CONSTRAINT [PK_LOAI] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CTHoaDon] ([MaHD], [MaSach], [SoLuongBan], [DonGiaBan], [ThanhTien]) VALUES (N'HD001', N'THUOC001', 3, 42900, 128700)
INSERT [dbo].[CTHoaDon] ([MaHD], [MaSach], [SoLuongBan], [DonGiaBan], [ThanhTien]) VALUES (N'HD002', N'THUOC002', 4, 31900, 127600)
INSERT [dbo].[CTHoaDon] ([MaHD], [MaSach], [SoLuongBan], [DonGiaBan], [ThanhTien]) VALUES (N'HD003', N'THUOC002', 4, 31900, 127600)
INSERT [dbo].[CTHoaDon] ([MaHD], [MaSach], [SoLuongBan], [DonGiaBan], [ThanhTien]) VALUES (N'HD004', N'THUOC003', 10, 59400, 594000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [TongTien], [MaKH], [MaNV]) VALUES (N'HD001', CAST(N'2020-11-19 00:00:00.000' AS DateTime), 400000, N'KH001', N'NV001')
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [TongTien], [MaKH], [MaNV]) VALUES (N'HD002', CAST(N'2020-11-20 00:00:00.000' AS DateTime), 1000000, N'KH002', N'NV002')
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [TongTien], [MaKH], [MaNV]) VALUES (N'HD003', NULL, NULL, N'KH002', N'NV002')
INSERT [dbo].[HoaDon] ([MaHD], [NgayBan], [TongTien], [MaKH], [MaNV]) VALUES (N'HD004', NULL, NULL, N'KH002', N'NV002')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'KH001', N'Nguyễn Quan Dinh', N'Long Xuyên, An Giang', N'0987939081')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'KH002', N'Vũ Hoàng Đông', N'Kiên Giang', N'01234995539')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'KH003', N'Nguyễn Thị Yến Nhi', N'Phú Hòa, Thoại Sơn, An Giang', N'0522944955')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (N'KH004', N'Nguyễn Minh Mẫn', N'Long Xuyên, An Giang', N'0522944944')
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Quyen]) VALUES (N'admin', N'admin123', N'TK1')
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Quyen]) VALUES (N'nhanvien1', N'1@nhanvien', N'TK2')
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau], [Quyen]) VALUES (N'nhanvien2', N'2@nhanvien', N'TK3')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC]) VALUES (N'NCC001', N'CTY Nông dược HAI', N'An Giang', N'02838292805')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC]) VALUES (N'NCC002', N'VNAPC', N'Cần Thơ', N'02435568691')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC]) VALUES (N'NCC003', N'CTY TNHH ĐÔNG DINH', N'TP. Hồ Chí Minh', N'0327939081')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC]) VALUES (N'NCC004', N'VFC', N'TP. Hồ Chí Minh', N'02838228097')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC]) VALUES (N'NCC005', N'aaa', N'lx', N'0135252')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChiNV], [SdtNV], [Phai], [NgaySinh], [MaLoaiNV]) VALUES (N'NV001', N'Nguyễn Văn A', N'Long Xuyên, An Giang', N'0799600303', N'Nam', CAST(N'2000-10-21 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChiNV], [SdtNV], [Phai], [NgaySinh], [MaLoaiNV]) VALUES (N'NV002', N'Lê Thị B', N'Long Xuyên, An Giang', N'0987654321', N'Nữ', CAST(N'2000-11-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChiNV], [SdtNV], [Phai], [NgaySinh], [MaLoaiNV]) VALUES (N'NV003', N'Nguyễn Văn C', N'Long Xuyên', N'0123456789', N'Nam', CAST(N'1998-09-13 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChiNV], [SdtNV], [Phai], [NgaySinh], [MaLoaiNV]) VALUES (N'NV004', N'Nguyễn Văn D', N'Long Xuyên', N'', N'Nam', CAST(N'1998-09-13 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChiNV], [SdtNV], [Phai], [NgaySinh], [MaLoaiNV]) VALUES (N'NV005', N'Nguyễn Văn E', N'Long Xuyên', N'0123456789', N'Nam', CAST(N'1998-09-13 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NamXB], [SoLuongTon], [GiaNhap], [GiaBan], [TacGia], [MaTheLoai], [MaNCC], [MaKe]) VALUES (N'THUOC001', N'THUỐC TRỪ SÂU ALTACH 5EC', N'Chai', 50, 39000, 42900, N'D:\Do an dotNet\QuanLyNongDuoc\QuanLyNongDuoc\HinhAnh\26112020.jpg', N'LOAI001', N'NCC001', NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NamXB], [SoLuongTon], [GiaNhap], [GiaBan], [TacGia], [MaTheLoai], [MaNCC], [MaKe]) VALUES (N'THUOC002', N'THUỐC TRỪ SÂU NOUVO 3.6EC', N'Chai', 51, 29000, 31900, N'D:\Do an dotNet\QuanLyNongDuoc\QuanLyNongDuoc\HinhAnh\untitled-2.jpg', N'LOAI001', N'NCC004', NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NamXB], [SoLuongTon], [GiaNhap], [GiaBan], [TacGia], [MaTheLoai], [MaNCC], [MaKe]) VALUES (N'THUOC003', N'Thuốc diệt cỏ SUMICOAT 16-19-16', N'Túi', 40, 54000, 59400, N'D:\Do an dotNet\QuanLyNongDuoc\QuanLyNongDuoc\HinhAnh\tải xuống.jpg', N'LOAI002', N'NCC002', NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NamXB], [SoLuongTon], [GiaNhap], [GiaBan], [TacGia], [MaTheLoai], [MaNCC], [MaKe]) VALUES (N'THUOC004', N'Phân bón Xanh Thần Tốc', N'Túi', 35, 59000, 64900, N'D:\Do an dotNet\QuanLyNongDuoc\QuanLyNongDuoc\HinhAnh\ab637a8327fe6beb3fa6cabfe1520785.jfif', N'LOAI003', N'NCC003', NULL)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NamXB], [SoLuongTon], [GiaNhap], [GiaBan], [TacGia], [MaTheLoai], [MaNCC], [MaKe]) VALUES (N'THUOC005', N'aaa', N'Chai', 50, 39000, 42900, N'D:\Do an dotNet\QuanLyNongDuoc\QuanLyNongDuoc\HinhAnh\26112020.jpg', N'LOAI001', N'NCC005', NULL)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'LOAI001', N'Trừ sâu')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'LOAI002', N'Diệt cỏ')
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'LOAI003', N'Phân bón')
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietBan_tblBanHang] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[CTHoaDon] CHECK CONSTRAINT [FK_tblChiTietBan_tblBanHang]
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietBan_tblHang] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[CTHoaDon] CHECK CONSTRAINT [FK_tblChiTietBan_tblHang]
GO
ALTER TABLE [dbo].[CTPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[CTPhieuNhap] CHECK CONSTRAINT [FK_CTPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[CTPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhap_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[CTPhieuNhap] CHECK CONSTRAINT [FK_CTPhieuNhap_Sach]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_LoaiNV] FOREIGN KEY([MaLoaiNV])
REFERENCES [dbo].[LoaiNV] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_LoaiNV]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCC] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCC]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_KeSach] FOREIGN KEY([MaKe])
REFERENCES [dbo].[KeSach] ([MaKe])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_KeSach]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_tblHang_tblLoai] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_tblHang_tblLoai]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_tblHang_tblNhaCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCC] ([MaNCC])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_tblHang_tblNhaCC]
GO
