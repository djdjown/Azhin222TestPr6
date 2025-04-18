USE [master]
GO
/****** Object:  Database [AptekaAzhin222]    Script Date: 24.03.2025 18:50:31 ******/
CREATE DATABASE [AptekaAzhin222]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AptekaAzhin322', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AptekaAzhin322.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AptekaAzhin322_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AptekaAzhin322_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AptekaAzhin222] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AptekaAzhin222].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AptekaAzhin222] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET ARITHABORT OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AptekaAzhin222] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AptekaAzhin222] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AptekaAzhin222] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AptekaAzhin222] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET RECOVERY FULL 
GO
ALTER DATABASE [AptekaAzhin222] SET  MULTI_USER 
GO
ALTER DATABASE [AptekaAzhin222] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AptekaAzhin222] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AptekaAzhin222] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AptekaAzhin222] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AptekaAzhin222] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AptekaAzhin222] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AptekaAzhin222', N'ON'
GO
ALTER DATABASE [AptekaAzhin222] SET QUERY_STORE = ON
GO
ALTER DATABASE [AptekaAzhin222] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AptekaAzhin222]
GO
/****** Object:  User [urec2]    Script Date: 24.03.2025 18:50:31 ******/
CREATE USER [urec2] FOR LOGIN [urec2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 24.03.2025 18:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заказ]    Script Date: 24.03.2025 18:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заказ](
	[ID_Заказа] [int] NOT NULL,
	[Дата_заказа] [date] NULL,
	[Статус] [varchar](50) NULL,
	[ID_Клиента] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Заказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Закупка]    Script Date: 24.03.2025 18:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Закупка](
	[ID_Закупки] [int] NOT NULL,
	[ID_Поставщика] [int] NULL,
	[Дата_закупки] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Закупки] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Закупленные_препараты]    Script Date: 24.03.2025 18:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Закупленные_препараты](
	[ID_Закупки] [int] NOT NULL,
	[ID_Партии] [int] NOT NULL,
	[Количество] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Закупки] ASC,
	[ID_Партии] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Инвентаризация]    Script Date: 24.03.2025 18:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Инвентаризация](
	[ID_Инвентаризации] [int] NOT NULL,
	[ID_Склада] [int] NULL,
	[Дата] [date] NULL,
	[ID_Сотрудника] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Инвентаризации] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиент]    Script Date: 24.03.2025 18:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиент](
	[ID_Клиента] [int] NOT NULL,
	[Имя] [varchar](50) NULL,
	[Фамилия] [varchar](50) NULL,
	[Контактные_данные] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Клиента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Местоположение_на_складе]    Script Date: 24.03.2025 18:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Местоположение_на_складе](
	[ID_Местоположения] [int] NOT NULL,
	[ID_Склада] [int] NULL,
	[Номер_полки] [int] NULL,
	[Номер_ячейки] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Местоположения] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Партия]    Script Date: 24.03.2025 18:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Партия](
	[ID_Партии] [int] NOT NULL,
	[Дата_производства] [date] NULL,
	[Количество] [int] NULL,
	[ID_Препарата] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Партии] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Поставщик]    Script Date: 24.03.2025 18:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Поставщик](
	[ID_Поставщика] [int] NOT NULL,
	[Наименование] [varchar](100) NULL,
	[Контактные_данные] [varchar](50) NULL,
	[Адрес] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Поставщика] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Препарат]    Script Date: 24.03.2025 18:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Препарат](
	[ID_Препарата] [int] NOT NULL,
	[Наименование] [varchar](100) NULL,
	[Состав] [varchar](255) NULL,
	[Производитель] [varchar](100) NULL,
	[Срок_годности] [date] NULL,
	[Цена] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Препарата] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Склад]    Script Date: 24.03.2025 18:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Склад](
	[ID_Склада] [int] NOT NULL,
	[Название] [varchar](100) NULL,
	[Локация] [varchar](100) NULL,
	[Ответственное_лицо] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Склада] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудник]    Script Date: 24.03.2025 18:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудник](
	[ID_Сотрудника] [int] NOT NULL,
	[Имя] [varchar](50) NULL,
	[Фамилия] [varchar](50) NULL,
	[Должность] [varchar](50) NULL,
	[Контактные_данные] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Сотрудника] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Товары_в_заказе]    Script Date: 24.03.2025 18:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Товары_в_заказе](
	[ID_Заказа] [int] NOT NULL,
	[ID_Препарата] [int] NOT NULL,
	[Количество] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Заказа] ASC,
	[ID_Препарата] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Хранение]    Script Date: 24.03.2025 18:50:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Хранение](
	[ID_Препарата] [int] NOT NULL,
	[ID_Местоположения] [int] NOT NULL,
	[Количество] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Препарата] ASC,
	[ID_Местоположения] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Препарат] ADD  DEFAULT ((0)) FOR [Цена]
GO
ALTER TABLE [dbo].[Заказ]  WITH CHECK ADD FOREIGN KEY([ID_Клиента])
REFERENCES [dbo].[Клиент] ([ID_Клиента])
GO
ALTER TABLE [dbo].[Закупка]  WITH CHECK ADD FOREIGN KEY([ID_Поставщика])
REFERENCES [dbo].[Поставщик] ([ID_Поставщика])
GO
ALTER TABLE [dbo].[Закупленные_препараты]  WITH CHECK ADD FOREIGN KEY([ID_Закупки])
REFERENCES [dbo].[Закупка] ([ID_Закупки])
GO
ALTER TABLE [dbo].[Закупленные_препараты]  WITH CHECK ADD FOREIGN KEY([ID_Партии])
REFERENCES [dbo].[Партия] ([ID_Партии])
GO
ALTER TABLE [dbo].[Инвентаризация]  WITH CHECK ADD FOREIGN KEY([ID_Склада])
REFERENCES [dbo].[Склад] ([ID_Склада])
GO
ALTER TABLE [dbo].[Инвентаризация]  WITH CHECK ADD FOREIGN KEY([ID_Сотрудника])
REFERENCES [dbo].[Сотрудник] ([ID_Сотрудника])
GO
ALTER TABLE [dbo].[Местоположение_на_складе]  WITH CHECK ADD FOREIGN KEY([ID_Склада])
REFERENCES [dbo].[Склад] ([ID_Склада])
GO
ALTER TABLE [dbo].[Партия]  WITH CHECK ADD FOREIGN KEY([ID_Препарата])
REFERENCES [dbo].[Препарат] ([ID_Препарата])
GO
ALTER TABLE [dbo].[Товары_в_заказе]  WITH CHECK ADD FOREIGN KEY([ID_Заказа])
REFERENCES [dbo].[Заказ] ([ID_Заказа])
GO
ALTER TABLE [dbo].[Товары_в_заказе]  WITH CHECK ADD FOREIGN KEY([ID_Препарата])
REFERENCES [dbo].[Препарат] ([ID_Препарата])
GO
ALTER TABLE [dbo].[Хранение]  WITH CHECK ADD FOREIGN KEY([ID_Местоположения])
REFERENCES [dbo].[Местоположение_на_складе] ([ID_Местоположения])
GO
ALTER TABLE [dbo].[Хранение]  WITH CHECK ADD FOREIGN KEY([ID_Препарата])
REFERENCES [dbo].[Препарат] ([ID_Препарата])
GO
USE [master]
GO
ALTER DATABASE [AptekaAzhin222] SET  READ_WRITE 
GO
