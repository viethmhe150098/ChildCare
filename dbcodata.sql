USE [swp391]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 11/7/2021 2:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[aID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[role] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[aID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/7/2021 2:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[cID] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[tel] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[role] [int] NOT NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 11/7/2021 2:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[fID] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](50) NOT NULL,
	[sID] [int] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[mobile] [nvarchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[image] [nvarchar](50) NULL,
	[star] [int] NULL,
	[description] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[fID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 11/7/2021 2:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[mID] [int] IDENTITY(1,1) NOT NULL,
	[aID] [int] NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[gender] [bit] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[image] [nvarchar](50) NOT NULL,
	[role] [int] NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[mID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicine]    Script Date: 11/7/2021 2:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicine](
	[meID] [int] IDENTITY(1,1) NOT NULL,
	[meName] [nvarchar](50) NULL,
	[meQuantity] [int] NULL,
	[meDes] [nvarchar](50) NULL,
	[mePrice] [float] NOT NULL,
	[meImg] [nvarchar](200) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[meID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 11/7/2021 2:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[title] [nvarchar](50) NOT NULL,
	[author] [int] NOT NULL,
	[date_create] [date] NOT NULL,
	[updata_date] [date] NOT NULL,
	[status] [bit] NOT NULL,
	[pCateID] [int] NOT NULL,
	[pID] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](4000) NULL,
	[image] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[pID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCategory]    Script Date: 11/7/2021 2:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCategory](
	[pCateID] [int] IDENTITY(1,1) NOT NULL,
	[PCateName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pCateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prescription]    Script Date: 11/7/2021 2:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prescription](
	[reID] [int] NULL,
	[preID] [int] IDENTITY(1,1) NOT NULL,
	[meID] [int] NOT NULL,
	[quantity] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 11/7/2021 2:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[reID] [int] NOT NULL,
	[date] [date] NOT NULL,
	[totalprice] [float] NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[mail] [nvarchar](50) NOT NULL,
	[status] [int] NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[receive_name] [nvarchar](50) NOT NULL,
	[receive_gender] [bit] NOT NULL,
	[receive_mail] [nvarchar](50) NOT NULL,
	[receive_tel] [nvarchar](50) NOT NULL,
	[cid] [int] NULL,
	[stid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[reID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReservationDetail]    Script Date: 11/7/2021 2:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservationDetail](
	[sID] [int] NOT NULL,
	[reID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sID] ASC,
	[reID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[result]    Script Date: 11/7/2021 2:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[result](
	[sID] [int] NOT NULL,
	[reID] [int] NOT NULL,
	[content] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[sID] ASC,
	[reID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SerCate]    Script Date: 11/7/2021 2:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SerCate](
	[scID] [int] IDENTITY(1,1) NOT NULL,
	[scCateName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[scID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 11/7/2021 2:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[sname] [nvarchar](50) NOT NULL,
	[scID] [int] NOT NULL,
	[sprice] [float] NOT NULL,
	[description] [nvarchar](50) NOT NULL,
	[maxquantity] [int] NOT NULL,
	[ser_image] [nvarchar](50) NOT NULL,
	[sID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 11/7/2021 2:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[stID] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[aID] [int] NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[gender] [bit] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[image] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[role] [int] NOT NULL,
	[isDoctor] [bit] NOT NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[stID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subscribers]    Script Date: 11/7/2021 2:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subscribers](
	[subId] [int] IDENTITY(1,1) NOT NULL,
	[subEmail] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([aID], [username], [password], [name], [role]) VALUES (1, N'admin@a', N'admin@a0', N'Viet', 1)
INSERT [dbo].[admin] ([aID], [username], [password], [name], [role]) VALUES (4, N'sa@a', N'admin@a1', N'Trung', 1)
INSERT [dbo].[admin] ([aID], [username], [password], [name], [role]) VALUES (6, N'manh@a', N'admin@a2', N'Manh', 1)
INSERT [dbo].[admin] ([aID], [username], [password], [name], [role]) VALUES (8, N'chi@a', N'admin@a3', N'Chi', 1)
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([cID], [first_name], [last_name], [gender], [email], [tel], [username], [password], [age], [address], [role], [status]) VALUES (3, N'Hoang', N'Viet', 1, N'mrkai6996@gmail.com', N'012345678', N'viet', N'87654321', 20, N'Ha Noi', 4, 1)
INSERT [dbo].[Customer] ([cID], [first_name], [last_name], [gender], [email], [tel], [username], [password], [age], [address], [role], [status]) VALUES (4, N'David', N'Beckben', 1, N'hmviet2211@gmail.com', N'102345678', N'beckben', N'12345678', 32, N'England', 4, 1)
INSERT [dbo].[Customer] ([cID], [first_name], [last_name], [gender], [email], [tel], [username], [password], [age], [address], [role], [status]) VALUES (5, N'Tim', N'Cooo', 0, N'minhht1908@gmail.com', N'210345678', N'cooo', N'12345678', 45, N'America', 4, 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Manager] ON 

INSERT [dbo].[Manager] ([mID], [aID], [first_name], [last_name], [age], [gender], [username], [password], [image], [role], [address], [email], [phone]) VALUES (1, 1, N'Hoang', N'Viet', 32, 1, N'viet@m', N'12345678', N'', 2, N'Ha Noi', N'hmviet2211@gmail.com', N'21345678')
INSERT [dbo].[Manager] ([mID], [aID], [first_name], [last_name], [age], [gender], [username], [password], [image], [role], [address], [email], [phone]) VALUES (3, 4, N'Trung ', N'Do', 40, 0, N'trung@m', N'12345678', N'', 2, N'American', N'trung@email.com', N'12345678')
INSERT [dbo].[Manager] ([mID], [aID], [first_name], [last_name], [age], [gender], [username], [password], [image], [role], [address], [email], [phone]) VALUES (4, 4, N'Manh', N'Phan', 64, 1, N'manh@m', N'12345678', N'', 2, N'England', N'manh@email.com', N'21345678')
INSERT [dbo].[Manager] ([mID], [aID], [first_name], [last_name], [age], [gender], [username], [password], [image], [role], [address], [email], [phone]) VALUES (5, 6, N'Lil', N'Chi', 45, 0, N'lilchi@m', N'12345678', N'', 2, N'England', N'lilchi@gmail.com', N'32145678')
SET IDENTITY_INSERT [dbo].[Manager] OFF
GO
SET IDENTITY_INSERT [dbo].[medicine] ON 

INSERT [dbo].[medicine] ([meID], [meName], [meQuantity], [meDes], [mePrice], [meImg], [status]) VALUES (43, N'Benylin', 32, N'Sore Throat', 13, N'https://firebasestorage.googleapis.com/v0/b/childcare-52082.appspot.com/o/Benylin.jpg?alt=media&token=49477570-e01c-4058-8820-23107c7e53df', 1)
INSERT [dbo].[medicine] ([meID], [meName], [meQuantity], [meDes], [mePrice], [meImg], [status]) VALUES (44, N'Cepacol', 32, N'Sore Throat', 14.5, N'https://firebasestorage.googleapis.com/v0/b/childcare-52082.appspot.com/o/Cepacol.jpg?alt=media&token=4dcb01c5-6127-4271-8b9f-cdfba282124a', 1)
INSERT [dbo].[medicine] ([meID], [meName], [meQuantity], [meDes], [mePrice], [meImg], [status]) VALUES (45, N'Earachedrops', 32, N'Ear', 16, N'https://firebasestorage.googleapis.com/v0/b/childcare-52082.appspot.com/o/Earachedrops.jpg?alt=media&token=be75cb2b-17c9-40cf-a679-08bb65fde90d', 1)
INSERT [dbo].[medicine] ([meID], [meName], [meQuantity], [meDes], [mePrice], [meImg], [status]) VALUES (46, N'Genexa', 32, N'Sore Throat', 20.32, N'https://firebasestorage.googleapis.com/v0/b/childcare-52082.appspot.com/o/Genexa.jpg?alt=media&token=7731a0ed-9add-4586-8263-eb3670210492', 1)
INSERT [dbo].[medicine] ([meID], [meName], [meQuantity], [meDes], [mePrice], [meImg], [status]) VALUES (47, N'InfantsMylicon', 32, N'Stomach', 15.64, N'https://firebasestorage.googleapis.com/v0/b/childcare-52082.appspot.com/o/InfantsMylicon.jpg?alt=media&token=f6c06cf9-43ee-4b95-9dec-b4a217aa6d0a', 1)
INSERT [dbo].[medicine] ([meID], [meName], [meQuantity], [meDes], [mePrice], [meImg], [status]) VALUES (48, N'Pedialyte', 32, N'Sore Throat', 13.42, N'https://firebasestorage.googleapis.com/v0/b/childcare-52082.appspot.com/o/Pedialyte.jpg?alt=media&token=a2085055-03f8-4e43-824d-9d1d84df3d68', 1)
INSERT [dbo].[medicine] ([meID], [meName], [meQuantity], [meDes], [mePrice], [meImg], [status]) VALUES (49, N'PeptoBismol', 32, N'Sore Throat', 13.54, N'https://firebasestorage.googleapis.com/v0/b/childcare-52082.appspot.com/o/PeptoBismol.png?alt=media&token=c57f4d83-38a9-484c-ae69-81f3c52a1083', 1)
INSERT [dbo].[medicine] ([meID], [meName], [meQuantity], [meDes], [mePrice], [meImg], [status]) VALUES (53, N'TummyAche', 32, N'Stomach', 23.32, N'https://firebasestorage.googleapis.com/v0/b/childcare-52082.appspot.com/o/TummyAche.jpg?alt=media&token=8b4f451e-4120-4b0a-8601-aef9e81aa820', 1)
INSERT [dbo].[medicine] ([meID], [meName], [meQuantity], [meDes], [mePrice], [meImg], [status]) VALUES (55, N'earrelief', 32, N'Ear', 10.34, N'https://firebasestorage.googleapis.com/v0/b/childcare-52082.appspot.com/o/earrelief.jpeg?alt=media&token=9f013b06-887c-48be-b77f-cf8d148931f4', 1)
SET IDENTITY_INSERT [dbo].[medicine] OFF
GO
SET IDENTITY_INSERT [dbo].[PostCategory] ON 

INSERT [dbo].[PostCategory] ([pCateID], [PCateName]) VALUES (1, N'Mental Health')
INSERT [dbo].[PostCategory] ([pCateID], [PCateName]) VALUES (2, N'Charity')
INSERT [dbo].[PostCategory] ([pCateID], [PCateName]) VALUES (3, N'About service')
INSERT [dbo].[PostCategory] ([pCateID], [PCateName]) VALUES (4, N'Children diseases')
SET IDENTITY_INSERT [dbo].[PostCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[SerCate] ON 

INSERT [dbo].[SerCate] ([scID], [scCateName]) VALUES (1, N'Mental ')
INSERT [dbo].[SerCate] ([scID], [scCateName]) VALUES (2, N'Surgery')
INSERT [dbo].[SerCate] ([scID], [scCateName]) VALUES (3, N'Evaluation')
INSERT [dbo].[SerCate] ([scID], [scCateName]) VALUES (4, N'Medical')
INSERT [dbo].[SerCate] ([scID], [scCateName]) VALUES (5, N'Ear, nose and throat')
SET IDENTITY_INSERT [dbo].[SerCate] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([sname], [scID], [sprice], [description], [maxquantity], [ser_image], [sID]) VALUES (N'heart', 4, 60.45, N'diagnosis, treatment', 100, N'heart.jpg', 1)
INSERT [dbo].[Service] ([sname], [scID], [sprice], [description], [maxquantity], [ser_image], [sID]) VALUES (N'stomach', 4, 54.65, N'diagnosis, treatment', 100, N'stomatch.jpg', 3)
INSERT [dbo].[Service] ([sname], [scID], [sprice], [description], [maxquantity], [ser_image], [sID]) VALUES (N'general health', 3, 60, N'general health', 100, N'general.png', 4)
INSERT [dbo].[Service] ([sname], [scID], [sprice], [description], [maxquantity], [ser_image], [sID]) VALUES (N'Mental examination', 1, 40.25, N'diagnosis', 100, N'depression.jpg', 5)
INSERT [dbo].[Service] ([sname], [scID], [sprice], [description], [maxquantity], [ser_image], [sID]) VALUES (N'Ear examination', 5, 20.54, N'diagnosis and treatment', 100, N'ear.jpg', 6)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([stID], [first_name], [aID], [last_name], [age], [gender], [username], [password], [image], [address], [role], [isDoctor], [email], [phone]) VALUES (1, N'hoang', 1, N'viet', 32, 1, N'viet@s', N'12345678', N'', N'Ha Noi', 3, 1, N'hmviet2211@gmail.com', N'43215678')
INSERT [dbo].[Staff] ([stID], [first_name], [aID], [last_name], [age], [gender], [username], [password], [image], [address], [role], [isDoctor], [email], [phone]) VALUES (4, N'thao', 4, N'do', 56, 0, N'thao@s', N'12345678', N'', N'England', 3, 1, N'thao@gmail.com', N'32145678')
INSERT [dbo].[Staff] ([stID], [first_name], [aID], [last_name], [age], [gender], [username], [password], [image], [address], [role], [isDoctor], [email], [phone]) VALUES (5, N'charlie', 4, N'xavier', 60, 1, N'xavier@s', N'12345678', N'', N'America', 3, 1, N'xavier@gmail.com', N'43215678')
INSERT [dbo].[Staff] ([stID], [first_name], [aID], [last_name], [age], [gender], [username], [password], [image], [address], [role], [isDoctor], [email], [phone]) VALUES (6, N'Maria', 4, N'Oza', 24, 0, N'oza@s', N'12345678', N'', N'Japan', 3, 0, N'oza@gmail.com', N'54321678')
INSERT [dbo].[Staff] ([stID], [first_name], [aID], [last_name], [age], [gender], [username], [password], [image], [address], [role], [isDoctor], [email], [phone]) VALUES (7, N'Quoc', 6, N'Hiep', 25, 1, N'quoc@s', N'12345678', N'', N'VietNam', 3, 0, N'quoc@gmail.com', N'65432178')
INSERT [dbo].[Staff] ([stID], [first_name], [aID], [last_name], [age], [gender], [username], [password], [image], [address], [role], [isDoctor], [email], [phone]) VALUES (8, N'Phu', 6, N'Phu', 26, 0, N'phu@s', N'12345678', N'', N'VietNam', 3, 0, N'phu@gmail.com', N'765432189')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[subscribers] ON 

INSERT [dbo].[subscribers] ([subId], [subEmail]) VALUES (1, N'a@gmail.com')
INSERT [dbo].[subscribers] ([subId], [subEmail]) VALUES (2, N'mrkai6996@gmail.com')
SET IDENTITY_INSERT [dbo].[subscribers] OFF
GO
ALTER TABLE [dbo].[admin] ADD  DEFAULT ((1)) FOR [role]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((4)) FOR [role]
GO
ALTER TABLE [dbo].[Manager] ADD  DEFAULT ((2)) FOR [role]
GO
ALTER TABLE [dbo].[medicine] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT ((3)) FOR [role]
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD FOREIGN KEY([sID])
REFERENCES [dbo].[Service] ([sID])
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD FOREIGN KEY([aID])
REFERENCES [dbo].[admin] ([aID])
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD FOREIGN KEY([author])
REFERENCES [dbo].[Manager] ([mID])
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD FOREIGN KEY([pCateID])
REFERENCES [dbo].[PostCategory] ([pCateID])
GO
ALTER TABLE [dbo].[Prescription]  WITH CHECK ADD FOREIGN KEY([meID])
REFERENCES [dbo].[medicine] ([meID])
GO
ALTER TABLE [dbo].[Prescription]  WITH CHECK ADD FOREIGN KEY([reID])
REFERENCES [dbo].[Reservation] ([reID])
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD FOREIGN KEY([stid])
REFERENCES [dbo].[Staff] ([stID])
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Customer] ([cID])
GO
ALTER TABLE [dbo].[ReservationDetail]  WITH CHECK ADD FOREIGN KEY([reID])
REFERENCES [dbo].[Reservation] ([reID])
GO
ALTER TABLE [dbo].[ReservationDetail]  WITH CHECK ADD FOREIGN KEY([sID])
REFERENCES [dbo].[Service] ([sID])
GO
ALTER TABLE [dbo].[result]  WITH CHECK ADD FOREIGN KEY([reID])
REFERENCES [dbo].[Reservation] ([reID])
GO
ALTER TABLE [dbo].[result]  WITH CHECK ADD FOREIGN KEY([sID])
REFERENCES [dbo].[Service] ([sID])
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD FOREIGN KEY([scID])
REFERENCES [dbo].[SerCate] ([scID])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([aID])
REFERENCES [dbo].[admin] ([aID])
GO

insert into feedback(content,sID,email,name,mobile,gender,image,star,description) VALUES ('Feedback about service',1,'lumberpdhe151223@fpt.edu.vn','Lumber','0338622864',1,'stomatch.jpg',3,'I feel great when using the service here')
insert into feedback(content,sID,email,name,mobile,gender,image,star,description) VALUES ('Feedback about service',1,'kakaberpdhe151223@fpt.edu.vn','Kaka','0338622864',1,'stomatch.jpg',3,'I feel great when using the service here')
insert into feedback(content,sID,email,name,mobile,gender,image,star,description) VALUES ('Feedback about examination',1,'manhpdhe151290@fpt.edu.vn','John','12345678',1,'heart.jpg',4,'Very good and dedicated service')
insert into feedback(content,sID,email,name,mobile,gender,image,star,description) VALUES ('Feedback about examination',3,'hungpdhe151223@fpt.edu.vn','John','0338622864',1,'stomatch.jpg',5,'Very good and dedicated service and nice')

insert into Post(title, author, date_create, updata_date, status, pCateID, content, image) values ('Covid-19', 3, '2021/10/02', '2021/11/02', 1, 1, 'covid causes heavy damage around the globe, it attacks your lungs and respiratory system', 'post2.jpg')
insert into Post(title, author, date_create, updata_date, status, pCateID, content, image) values ('Stomachache', 1, '2021/08/02', '2021/11/11', 1, 1, 'Stomachache attacks your stomach and digestive system', 'post4.jpg')
insert into Post(title, author, date_create, updata_date, status, pCateID, content, image) values ('Heart Attack', 4, '2021/02/02', '2021/03/05', 1, 1, 'Heart Attack attacks your heart and it is extremely dangerous if we are subjective to the smallest signs', 'post3.jpg')
insert into Post(title, author, date_create, updata_date, status, pCateID, content, image) values ('Otitis Media', 5, '2021/02/02', '2021/03/05', 1, 4, 'Otitis Media are commin in children but it is not as simple as we think', 'taimuihong.jpg')

insert into Reservation(reID, date, totalprice, phone, mail, status, address, fullname, receive_name, receive_gender, receive_mail, receive_tel, cid, stid)
values(1, '2021/10/02', 500, '012345678', 'mrkai6996@gmail.com', 1, 'Ha Noi', 'Hoang Viet', 'Trung', 1, 'thanhtrung02102001@gmail.com', '0387037855', 3, 8)
insert into Reservation(reID, date, totalprice, phone, mail, status, address, fullname, receive_name, receive_gender, receive_mail, receive_tel, cid, stid)
values(2, '2021/11/12', 400, '102345678', 'hmviet2211@gmail.com', 1, 'England', 'David	Beckben', 'Duc Manh', 1, 'manh@gmail.com', '0972055646', 4, 8)

insert into ReservationDetail(sID, reID, quantity, price) values(5, 1, 10, 50)
insert into ReservationDetail(sID, reID, quantity, price) values(4, 2, 10, 40)

insert into Prescription(reID, meID, quantity) values(1, 43, 50)
insert into Prescription(reID, meID, quantity) values(2, 44, 50)
