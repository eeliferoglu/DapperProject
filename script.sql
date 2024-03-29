USE [master]
GO
/****** Object:  Database [DbLibrary]    Script Date: 2.10.2023 19:09:19 ******/
CREATE DATABASE [DbLibrary]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbLibrary', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DbLibrary.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbLibrary_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DbLibrary_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DbLibrary] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbLibrary].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbLibrary] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbLibrary] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbLibrary] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbLibrary] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbLibrary] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbLibrary] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DbLibrary] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbLibrary] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbLibrary] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbLibrary] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbLibrary] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbLibrary] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbLibrary] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbLibrary] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbLibrary] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DbLibrary] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbLibrary] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbLibrary] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbLibrary] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbLibrary] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbLibrary] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbLibrary] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbLibrary] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DbLibrary] SET  MULTI_USER 
GO
ALTER DATABASE [DbLibrary] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbLibrary] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbLibrary] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbLibrary] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbLibrary] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbLibrary] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DbLibrary] SET QUERY_STORE = OFF
GO
USE [DbLibrary]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 2.10.2023 19:09:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[CategoryId] [int] NULL,
	[Stock] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[Author] [varchar](255) NULL,
	[Description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2.10.2023 19:09:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (1, N'Ressamın İsyanı', 16, 25, CAST(89.00 AS Decimal(18, 2)), N'Gündüz Vassaf', N'Ressamın İsyanı, 16. yüzyıl resmine yeni bir yön vererek sanat tarihine damgasını vuran Caravaggio’dan yola çıkan bir arayış ve aşk hikâyesi. Romanın ana karakteri, “Azize Lucia’nın Gömülüşü” resmiyle büyülenir ve kendini Caravaggio’nun hayat hikâyesine kaptırır;  ülke ülke,  tablo tablo gezerek yanıtların peşine düşer')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (2, N'Agatha Christie - Hayatın Ortasında Ölümün İçindeyiz', 16, 35, CAST(89.00 AS Decimal(18, 2)), N'Ayşe Ayhan', N'Dünyada İncil’den ve Shakespeare’in eserlerinden sonra kitapları en çok satan yazar unvanını elinde bulunduran polisiye yazarı Agatha Christie, sadece yazdıklarıyla değil, yazmadıklarıyla ve gizemleriyle hâlâ pek çok araştırmacının ilgi odağında yer alıyor.')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (3, N'Yarın Yok', 15, 38, CAST(86.00 AS Decimal(18, 2)), N'Ayşe Kulin', N'Ayşe Kulin Yarın Yok romanında, her zamanki ustalıklı ve sürükleyici üslubuyla bizi bu kez bambaşka bir zamana götürüyor. Günümüzden yüzlerce yıl sonra, Dünya’dayız. Aradan geçen zamanda gezegenimiz bütün doğal kaynaklarını tüketmiş, takvimi sıfırlayan felaket bir savaş yaşamış, hayatta kalan bir avuç insanın özverisiyle nihayet kalıcı bir barışa kavuşmuştur; ancak şimdi yine bir tehlikeyle karşı karşıyadır.')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (4, N'Katil 2419', 15, 90, CAST(100.00 AS Decimal(18, 2)), N'Abdurrahman Yücesoy ', N'“Bugün yazılmış bir kitap, insanlığın bundan yaklaşık 400 yıl sonraki yaşayacağı öngörülen bu kaçınılmaz sona nasıl bir etkide bulunabilir?”')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (5, N'
Bavula Sığmayan', 14, 55, CAST(120.00 AS Decimal(18, 2)), N'Nermin Yıldırım', N'Başımı göğe kaldırıyorum, Şimal Yıldızı’nı arıyor gözlerim. O kayıp. Bense birilerinin giderken ardında bıraktığı çığlık gibi hayattayım.')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (6, N'Başarıyı Anlamak', 13, 48, CAST(100.00 AS Decimal(18, 2)), N'Mustafa Yavuz', N'Konuşulması cazibeli bir konu olduğundan olabilir. Kulağımız başarı üzerine söylenen sözler ve okunan yazılarla dolu. Bu konuda herkesin söyleyecek sözü var. Ancak bu sözlerden çok azı bilerek söyleniyor. Aristoteles “İnsan bilmek ister.” derken yanılıyor olabilir mi? Konunun neresinden baktığımıza bağlı olarak farklı değerlendirmeler yapabiliriz. ')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (7, N'Kuşların Göğü Önünde', 12, 45, CAST(89.00 AS Decimal(18, 2)), N'Haydar Ergülen', N'Kuşların göğü önünde ışıkla yıkandık

Su güneşle yıkandı ve üzüm güzle

Ben bekleyişinle yıkandım senin

Ay oradaydı

Sen bana kuşlardan daha maviydin')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (8, N'Düş Peşime', 11, 45, CAST(78.00 AS Decimal(18, 2)), N'Sage Taylors', N'Londra sosyetesinin ünlü mirasyedilerinden biri olan Olivia Kelly, kısa zaman tanışıp âşık olduğuna inandığı bir adamla evlenmişti. Düğün gününe kadar hayatındaki tek zorluk, aile servetini yönetmek ve peşinde bir basın ordusuyla gezmekti. ')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (9, N'Afili Hafiye', 10, 78, CAST(96.00 AS Decimal(18, 2)), N'Murat Menteş', N'Gizli görevdeyken, cazibeli bir kadına rastlar. Küçük bir maymun, kadının fotoğrafını çeker. Eski ‘hacker’ Merih Kızıl’a göre, kadın dünyadaki 1 milyar 800 milyon kameranın hiçbirine yakalanmamıştır')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (10, N'Güç ve İntikam - Fırtınalar İmparatorluğu 1', 9, 48, CAST(100.00 AS Decimal(18, 2)), N'Jon Skovron', N'Vahşi denizlerin ötesine uzanan parçalanmış bir imparatorlukta, iki asi varlık ortak bir amaç keşfeder.')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (11, N'Socially Awkward Maceracı', 8, 42, CAST(55.00 AS Decimal(18, 2)), N'Pınar Gökoğlu', N'"Ejderhaların gökyüzünde kol gezdiği, bir girenin bir daha çıkamadığı kadim ormanlarıyla ünlü Yedi Diyar''da bir kahraman yaşarmış. Kral''ın sadık hizmetkârı, halkın yılmaz savunucusu, ejderhaların korkulu rüyası, kedilerin can dostu, kalabalık bir ortamda ne yapacağını bilemeyen, bir prensesin karşısında ise kıpkırmızı kesilen sıradışı bir kahraman: Maceracı!')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (12, N'Vampirin İtirafı', 7, 54, CAST(82.00 AS Decimal(18, 2)), N'Uğur Kılınç', N'“Ölümsüzlük, sahildeki kum tanelerini saymak kadar sonsuz bir şey gibi görünüyor, değil mi? Oysa ben o kumları saymaya başlamaktan bile çekinmiyorum. Hatta bir dönem buna vakit harcadığım olmuştu.”')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (13, N'Yaşadım Demek İçin Ne Yapmalı?', 6, 54, CAST(120.00 AS Decimal(18, 2)), N'Muazzez İLmiye Çığ', N'Ne Olursa Olsun Her Zaman İyiyi Düşün.
Asla Kin Besleme.
Daima Ölçülü Ol.
Hayatta Herkesle Ve Her Şeyle Aramızda, İhlal Edilmemesi Gereken, Görünmez Sınırlar Var.
İnsan Bu Dünyada Aklı Kadar Yer Kaplıyor.
Şartlar Seni Zorlasa Da Kendin Olma Çabandan Vazgeçme.')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (14, N'Cumhuriyet''in İlk Sabahı', 5, 25, CAST(100.00 AS Decimal(18, 2)), N'İlber Ortaylı', N'Du¨nyaya go¨zlerimi bir savas¸ın ortasında ac¸tım. Savas¸ın ortasının tam olarak neresi oldugˆunu bilmiyordum ama annem hep “Savas¸ın ortasında dogˆurdum ben seni,” derdi.')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (15, N'
Çalınan Dikkat', 4, 26, CAST(120.00 AS Decimal(18, 2)), N'Johann Hari', N'Gazeteci-yazar Johann Hari, son yıllarda bir şeylere odaklanmakta ne kadar zorlandığını fark ettiğinde suçu önce kendisinde aramış. Ama sonra aslında çoğu insanın aynı sorundan muzdarip olduğunu görmüş. ')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (16, N'
Kalp Muhafızı', 3, 38, CAST(100.00 AS Decimal(18, 2)), N'Beyza Alkoç', N'Kâhin gözlerini bebekten ayırıp yere çevirdi ve başını salladı.
“Bu o, majesteleri,” dedi. “Kehanetin bebeği. Tacın sizden sonraki sahibi, krallığın tek kurtuluşu ve kalbin taşıyıcısı.”')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (17, N'Fransız', 2, 26, CAST(100.00 AS Decimal(18, 2)), N'Aşkın Nur Karataş', N'Charlotte KELLY, Vegas’ın tanıdığı isimle Lotte… En az diğer geceler kadar sıradan görünen o gece de yine sahnede, spot ışıklarının altında müziğiyle baş başaydı. Onu izleyen yüzlerce göz olduğunu biliyordu. ')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (18, N'Peter Pan', 1, 23, CAST(120.00 AS Decimal(18, 2)), N'J. M. Barrie', N'Büyümeyi reddeden Peter Pan’in macerası, Barrie’nin eserini, hayal gücünü en yoğun besleyen klasikler arasına yerleştiriyor. Varolmayan Ülke olarak andığı minicik adaya dünyaları sığdıran kahramanımızın, büyümeyi istemeyen herkese öğreteceği çok şey var. Fantastik olduğu kadar lirik bir dile de sahip olan Peter Pan, İngilizce aslından tam metin olarak çevrildi.')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (19, N'Bir Cep Mendilinin Otobiyografisi', 1, 26, CAST(89.00 AS Decimal(18, 2)), N'James Fenimore Cooper', N'James Fenimore Cooper, mizahi anlatımı, Amerikan kültürüne dair analizleri ve tema seçimleriyle kariyerinin ilk yıllarından beri okurun ilgisini kazanmış, hatta Amerika’nın ilk çoksatar roman yazarı olarak anılmaya başlamıştır. ')
INSERT [dbo].[Book] ([Id], [Name], [CategoryId], [Stock], [Price], [Author], [Description]) VALUES (24, N'string', 1, 0, CAST(0.00 AS Decimal(18, 2)), N'string', N'string')
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Dünya Klasikleri')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Aşk')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Roman')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Psikoloji')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (5, N'Tarih')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (6, N'Kişisel Gelişim')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (7, N'Korku-Gerilim')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (8, N'Çocuk')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (9, N'Fantastik')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (10, N'Polisiye')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (11, N'Macera-Aksiyon')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (12, N'Şiir')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (13, N'Felsefe')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (14, N'Edebiyat')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (15, N'Bilim Kurgu')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (16, N'Biyografi')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category]
GO
USE [master]
GO
ALTER DATABASE [DbLibrary] SET  READ_WRITE 
GO
