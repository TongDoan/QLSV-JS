USE [QLSVDb]
GO
/****** Object:  Table [dbo].[giaoViens]    Script Date: 12/11/2023 14:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giaoViens](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenantId] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Age] [int] NOT NULL,
	[Phai] [nvarchar](max) NULL,
	[NgaySinh] [nvarchar](max) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[KhoaId] [int] NULL,
 CONSTRAINT [PK_giaoViens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ketQuas]    Script Date: 12/11/2023 14:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ketQuas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenantId] [int] NULL,
	[StudentId] [int] NULL,
	[MonHocId] [int] NULL,
	[DiemTongKet] [float] NOT NULL,
	[TinhTrang] [nvarchar](max) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[DiemCuoiKy] [float] NOT NULL,
	[DiemQuaTrinh] [float] NOT NULL,
	[GiaoVienId] [int] NULL,
	[Hoc_ky] [nvarchar](max) NULL,
	[Nam_hoc] [nvarchar](max) NULL,
 CONSTRAINT [PK_ketQuas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khoas]    Script Date: 12/11/2023 14:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khoas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenantId] [int] NULL,
	[TenKhoa] [nvarchar](max) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_khoas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lops]    Script Date: 12/11/2023 14:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lops](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenantId] [int] NULL,
	[KhoaId] [int] NULL,
	[TenLop] [nvarchar](max) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_lops] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monHoc]    Script Date: 12/11/2023 14:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monHoc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenantId] [int] NULL,
	[TenMonHoc] [nvarchar](max) NULL,
	[SoTiet] [int] NOT NULL,
	[SoTinChi] [int] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_monHoc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ques]    Script Date: 12/11/2023 14:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ques](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenantId] [int] NULL,
	[TenQue] [nvarchar](max) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_Ques] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 12/11/2023 14:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenantId] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Age] [int] NOT NULL,
	[Phai] [nvarchar](max) NULL,
	[NgaySinh] [nvarchar](max) NULL,
	[QueId] [int] NULL,
	[LopId] [int] NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tongKets]    Script Date: 12/11/2023 14:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tongKets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenantId] [int] NULL,
	[StudentId] [int] NULL,
	[Diem_TongKet] [float] NOT NULL,
	[Xep_loai] [nvarchar](max) NULL,
	[Hoc_ky] [nvarchar](max) NULL,
	[Nam_hoc] [nvarchar](max) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_tongKets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[giaoViens] ON 

INSERT [dbo].[giaoViens] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [KhoaId]) VALUES (1, NULL, N'Quản Quang Duy', 30, N'Nam', N'12/25/1993', CAST(N'2023-11-08T13:15:50.9758228' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 1)
INSERT [dbo].[giaoViens] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [KhoaId]) VALUES (2, NULL, N'Vũ Thanh Thùy Dương', 30, N'Nữ', N'11/25/1993', CAST(N'2023-11-08T13:16:27.8450331' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 6)
INSERT [dbo].[giaoViens] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [KhoaId]) VALUES (3, NULL, N'Phạm Quang Hải', 33, N'Nữ', N'07/12/1990', CAST(N'2023-11-08T13:16:52.0878909' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8)
INSERT [dbo].[giaoViens] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [KhoaId]) VALUES (4, NULL, N'Đinh Tiến Hoàng', 33, N'Nam', N'11/25/1990', CAST(N'2023-11-08T13:17:13.0879526' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8)
INSERT [dbo].[giaoViens] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [KhoaId]) VALUES (6, NULL, N'Nguyễn Giang Minh', 33, N'Nam', N'10/15/1990', CAST(N'2023-11-08T13:17:38.3650145' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 9)
INSERT [dbo].[giaoViens] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [KhoaId]) VALUES (7, NULL, N'Đậu Phương Nam', 30, N'Nam', N'09/25/1993', CAST(N'2023-11-08T13:18:10.9571488' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 10)
SET IDENTITY_INSERT [dbo].[giaoViens] OFF
GO
SET IDENTITY_INSERT [dbo].[ketQuas] ON 

INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (84, NULL, 2, 1, 1, N'', CAST(N'2023-11-08T13:26:33.8572682' AS DateTime2), NULL, CAST(N'2023-11-11T21:57:37.4637365' AS DateTime2), 1, 0, NULL, NULL, 1, 1, 1, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (85, NULL, 2, 2, 8.6, N'', CAST(N'2023-11-08T13:28:07.2471570' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 9, 8, 1, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (86, NULL, 2, 3, 8, N'', CAST(N'2023-11-08T13:28:14.3115874' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 9, 7, 1, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (87, NULL, 2, 4, 7.5, N'', CAST(N'2023-11-08T13:28:22.1066665' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 7, 1, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (88, NULL, 3, 5, 7.6, N'', CAST(N'2023-11-08T13:28:30.9350877' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 7, 1, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (89, NULL, 3, 6, 8.4, N'', CAST(N'2023-11-08T13:28:37.4473800' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 9, 1, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (90, NULL, 3, 7, 8, N'', CAST(N'2023-11-08T13:28:42.8105858' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 8, 1, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (91, NULL, 3, 8, 7.6, N'', CAST(N'2023-11-08T13:28:50.6082239' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 7, 1, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (92, NULL, 19, 8, 7.6, N'', CAST(N'2023-11-08T13:29:47.1816641' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 7, 2, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (93, NULL, 19, 9, 8, N'', CAST(N'2023-11-08T13:29:53.7799195' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 8, 2, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (94, NULL, 19, 10, 8, N'', CAST(N'2023-11-08T13:29:59.9434820' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 8, 2, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (95, NULL, 19, 1, 8, N'', CAST(N'2023-11-08T13:30:06.3380751' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 8, 2, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (96, NULL, 20, 1, 8, N'', CAST(N'2023-11-08T13:30:20.9146423' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 8, 2, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (97, NULL, 20, 10, 8.4, N'', CAST(N'2023-11-08T13:30:27.5140445' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 9, 2, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (98, NULL, 20, 9, 8.5, N'', CAST(N'2023-11-08T13:30:31.6017690' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 9, 2, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (99, NULL, 20, 8, 9, N'', CAST(N'2023-11-08T13:30:37.9361867' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 9, 9, 2, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (101, NULL, 32, 8, 9, N'', CAST(N'2023-11-08T13:32:36.3783406' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 9, 9, 3, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (102, NULL, 32, 7, 8.6, N'', CAST(N'2023-11-08T13:32:43.7081401' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 9, 8, 3, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (103, NULL, 32, 6, 8, N'', CAST(N'2023-11-08T13:32:48.3397303' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 8, 3, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (104, NULL, 32, 5, 7.4, N'', CAST(N'2023-11-08T13:32:56.2300132' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 7, 8, 3, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (105, NULL, 33, 4, 7.5, N'', CAST(N'2023-11-08T13:33:06.8047475' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 7, 8, 3, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (106, NULL, 33, 3, 8, N'', CAST(N'2023-11-08T13:33:11.7601757' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 8, 3, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (107, NULL, 33, 2, 8, N'', CAST(N'2023-11-08T13:33:14.2961006' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 8, 3, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (108, NULL, 33, 1, 8.5, N'', CAST(N'2023-11-08T13:33:18.1450483' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 9, 8, 3, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (109, NULL, 37, 1, 8.5, N'', CAST(N'2023-11-08T13:40:37.4574585' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 9, 8, 4, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (110, NULL, 37, 2, 8, N'', CAST(N'2023-11-08T13:40:44.2212621' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 8, 4, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (111, NULL, 37, 3, 8.5, N'', CAST(N'2023-11-08T13:40:49.9870247' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 9, 8, 4, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (112, NULL, 37, 4, 8, N'', CAST(N'2023-11-08T13:40:57.3284379' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 9, 7, 4, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (113, NULL, 37, 5, 8.6, N'', CAST(N'2023-11-08T13:41:05.7118514' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 9, 8, 4, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (114, NULL, 38, 5, 8.6, N'', CAST(N'2023-11-08T13:44:26.2867612' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 9, 8, 4, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (115, NULL, 38, 6, 8.6, N'', CAST(N'2023-11-08T13:44:32.6441256' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 9, 8, 4, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (116, NULL, 38, 7, 7.4, N'', CAST(N'2023-11-08T13:44:37.2540849' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 7, 8, 4, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (117, NULL, 38, 8, 7.4, N'', CAST(N'2023-11-08T13:44:40.5360269' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 7, 8, 4, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (118, NULL, 38, 9, 8, N'', CAST(N'2023-11-08T13:44:51.8846978' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 8, 4, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (119, NULL, 38, 1, 7.5, N'', CAST(N'2023-11-08T13:59:34.7292820' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 7, 8, 4, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (120, NULL, 38, 2, 7.4, N'', CAST(N'2023-11-08T13:59:40.4551182' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 7, 8, 4, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (121, NULL, 38, 2, 8, N'', CAST(N'2023-11-08T13:59:46.7755005' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 8, 8, 4, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (122, NULL, 38, 3, 7.5, N'', CAST(N'2023-11-08T13:59:52.1567112' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 7, 8, 4, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (123, NULL, 38, 4, 7.5, N'', CAST(N'2023-11-08T13:59:55.8539498' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL, 7, 8, 4, N'1', N'2022')
INSERT [dbo].[ketQuas] ([Id], [TenantId], [StudentId], [MonHocId], [DiemTongKet], [TinhTrang], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime], [DiemCuoiKy], [DiemQuaTrinh], [GiaoVienId], [Hoc_ky], [Nam_hoc]) VALUES (124, NULL, 2, 1, 5.5, N'', CAST(N'2023-11-11T22:05:54.7917942' AS DateTime2), 1, NULL, NULL, 0, NULL, NULL, 6, 5, 1, N'2', N'2022')
SET IDENTITY_INSERT [dbo].[ketQuas] OFF
GO
SET IDENTITY_INSERT [dbo].[khoas] ON 

INSERT [dbo].[khoas] ([Id], [TenantId], [TenKhoa], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (1, NULL, N'Công nghệ thông tin', CAST(N'2023-11-04T16:44:17.5303395' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[khoas] ([Id], [TenantId], [TenKhoa], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (6, NULL, N'Kinh tế', CAST(N'2023-11-04T17:09:08.6167037' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[khoas] ([Id], [TenantId], [TenKhoa], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (8, NULL, N'Cơ khí', CAST(N'2023-11-04T17:12:42.5739990' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[khoas] ([Id], [TenantId], [TenKhoa], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (9, NULL, N'Quản trị kinh doanh', CAST(N'2023-11-04T17:14:28.0658219' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[khoas] ([Id], [TenantId], [TenKhoa], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (10, NULL, N'Điện tử viễn thông', CAST(N'2023-11-04T17:14:48.2835283' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[khoas] OFF
GO
SET IDENTITY_INSERT [dbo].[lops] ON 

INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (2, NULL, 1, N'CNTT1', CAST(N'2023-11-04T17:15:49.7841040' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (3, NULL, 1, N'CNTT2', CAST(N'2023-11-04T17:15:55.8295236' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (4, NULL, 1, N'CNTT3', CAST(N'2023-11-04T17:16:00.9509737' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (5, NULL, 1, N'CNTT4', CAST(N'2023-11-04T17:16:04.7281157' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (6, NULL, 6, N'KT1', CAST(N'2023-11-04T17:16:30.0027558' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (7, NULL, 6, N'KT2', CAST(N'2023-11-04T17:16:35.4572531' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (8, NULL, 6, N'KT3', CAST(N'2023-11-04T17:16:38.8731153' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (9, NULL, 6, N'KT4', CAST(N'2023-11-04T17:16:41.8032430' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (10, NULL, 8, N'CK1', CAST(N'2023-11-04T17:16:55.1872775' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (11, NULL, 8, N'CK2', CAST(N'2023-11-04T17:16:58.8935352' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (12, NULL, 8, N'CK3', CAST(N'2023-11-04T17:17:02.2003567' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (13, NULL, 9, N'QTKD1', CAST(N'2023-11-04T17:17:20.5385351' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (14, NULL, 9, N'QTKD2', CAST(N'2023-11-04T17:17:23.7983676' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (15, NULL, 9, N'QTKD3', CAST(N'2023-11-04T17:17:26.4339965' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (16, NULL, 9, N'QTKD4', CAST(N'2023-11-04T17:17:31.2082044' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (17, NULL, 9, N'QTKD5', CAST(N'2023-11-04T17:17:34.0734130' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (18, NULL, 10, N'DTVT1', CAST(N'2023-11-04T17:18:02.9009446' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[lops] ([Id], [TenantId], [KhoaId], [TenLop], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (19, NULL, 10, N'DTVT2', CAST(N'2023-11-04T17:18:08.3774417' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[lops] OFF
GO
SET IDENTITY_INSERT [dbo].[monHoc] ON 

INSERT [dbo].[monHoc] ([Id], [TenantId], [TenMonHoc], [SoTiet], [SoTinChi], [GhiChu], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (1, NULL, N'Giáo dục thể chất F1', 16, 1, N'', CAST(N'2023-11-04T17:29:04.5232261' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[monHoc] ([Id], [TenantId], [TenMonHoc], [SoTiet], [SoTinChi], [GhiChu], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (2, NULL, N'Kiến trúc và tổ chức máy tính', 22, 3, N'', CAST(N'2023-11-04T17:29:58.8955342' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[monHoc] ([Id], [TenantId], [TenMonHoc], [SoTiet], [SoTinChi], [GhiChu], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (3, NULL, N'Xác suất thống kê', 20, 2, N'', CAST(N'2023-11-04T17:30:32.2285591' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[monHoc] ([Id], [TenantId], [TenMonHoc], [SoTiet], [SoTinChi], [GhiChu], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (4, NULL, N'Kỹ năng mềm', 20, 2, N'', CAST(N'2023-11-04T17:30:43.0296097' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[monHoc] ([Id], [TenantId], [TenMonHoc], [SoTiet], [SoTinChi], [GhiChu], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (5, NULL, N'Tin học đại cương', 22, 3, N'', CAST(N'2023-11-04T17:30:56.8533358' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[monHoc] ([Id], [TenantId], [TenMonHoc], [SoTiet], [SoTinChi], [GhiChu], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (6, NULL, N'Vật lý điện từ', 22, 3, N'', CAST(N'2023-11-04T17:31:16.5320441' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[monHoc] ([Id], [TenantId], [TenMonHoc], [SoTiet], [SoTinChi], [GhiChu], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (7, NULL, N'Thiết kế web', 23, 3, N'', CAST(N'2023-11-04T17:31:30.3342150' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[monHoc] ([Id], [TenantId], [TenMonHoc], [SoTiet], [SoTinChi], [GhiChu], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (8, NULL, N'Cơ sở dữ liệu', 23, 3, N'', CAST(N'2023-11-04T17:31:39.8162227' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[monHoc] ([Id], [TenantId], [TenMonHoc], [SoTiet], [SoTinChi], [GhiChu], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (9, NULL, N'Chủ nghĩa xã hội khoa học', 18, 2, N'', CAST(N'2023-11-04T17:32:05.0596204' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[monHoc] ([Id], [TenantId], [TenMonHoc], [SoTiet], [SoTinChi], [GhiChu], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (10, NULL, N'Tiếng Anh A1', 24, 4, N'', CAST(N'2023-11-04T17:32:24.5778676' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[monHoc] OFF
GO
SET IDENTITY_INSERT [dbo].[Ques] ON 

INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (1, NULL, N'An Giang', CAST(N'2023-11-04T17:19:11.7401501' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (2, NULL, N'Bà Rịa-Vũng Tàu', CAST(N'2023-11-04T17:19:24.3054366' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (3, NULL, N'Bắc Giang', CAST(N'2023-11-04T17:19:51.1877983' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (4, NULL, N'Bắc Kạn', CAST(N'2023-11-04T17:19:59.6344637' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (5, NULL, N'Bạc Liêu', CAST(N'2023-11-04T17:20:09.5178458' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (6, NULL, N'Bắc Ninh', CAST(N'2023-11-04T17:20:22.7479046' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (7, NULL, N'Bến Tre', CAST(N'2023-11-04T17:20:29.8817828' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (8, NULL, N'Bình Định', CAST(N'2023-11-04T17:20:36.9536426' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (9, NULL, N'Bình Dương', CAST(N'2023-11-04T17:20:45.4355913' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (10, NULL, N'Bình Phước', CAST(N'2023-11-04T17:20:50.5164205' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (11, NULL, N'Bình Thuận', CAST(N'2023-11-04T17:20:56.9034353' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (12, NULL, N'Cà Mau', CAST(N'2023-11-04T17:21:05.6276310' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (13, NULL, N'Cần Thơ', CAST(N'2023-11-04T17:21:12.0344807' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (14, NULL, N'Cao Bằng', CAST(N'2023-11-04T17:21:18.1803654' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (15, NULL, N'Đà Nẵng', CAST(N'2023-11-04T17:21:26.9123545' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (16, NULL, N'Đắk Lắk', CAST(N'2023-11-04T17:21:32.2872999' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (17, NULL, N'Đắk Nông', CAST(N'2023-11-04T17:21:39.3837203' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (18, NULL, N'Điện Biên', CAST(N'2023-11-04T17:21:45.1606128' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (19, NULL, N'Đồng Nai', CAST(N'2023-11-04T17:21:49.7450899' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (20, NULL, N'Đồng Tháp', CAST(N'2023-11-04T17:21:54.8194647' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (21, NULL, N'Gia Lai', CAST(N'2023-11-04T17:21:59.8957902' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (22, NULL, N'Hà Giang', CAST(N'2023-11-04T17:22:05.4096308' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (23, NULL, N'Hà Nam', CAST(N'2023-11-04T17:22:11.1298939' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (24, NULL, N'Hà Nội', CAST(N'2023-11-04T17:22:16.9234229' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (25, NULL, N'Hà Tĩnh', CAST(N'2023-11-04T17:22:23.3706465' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (26, NULL, N'Hải Dương', CAST(N'2023-11-04T17:22:46.8949397' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (27, NULL, N'Hải Phòng', CAST(N'2023-11-04T17:22:52.7328216' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (28, NULL, N'Hậu Giang', CAST(N'2023-11-04T17:22:58.3139164' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (29, NULL, N'TP. Hồ Chí Minh', CAST(N'2023-11-04T17:23:04.4658202' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (30, NULL, N'Hòa Bình', CAST(N'2023-11-04T17:23:10.5487619' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (31, NULL, N'Hưng Yên', CAST(N'2023-11-04T17:23:16.1185370' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (32, NULL, N'Khánh Hòa', CAST(N'2023-11-04T17:23:24.2820333' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (33, NULL, N'Kiên Giang', CAST(N'2023-11-04T17:23:28.7312853' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (34, NULL, N'Kon Tum', CAST(N'2023-11-04T17:23:33.4422622' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (35, NULL, N'Lai Châu', CAST(N'2023-11-04T17:24:15.3593263' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (36, NULL, N'Lâm Đồng', CAST(N'2023-11-04T17:24:21.0282412' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (37, NULL, N'Lạng Sơn', CAST(N'2023-11-04T17:24:27.5209490' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (38, NULL, N'Lào Cai', CAST(N'2023-11-04T17:24:32.2959432' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (39, NULL, N'Long An', CAST(N'2023-11-04T17:24:37.2142459' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (40, NULL, N'Nam Định', CAST(N'2023-11-04T17:24:43.8672725' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (41, NULL, N'Nghệ An', CAST(N'2023-11-04T17:24:49.8357073' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (42, NULL, N'Ninh Bình', CAST(N'2023-11-04T17:24:55.3863277' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (43, NULL, N'Ninh Thuận', CAST(N'2023-11-04T17:25:02.8245478' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (44, NULL, N'Phú Thọ', CAST(N'2023-11-04T17:25:09.0527561' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (45, NULL, N'Phú Yên', CAST(N'2023-11-04T17:25:15.1122408' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (46, NULL, N'Quảng Bình', CAST(N'2023-11-04T17:25:25.4193353' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (47, NULL, N'Quảng Nam', CAST(N'2023-11-04T17:25:31.9664762' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (48, NULL, N'Quảng Ngãi', CAST(N'2023-11-04T17:25:37.0724186' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (49, NULL, N'Quảng Ninh', CAST(N'2023-11-04T17:25:42.0671826' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (50, NULL, N'Quảng Trị', CAST(N'2023-11-04T17:25:48.2592204' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (51, NULL, N'Sóc Trăng', CAST(N'2023-11-04T17:25:54.3245187' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (52, NULL, N'Sơn La', CAST(N'2023-11-04T17:25:58.8865226' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (53, NULL, N'Tây Ninh', CAST(N'2023-11-04T17:26:04.0169163' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (54, NULL, N'Thái Bình', CAST(N'2023-11-04T17:26:09.0904216' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (55, NULL, N'Thái Nguyên', CAST(N'2023-11-04T17:26:14.0687100' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (56, NULL, N'Thanh Hóa', CAST(N'2023-11-04T17:26:19.9401904' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (57, NULL, N'Thừa Thiên - Huế', CAST(N'2023-11-04T17:26:25.1637486' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (58, NULL, N'Tiền Giang', CAST(N'2023-11-04T17:26:30.0820392' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (59, NULL, N'Trà Vinh', CAST(N'2023-11-04T17:26:33.9831123' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (60, NULL, N'Tuyên Quang', CAST(N'2023-11-04T17:26:39.5873918' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (61, NULL, N'Vĩnh Long', CAST(N'2023-11-04T17:26:44.4468270' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (62, NULL, N'Vĩnh Phúc', CAST(N'2023-11-04T17:26:49.0059481' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Ques] ([Id], [TenantId], [TenQue], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (63, NULL, N'Yên Bái', CAST(N'2023-11-04T17:26:54.5603641' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Ques] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (2, NULL, N'Nguyễn Mai Anh', 23, N'Nữ', N'29/03/2001', 1, 2, CAST(N'2023-11-04T17:38:07.9958743' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (3, NULL, N'Dương Thế Dân', 24, N'Nam', N'29/05/2000', 2, 2, CAST(N'2023-11-04T17:39:01.3635392' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (4, NULL, N'Nguyễn Khánh Diệp', 23, N'Nữ', N'25/05/2001', 3, 2, CAST(N'2023-11-04T17:40:36.1419985' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (5, NULL, N'Trương Thị Mỹ Duyên', 23, N'Nữ', N'17/03/2001', 4, 2, CAST(N'2023-11-04T17:41:27.2852320' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (6, NULL, N'Vũ Trần Thế Dương', 23, N'Nam', N'08/09/2001', 5, 2, CAST(N'2023-11-04T17:42:24.0502612' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (7, NULL, N'Nguyễn Dương Ánh Hồng', 25, N'Nữ', N'20/02/1999', 6, 2, CAST(N'2023-11-04T17:43:04.6032082' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (8, NULL, N'Nguyễn Quang Huy', 23, N'Nam', N'26/08/2001', 7, 2, CAST(N'2023-11-04T17:45:52.2591828' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (9, NULL, N'Dương Thị Huyền', 23, N'Nữ', N'18/12/2001', 8, 2, CAST(N'2023-11-04T17:47:04.4019956' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (10, NULL, N'Bùi Thị Thúy Hường', 23, N'Nữ', N'08/01/2001', 9, 3, CAST(N'2023-11-04T17:49:49.6991651' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (11, NULL, N'Phạm Thị Hường', 23, N'Nữ', N'25/10/2000', 10, 3, CAST(N'2023-11-04T17:50:26.0626698' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (12, NULL, N'Lư Thị Lanh', 23, N'Nữ', N'13/08/2001', 11, 3, CAST(N'2023-11-04T17:50:55.6857588' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (13, NULL, N'Ngô Mai Liên', 23, N'Nữ', N'05/01/2001', 11, 3, CAST(N'2023-11-04T17:51:12.7630343' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (14, NULL, N'Nguyễn Thị Thùy Linh', 23, N'Nữ', N'17/08/2001', 14, 3, CAST(N'2023-11-04T17:51:31.7918449' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (15, NULL, N'Phan Trần Khánh Linh', 23, N'Nữ', N'07/02/2001', 15, 3, CAST(N'2023-11-04T17:51:54.6518381' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (16, NULL, N'Trần Thùy Linh', 23, N'Nữ', N'14/10/2001', 16, 3, CAST(N'2023-11-04T17:52:40.5527730' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (17, NULL, N'Đàm Hoàng Lĩnh', 23, N'Nữ', N'17/06/2001', 16, 3, CAST(N'2023-11-04T17:52:55.4827451' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (18, NULL, N'Đàm Hoàng Lĩnh', 23, N'Nam', N'17/06/2001', 18, 3, CAST(N'2023-11-04T17:53:05.1614501' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (19, NULL, N'Nguyễn Thị Khánh Ly', 23, N'Nữ', N'17/06/2001', 18, 6, CAST(N'2023-11-04T17:55:22.6769643' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (20, NULL, N'Hồ Thị Mây', 23, N'Nữ', N'10/09/2001', 28, 6, CAST(N'2023-11-04T17:55:39.3539062' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (21, NULL, N'Đỗ Thị Ngọc', 23, N'Nữ', N'22/01/2001', 48, 6, CAST(N'2023-11-04T17:56:09.6734538' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (22, NULL, N'Nguyễn Thị Ngọc', 23, N'Nữ', N'22/01/2001', 58, 6, CAST(N'2023-11-04T17:56:26.9924759' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (23, NULL, N'Tạ Mỹ Ngọc', 23, N'Nữ', N'22/01/2001', 23, 6, CAST(N'2023-11-04T17:56:41.3884934' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (24, NULL, N'Chu Hạnh Phúc', 23, N'Nam', N'18/05/2001', 23, 6, CAST(N'2023-11-04T17:57:10.1994410' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (25, NULL, N'Nguyễn Minh Tân', 23, N'Nam', N'22/10/2001', 24, 6, CAST(N'2023-11-04T17:57:33.5683612' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (26, NULL, N'Đinh Thị Thanh', 23, N'Nữ', N'05/07/2001', 24, 6, CAST(N'2023-11-04T17:57:57.1714687' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (27, NULL, N'Trần Đình Khánh An', 20, N'Nam', N'12/04/2003', 24, 7, CAST(N'2023-11-04T18:00:40.1898950' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (28, NULL, N'Đoàn Nam Anh', 20, N'Nam', N'31/10/2003', 14, 7, CAST(N'2023-11-04T18:01:02.6810767' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (29, NULL, N'Đồng Trung Anh', 20, N'Nam', N'11/05/2003', 25, 7, CAST(N'2023-11-04T18:01:30.2752317' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (30, NULL, N'Hà Hải Anh', 20, N'Nam', N'12/08/2003', 25, 7, CAST(N'2023-11-04T18:01:44.7087305' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (31, NULL, N'Nguyễn Thị Diệp Anh', 20, N'Nữ', N'18/02/2003', 25, 7, CAST(N'2023-11-04T18:02:51.0928816' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (32, NULL, N'Hà Văn Duy Anh', 20, N'Nam', N'05/09/2003', 25, 10, CAST(N'2023-11-04T18:04:33.5298493' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (33, NULL, N'Lê Đình Đức Anh', 20, N'Nam', N'23/01/2003', 15, 10, CAST(N'2023-11-04T18:04:52.1730321' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (34, NULL, N'Lê Đức Anh', 20, N'Nam', N'15/08/2003', 15, 10, CAST(N'2023-11-04T18:05:07.9280614' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (35, NULL, N'Phạm Lương Đạt', 20, N'Nam', N'23/11/2003', 45, 10, CAST(N'2023-11-04T18:05:39.9251150' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (36, NULL, N'Bùi Anh Quân', 20, N'Nam', N'24/12/2003', 45, 10, CAST(N'2023-11-04T18:05:59.4343759' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (37, NULL, N'Nguyễn Hữu Tùng Anh', 20, N'Nam', N'06/04/2003', 45, 11, CAST(N'2023-11-04T18:07:07.5495470' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (38, NULL, N'Nguyễn Nam Anh', 20, N'Nam', N'13/11/2003', 15, 11, CAST(N'2023-11-04T18:08:20.8408313' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (39, NULL, N'Nguyễn Phan Anh', 20, N'Nam', N'28/12/2003', 15, 11, CAST(N'2023-11-04T18:08:48.0763744' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (40, NULL, N'Hà Chí Công', 20, N'Nam', N'15/09/2003', 35, 11, CAST(N'2023-11-04T18:09:14.8890132' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Students] ([Id], [TenantId], [Name], [Age], [Phai], [NgaySinh], [QueId], [LopId], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (41, NULL, N'Trần Trung Dương', 20, N'Nam', N'27/05/2003', 14, 11, CAST(N'2023-11-04T18:09:51.4819864' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[tongKets] ON 

INSERT [dbo].[tongKets] ([Id], [TenantId], [StudentId], [Diem_TongKet], [Xep_loai], [Hoc_ky], [Nam_hoc], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (1, NULL, 2, 7.225, N'B+', N'1', N'2022', CAST(N'2023-11-08T13:43:27.0454878' AS DateTime2), NULL, CAST(N'2023-11-11T22:06:36.3310560' AS DateTime2), 1, 0, NULL, NULL)
INSERT [dbo].[tongKets] ([Id], [TenantId], [StudentId], [Diem_TongKet], [Xep_loai], [Hoc_ky], [Nam_hoc], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (2, NULL, 3, 7.89, N'B+', N'1', N'2022', CAST(N'2023-11-08T13:43:31.3659195' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tongKets] ([Id], [TenantId], [StudentId], [Diem_TongKet], [Xep_loai], [Hoc_ky], [Nam_hoc], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (3, NULL, 19, 7.88, N'B+', N'1', N'2022', CAST(N'2023-11-08T13:43:40.9168343' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tongKets] ([Id], [TenantId], [StudentId], [Diem_TongKet], [Xep_loai], [Hoc_ky], [Nam_hoc], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (4, NULL, 20, 8.55, N'A', N'1', N'2022', CAST(N'2023-11-08T13:43:44.1598440' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tongKets] ([Id], [TenantId], [StudentId], [Diem_TongKet], [Xep_loai], [Hoc_ky], [Nam_hoc], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (5, NULL, 32, 8.25, N'B+', N'1', N'2022', CAST(N'2023-11-08T13:43:51.4001694' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tongKets] ([Id], [TenantId], [StudentId], [Diem_TongKet], [Xep_loai], [Hoc_ky], [Nam_hoc], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (6, NULL, 33, 7.93, N'B+', N'1', N'2022', CAST(N'2023-11-08T13:43:54.6100396' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tongKets] ([Id], [TenantId], [StudentId], [Diem_TongKet], [Xep_loai], [Hoc_ky], [Nam_hoc], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (7, NULL, 37, 8.29, N'B+', N'1', N'2022', CAST(N'2023-11-08T13:45:01.8726512' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tongKets] ([Id], [TenantId], [StudentId], [Diem_TongKet], [Xep_loai], [Hoc_ky], [Nam_hoc], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (8, NULL, 38, 8, N'B+', N'1', N'2022', CAST(N'2023-11-08T13:45:04.6130050' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[tongKets] ([Id], [TenantId], [StudentId], [Diem_TongKet], [Xep_loai], [Hoc_ky], [Nam_hoc], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [IsDeleted], [DeleterUserId], [DeletionTime]) VALUES (9, NULL, 38, 7.82, N'B+', N'1', N'2022', CAST(N'2023-11-08T14:00:28.6018495' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tongKets] OFF
GO
ALTER TABLE [dbo].[ketQuas] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [DiemCuoiKy]
GO
ALTER TABLE [dbo].[ketQuas] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [DiemQuaTrinh]
GO
ALTER TABLE [dbo].[giaoViens]  WITH CHECK ADD  CONSTRAINT [FK_giaoViens_khoas_KhoaId] FOREIGN KEY([KhoaId])
REFERENCES [dbo].[khoas] ([Id])
GO
ALTER TABLE [dbo].[giaoViens] CHECK CONSTRAINT [FK_giaoViens_khoas_KhoaId]
GO
ALTER TABLE [dbo].[ketQuas]  WITH CHECK ADD  CONSTRAINT [FK_ketQuas_giaoViens_GiaoVienId] FOREIGN KEY([GiaoVienId])
REFERENCES [dbo].[giaoViens] ([Id])
GO
ALTER TABLE [dbo].[ketQuas] CHECK CONSTRAINT [FK_ketQuas_giaoViens_GiaoVienId]
GO
ALTER TABLE [dbo].[ketQuas]  WITH CHECK ADD  CONSTRAINT [FK_ketQuas_monHoc_MonHocId] FOREIGN KEY([MonHocId])
REFERENCES [dbo].[monHoc] ([Id])
GO
ALTER TABLE [dbo].[ketQuas] CHECK CONSTRAINT [FK_ketQuas_monHoc_MonHocId]
GO
ALTER TABLE [dbo].[ketQuas]  WITH CHECK ADD  CONSTRAINT [FK_ketQuas_Students_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[ketQuas] CHECK CONSTRAINT [FK_ketQuas_Students_StudentId]
GO
ALTER TABLE [dbo].[lops]  WITH CHECK ADD  CONSTRAINT [FK_lops_khoas_KhoaId] FOREIGN KEY([KhoaId])
REFERENCES [dbo].[khoas] ([Id])
GO
ALTER TABLE [dbo].[lops] CHECK CONSTRAINT [FK_lops_khoas_KhoaId]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_lops_LopId] FOREIGN KEY([LopId])
REFERENCES [dbo].[lops] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_lops_LopId]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Ques_QueId] FOREIGN KEY([QueId])
REFERENCES [dbo].[Ques] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Ques_QueId]
GO
ALTER TABLE [dbo].[tongKets]  WITH CHECK ADD  CONSTRAINT [FK_tongKets_Students_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[tongKets] CHECK CONSTRAINT [FK_tongKets_Students_StudentId]
GO
