USE [PaddlersParadise]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/8/2017 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/8/2017 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/8/2017 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/8/2017 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/8/2017 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/8/2017 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/8/2017 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/8/2017 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RiverRuns]    Script Date: 3/8/2017 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RiverRuns](
	[river_section] [nvarchar](255) NULL,
	[riverClass] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[gauge_id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_RiverRun] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170228015725_Initial', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170306215434_ModelChange', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170306220303_ModelChange4', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170306223729_ModelChange', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170307023228_Maybe', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170308161453_WedMigration', N'1.0.0-rtm-21431')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'8a10650e-8ccb-4ca3-a378-49897aa121d3', N'7f78e9e1-4759-44a0-968b-ea7fd1c6bc0a', N'Admin', N'ADMIN')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'deb786b0-a07c-4297-b597-2007605e0f44', N'8a10650e-8ccb-4ca3-a378-49897aa121d3')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'deb786b0-a07c-4297-b597-2007605e0f44', 0, N'0088304d-4c37-4f5d-afa1-d69e30e7c2bf', N'mungerda@gmail.com', 0, 1, NULL, N'MUNGERDA@GMAIL.COM', N'DANIELMUNGER', N'AQAAAAEAACcQAAAAEN/bRt3+ac+BZRva6QYI67Hv40jb4HmBxr0JJIYJwH+D7Al3k0pCGsrv20X8FphFXA==', NULL, 0, N'b1a0fd1c-63f6-4eae-9175-4a32e6b6e0c0', 0, N'DanielMunger')
SET IDENTITY_INSERT [dbo].[RiverRuns] ON 

INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Abiqua Creek [OR]1. Crooked Finder Spur Road to Abiqua Falls', N'III-IV+', N'or', 14201500, N'BUTTE CREEK AT MONITOR, OR (AW#88347)', 1)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Abiqua Creek [OR]2. Abiqua Falls to Abiqua Road', N'II-III', N'or', 14201500, N'BUTTE CREEK AT MONITOR, OR (AW#88347)', 2)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Alsea, N. Fork [OR] 1. Three Miles below Klickitat Lake to North Fork Bridge', N'III+(V)', N'or', 14306500, N'ALSEA RIVER NEAR TIDEWATER, OR (AW#5140)', 3)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Alsea [OR] Mill Creek Park to Tidewater', N'I-II', N'or', 14306500, N'ALSEA RIVER NEAR TIDEWATER, OR (AW#5140)', 4)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Applegate River, Middle Fork [OR] Above Applegate Reservoir', N'II-III(V)', N'or', 14362000, N'APPLEGATE RIVER NEAR COPPER, OR (AW#5154)', 5)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Battle Axe Creek [OR] Trail 3369 to Jawbone Flat', N'IV(V)', N'or', 14182500, N'LITTLE NORTH SANTIAM RIVER NEAR MEHAMA, OR (AW#5102)', 6)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Beaver Creek [OR]Troutdale Road to Kiku City Park', N'III+', N'or', 14142800, N'BEAVER CREEK AT TROUTDALE, OR (AW#5734)', 7)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Big Butte Creek [OR]Butte Falls to Netherlands Rd', N'III-IV', N'or', 14337500, N'BIG BUTTE CREEK NEAR MCLEOD, OR (AW#6806)', 8)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Boulder Creek [OR]Bedrock City', N'IV+', N'or', 14179000, N'BREITENBUSH R ABV FRENCH CR NR DETROIT, OR. (AW#5100)', 9)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Boulder Creek [OR] Bridge Forty Creek to North Fork Siletz', N'IV(V)', N'or', 14305500, N'SILETZ RIVER AT SILETZ, OR (AW#5138)', 10)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Breitenbush [OR] Cleator Bend Campground to Detroit Reservoir', N'IV', N'or', 14179000, N'BREITENBUSH R ABV FRENCH CR NR DETROIT, OR. (AW#5100)', 11)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Brice Creek [OR]1. Parker Falls to Champion Creek', N'IV-V', N'or', 14154500, N'ROW RIVER ABOVE PITCHER CREEK, NEAR DORENA, OR (AW#36716)', 12)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Brice Creek [OR]2. Champion Creek to Cedar Creek Campground', N'IV-V', N'or', 14154500, N'ROW RIVER ABOVE PITCHER CREEK, NEAR DORENA, OR (AW#36716)', 13)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Bull Run [OR]Bull Run Road to Sandy River', N'III', N'or', 14140000, N'BULL RUN RIVER NEAR BULL RUN (RIVER ONLY), OR (AW#5085)', 14)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Butte Creek [OR]1. Wilson Road spur to Butte Falls Rd', N'III-IV', N'or', 14201500, N'BUTTE CREEK AT MONITOR, OR (AW#88347)', 15)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Butte Creek [OR]2. Butte Creek Falls', N'IV(V+)', N'or', 14201500, N'BUTTE CREEK AT MONITOR, OR (AW#88347)', 16)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Butte Creek [OR]3. Fault Line to OR 213', N'III-IV', N'or', 14201500, N'BUTTE CREEK AT MONITOR, OR (AW#88347)', 17)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Calapooya [OR]Nonpareil to Driver Valley Road', N'III+(IV)', N'or', 14338000, N'ELK CREEK NEAR TRAIL, OR (AW#5149)', 18)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Calf Creek [OR]NF-4750 Bridge to North Umpqua', N'IV', N'or', 14316495, N'BOULDER CREEK NEAR TOKETEE FALLS, OR (AW#7145)', 19)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Canal Creek [OR]1.2 mi above Quartzville Ck', N'III-IV+', N'or', 14185900, N'QUARTZVILLE CREEK NEAR CASCADIA, OR (AW#35923)', 20)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Canton Creek [OR]Confluence with Pass Creek to Steamboat Creek', N'III-IV(V)', N'or', 14316700, N'STEAMBOAT CREEK NEAR GLIDE, OR (AW#5144)', 21)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Canyon Creek [OR]7 Mile Bridge to South Santiam River', N'V', N'or', 14185000, N'SOUTH SANTIAM RIVER BELOW CASCADIA, OR (AW#5104)', 22)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Canyon Creek [OR] Near Kerby, OR', N'IV', N'or', 14377100, N'ILLINOIS RIVER NEAR KERBY, OR (AW#5158)', 23)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Carberry Creek [OR]Bridge to Aplegate Reservoir', N'IV', N'or', 14362000, N'APPLEGATE RIVER NEAR COPPER, OR (AW#5154)', 24)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Cedar Creek [OR]to Little North Santiam', N'V', N'or', 14182500, N'LITTLE NORTH SANTIAM RIVER NEAR MEHAMA, OR (AW#5102)', 25)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Chetco, South Fork [OR] West Coon Creek to Chetco', N'IV(V)', N'or', 14400000, N'CHETCO RIVER NEAR BROOKINGS, OR (AW#5159)', 26)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Chetco [OR] 1) Slide Creek to Tollman Ranch (Kalmiopsis Wilderness)', N'II-IV+(V)', N'or', 14400000, N'CHETCO RIVER NEAR BROOKINGS, OR (AW#5159)', 27)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Chetco [OR] 2) Craggie Creek to South Fork (Chetco Gorge)', N'III-IV(V)', N'or', 14400000, N'CHETCO RIVER NEAR BROOKINGS, OR (AW#5159)', 28)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Christy Creek [OR]to Confluence with N. Fk. of Middle Fk. of Willamette', N'V', N'or', 14147500, N'N FK OF M FK WILLAMETTE R NR OAKRIDGE, OR (AW#49480)', 29)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Clackamas, North Fork [OR]to North Fork Reservoir', N'IV(V)', N'or', 14209250, N'OAK GROVE FORK AT RIPPLEBROOK CAMPGROUND, OR (AW#50071)', 30)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Clackamas, Oak Grove Fork [OR]Lower Five Miles to Clackamas River', N'III-V(V+)', N'or', 14209250, N'OAK GROVE FORK AT RIPPLEBROOK CAMPGROUND, OR (AW#50071)', 31)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Clackamas, South Fork [OR]South Fork Clackamas Falls', N'V+', N'or', 14209500, N'CLACKAMAS RIVER ABOVE THREE LYNX CREEK, OR (AW#5116)', 32)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Clackamas [OR]1. June Creek Br. to Collawash River', N'III-IV', N'or', 14209500, N'CLACKAMAS RIVER ABOVE THREE LYNX CREEK, OR (AW#5116)', 33)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Clackamas [OR]2. Collawash River to Three Lynx Power Station', N'II-IV', N'or', 14209500, N'CLACKAMAS RIVER ABOVE THREE LYNX CREEK, OR (AW#5116)', 34)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Clackamas [OR] 3. Three Lynx Power Station to North Fork Reservoir', N'III-IV', N'or', 14209500, N'CLACKAMAS RIVER ABOVE THREE LYNX CREEK, OR (AW#5116)', 35)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Clackamas [OR]5. River Mill Dam to Willamette River', N'II', N'or', 14210000, N'CLACKAMAS RIVER AT ESTACADA, OR (AW#6798)', 36)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Collawash [OR]Big Dog', N'IV-V', N'or', 14209500, N'CLACKAMAS RIVER ABOVE THREE LYNX CREEK, OR (AW#5116)', 37)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Copeland Creek [OR] Second Bridge to North Umpqua', N'IV(V)', N'or', 14316495, N'BOULDER CREEK NEAR TOKETEE FALLS, OR (AW#7145)', 38)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Coquille, MF [OR]Mystic Creek to Bear Creek Campground', N'V', N'or', 14309500, N'WEST FORK COW CREEK NEAR GLENDALE, OR (AW#5143)', 39)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Coquille, S. Fork [OR] 2. Coquille River Falls to 16 Mile Bridge', N'V', N'or', 14325000, N'SOUTH FORK COQUILLE RIVER AT POWERS, OR (AW#36551)', 40)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Coquille, S. Fork [OR] 4. Myrtle Grove CG to Milepost 3', N'IV-V', N'or', 14325000, N'SOUTH FORK COQUILLE RIVER AT POWERS, OR (AW#36551)', 41)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Coquille, S. Fork [OR]5. 2 Miles Above Powers to Baker Creek', N'II-IV', N'or', 14325000, N'SOUTH FORK COQUILLE RIVER AT POWERS, OR (AW#36551)', 42)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Crabtree Creek [OR]1. Snow Peak Camp to Larwood Park', N'III-IV', N'or', 14188800, N'THOMAS CREEK NEAR SCIO, OR (AW#7283)', 43)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Crabtree Creek [OR]2. Roaring River to South Santiam River', N'I-II', N'or', 14188800, N'THOMAS CREEK NEAR SCIO, OR (AW#7283)', 44)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Crabtree Creek [OR]Bonnie Creek to South Fork', N'IV-V', N'or', 14188800, N'THOMAS CREEK NEAR SCIO, OR (AW#7283)', 45)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Crooked [OR] 1. Lone Pine Bridge to Crooked River Ranch', N'IV(V)', N'or', 14087400, N'CROOKED RIVER BELOW OPAL SPRINGS, NEAR CULVER, OR (AW#7851)', 46)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Crooked [OR]2. Crooked R. Ranch to Billy Chinook Reservoir', N'III+(IV)', N'or', 14087400, N'CROOKED RIVER BELOW OPAL SPRINGS, NEAR CULVER, OR (AW#7851)', 47)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Deep Creek, NF [OR]Boring to Hwy 224', N'II-III(IV)', N'or', 14142800, N'BEAVER CREEK AT TROUTDALE, OR (AW#5734)', 48)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Deschutes [OR]04. Benham Falls to Dillon Falls', N'II-III+(V+)', N'or', 14076500, N'DESCHUTES RIVER NEAR CULVER, OR (AW#8707)', 49)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Deschutes [OR]05. Dillon Falls to Aspen', N'IV+', N'or', 14076500, N'DESCHUTES RIVER NEAR CULVER, OR (AW#8707)', 50)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Deschutes [OR] 06. Aspen to Lava Island Falls', N'III+', N'or', 14076500, N'DESCHUTES RIVER NEAR CULVER, OR (AW#8707)', 51)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Deschutes [OR]07. Lava Island Falls to Meadow Picnic Area', N'V', N'or', 14076500, N'DESCHUTES RIVER NEAR CULVER, OR (AW#8707)', 52)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Deschutes [OR]08. River Rim Park to Farewell Bend Park', N'III-IV+', N'or', 14076500, N'DESCHUTES RIVER NEAR CULVER, OR (AW#8707)', 53)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Deschutes [OR]09. Sawyer Park to Tumalo State Park', N'III-IV', N'or', 14076500, N'DESCHUTES RIVER NEAR CULVER, OR (AW#8707)', 54)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Deschutes [OR]11. Cline Falls State Park to Lower Bridge', N'II-III(IV)', N'or', 14076500, N'DESCHUTES RIVER NEAR CULVER, OR (AW#8707)', 55)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Deschutes [OR] 12. Lower Bridge to Billy Chinook Reservoir', N'III-IV+', N'or', 14076500, N'DESCHUTES RIVER NEAR CULVER, OR (AW#8707)', 56)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Deschutes [OR] K. US 26 (Warm Springs) to Sherars Falls', N'III', N'or', 14103000, N'DESCHUTES RIVER AT MOODY, NEAR BIGGS, OR (AW#5072)', 57)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Deschutes [OR] L. Sherar''s Falls to Columbia River', N'III', N'or', 14103000, N'DESCHUTES RIVER AT MOODY, NEAR BIGGS, OR (AW#5072)', 58)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Donner and Blitzen [OR] Blitzen Crossing to Page Springs', N'III', N'or', 10396000, N'DONNER UND BLITZEN RIVER NR FRENCHGLEN OR (AW#4534)', 59)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Eagle Creek [OR]2. Fish Hatchery to Eagle Creek Road', N'III-IV(V)', N'or', 14209500, N'CLACKAMAS RIVER ABOVE THREE LYNX CREEK, OR (AW#5116)', 60)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Eagle Creek [OR] Twister Falls to Hatchery Weir', N'V', N'or', 14138850, N'BULL RUN RIVER NEAR MULTNOMAH FALLS, OR (AW#5081)', 61)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Elk Creek (Rogue) [OR] Flat Creek to Rogue River', N'II-III', N'or', 14338000, N'ELK CREEK NEAR TRAIL, OR (AW#5149)', 62)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Elk Creek (Santiam) [OR]Upper Falls to Canal Creek', N'III-IV(V)', N'or', 14185900, N'QUARTZVILLE CREEK NEAR CASCADIA, OR (AW#35923)', 63)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Elk Lake Creek [OR]Elk Lake to NF road 6380', N'V', N'or', 14209500, N'CLACKAMAS RIVER ABOVE THREE LYNX CREEK, OR (AW#5116)', 64)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Elkhorn Creek [OR]to confluence with Little North Santiam', N'V', N'or', 14182500, N'LITTLE NORTH SANTIAM RIVER NEAR MEHAMA, OR (AW#5102)', 65)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Emile Creek [OR]End of "BLM 2 2 Rd" to Little River', N'IV-V', N'or', 14318000, N'LITTLE RIVER AT PEEL, OR (AW#6805)', 66)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Euchre Creek [OR]Ending below Euchre Falls', N'IV-V', N'or', 14305500, N'SILETZ RIVER AT SILETZ, OR (AW#5138)', 67)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Fall Creek [OR]2) Bedrock Campground to Fall Creek Reservoir', N'III-IV', N'or', 14151000, N'FALL CREEK BLW WINBERRY CREEK, NEAR FALL CREEK, OR (AW#5088)', 68)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Fall Creek [OR]3. Fall Creek Dam to Willamette River', N'I-II', N'or', 14151000, N'FALL CREEK BLW WINBERRY CREEK, NEAR FALL CREEK, OR (AW#5088)', 69)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Fish Creek [OR]Fish Creek Diversion Dam to North Umpqua', N'V', N'or', 14315950, N'FISH CREEK ABV SLIPPER CREEK NR TOKETEE FALLS, OR (AW#8851)', 70)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Fish Creek [OR]into the Clackamas', N'III+', N'or', 14209500, N'CLACKAMAS RIVER ABOVE THREE LYNX CREEK, OR (AW#5116)', 71)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'French Creek [OR]4 miles upstream of Detroit Lake to Detroit Lake', N'IV+', N'or', 14179000, N'BREITENBUSH R ABV FRENCH CR NR DETROIT, OR. (AW#5100)', 72)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Gold Creek [OR]1 mile above LNF to NF Road 2209', N'IV+', N'or', 14182500, N'LITTLE NORTH SANTIAM RIVER NEAR MEHAMA, OR (AW#5102)', 73)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Grande Ronde [OR] F. Minam (Wallowa River) to Troy', N'II-III', N'or', 13333000, N'GRANDE RONDE RIVER AT TROY, OR (AW#5049)', 74)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Grande Ronde [OR]G. Troy to Boggan''s Oasis', N'II-III', N'or', 13333000, N'GRANDE RONDE RIVER AT TROY, OR (AW#5049)', 75)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Grande Ronde [OR]H. Boggan''s Oasis to Snake River', N'II-IV', N'or', 13333000, N'GRANDE RONDE RIVER AT TROY, OR (AW#5049)', 76)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Grave Creek [OR]Six Miles to confluence With Rogue River', N'I-III+', N'or', 14361500, N'ROGUE RIVER AT GRANTS PASS, OR (AW#5153)', 77)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Graves [OR]Eastman Gulch to McCoy Creek Rd (Upper Graves)', N'V', N'or', 14309500, N'WEST FORK COW CREEK NEAR GLENDALE, OR (AW#5143)', 78)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Henline [OR]1/4 mile above nf rd 2209 to 1/4 mile below rd 2209', N'V', N'or', 14182500, N'LITTLE NORTH SANTIAM RIVER NEAR MEHAMA, OR (AW#5102)', 79)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Hood, E. Fork [OR] Sherwood Campground to Hwy 35 Bridge', N'IV-V', N'or', 14120000, N'HOOD RIVER AT TUCKER BRIDGE, NEAR HOOD RIVER, OR (AW#5075)', 80)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Hood, Lake Branch [OR] Divers Creek to Confluence with West Fork', N'IV-V', N'or', 14120000, N'HOOD RIVER AT TUCKER BRIDGE, NEAR HOOD RIVER, OR (AW#5075)', 81)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Hood, Middle Fork [OR]1. Lawrance Reservoir to Red Hill Road', N'IV+', N'or', 14120000, N'HOOD RIVER AT TUCKER BRIDGE, NEAR HOOD RIVER, OR (AW#5075)', 82)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Hood, Middle Fork [OR] 2. Red Hill Road to Dee', N'III-IV', N'or', 14120000, N'HOOD RIVER AT TUCKER BRIDGE, NEAR HOOD RIVER, OR (AW#5075)', 83)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Hood, West Fork [OR] 1. Upstream of Lolo Pass Road', N'III-IV(V)', N'or', 14120000, N'HOOD RIVER AT TUCKER BRIDGE, NEAR HOOD RIVER, OR (AW#5075)', 84)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Hood, West Fork [OR] 2. Lake Branch to Punchbowl Falls', N'III-IV+', N'or', 14120000, N'HOOD RIVER AT TUCKER BRIDGE, NEAR HOOD RIVER, OR (AW#5075)', 85)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Hood [OR] 1. Dee to Tucker Bridge', N'III-IV', N'or', 14120000, N'HOOD RIVER AT TUCKER BRIDGE, NEAR HOOD RIVER, OR (AW#5075)', 86)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Hood [OR] 2. Tucker Bridge to Hood River Marina', N'III+(IV)', N'or', 14120000, N'HOOD RIVER AT TUCKER BRIDGE, NEAR HOOD RIVER, OR (AW#5075)', 87)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Illinois [OR] 1 - Highway 199 to Miami Bar (16.4 miles)', N'II-III', N'or', 14377100, N'ILLINOIS RIVER NEAR KERBY, OR (AW#5158)', 88)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Illinois [OR] 2 - Miami Bar to Oak Flat (31 miles)', N'IV(V)', N'or', 14377100, N'ILLINOIS RIVER NEAR KERBY, OR (AW#5158)', 89)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Jackson Creek [OR]1) Upper: NF300 to Cover Camp', N'IV(V)', N'or', 14312000, N'SOUTH UMPQUA RIVER NEAR BROCKWAY, OR (AW#6307)', 90)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Jackson Creek [OR]2) Lower: Cover Camp to FS 31', N'III-IV', N'or', 14312000, N'SOUTH UMPQUA RIVER NEAR BROCKWAY, OR (AW#6307)', 91)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'John Day, N. Fork [OR] 1. Route 52 Bridge to Dale', N'IV(V)', N'or', 14046000, N'NORTH FORK JOHN DAY RIVER AT MONUMENT, OR (AW#7035)', 92)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'John Day, N. Fork [OR] 2. Dale to Monument', N'II', N'or', 14046000, N'NORTH FORK JOHN DAY RIVER AT MONUMENT, OR (AW#7035)', 93)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'John Day [OR] 1. NF John Day (Monument) to Service Creek', N'I-II', N'or', 14046500, N'JOHN DAY RIVER AT SERVICE CREEK, OR (AW#5067)', 94)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'John Day [OR] 2. Service Creek to Clarno', N'II', N'or', 14046500, N'JOHN DAY RIVER AT SERVICE CREEK, OR (AW#5067)', 95)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'John Day [OR] 3. Clarno to Cottonwood', N'II-III', N'or', 14046500, N'JOHN DAY RIVER AT SERVICE CREEK, OR (AW#5067)', 96)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'John Day [OR] 4. Cottonwood to Columbia River', N'II(V)', N'or', 14046500, N'JOHN DAY RIVER AT SERVICE CREEK, OR (AW#5067)', 97)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Jordan Creek [OR] Headwaters to Wilson River', N'III+(IV)', N'or', 14301500, N'WILSON RIVER NEAR TILLAMOOK, OR (AW#5136)', 98)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Klamath [OR] C. JC Boyle Powerhouse to Copco Reservoir (Hell''s Corner)', N'III-IV+', N'or', 11510700, N'KLAMATH RIVER BLW JOHN C.BOYLE PWRPLNT, NR KENO,OR (AW#7876)', 99)
GO
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Lake Creek Slides [OR]Below triangle Lake', N'V', N'or', 14307620, N'SIUSLAW RIVER NEAR MAPLETON, OR (AW#5141)', 100)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Lake Creek [OR] Deadwood Creek to Siuslaw River', N'II-IV', N'or', 14307620, N'SIUSLAW RIVER NEAR MAPLETON, OR (AW#5141)', 101)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Layng Creek [OR]Junetta Creek to Wildwood Falls', N'II-III(IV)', N'or', 14154500, N'ROW RIVER ABOVE PITCHER CREEK, NEAR DORENA, OR (AW#36716)', 102)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Limpy Creek [OR]Landslide to North Umpqua', N'IV(V)', N'or', 14316495, N'BOULDER CREEK NEAR TOKETEE FALLS, OR (AW#7145)', 103)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Little Nestucca [OR]HWY 30 Bridge near Muscott Creek to Fall Creek', N'I-IV+', N'or', 14303600, N'NESTUCCA RIVER NEAR BEAVER, OR (AW#43429)', 104)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Little River [OR]Lower', N'I-III(IV)', N'or', 14318000, N'LITTLE RIVER AT PEEL, OR (AW#6805)', 105)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Little River [OR]Upper', N'IV(V)', N'or', 14318000, N'LITTLE RIVER AT PEEL, OR (AW#6805)', 106)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Little Sandy [OR]Bridge on FS 14 to SE Marmot Rd.', N'V', N'or', 14141500, N'LITTLE SANDY RIVER NEAR BULL RUN, OR (AW#36699)', 107)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Long Tom Hole [OR] Across the road from Fern Ridge Dam', N'II', N'or', 14169000, N'LONG TOM RIVER NEAR ALVADORE, OR (AW#8642)', 108)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Luckiamute [OR]Upstream of Oregon 223', N'III-IV', N'or', 14190500, N'LUCKIAMUTE RIVER NEAR SUVER, OR (AW#8516)', 109)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'McKenzie, EF of the SF [OR]5 miles above Cougar Reservoir to Cougar Reservoir', N'IV(V)', N'or', 14159200, N'SO FK MCKENZIE RIVER ABV COUGAR LAKE NR RAINBOW OR (AW#6320)', 110)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'McKenzie, S. Fork [OR]Dutch Oven Camp to Cougar Reservoir', N'III-IV', N'or', 14159200, N'SO FK MCKENZIE RIVER ABV COUGAR LAKE NR RAINBOW OR (AW#6320)', 111)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'McKenzie [OR] 1. Clear Lake to Carmen Reservoir', N'V', N'or', 14158500, N'MCKENZIE RIVER AT OUTLET OF CLEAR LAKE, OR (AW#8145)', 112)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'McKenzie [OR] 3. Olallie Campground to Paradise Campground', N'III', N'or', 14162500, N'MCKENZIE RIVER NEAR VIDA, OR (AW#5093)', 113)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'McKenzie [OR] 4. Paradise to Finn Rock', N'II', N'or', 14162500, N'MCKENZIE RIVER NEAR VIDA, OR (AW#5093)', 114)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'McKenzie [OR] 5. Finn Rock to Leaburg Dam', N'II+', N'or', 14162500, N'MCKENZIE RIVER NEAR VIDA, OR (AW#5093)', 115)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Metolius [OR]Riverside Forest Campground to Lake Billy Chinook', N'III-IV', N'or', 14091500, N'METOLIUS RIVER NEAR GRANDVIEW, OR (AW#6305)', 116)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Molalla, North Fork [OR] Dead Horse Canyon Creek Bridge to Molalla River', N'IV+', N'or', 14200000, N'MOLALLA RIVER NEAR CANBY, OR (AW#6310)', 117)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Molalla, Table Rock Fork [OR] Lost Creek to Molalla River', N'III+(IV)', N'or', 14200000, N'MOLALLA RIVER NEAR CANBY, OR (AW#6310)', 118)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Molalla [OR] 2) Table Rock Fork to Glen Avon Bridge (3 Bears)', N'II-III+', N'or', 14200000, N'MOLALLA RIVER NEAR CANBY, OR (AW#6310)', 119)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Molalla [OR] 3) Glen Avon Bridge to Feyrer Park', N'II', N'or', 14200000, N'MOLALLA RIVER NEAR CANBY, OR (AW#6310)', 120)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Nehalem [OR]1) Upper Nehalem to Vernonia', N'I-II', N'or', 14299800, N'NEHALEM RIVER NEAR VERNONIA, OR (AW#6925)', 121)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Nehalem [OR]2) Vernonia to Birkenfeld', N'I(II)', N'or', 14299800, N'NEHALEM RIVER NEAR VERNONIA, OR (AW#6925)', 122)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Nehalem [OR]3) Spruce Run to Salmonberry River', N'II', N'or', 14301000, N'NEHALEM RIVER NEAR FOSS, OR (AW#5135)', 123)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Nehalem [OR]4) Salmonberry to Nehalem Falls', N'III', N'or', 14301000, N'NEHALEM RIVER NEAR FOSS, OR (AW#5135)', 124)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Nohorn Creek [OR]to Peg Leg Falls', N'III-IV(V)', N'or', 14209500, N'CLACKAMAS RIVER ABOVE THREE LYNX CREEK, OR (AW#5116)', 125)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Opal Creek (Opal Proper) [OR]Beachie Creek to Jawbone Flat footbridge', N'IV-V(V+)', N'or', 14182500, N'LITTLE NORTH SANTIAM RIVER NEAR MEHAMA, OR (AW#5102)', 126)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Owyhee [OR] 2. Crutcher''s Crossing to Three Forks', N'II-III+(V)', N'or', 13181000, N'OWYHEE RIVER NR ROME OR (AW#5010)', 127)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Owyhee [OR] 3. Three Forks to Rome', N'III-IV(V)', N'or', 13181000, N'OWYHEE RIVER NR ROME OR (AW#5010)', 128)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Owyhee [OR] 4. Rome to Birch Creek or Leslie Gulch', N'II-III+', N'or', 13181000, N'OWYHEE RIVER NR ROME OR (AW#5010)', 129)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Pistol [OR]NF - 070 Spur to HWY 101', N'IV-V', N'or', 14400000, N'CHETCO RIVER NEAR BROOKINGS, OR (AW#5159)', 130)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Quartz Creek [OR]Quartz Creek Road: Mile 7.5 Bridge to Mile 2 Bridge', N'II-IV', N'or', 14159500, N'SOUTH FORK MCKENZIE RIVER NEAR RAINBOW, OR (AW#5089)', 131)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Quartzville Creek [OR] Above Gregg Creek to Green Peter Reservoir', N'IV-V', N'or', 14185900, N'QUARTZVILLE CREEK NEAR CASCADIA, OR (AW#35923)', 132)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Rickreall Creek [OR] NF Rickreall to Aaron Mercer Reservoir', N'III+(IV)', N'or', 14190500, N'LUCKIAMUTE RIVER NEAR SUVER, OR (AW#8516)', 133)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Rickreall [OR]Rock Quarry to SE Fir Villa Rd (Lower)', N'II-III', N'or', 14190500, N'LUCKIAMUTE RIVER NEAR SUVER, OR (AW#8516)', 134)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Roaring River [OR] road 4611 to bridge at Roaring River Campground', N'IV', N'or', 14209500, N'CLACKAMAS RIVER ABOVE THREE LYNX CREEK, OR (AW#5116)', 135)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Rock Creek (Nehalem) [OR]Keasey to mouth', N'I-II(III)', N'or', 14299800, N'NEHALEM RIVER NEAR VERNONIA, OR (AW#6925)', 136)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Rogue, North Fork [OR] 1. Natural Bridge to Woodruff Bridge', N'IV+', N'or', 14335072, N'ROGUE R AT COLE M RIVERS F HATCHERY NR MCLEOD, OR (AW#50987)', 137)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Rogue, North Fork [OR] 2. Woodruff Bridge to River Bridge (Takilma Gorge)', N'IV+', N'or', 14335072, N'ROGUE R AT COLE M RIVERS F HATCHERY NR MCLEOD, OR (AW#50987)', 138)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Rogue, North Fork [OR] 4. Mill Creek Falls to Lost Creek Reservoir', N'IV(V+)', N'or', 14330000, N'ROGUE RIVER BELOW PROSPECT, OR (AW#7071)', 139)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Rogue [OR] 1. Lost Creek Reservoir to Gold Ray Dam (up to 31.6 miles)', N'II', N'or', 14337600, N'ROGUE RIVER NEAR MCLEOD, OR (AW#6807)', 140)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Rogue [OR] 2. Gold Ray Dam to Gold Hill Boat Ramp (up to 5.5 miles)', N'II-IV', N'or', 14359000, N'ROGUE RIVER AT RAYGOLD NEAR CENTRAL POINT, OR (AW#5152)', 141)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Rogue [OR] 3. Gold Hill Boat Ramp to Grants Pass (up to 18.3 miles)', N'II', N'or', 14361500, N'ROGUE RIVER AT GRANTS PASS, OR (AW#5153)', 142)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Rogue [OR] 4. Grants Pass to Grave Creek (options up to 33.4 miles)', N'II', N'or', 14361500, N'ROGUE RIVER AT GRANTS PASS, OR (AW#5153)', 143)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Rogue [OR] 5. Grave Creek (Galice) to Foster Bar (Agness) (34 miles)', N'IV+', N'or', 14372300, N'ROGUE RIVER NEAR AGNESS, OR (AW#5157)', 144)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Rogue [OR] 6. Foster Bar to Gold Beach (options to 33.7 miles)', N'II', N'or', 14372300, N'ROGUE RIVER NEAR AGNESS, OR (AW#5157)', 145)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Row [OR] 2. Dorena Dam to East Regional Park', N'II-III', N'or', 14155500, N'ROW RIVER NEAR COTTAGE GROVE, OR (AW#7807)', 146)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Salmon [OR] 1. Split Falls to Wilderness Trailhead', N'V+', N'or', 14137000, N'SANDY RIVER NEAR MARMOT, OR (AW#5078)', 147)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Salmon [OR]2. Wilderness Trailhead to Arrah-Wanna Road', N'II+(III)', N'or', 14137000, N'SANDY RIVER NEAR MARMOT, OR (AW#5078)', 148)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Salmonberry, North Fork [OR] to Salmonberry', N'III+(V)', N'or', 14299800, N'NEHALEM RIVER NEAR VERNONIA, OR (AW#6925)', 149)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Salmonberry [OR] Beaver Slide Road to Nehalem River', N'III+(IV)', N'or', 14299800, N'NEHALEM RIVER NEAR VERNONIA, OR (AW#6925)', 150)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Sandy [OR]1. McNeil Campground to Lolo Pass Road (Zigzag)', N'IV', N'or', 14137000, N'SANDY RIVER NEAR MARMOT, OR (AW#5078)', 151)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Sandy [OR]2. Lolo Pass Road (Zigzag) to Marmot Dam site', N'II-III', N'or', 14137000, N'SANDY RIVER NEAR MARMOT, OR (AW#5078)', 152)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Sandy [OR] 3. Marmot Dam site to Revenue Bridge', N'III-IV', N'or', 14137000, N'SANDY RIVER NEAR MARMOT, OR (AW#5078)', 153)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Sandy [OR]4. Revenue Bridge to Oxbow Park (Columbia River)', N'II', N'or', 14142500, N'SANDY RIVER BLW BULL RUN RIVER, NR BULL RUN, OR (AW#5086)', 154)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Santiam, Little North (Classic Opal) [OR] 2. Gold Creek to Three Pools', N'IV+', N'or', 14182500, N'LITTLE NORTH SANTIAM RIVER NEAR MEHAMA, OR (AW#5102)', 155)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Santiam, Little North (Opal Gorge) [OR] 3. Three Pools to Salmon Falls', N'IV-V', N'or', 14182500, N'LITTLE NORTH SANTIAM RIVER NEAR MEHAMA, OR (AW#5102)', 156)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Santiam, Little North (Upper Opal) [OR] 1. Battle Axe Creek to Gold Creek', N'IV-V', N'or', 14182500, N'LITTLE NORTH SANTIAM RIVER NEAR MEHAMA, OR (AW#5102)', 157)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Santiam, Little North [OR]4. Salmon Falls to Elkhorn Park', N'II-III', N'or', 14182500, N'LITTLE NORTH SANTIAM RIVER NEAR MEHAMA, OR (AW#5102)', 158)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Santiam, Little North [OR]5. Elkhorn Valley Campground to N. Santiam River', N'II-III', N'or', 14182500, N'LITTLE NORTH SANTIAM RIVER NEAR MEHAMA, OR (AW#5102)', 159)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Santiam, Middle [OR] 1. Sheep Creek Rd to Green Peter Reservoir', N'III-IV(V)', N'or', 14185800, N'MIDDLE SANTIAM R NEAR CASCADIA, OR (AW#49622)', 160)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Santiam, Middle [OR] 2. Green Peter Dam to Foster Reservoir', N'II-IV', N'or', 14186200, N'MIDDLE SANTIAM R BLW GREEN PETER DAM NR FOSTER, OR (AW#49648)', 161)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Santiam, N. [OR]1. Bruno Mt. Rd. Bridge to Detroit Reservoir', N'III-IV', N'or', 14178000, N'NO SANTIAM R BLW BOULDER CRK, NR DETROIT, OR (AW#5099)', 162)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Santiam, N. [OR] 2. Big Cliff Dam to Packsaddle Park', N'III-V', N'or', 14181500, N'NORTH SANTIAM RIVER AT NIAGARA, OR (AW#5101)', 163)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Santiam, N. [OR] 3. Packsaddle Park to Mill City', N'II-III+', N'or', 14181500, N'NORTH SANTIAM RIVER AT NIAGARA, OR (AW#5101)', 164)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Santiam, N. [OR]4. Mill City to Mehama', N'II', N'or', 14183000, N'NORTH SANTIAM RIVER AT MEHAMA, OR (AW#5103)', 165)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Santiam, N. [OR]5. Mehama to Stayton', N'II', N'or', 14183000, N'NORTH SANTIAM RIVER AT MEHAMA, OR (AW#5103)', 166)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Santiam, S. [OR]2. Foster Dam to Waterloo', N'II', N'or', 14187200, N'SOUTH SANTIAM RIVER NEAR FOSTER, OR (AW#5106)', 167)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Santiam, S. [OR]2. Mountain House to Foster Reservoir', N'III-V', N'or', 14185000, N'SOUTH SANTIAM RIVER BELOW CASCADIA, OR (AW#5104)', 168)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Sardine Creek [OR] to Big Cliff Reservoir', N'V', N'or', 14179000, N'BREITENBUSH R ABV FRENCH CR NR DETROIT, OR. (AW#5100)', 169)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Shitike [OR]5 miles above Warm Springs to Shitike Creek Rd', N'V', N'or', 14093000, N'SHITIKE CREEK NEAR WARM SPRINGS, OR (AW#35619)', 170)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Siletz, North Fork [OR] North Fork Bridge to Cofluence', N'II-IV+', N'or', 14305500, N'SILETZ RIVER AT SILETZ, OR (AW#5138)', 171)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Siletz, South Fork [OR]Valsetz Dam Site to Confluence', N'III-IV', N'or', 14305500, N'SILETZ RIVER AT SILETZ, OR (AW#5138)', 172)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Siletz [OR] 1) Elk Creek to Moonshine Park', N'III-IV', N'or', 14305500, N'SILETZ RIVER AT SILETZ, OR (AW#5138)', 173)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Silver Creek [OR]1. North Falls to Lower putin', N'IV-V+', N'or', 14201500, N'BUTTE CREEK AT MONITOR, OR (AW#88347)', 174)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Silver Creek [OR]2. Silver Falls State Park to Silver Creek Reservoir', N'IV(V)', N'or', 14201500, N'BUTTE CREEK AT MONITOR, OR (AW#88347)', 175)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Siuslaw [OR] 2) Lake Creek to near Mapleton', N'II-III', N'or', 14307620, N'SIUSLAW RIVER NEAR MAPLETON, OR (AW#5141)', 176)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Snake [OR] I) Hells Canyon Dam to Pittsburg Landing', N'III-IV', N'or', 13290450, N'SNAKE RIVER AT HELLS CANYON DAM ID-OR STATE LINE (AW#5032)', 177)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Snake [OR] J) Pittsburg Landing (or Salmon) to Heller Bar', N'II', N'or', 13290450, N'SNAKE RIVER AT HELLS CANYON DAM ID-OR STATE LINE (AW#5032)', 178)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Steamboat Creek [OR]City Creek to Steamboat Falls', N'II+(IV)', N'or', 14316700, N'STEAMBOAT CREEK NEAR GLIDE, OR (AW#5144)', 179)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Steamboat Creek [OR]Steamboat Falls to Canton Creek Campground', N'IV', N'or', 14316700, N'STEAMBOAT CREEK NEAR GLIDE, OR (AW#5144)', 180)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Sweet Creek [OR] Sweet Creek Falls to Homestead Trailhead', N'IV-V', N'or', 14307620, N'SIUSLAW RIVER NEAR MAPLETON, OR (AW#5141)', 181)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Thomas Creek [OR] 1. Below Thomas Creek Falls to Log Bridge', N'III-IV', N'or', 14188800, N'THOMAS CREEK NEAR SCIO, OR (AW#7283)', 182)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Thomas Creek [OR]2. Log Bridge to Hannah Bridge', N'II', N'or', 14188800, N'THOMAS CREEK NEAR SCIO, OR (AW#7283)', 183)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Umatilla [OR] 2. Fish Hatchery to Umatilla Park (Columbia River)', N'III+', N'or', 14033500, N'UMATILLA RIVER NEAR UMATILLA, OR (AW#5066)', 184)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Umatilla [OR]Hwy 11 to Pendleton Roundup Grounds', N'II', N'or', 14033500, N'UMATILLA RIVER NEAR UMATILLA, OR (AW#5066)', 185)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Umpqua, N. [OR]1. Soda Springs to Deadline Falls', N'III', N'or', 14316500, N'N UMPQUA RIVER ABV COPELAND CK NR TOKETEE FALLS,OR (AW#6584)', 186)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Umpqua, N. [OR]2. Idleyld Park to confluence with S. Umpqua', N'II(III)', N'or', 14319500, N'NORTH UMPQUA RIVER AT WINCHESTER, OR (AW#5145)', 187)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Umpqua, North [OR]1.5) above Deadline Falls to Idlelyd Park', N'IV-V', N'or', 14316500, N'N UMPQUA RIVER ABV COPELAND CK NR TOKETEE FALLS,OR (AW#6584)', 188)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Umpqua, South, Black Rock Fork [OR]FR 28 Bridge to South Fork Umpqua', N'IV-V', N'or', 14308000, N'SOUTH UMPQUA RIVER AT TILLER, OR (AW#5142)', 189)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Umpqua, South [OR] 1. South Umpqua Falls to Campbell Falls', N'III+(IV)', N'or', 14308000, N'SOUTH UMPQUA RIVER AT TILLER, OR (AW#5142)', 190)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Umpqua [OR]Confluence of N. and S. Umpqua to Scottsburg', N'I-II', N'or', 14321000, N'UMPQUA RIVER NEAR ELKTON, OR (AW#5146)', 191)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Valley of the Giants Fork [OR]Old Road to Boulder Creek', N'IV+', N'or', 14305500, N'SILETZ RIVER AT SILETZ, OR (AW#5138)', 192)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Warnicke [OR]Old Road to Boulder Creek', N'IV(V)', N'or', 14305500, N'SILETZ RIVER AT SILETZ, OR (AW#5138)', 193)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Wiley Creek [OR] Above Wiley Creek Gorge to Little Wiley Creek Confluence', N'IV', N'or', 14187000, N'WILEY CREEK NEAR FOSTER, OR (AW#5105)', 194)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Willamette, Middle Fork [OR] 1) Hills Creek Dam to Black canyon campground', N'II', N'or', 14145500, N'MF WILLAMETTE RIVER ABV SALT CRK, NEAR OAKRIDGE,OR (AW#8625)', 195)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Willamette, Middle Fork [OR]2) Dexter Dam to confluence with Coast Fork Willamette', N'II', N'or', 14152000, N'MIDDLE FORK WILLAMETTE RIVER AT JASPER, OR (AW#6308)', 196)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Willamette, N. Fork of Middle Fork [OR] 1) Top of the Miracle Mile through The Gorge', N'IV-V', N'or', 14147500, N'N FK OF M FK WILLAMETTE R NR OAKRIDGE, OR (AW#49480)', 197)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Willamette [OR]1. Coast Fork / Middle Fork confluence to Alton Baker Park', N'II-III', N'or', 14191000, N'WILLAMETTE RIVER AT SALEM, OR (AW#5108)', 198)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Willamette [OR]2. Alton Baker Park to Peoria Boat Landing', N'I', N'or', 14191000, N'WILLAMETTE RIVER AT SALEM, OR (AW#5108)', 199)
GO
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Wilson [OR]1) Jones Creek Forest Camp to Milepost 15', N'III', N'or', 14301500, N'WILSON RIVER NEAR TILLAMOOK, OR (AW#5136)', 200)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Wilson [OR] 2) Milepost 15 to Milepost 8 Siskey Boat Launch', N'III+', N'or', 14301500, N'WILSON RIVER NEAR TILLAMOOK, OR (AW#5136)', 201)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Winberry Creek [OR]South / North Fork Confluence to Forest Service bridge', N'III+(V)', N'or', 14150800, N'WINBERRY CREEK NEAR LOWELL,OR (AW#6306)', 202)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Yamhill, South [OR]Grand Ronde to Sheridan', N'II-III', N'or', 14194150, N'SOUTH YAMHILL RIVER AT MCMINNVILLE, OR (AW#5109)', 203)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'American [WA]1. Lodgepole Campground to Hell''s Crossing', N'II-III+', N'wa', 12488500, N'AMERICAN RIVER NEAR NILE, WA (AW#4937)', 205)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'American [WA] 2. Hell''s Crossing to American Forks', N'III-IV', N'wa', 12488500, N'AMERICAN RIVER NEAR NILE, WA (AW#4937)', 206)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Bacon Creek [WA]Falls Creek to Skagit River confluence', N'II+(IV)', N'wa', 12179900, N'BACON CREEK BELOW OAKES CREEK NEAR MARBLEMOUNT, WA (AW#5782)', 207)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Baker River [WA] North Cascades National Park to Baker Lake', N'II', N'wa', 12190400, N'BAKER RIVER AB BLUM CREEK NEAR CONCRETE, WA (AW#51331)', 208)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Big Quilcene [WA] 1 - bl. Tunnel Creek to Rainbow Campground (Upper)', N'V+', N'wa', 12052210, N'BIG QUILCENE RIVER BELOW DIVERSION NR QUILCENE, WA (AW#37036)', 209)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Big Quilcene [WA] 2 - Rainbow Campground to fish hatchery (Lower)', N'IV-V', N'wa', 12052210, N'BIG QUILCENE RIVER BELOW DIVERSION NR QUILCENE, WA (AW#37036)', 210)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Bogachiel [WA] Park Boundary to Hwy 101', N'II', N'wa', 12043015, N'BOGACHIEL RIVER NEAR LA PUSH, WA (AW#8391)', 211)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Calawah, S. Fork [WA] Rugged Ridge Trail to Hyas Creek', N'III-IV', N'wa', 12043000, N'CALAWAH RIVER NEAR FORKS, WA (AW#7497)', 212)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Calawah [WA] Hyas Creek to Bogachiel River', N'II-III', N'wa', 12043000, N'CALAWAH RIVER NEAR FORKS, WA (AW#7497)', 213)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Canyon Creek (Lewis River trib.) [WA] 2 - Fly Creek to Merwin Reservoir', N'IV+', N'wa', 14219000, N'CANYON CREEK NEAR AMBOY, WA (AW#35665)', 214)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Canyon Creek (S.F. Still. trib) [WA]2 - Hampton Tree Farm Bridge to Fishing Access', N'II+', N'wa', 12161000, N'SF STILLAGUAMISH RIVER NEAR GRANITE FALLS, WA (AW#4826)', 215)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Canyon Creek (S.F. Still. trib) [WA] 3 - Fishing Access site to S.Fork Stillaguamish', N'IV-V', N'wa', 12161000, N'SF STILLAGUAMISH RIVER NEAR GRANITE FALLS, WA (AW#4826)', 216)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Carbon [WA] 1 - Fairfax to 177th St. East', N'V', N'wa', 12094000, N'CARBON RIVER NEAR FAIRFAX, WA (AW#4774)', 217)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Carbon [WA]2 - 177th St. East to Puyallup River', N'II', N'wa', 12094000, N'CARBON RIVER NEAR FAIRFAX, WA (AW#4774)', 218)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Cascade [WA]1 - bl. Mineral Park to Marble Creek Campground (Upper)', N'II', N'wa', 12182500, N'CASCADE RIVER AT MARBLEMOUNT, WA (AW#35659)', 219)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Cascade [WA] 2 - Marble Creek Campground to Bridge nr. Skagit confluence', N'V', N'wa', 12182500, N'CASCADE RIVER AT MARBLEMOUNT, WA (AW#35659)', 220)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Cedar River [WA] Landsburg bridge to Maplewood Roadside Park', N'II', N'wa', 12117600, N'CEDAR RIVER BELOW DIVERSION NEAR LANDSBURG, WA (AW#4802)', 221)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Chehalis, W. Fork [WA]mile 3 to Chehalis River', N'III-IV', N'wa', 12020000, N'CHEHALIS RIVER NEAR DOTY, WA (AW#5777)', 222)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Chehalis [WA] 1 - West Fork to Pe Ell', N'III-IV', N'wa', 12020000, N'CHEHALIS RIVER NEAR DOTY, WA (AW#5777)', 223)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Chehalis [WA]2 - Pe Ell to Doty', N'II', N'wa', 12020000, N'CHEHALIS RIVER NEAR DOTY, WA (AW#5777)', 224)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Chehalis [WA]3 - Rainbow Falls to Meeskill', N'II', N'wa', 12020000, N'CHEHALIS RIVER NEAR DOTY, WA (AW#5777)', 225)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Chewuch [WA] 1. Andrews Camp to Camp Four (The Upper)', N'IV-V', N'wa', 12448000, N'CHEWUCH RIVER AT WINTHROP, WA (AW#4924)', 226)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Chewuch [WA] 2. Camp Four to Five Mile Bridge (The Middle)', N'II-III', N'wa', 12448000, N'CHEWUCH RIVER AT WINTHROP, WA (AW#4924)', 227)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Chewuch [WA] 3. Five Mile Bridge to Winthrop (The Lower)', N'II+(IV)', N'wa', 12448000, N'CHEWUCH RIVER AT WINTHROP, WA (AW#4924)', 228)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Chiwawa [WA] 1 - Schaefer Creek to Huckleberry Campground (near Brush Cre...', N'II', N'wa', 12456500, N'CHIWAWA RIVER NEAR PLAIN, WA (AW#6945)', 229)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Chiwawa [WA] 2 - Huckleberry Campground (near Brush Creek) to Wenatchee R...', N'III', N'wa', 12456500, N'CHIWAWA RIVER NEAR PLAIN, WA (AW#6945)', 230)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Cispus [WA] 1 - Goat Creek to FR 2160 (Super Slides)', N'V', N'wa', 14231900, N'CISPUS RIVER AB YELLOWJACKET CREEK NEAR RANDLE, WA (AW#5784)', 231)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Cispus [WA] 2 - Adams Fork to FR 23 Bridge (The Upper Upper)', N'V', N'wa', 14231900, N'CISPUS RIVER AB YELLOWJACKET CREEK NEAR RANDLE, WA (AW#5784)', 232)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Cispus [WA]3 - FR 23 Bridge to FR 28 Bridge (The Upper)', N'III+(IV)', N'wa', 14231900, N'CISPUS RIVER AB YELLOWJACKET CREEK NEAR RANDLE, WA (AW#5784)', 233)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Cispus [WA] 4 - Road 28 Bridge to Scanewa Reservoir (The Lower)', N'III', N'wa', 14231900, N'CISPUS RIVER AB YELLOWJACKET CREEK NEAR RANDLE, WA (AW#5784)', 234)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Clearwater (MF Nooksack trib.) [WA] to MF Nooksack', N'V', N'wa', 12208000, N'MF NOOKSACK RIVER NEAR DEMING, WA (AW#4845)', 235)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Cowlitz, Clear Fork [WA]Lava Creek to La Wis Wis Campground', N'V+', N'wa', 14226500, N'COWLITZ RIVER AT PACKWOOD, WA (AW#5127)', 236)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Cowlitz [WA]1. La Wis Wis Campground to Packwood', N'II', N'wa', 14226500, N'COWLITZ RIVER AT PACKWOOD, WA (AW#5127)', 237)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Cowlitz [WA] 3. salmon hatchery to Blue Creek access (The Lower)', N'I-II', N'wa', 14238000, N'COWLITZ RIVER BELOW MAYFIELD DAM, WA (AW#5131)', 238)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Deschutes [WA]Vail Loop Rd. to Military Rd.', N'II', N'wa', 12079000, N'DESCHUTES RIVER NEAR RAINIER, WA (AW#4763)', 239)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Duckabush [WA]2515 Bridge to Highway 101 at mouth', N'IV', N'wa', 12054000, N'DUCKABUSH RIVER NEAR BRINNON, WA (AW#37037)', 240)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Dungeness [WA] 1. Gold Creek to Dungeness Forks Campground', N'III-IV', N'wa', 12048000, N'DUNGENESS RIVER NEAR SEQUIM, WA (AW#4757)', 241)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Dungeness [WA] 2. Dungeness Forks Campground to hatchery', N'III', N'wa', 12048000, N'DUNGENESS RIVER NEAR SEQUIM, WA (AW#4757)', 242)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Duwamish [WA] King County Park behind Boeing', N'I-II', N'wa', 12113000, N'GREEN RIVER NEAR AUBURN, WA (AW#4791)', 243)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Elwha [WA] 2. Glines Canyon to Highway 101', N'II-III(IV)', N'wa', 12045500, N'ELWHA RIVER AT MCDONALD BR NEAR PORT ANGELES, WA (AW#4756)', 244)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Elwha [WA] 3. Highway 101 to river mouth (ocean surf)', N'II-III(IV)', N'wa', 12045500, N'ELWHA RIVER AT MCDONALD BR NEAR PORT ANGELES, WA (AW#4756)', 245)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Entiat [WA]1. Cottonwood Campground to FR 5605 (Cottonwood Section)', N'III-IV(V+)', N'wa', 12452800, N'ENTIAT RIVER NEAR ARDENVOIR, WA (AW#4929)', 246)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Entiat [WA]2. FR 5605 to Tommy Creek trailhead (Box Canyon)', N'III-IV(V+)', N'wa', 12452800, N'ENTIAT RIVER NEAR ARDENVOIR, WA (AW#4929)', 247)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Entiat [WA]3. Lake Creek Campground to National Forest boundary (Canyon...', N'IV+', N'wa', 12452800, N'ENTIAT RIVER NEAR ARDENVOIR, WA (AW#4929)', 248)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Entiat [WA]4. Ardenvoir to Columbia River (Lower)', N'II+', N'wa', 12452800, N'ENTIAT RIVER NEAR ARDENVOIR, WA (AW#4929)', 249)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Granite Creek [WA]2. Beebe Creek to Panther Creek (includes Ruby Creek)', N'IV', N'wa', 12449950, N'METHOW RIVER NEAR PATEROS, WA (AW#4927)', 250)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Grays River [WA]S. Fork Grays to Hwy. 4', N'IV+', N'wa', 12010000, N'NASELLE RIVER NEAR NASELLE, WA (AW#4740)', 251)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Green [WA] 1 - Headworks to Kanaskat-Palmer State Park', N'II+(III)', N'wa', 12106700, N'GREEN RIVER AT PURIFICATION PLANT NEAR PALMER, WA (AW#4789)', 252)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Green [WA] 2 - Green River Gorge', N'III-IV', N'wa', 12106700, N'GREEN RIVER AT PURIFICATION PLANT NEAR PALMER, WA (AW#4789)', 253)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Green [WA] 3 - Flaming Geyser State Park to 212 Way SE Bridge (Yo-Yo)', N'II', N'wa', 12113000, N'GREEN RIVER NEAR AUBURN, WA (AW#4791)', 254)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Greenwater [WA]FR 7030 Bridge to Highway 410 (town of Greenwater)', N'II(IV)', N'wa', 12097500, N'GREENWATER RIVER AT GREENWATER, WA (AW#4777)', 255)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Hangman (Latah) Creek [WA]1. Upper', N'II-III+(IV)', N'wa', 12424000, N'HANGMAN CREEK AT SPOKANE, WA (AW#4915)', 256)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Hangman (Latah) Creek [WA]2. Lower', N'II+', N'wa', 12424000, N'HANGMAN CREEK AT SPOKANE, WA (AW#4915)', 257)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Hoh [WA]Ranger Station to Hwy 101 at Oxbow', N'II', N'wa', 12041200, N'HOH RIVER AT US HIGHWAY 101 NEAR FORKS, WA (AW#4755)', 258)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Hoko [WA] Hoko Falls Run', N'I-II(IV)', N'wa', 12043300, N'HOKO RIVER NEAR SEKIU, WA (AW#5862)', 259)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Humptulips, E. Fork [WA]1 - FR 2206 access to FR 22 Bridge (Narrows Run)', N'III', N'wa', 12039005, N'HUMPTULIPS RIVER BELOW HWY 101 NR HUMPTULIPS, WA (AW#8185)', 260)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Humptulips, E. Fork [WA]2 - FR 22 Bridge to Gorge (Falls Section)', N'III', N'wa', 12039005, N'HUMPTULIPS RIVER BELOW HWY 101 NR HUMPTULIPS, WA (AW#8185)', 261)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Humptulips, E. Fork [WA]3 - Gorge Run downstream to Boise Bridge', N'III', N'wa', 12039005, N'HUMPTULIPS RIVER BELOW HWY 101 NR HUMPTULIPS, WA (AW#8185)', 262)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Humptulips, W. Fork [WA]1 - FR 2204 bridge to FR 2203 access (Gorge)', N'IV+', N'wa', 12039005, N'HUMPTULIPS RIVER BELOW HWY 101 NR HUMPTULIPS, WA (AW#8185)', 263)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Humptulips, W. Fork [WA] 2 - FR 2203 access to Donkey Creek Rd. (FR 22)', N'II', N'wa', 12039005, N'HUMPTULIPS RIVER BELOW HWY 101 NR HUMPTULIPS, WA (AW#8185)', 264)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Klickitat [WA]1 - Yakama Reservation to Leidl Campground', N'III+', N'wa', 14113000, N'KLICKITAT RIVER NEAR PITT, WA (AW#5074)', 265)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Klickitat [WA]2 - Leidl Campground to Klickitat Springs', N'II', N'wa', 14113000, N'KLICKITAT RIVER NEAR PITT, WA (AW#5074)', 266)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Klickitat [WA]3 - Klickitat Springs to Fishing Access', N'II-III', N'wa', 14113000, N'KLICKITAT RIVER NEAR PITT, WA (AW#5074)', 267)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Klickitat [WA]4 - Fishing Access on Highway 142 to Columbia River (Lyle Go...', N'V+', N'wa', 14113000, N'KLICKITAT RIVER NEAR PITT, WA (AW#5074)', 268)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Lewis, E. Fork [WA]1 - Green Fork to Sunset Falls (Upper)', N'III-IV(V)', N'wa', 14222500, N'EAST FORK LEWIS RIVER NEAR HEISSON, WA (AW#5126)', 269)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Lewis, E. Fork [WA] 2 - Sunset Falls to bl. Horshoe Falls (Falls Section)', N'IV', N'wa', 14222500, N'EAST FORK LEWIS RIVER NEAR HEISSON, WA (AW#5126)', 270)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Lewis, E. Fork [WA]3 - Rock Creek to Moulton Falls Park', N'III-V', N'wa', 14222500, N'EAST FORK LEWIS RIVER NEAR HEISSON, WA (AW#5126)', 271)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Lewis, E. Fork [WA]4 - Moulton Falls to Lewisville Park (Hwy 503)', N'III+(V)', N'wa', 14222500, N'EAST FORK LEWIS RIVER NEAR HEISSON, WA (AW#5126)', 272)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Lewis, E. Fork [WA]5 - Lewisville Park (Hwy 503) to Daybreak Park', N'II', N'wa', 14222500, N'EAST FORK LEWIS RIVER NEAR HEISSON, WA (AW#5126)', 273)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Lewis, N. Fork [WA]1. Twin Falls to FR 88', N'II-III', N'wa', 14222500, N'EAST FORK LEWIS RIVER NEAR HEISSON, WA (AW#5126)', 274)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Lewis, N. Fork [WA]2. FR 88 to Quartz Creek (Upper)', N'IV(V)', N'wa', 14222500, N'EAST FORK LEWIS RIVER NEAR HEISSON, WA (AW#5126)', 275)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Lewis, N. Fork [WA]3. Quartz Creek to Cussed Hollow (The Falls)', N'V+', N'wa', 14216000, N'LEWIS RIVER ABOVE MUDDY RIVER NEAR COUGAR, WA (AW#35664)', 276)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Lewis, N. Fork [WA]4. Cussed Hollow to FR 9039 (Middle)', N'III-IV', N'wa', 14216000, N'LEWIS RIVER ABOVE MUDDY RIVER NEAR COUGAR, WA (AW#35664)', 277)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Lewis, N. Fork [WA] 5. FR 9039 to Swift Reservoir (Lower)', N'II-III', N'wa', 14216000, N'LEWIS RIVER ABOVE MUDDY RIVER NEAR COUGAR, WA (AW#35664)', 278)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Little Klickitat [WA]Olsen Road to Klickitat River', N'IV-V', N'wa', 14113000, N'KLICKITAT RIVER NEAR PITT, WA (AW#5074)', 279)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Mad [WA] 3.3 miles up Mad River to Entiat River', N'III-IV', N'wa', 12452890, N'MAD RIVER AT ARDENVOIR, WA (AW#37086)', 280)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Mashel [WA] Eatonville to Nisqually River confluence', N'II-IV', N'wa', 12087000, N'MASHEL RIVER NEAR LA GRANDE, WA (AW#37040)', 281)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Methow [WA] 1. River Bend Campground to Carlton', N'II(III)', N'wa', 12448500, N'METHOW RIVER AT WINTHROP, WA (AW#4925)', 282)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Methow [WA] 2. Carlton to McFarland Creek access', N'II', N'wa', 12449950, N'METHOW RIVER NEAR PATEROS, WA (AW#4927)', 283)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Methow [WA] 3. McFarland Creek access to Pateros (Black Canyon)', N'III', N'wa', 12449950, N'METHOW RIVER NEAR PATEROS, WA (AW#4927)', 284)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Mineral Creek, N. Fork [WA]Gale to Mineral Creek', N'IV(V)', N'wa', 12449950, N'METHOW RIVER NEAR PATEROS, WA (AW#4927)', 285)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Mineral Creek [WA]N. Fork to Alder Lake', N'II', N'wa', 12449950, N'METHOW RIVER NEAR PATEROS, WA (AW#4927)', 286)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Muddy [WA]FR 25 Bridge to Lewis, N. Fork', N'II-III(IV)', N'wa', 14216500, N'MUDDY RIVER BELOW CLEAR CREEK NEAR COUGAR, WA (AW#5124)', 287)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Nisqually [WA] 1 - La Grande Reservoir to Mashel River', N'V', N'wa', 12086000, N'NISQUALLY RIVER AT LA GRANDE DAM, WA (AW#36560)', 288)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Nisqually [WA] 2 - Mashel River to Mckenna', N'II', N'wa', 12089500, N'NISQUALLY RIVER AT MCKENNA, WA (AW#4768)', 289)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Nisqually [WA]3 - McKenna to Yelm Hydro Plant', N'II-III', N'wa', 12089500, N'NISQUALLY RIVER AT MCKENNA, WA (AW#4768)', 290)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Nooksack, Middle Fork [WA]Clearwater Creek to Heisters Creek', N'V', N'wa', 12208000, N'MF NOOKSACK RIVER NEAR DEMING, WA (AW#4845)', 291)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Nooksack, N. Fork [WA] 1 - Mt. Baker Wilderness to Nooksack Falls', N'V', N'wa', 12205000, N'NF NOOKSACK RIVER BL CASCADE CREEK NR GLACIER, WA (AW#4844)', 292)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Nooksack, N. Fork [WA] 2 - Nooksack Falls to Douglas Fir Campground', N'IV+', N'wa', 12205000, N'NF NOOKSACK RIVER BL CASCADE CREEK NR GLACIER, WA (AW#4844)', 293)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Nooksack, N. Fork [WA] 3 - Douglas Fir Campground to Mt. Baker Highway milepost 27', N'II-III', N'wa', 12205000, N'NF NOOKSACK RIVER BL CASCADE CREEK NR GLACIER, WA (AW#4844)', 294)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Nooksack, N. Fork [WA] 4 - Milepost 27 (Maple Falls) to South Fork Nooksack', N'II', N'wa', 12205000, N'NF NOOKSACK RIVER BL CASCADE CREEK NR GLACIER, WA (AW#4844)', 295)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Ohanapecosh [WA] Ohanapecosh Campground to La Wis Wis Campground', N'V', N'wa', 14226500, N'COWLITZ RIVER AT PACKWOOD, WA (AW#5127)', 296)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Palouse River [WA] 1. Hooper to Palouse Falls State Park', N'III+(V)', N'wa', 13351000, N'PALOUSE RIVER AT HOOPER, WA (AW#5061)', 297)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Palouse River [WA] 2. Palouse Falls State Park to Lyons Ferry State Park', N'II', N'wa', 13351000, N'PALOUSE RIVER AT HOOPER, WA (AW#5061)', 298)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Pilchuck River [WA]Road P-500 above Boulder Creek to Menzel Lake Road Bridge', N'III+(IV)', N'wa', 12155300, N'PILCHUCK RIVER NEAR SNOHOMISH, WA (AW#4825)', 299)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Puyallup [WA] 1 - Niesson Creek to Electron', N'V', N'wa', 12092000, N'PUYALLUP RIVER NEAR ELECTRON, WA (AW#4772)', 300)
GO
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Puyallup [WA]2 - Kapowsin Road Bridge to Highway 162', N'II', N'wa', 12101500, N'PUYALLUP RIVER AT PUYALLUP, WA (AW#4785)', 301)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Puyallup [WA]3 - McMillin to Puyallup', N'I-II', N'wa', 12101500, N'PUYALLUP RIVER AT PUYALLUP, WA (AW#4785)', 302)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Queets [WA] Queets Campground to Hartzell Launch', N'II', N'wa', 12040500, N'QUEETS RIVER NEAR CLEARWATER, WA (AW#4754)', 303)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Quinault [WA]2. Cannings Creek to South Shore Rd. access', N'II', N'wa', 12039500, N'QUINAULT RIVER AT QUINAULT LAKE, WA (AW#4753)', 304)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Raging [WA]Hwy 18 to Preston', N'III+', N'wa', 12145500, N'RAGING RIVER NEAR FALL CITY, WA (AW#4815)', 305)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Raging [WA]Preston to Fall City', N'III+', N'wa', 12145500, N'RAGING RIVER NEAR FALL CITY, WA (AW#4815)', 306)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Sauk, N. Fork [WA]Above North Fork Falls', N'IV+', N'wa', 12186000, N'SAUK RIVER AB WHITE CHUCK RIVER NR DARRINGTON, WA (AW#4836)', 307)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Sauk [WA] 1 - Bedal Campground to Whitechuck River (Upper)', N'II-III', N'wa', 12186000, N'SAUK RIVER AB WHITE CHUCK RIVER NR DARRINGTON, WA (AW#4836)', 308)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Sauk [WA] 3 - Darrington to Sauk River Park', N'II', N'wa', 12189500, N'SAUK RIVER NEAR SAUK, WA (AW#4837)', 309)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Similkameen [WA] Palmer Lake to Shankers Bend', N'I-II(III)', N'wa', 12442500, N'SIMILKAMEEN RIVER NEAR NIGHTHAWK, WA (AW#4920)', 310)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Sitkum [WA] Above Brandeberry Creek to Hyas Creek', N'II-V', N'wa', 12043000, N'CALAWAH RIVER NEAR FORKS, WA (AW#7497)', 311)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Skagit [WA] 1. Goodell Creek to Copper Creek', N'II-IV', N'wa', 12178000, N'SKAGIT RIVER AT NEWHALEM, WA (AW#4832)', 312)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Skagit [WA] 2. Copper Creek to Rockport', N'I-II', N'wa', 12181000, N'SKAGIT RIVER AT MARBLEMOUNT, WA (AW#4834)', 313)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Skokomish, N. Fork [WA]1. Seven Stream to Staircase', N'V+', N'wa', 12056500, N'NF SKOKOMISH R BL STAIRCASE RPDS NR HOODSPORT, WA (AW#4758)', 314)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Skokomish, N. Fork [WA]2. Staircase to Lake Cushman', N'II-III', N'wa', 12056500, N'NF SKOKOMISH R BL STAIRCASE RPDS NR HOODSPORT, WA (AW#4758)', 315)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Skokomish, S. Fork [WA]Browns Creek to Vance Creek (Gorge Run)', N'IV-V', N'wa', 12060500, N'SOUTH FORK SKOKOMISH RIVER NEAR UNION, WA (AW#4761)', 316)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Skykomish, N. Fork [WA]1. Jackson Wilderness to Bear Creek', N'II-V', N'wa', 12060500, N'SOUTH FORK SKOKOMISH RIVER NEAR UNION, WA (AW#4761)', 317)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Skykomish, N. Fork [WA] 2. Bear Creek (Drumbeater) to South Fork confluence', N'IV', N'wa', 12060500, N'SOUTH FORK SKOKOMISH RIVER NEAR UNION, WA (AW#4761)', 318)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Skykomish, S. Fork [WA]1. Beckler River to bridge above Baring', N'II', N'wa', 12131500, N'SOUTH FORK SKYKOMISH RIVER AT SKYKOMISH, WA (AW#198424)', 319)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Skykomish, S. Fork [WA] 2. Baring to Sunset Falls', N'II(V+)', N'wa', 12131500, N'SOUTH FORK SKYKOMISH RIVER AT SKYKOMISH, WA (AW#198424)', 320)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Skykomish [WA] 1 - Index (Sunset Falls) to Railroad Bridge', N'III+(IV)', N'wa', 12134500, N'SKYKOMISH RIVER NEAR GOLD BAR, WA (AW#4806)', 321)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Skykomish [WA]2 - Railroad Bridge to Big Eddy', N'II', N'wa', 12134500, N'SKYKOMISH RIVER NEAR GOLD BAR, WA (AW#4806)', 322)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Skykomish [WA]3 - Big Eddy to Monroe', N'I-II', N'wa', 12134500, N'SKYKOMISH RIVER NEAR GOLD BAR, WA (AW#4806)', 323)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Snake [WA] J) Pittsburg Landing (or Salmon) to Heller Bar', N'II', N'or', 13290450, N'SNAKE RIVER AT HELLS CANYON DAM ID-OR STATE LINE (AW#5032)', 324)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Snake [WA] K. Heller Bar to Clearwater (Lewiston/Clarkston)', N'I-II', N'or', 13290450, N'SNAKE RIVER AT HELLS CANYON DAM ID-OR STATE LINE (AW#5032)', 325)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Snoqualmie, Middle Fork [WA]1 - Hardscrabble Creek to Burnboot Creek', N'V', N'wa', 12141300, N'MIDDLE FORK SNOQUALMIE RIVER NEAR TANNER, WA (AW#4810)', 326)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Snoqualmie, Middle Fork [WA]2 - Burnboot Creek to Taylor River', N'II-III(IV)', N'wa', 12141300, N'MIDDLE FORK SNOQUALMIE RIVER NEAR TANNER, WA (AW#4810)', 327)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Snoqualmie, Middle Fork [WA] 3 - Taylor River to Concrete bridge (Upper)', N'II', N'wa', 12141300, N'MIDDLE FORK SNOQUALMIE RIVER NEAR TANNER, WA (AW#4810)', 328)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Snoqualmie, Middle Fork [WA] 4 - Concrete bridge to Tanner (Middle-Middle)', N'III-IV', N'wa', 12141300, N'MIDDLE FORK SNOQUALMIE RIVER NEAR TANNER, WA (AW#4810)', 329)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Snoqualmie, Middle Fork [WA]5 - Tanner to North Bend (The Club Stretch)', N'II', N'wa', 12141300, N'MIDDLE FORK SNOQUALMIE RIVER NEAR TANNER, WA (AW#4810)', 330)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Snoqualmie, N. Fork [WA]1. Big Creek to Spur 10 Bridge (Upper)', N'III', N'wa', 12142000, N'NF SNOQUALMIE RIVER NEAR SNOQUALMIE FALLS, WA (AW#4811)', 331)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Snoqualmie, N. Fork [WA]2. Spur 10 Bridge to 428th St. Bridge (Ernie''s Gorge)', N'V+', N'wa', 12142000, N'NF SNOQUALMIE RIVER NEAR SNOQUALMIE FALLS, WA (AW#4811)', 332)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Snoqualmie, S. Fork [WA] 1. I-90 Exit 52 to Denny Creek Campground (Fall in the Wall)', N'IV-V', N'wa', 12143400, N'SF SNOQUALMIE RIVER AB ALICE CREEK NEAR GARCIA, WA (AW#4812)', 333)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Snoqualmie, S. Fork [WA] 2. Twin Falls State Park to 436th St. Bridge', N'II+', N'wa', 12143400, N'SF SNOQUALMIE RIVER AB ALICE CREEK NEAR GARCIA, WA (AW#4812)', 334)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Snoqualmie [WA] Snoqualmie Falls to Plum''s Landing (Powerhouse)', N'II+', N'wa', 12144500, N'SNOQUALMIE RIVER NEAR SNOQUALMIE, WA (AW#4814)', 335)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'South Praire Creek [WA]1. E. Fork to Spiketon Rd. (Upper)', N'V', N'wa', 12095000, N'SOUTH PRAIRIE CREEK AT SOUTH PRAIRIE, WA (AW#4775)', 336)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'South Prairie Creek [WA]2. Lower Burnett to above Carbon River (Lower)', N'II+', N'wa', 12095000, N'SOUTH PRAIRIE CREEK AT SOUTH PRAIRIE, WA (AW#4775)', 337)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Spokane [WA]1. Dead Dog Park and Play', N'II(III)', N'wa', 12422500, N'SPOKANE RIVER AT SPOKANE, WA (AW#4914)', 338)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Spokane [WA]2. Harvard Park to Mirabeau Park (Upper)', N'II', N'wa', 12422500, N'SPOKANE RIVER AT SPOKANE, WA (AW#4914)', 339)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Spokane [WA] 3. T.J. Menach Bridge in Spokane to Plese Flats (Lower)', N'II-III+', N'wa', 12422500, N'SPOKANE RIVER AT SPOKANE, WA (AW#4914)', 340)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Stehekin [WA] Agnes Creek to Lake Chelan', N'II(IV)', N'wa', 12451000, N'STEHEKIN RIVER AT STEHEKIN, WA (AW#4928)', 341)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Stillaguamish, N. Fork [WA] 2. Moose Creek to Oso', N'II', N'wa', 12167000, N'NF STILLAGUAMISH RIVER NEAR ARLINGTON, WA (AW#4827)', 342)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Stillaguamish, S. Fork [WA]1 - Deer Creek to Mallardy Creek (Upper)', N'II', N'wa', 12161000, N'SF STILLAGUAMISH RIVER NEAR GRANITE FALLS, WA (AW#4826)', 343)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Stillaguamish, S. Fork [WA] 2 - Mallardy Creek to Verlot (Middle)', N'III+', N'wa', 12161000, N'SF STILLAGUAMISH RIVER NEAR GRANITE FALLS, WA (AW#4826)', 344)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Stillaguamish, S. Fork [WA] 3 - Verlot to Granite Falls (Robe Canyon Run)', N'V', N'wa', 12161000, N'SF STILLAGUAMISH RIVER NEAR GRANITE FALLS, WA (AW#4826)', 345)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Stillaguamish, S. Fork [WA]4 - Granite Falls to Jordan (Lower)', N'II', N'wa', 12161000, N'SF STILLAGUAMISH RIVER NEAR GRANITE FALLS, WA (AW#4826)', 346)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Suiattle [WA] 1. Sulphur Creek to Rat Trap (FR 25) Bridge', N'III+', N'wa', 12188380, N'SUIATTLE RIVER ABOVE ALL CREEK NR DARRINGTON, WA (AW#53096)', 347)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Suiattle [WA] 2. Rat Trap (FR 25) Bridge to Sauk River', N'II-III', N'wa', 12188380, N'SUIATTLE RIVER ABOVE ALL CREEK NR DARRINGTON, WA (AW#53096)', 348)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Sultan [WA] 1. Spada Reservoir to Powerhouse (The Upper)', N'III-IV+', N'wa', 12137800, N'SULTAN RIVER BELOW DIVERSION DAM NEAR SULTAN, WA (AW#4808)', 349)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Sultan [WA]2. Powerhouse to Fishing Access', N'III-IV+', N'wa', 12138160, N'SULTAN RIVER BELOW POWERPLANT NEAR SULTAN, WA (AW#4809)', 350)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Thunder Creek [WA] Trail mile 4.1 to Colonial creek campground', N'IV-V', N'wa', 12175500, N'THUNDER CREEK NEAR NEWHALEM, WA (AW#4829)', 351)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Tilton [WA]1. Morton to Bremer (Upper)', N'II-III', N'wa', 14236200, N'TILTON RIVER AB BEAR CANYON CREEK NEAR CINEBAR, WA (AW#5130)', 352)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Tilton [WA] 2. Bremer to Ike Kinswa State Park (Lower)', N'III-IV', N'wa', 14236200, N'TILTON RIVER AB BEAR CANYON CREEK NEAR CINEBAR, WA (AW#5130)', 353)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Tolt, S. Fork [WA]Bridge to confluence with N. Fork Tolt', N'V', N'wa', 12148300, N'SF TOLT RIVER BL REGULATING BASIN NR CARNATION, WA (AW#4820)', 354)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Tolt [WA]Tolt River Road nr. Carnation to Snoqualmie River', N'II', N'wa', 12148500, N'TOLT RIVER NEAR CARNATION, WA (AW#4821)', 355)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Toutle [WA]Highway 504 Bridge to Tower Rd. Bridge', N'III+(IV)', N'wa', 14242580, N'TOUTLE RIVER AT TOWER ROAD NEAR SILVER LAKE, WA (AW#6391)', 356)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Vance Creek [WA]trail off FS 2350 to Vance Creek Bridge (FS 2341)', N'IV', N'wa', 12060500, N'SOUTH FORK SKOKOMISH RIVER NEAR UNION, WA (AW#4761)', 357)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Wenatchee [WA] 1. Lake Wenatchee State Park to Tumwater Campground', N'II', N'wa', 12457000, N'WENATCHEE RIVER AT PLAIN, WA (AW#4930)', 358)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Wenatchee [WA]2. Tumwater Campground to Leavenworth (Tumwater Canyon)', N'V', N'wa', 12459000, N'WENATCHEE RIVER AT PESHASTIN, WA (AW#4931)', 359)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Wenatchee [WA] 3. Leavenworth to Monitor', N'III', N'wa', 12459000, N'WENATCHEE RIVER AT PESHASTIN, WA (AW#4931)', 360)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'White Salmon [WA] 2 - Trout Lake to Green Truss Bridge (Farmlands)', N'IV-V', N'wa', 14123500, N'WHITE SALMON RIVER NEAR UNDERWOOD, WA (AW#5076)', 361)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'White Salmon [WA] 4 - BZ Corner to Buck Creek', N'III+(V)', N'wa', 14123500, N'WHITE SALMON RIVER NEAR UNDERWOOD, WA (AW#5076)', 362)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'White Salmon [WA] 5 - Buck Creek to Columbia River (Lower Gorge)', N'II-III+(V)', N'wa', 14123500, N'WHITE SALMON RIVER NEAR UNDERWOOD, WA (AW#5076)', 363)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'White [WA] 2. West Fork to Bridge Camp (Middle)', N'III', N'wa', 12097850, N'WHITE RIVER BELOW CLEARWATER RIVER NR BUCKLEY, WA (AW#44323)', 364)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'White [WA]3. Buckley to Auburn (Lower)', N'II', N'wa', 12100490, N'WHITE RIVER AT R STREET NEAR AUBURN, WA (AW#49094)', 365)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Wynoochee [WA]Wynoochee Reservoir to Save Creek', N'II-III(V)', N'wa', 12035400, N'WYNOOCHEE RIVER NEAR GRISDALE, WA (AW#4750)', 366)
INSERT [dbo].[RiverRuns] ([river_section], [riverClass], [state], [gauge_id], [name], [id]) VALUES (N'Yakima [WA] Confluence with Teanaway River to Thorp', N'II', N'wa', 12484500, N'YAKIMA RIVER AT UMTANUM, WA (AW#4936)', 367)
SET IDENTITY_INSERT [dbo].[RiverRuns] OFF
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
