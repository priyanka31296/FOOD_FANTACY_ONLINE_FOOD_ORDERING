/****** Object:  Table [dbo].[Admin_Table]    Script Date: 03/21/2017 15:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_Table]') AND type in (N'U'))
DROP TABLE [dbo].[Admin_Table]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 03/21/2017 15:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[feedback]') AND type in (N'U'))
DROP TABLE [dbo].[feedback]
GO
/****** Object:  Table [dbo].[ItemMaster]    Script Date: 03/21/2017 15:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ItemMaster]') AND type in (N'U'))
DROP TABLE [dbo].[ItemMaster]
GO
/****** Object:  Table [dbo].[newoffer]    Script Date: 03/21/2017 15:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[newoffer]') AND type in (N'U'))
DROP TABLE [dbo].[newoffer]
GO
/****** Object:  Table [dbo].[Reg_Table]    Script Date: 03/21/2017 15:52:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reg_Table]') AND type in (N'U'))
DROP TABLE [dbo].[Reg_Table]
GO
/****** Object:  Table [dbo].[Reg_Table]    Script Date: 03/21/2017 15:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reg_Table]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Reg_Table](
	[id] [int] NULL,
	[uname] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[uloginname] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[password] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Location] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[mobno] [numeric](18, 0) NULL,
	[email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Reg_Table] PRIMARY KEY CLUSTERED 
(
	[uname] ASC,
	[uloginname] ASC,
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Reg_Table] ([id], [uname], [uloginname], [password], [Location], [mobno], [email]) VALUES (NULL, N'piya', N'priya', N'123', N'jkd', CAST(9448973123 AS Numeric(18, 0)), N'piya@gmail.com')
/****** Object:  Table [dbo].[newoffer]    Script Date: 03/21/2017 15:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[newoffer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[newoffer](
	[pid] [int] NOT NULL,
	[oitemname] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[image] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[price] [int] NULL,
	[date] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[discription] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_newoffer] PRIMARY KEY CLUSTERED 
(
	[pid] ASC,
	[oitemname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[newoffer] ([pid], [oitemname], [image], [price], [date], [discription]) VALUES (1, N'dosa', N'offerimages/food2.jpg', 100, N'05/03/2017', N'khgfdsxcvb')
INSERT [dbo].[newoffer] ([pid], [oitemname], [image], [price], [date], [discription]) VALUES (2, N'jamun', N'offerimages/foodimages.jpg', 100, N'07/03/2017', N'dfghjkl')
INSERT [dbo].[newoffer] ([pid], [oitemname], [image], [price], [date], [discription]) VALUES (3, N'pav bhaji', N'offerimages/pavbhaji1.jpg', 100, N'13/03/2017', N'spl offer')
INSERT [dbo].[newoffer] ([pid], [oitemname], [image], [price], [date], [discription]) VALUES (4, N'pure', N'~/offerimages/puri.jpg', 100, N'13/03/2017', N'eertyui')
/****** Object:  Table [dbo].[ItemMaster]    Script Date: 03/21/2017 15:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ItemMaster]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ItemMaster](
	[iid] [numeric](18, 0) NOT NULL,
	[itemName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[itemType] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[itemImage] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_ItemMaster] PRIMARY KEY CLUSTERED 
(
	[iid] ASC,
	[itemName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[ItemMaster] ([iid], [itemName], [itemType], [itemImage], [price]) VALUES (CAST(1 AS Numeric(18, 0)), N'lemon juse', N'cool_drinks', N'~/offerimages/cooldrink1.jpg', 100)
INSERT [dbo].[ItemMaster] ([iid], [itemName], [itemType], [itemImage], [price]) VALUES (CAST(2 AS Numeric(18, 0)), N'pavbhaji', N'breakfasts', N'offerimages/pavbhaji1.jpg', 80)
INSERT [dbo].[ItemMaster] ([iid], [itemName], [itemType], [itemImage], [price]) VALUES (CAST(3 AS Numeric(18, 0)), N'tanduri', N'roti', N'offerimages/roti1.jpg', 15)
INSERT [dbo].[ItemMaster] ([iid], [itemName], [itemType], [itemImage], [price]) VALUES (CAST(4 AS Numeric(18, 0)), N'dal palak', N'bhaji', N'offerimages/bhaji1.jpg', 30)
INSERT [dbo].[ItemMaster] ([iid], [itemName], [itemType], [itemImage], [price]) VALUES (CAST(5 AS Numeric(18, 0)), N'sweet corn', N'soops', N'offerimages/soop1.jpg', 70)
INSERT [dbo].[ItemMaster] ([iid], [itemName], [itemType], [itemImage], [price]) VALUES (CAST(6 AS Numeric(18, 0)), N'south Indian Thali', N'food_thalies', N'offerimages/pavbhaji1.jpg', 80)
/****** Object:  Table [dbo].[feedback]    Script Date: 03/21/2017 15:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[feedback]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[feedback](
	[uloginname] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[feedback] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
INSERT [dbo].[feedback] ([uloginname], [feedback]) VALUES (N'piya', N'help')
INSERT [dbo].[feedback] ([uloginname], [feedback]) VALUES (N'piya', N'gud')
INSERT [dbo].[feedback] ([uloginname], [feedback]) VALUES (N'piya', N'guud')
INSERT [dbo].[feedback] ([uloginname], [feedback]) VALUES (N'piya', N'good')
/****** Object:  Table [dbo].[Admin_Table]    Script Date: 03/21/2017 15:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_Table]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Admin_Table](
	[aid] [int] NULL,
	[name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[password] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Admin_Table] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Admin_Table] ([aid], [name], [password]) VALUES (1, N'Admin', N'1234')
