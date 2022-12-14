CREATE DATABASE [ArtGallery]
go
USE [master]
GO
ALTER DATABASE [ArtGallery] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ArtGallery].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ArtGallery] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ArtGallery] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ArtGallery] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ArtGallery] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ArtGallery] SET ARITHABORT OFF 
GO
ALTER DATABASE [ArtGallery] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ArtGallery] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ArtGallery] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ArtGallery] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ArtGallery] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ArtGallery] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ArtGallery] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ArtGallery] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ArtGallery] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ArtGallery] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ArtGallery] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ArtGallery] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ArtGallery] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ArtGallery] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ArtGallery] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ArtGallery] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ArtGallery] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ArtGallery] SET RECOVERY FULL 
GO
ALTER DATABASE [ArtGallery] SET  MULTI_USER 
GO
ALTER DATABASE [ArtGallery] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ArtGallery] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ArtGallery] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ArtGallery] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ArtGallery] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ArtGallery', N'ON'
GO
USE [ArtGallery]
GO
/****** Object:  Table [dbo].[Art]    Script Date: 5/29/2020 9:16:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Art](
	[IDA] [int] IDENTITY(1,1) NOT NULL,
	[NameA] [nvarchar](max) NOT NULL,
	[WidthA] [int] NOT NULL,
	[HeightA] [int] NOT NULL,
	[DepthA] [int] NOT NULL,
	[MaterialA] [nvarchar](max) NOT NULL,
	[DaycreateA] [datetime] NOT NULL,
	[DescriptionA] [nvarchar](max) NOT NULL,
	[PriceA] [money] NOT NULL,
	[IDAT] [int] NOT NULL,
	[IDAS] [int] NOT NULL,
	[IDU] [int] NOT NULL,
	[IDC] [int] NOT NULL,
	[IDUC] [int] NULL,
	[FilePath] [nvarchar](max) NOT NULL,
	[FileSize] [int] NOT NULL,
	[StatusA] [bit] NOT NULL,
 CONSTRAINT [PK_Art] PRIMARY KEY CLUSTERED 
(
	[IDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Artstatus]    Script Date: 5/29/2020 9:16:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artstatus](
	[IDAS] [int] IDENTITY(1,1) NOT NULL,
	[NameAS] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Artstatus] PRIMARY KEY CLUSTERED 
(
	[IDAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Arttype]    Script Date: 5/29/2020 9:16:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arttype](
	[IDAT] [int] IDENTITY(1,1) NOT NULL,
	[NameAT] [nvarchar](max) NOT NULL,
	[StatusA] [bit] NOT NULL,
 CONSTRAINT [PK_Arttype] PRIMARY KEY CLUSTERED 
(
	[IDAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Auctionhistory]    Script Date: 5/29/2020 9:16:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auctionhistory](
	[IDAH] [int] IDENTITY(1,1) NOT NULL,
	[IDU] [int] NOT NULL,
	[IDA] [int] NOT NULL,
	[IDUA] [int] NOT NULL,
	[PriceAu] [money] NOT NULL,
 CONSTRAINT [PK_Auctionhistory] PRIMARY KEY CLUSTERED 
(
	[IDAH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cart]    Script Date: 5/29/2020 9:16:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[IDCA] [int] IDENTITY(1,1) NOT NULL,
	[IDU] [int] NOT NULL,
	[IDA] [int] NOT NULL,
	[StatusCA] [bit] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[IDCA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/29/2020 9:16:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IDC] [int] IDENTITY(1,1) NOT NULL,
	[NameC] [nvarchar](max) NOT NULL,
	[StatusC] [bit] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[IDC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transdetail]    Script Date: 5/29/2020 9:16:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transdetail](
	[IDTD] [int] IDENTITY(1,1) NOT NULL,
	[IDA] [int] NOT NULL,
	[IDTH] [int] NOT NULL,
 CONSTRAINT [PK_Transdetail] PRIMARY KEY CLUSTERED 
(
	[IDTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transhistory]    Script Date: 5/29/2020 9:16:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transhistory](
	[IDTH] [int] IDENTITY(1,1) NOT NULL,
	[DaycreateTH] [datetime] NOT NULL,
	[IDTS] [int] NOT NULL,
	[IDU] [int] NOT NULL,
	[Total] [money] NOT NULL,
 CONSTRAINT [PK_Transhistory] PRIMARY KEY CLUSTERED 
(
	[IDTH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transstatus]    Script Date: 5/29/2020 9:16:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transstatus](
	[IDTS] [int] IDENTITY(1,1) NOT NULL,
	[NameTS] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Transstatus] PRIMARY KEY CLUSTERED 
(
	[IDTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usercategory]    Script Date: 5/29/2020 9:16:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usercategory](
	[IDUC] [int] IDENTITY(1,1) NOT NULL,
	[NameUC] [nvarchar](max) NOT NULL,
	[DaycreateUC] [datetime] NOT NULL,
	[PriceUC] [money] NOT NULL,
	[StatusUC] [bit] NOT NULL,
	[IDU] [int] NOT NULL,
 CONSTRAINT [PK_Usercategory] PRIMARY KEY CLUSTERED 
(
	[IDUC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/29/2020 9:16:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IDU] [int] IDENTITY(1,1) NOT NULL,
	[FirstnameU] [nvarchar](max) NOT NULL,
	[LastnameU] [nvarchar](max) NOT NULL,
	[AddressU] [nvarchar](max) NOT NULL,
	[PhoneU] [nvarchar](max) NOT NULL,
	[EmailU] [nvarchar](max) NOT NULL,
	[DofbU] [date] NOT NULL,
	[SexU] [bit] NOT NULL,
	[UsernameU] [nvarchar](max) NOT NULL,
	[PasswordU] [nvarchar](max) NOT NULL,
	[DaycreateU] [datetime] NOT NULL CONSTRAINT [DF_Users_DaycreateU]  DEFAULT (getdate()),
	[IDUT] [int] NOT NULL,
	[StatusU] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[IDU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usertype]    Script Date: 5/29/2020 9:16:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usertype](
	[IDUT] [int] IDENTITY(1,1) NOT NULL,
	[NameUT] [nvarchar](max) NOT NULL,
	[StatusUT] [bit] NOT NULL,
 CONSTRAINT [PK_Usertype] PRIMARY KEY CLUSTERED 
(
	[IDUT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Art] ADD  CONSTRAINT [DF_Art_DaycreateA]  DEFAULT (getdate()) FOR [DaycreateA]
GO
ALTER TABLE [dbo].[Transhistory] ADD  CONSTRAINT [DF_Transhistory_DaycreateTH]  DEFAULT (getdate()) FOR [DaycreateTH]
GO
ALTER TABLE [dbo].[Usercategory] ADD  CONSTRAINT [DF_Usercategory_DaycreateUC]  DEFAULT (getdate()) FOR [DaycreateUC]
GO
ALTER TABLE [dbo].[Art]  WITH CHECK ADD  CONSTRAINT [FK_Art_Artstatus] FOREIGN KEY([IDAS])
REFERENCES [dbo].[Artstatus] ([IDAS])
GO
ALTER TABLE [dbo].[Art] CHECK CONSTRAINT [FK_Art_Artstatus]
GO
ALTER TABLE [dbo].[Art]  WITH CHECK ADD  CONSTRAINT [FK_Art_Arttype] FOREIGN KEY([IDAT])
REFERENCES [dbo].[Arttype] ([IDAT])
GO
ALTER TABLE [dbo].[Art] CHECK CONSTRAINT [FK_Art_Arttype]
GO
ALTER TABLE [dbo].[Art]  WITH CHECK ADD  CONSTRAINT [FK_Art_Category] FOREIGN KEY([IDC])
REFERENCES [dbo].[Category] ([IDC])
GO
ALTER TABLE [dbo].[Art] CHECK CONSTRAINT [FK_Art_Category]
GO
ALTER TABLE [dbo].[Art]  WITH CHECK ADD  CONSTRAINT [FK_Art_Usercategory] FOREIGN KEY([IDUC])
REFERENCES [dbo].[Usercategory] ([IDUC])
GO
ALTER TABLE [dbo].[Art] CHECK CONSTRAINT [FK_Art_Usercategory]
GO
ALTER TABLE [dbo].[Art]  WITH CHECK ADD  CONSTRAINT [FK_Art_Users] FOREIGN KEY([IDU])
REFERENCES [dbo].[Users] ([IDU])
GO
ALTER TABLE [dbo].[Art] CHECK CONSTRAINT [FK_Art_Users]
GO
ALTER TABLE [dbo].[Auctionhistory]  WITH CHECK ADD  CONSTRAINT [FK_Auctionhistory_Art] FOREIGN KEY([IDA])
REFERENCES [dbo].[Art] ([IDA])
GO
ALTER TABLE [dbo].[Auctionhistory] CHECK CONSTRAINT [FK_Auctionhistory_Art]
GO
ALTER TABLE [dbo].[Auctionhistory]  WITH CHECK ADD  CONSTRAINT [FK_Auctionhistory_Users] FOREIGN KEY([IDU])
REFERENCES [dbo].[Users] ([IDU])
GO
ALTER TABLE [dbo].[Auctionhistory] CHECK CONSTRAINT [FK_Auctionhistory_Users]
GO
ALTER TABLE [dbo].[Auctionhistory]  WITH CHECK ADD  CONSTRAINT [FK_Auctionhistory_Users1] FOREIGN KEY([IDUA])
REFERENCES [dbo].[Users] ([IDU])
GO
ALTER TABLE [dbo].[Auctionhistory] CHECK CONSTRAINT [FK_Auctionhistory_Users1]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Art] FOREIGN KEY([IDA])
REFERENCES [dbo].[Art] ([IDA])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Art]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Users] FOREIGN KEY([IDU])
REFERENCES [dbo].[Users] ([IDU])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Users]
GO
ALTER TABLE [dbo].[Transdetail]  WITH CHECK ADD  CONSTRAINT [FK_Transdetail_Art] FOREIGN KEY([IDA])
REFERENCES [dbo].[Art] ([IDA])
GO
ALTER TABLE [dbo].[Transdetail] CHECK CONSTRAINT [FK_Transdetail_Art]
GO
ALTER TABLE [dbo].[Transdetail]  WITH CHECK ADD  CONSTRAINT [FK_Transdetail_Transhistory] FOREIGN KEY([IDTH])
REFERENCES [dbo].[Transhistory] ([IDTH])
GO
ALTER TABLE [dbo].[Transdetail] CHECK CONSTRAINT [FK_Transdetail_Transhistory]
GO
ALTER TABLE [dbo].[Transhistory]  WITH CHECK ADD  CONSTRAINT [FK_Transhistory_Transstatus] FOREIGN KEY([IDTS])
REFERENCES [dbo].[Transstatus] ([IDTS])
GO
ALTER TABLE [dbo].[Transhistory] CHECK CONSTRAINT [FK_Transhistory_Transstatus]
GO
ALTER TABLE [dbo].[Transhistory]  WITH CHECK ADD  CONSTRAINT [FK_Transhistory_Users] FOREIGN KEY([IDU])
REFERENCES [dbo].[Users] ([IDU])
GO
ALTER TABLE [dbo].[Transhistory] CHECK CONSTRAINT [FK_Transhistory_Users]
GO
ALTER TABLE [dbo].[Usercategory]  WITH CHECK ADD  CONSTRAINT [FK_Usercategory_Users] FOREIGN KEY([IDU])
REFERENCES [dbo].[Users] ([IDU])
GO
ALTER TABLE [dbo].[Usercategory] CHECK CONSTRAINT [FK_Usercategory_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Usertype] FOREIGN KEY([IDUT])
REFERENCES [dbo].[Usertype] ([IDUT])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Usertype]
GO
USE [master]
GO
ALTER DATABASE [ArtGallery] SET  READ_WRITE 
GO
