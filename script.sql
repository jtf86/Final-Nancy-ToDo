USE [todo]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 2/2/2016 1:14:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categories_tasks]    Script Date: 2/2/2016 1:14:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories_tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[task_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tasks]    Script Date: 2/2/2016 1:14:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [name]) VALUES (1, N'For the boat')
SET IDENTITY_INSERT [dbo].[categories] OFF
SET IDENTITY_INSERT [dbo].[categories_tasks] ON 

INSERT [dbo].[categories_tasks] ([id], [category_id], [task_id]) VALUES (1, 1, 1)
INSERT [dbo].[categories_tasks] ([id], [category_id], [task_id]) VALUES (2, 1, 2)
SET IDENTITY_INSERT [dbo].[categories_tasks] OFF
SET IDENTITY_INSERT [dbo].[tasks] ON 

INSERT [dbo].[tasks] ([id], [description]) VALUES (1, N'Save some money')
INSERT [dbo].[tasks] ([id], [description]) VALUES (2, N'Learn to sail')
SET IDENTITY_INSERT [dbo].[tasks] OFF
