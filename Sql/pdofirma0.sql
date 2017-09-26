-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 18 Ağu 2017, 17:05:55
-- Sunucu sürümü: 10.1.25-MariaDB
-- PHP Sürümü: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `pdofirma`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(1) NOT NULL DEFAULT '0',
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_siteurl` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_recaptcha` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_googlemap` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_siteurl`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_adres`, `ayar_ilce`, `ayar_il`, `ayar_mesai`, `ayar_recaptcha`, `ayar_googlemap`, `ayar_analystic`, `ayar_facebook`, `ayar_twitter`, `ayar_youtube`, `ayar_google`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`) VALUES
(0, 'dimg/208782958324884243592755827547firma-logo.png', 'http://localhost/PortoFirma/porto/', 'Pdo Firma', 'Ne yazÄ±lÄ±m olarak yonetim panelli site', 'pdo , php , script', 'Emre Berberr', '08508408076', '08508408076', '08508408076', 'info@emreberber.com', '2 Nolu Besirli Mah.', 'Ortahisar', 'Trabzon', '7/24', '', ' AIzaSyDAfMClgN1pxGagO915S7nw2EqIeGqAjTM ', 'a', 'http://www.facebook.com/emreberber07', 'http://www.twitter.com/emreberber07', 'http://www.youtube.com/', 'http://www.google.com', 'mail.siteadresiniz.com', 'eposta@siteadresiniz.com', '1234', '20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(1) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Hakkimizda Basligi', '<blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fermentum consequat purus quis congue. Etiam dapibus risus non eros condimentum consectetur. Vestibulum a felis diam. Nunc in libero a est sagittis pharetra ut vitae velit. Curabitur non luctus turpis, at iaculis massa. Sed congue mi ipsum, et faucibus dolor efficitur rutrum. Vestibulum non neque eget est facilisis maximus. Curabitur non efficitur elit. Phasellus tincidunt lacinia est ut sagittis. Aenean venenatis mi id consectetur feugiat. Nulla id risus non leo congue porttitor sit amet vel justo. Vivamus sit amet aliquam eros. Etiam cursus, nisi non placerat vulputate, quam erat efficitur mi, eu faucibus erat dolor sed odio. Etiam ultrices tristique molestie.</p>\r\n</blockquote>\r\n\r\n<p>Pellentesque vel est tortor. In hac habitasse platea dictumst. Mauris tempus ipsum vel lectus molestie, a rhoncus felis suscipit. Vestibulum euismod tempor cursus. Nam condimentum tristique ipsum, ut consequat dolor consectetur sit amet. Nam consequat metus nec turpis imperdiet pulvinar. Mauris scelerisque risus feugiat odio varius faucibus. Mauris mattis consectetur augue in sagittis. Fusce hendrerit gravida congue. Curabitur facilisis sapien eu dolor consequat malesuada. Fusce a velit convallis, luctus ex sed, fermentum libero. Quisque volutpat eu nunc in fermentum. Suspendisse vel erat non elit gravida pretium.</p>\r\n\r\n<p><strong>Donec eget consequat ipsum, non molestie ante</strong>. Duis laoreet condimentum porttitor. Curabitur suscipit nisi vitae suscipit porttitor. Fusce efficitur, lectus vel vulputate blandit, eros mauris cursus nulla, et blandit mi ex quis quam. Curabitur et diam id mauris pulvinar cursus id nec odio. Fusce venenatis pellentesque sem, sed facilisis lorem mollis et. Sed non turpis quis erat pharetra lobortis eu id felis. In hac habitasse platea dictumst. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam at nisl non tellus tincidunt blandit id et purus. Phasellus ultrices mi ac odio mollis vestibulum. Etiam et commodo eros. Sed ultricies orci nec neque efficitur, id mollis odio sollicitudin. Phasellus sit amet nunc elit. Duis dictum cursus justo, eget malesuada eros mollis at.</p>\r\n\r\n<p><img alt=\"img\" src=\"http://lorempixel.com/output/animals-q-c-640-480-5.jpg\" style=\"height:150px; width:200px\" /></p>\r\n\r\n<p>Maecenas eget eros tempor nisl hendrerit volutpat. Nullam pharetra sapien vitae metus dignissim congue. Duis gravida mauris et urna pellentesque interdum. Aliquam eu volutpat sem. Aenean a lacus nec erat iaculis aliquam non ut justo. Quisque at auctor neque, sed condimentum diam. Aliquam efficitur malesuada dapibus. Suspendisse iaculis lacus non fermentum volutpat. Curabitur a ipsum pretium, mattis nunc placerat, egestas eros. Ut aliquam sit amet massa sit amet iaculis. Vestibulum ante enim, convallis a diam eu, tristique lacinia odio.</p>\r\n\r\n<p>Maecenas eleifend risus hendrerit, elementum purus quis, rutrum ante. Etiam sed mi enim. Suspendisse vel venenatis ex. Sed sollicitudin vel nibh ac blandit. Nunc tincidunt vel arcu ut tincidunt. Nulla commodo lacus vitae feugiat hendrerit. Suspendisse at ipsum fringilla, varius enim quis, pharetra dui. Sed fermentum massa mauris, sollicitudin rutrum felis vulputate vel. Pellentesque leo odio, vestibulum sed pellentesque at, feugiat sit amet urna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum tincidunt sagittis leo, non malesuada felis tristique eget.</p>\r\n', 'qOvf70IA7g0', 'Vizyon', 'Misyon');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icerik`
--

CREATE TABLE `icerik` (
  `icerik_id` int(11) NOT NULL,
  `icerik_zaman` datetime NOT NULL,
  `icerik_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_ad` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_detay` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik_durum` varchar(1) COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `icerik`
--

INSERT INTO `icerik` (`icerik_id`, `icerik_zaman`, `icerik_resimyol`, `icerik_ad`, `icerik_detay`, `icerik_keyword`, `icerik_durum`) VALUES
(2, '0000-00-00 00:00:00', 'dimg/icerik/28817240023170031036icerik01.jpg', 'Icerik Deneme Baslik', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'lorem ipsum falan filan', '1'),
(3, '2017-08-14 20:13:44', 'dimg/icerik/25006211942986828446icerik02.jpg', 'Tarihli Icerik Stlylee', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'tarihli ', '1'),
(4, '0000-00-00 00:00:00', 'dimg/icerik/28817240023170031036icerik01.jpg', 'Icerik Deneme Baslik', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'lorem ipsum falan filan', '1'),
(5, '2017-08-14 20:13:44', 'dimg/icerik/25006211942986828446icerik02.jpg', 'Tarihli Icerik Stlylee', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'tarihli ', '1'),
(6, '0000-00-00 00:00:00', 'dimg/icerik/28817240023170031036icerik01.jpg', 'Icerik Deneme Baslik', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'key1 , key2 , key3,key4', '1'),
(7, '2017-08-14 20:13:44', 'dimg/icerik/25006211942986828446icerik02.jpg', 'Tarihli Icerik Stlylee', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'key1 , key2 , key3,key4', '1'),
(8, '0000-00-00 00:00:00', 'dimg/icerik/28817240023170031036icerik01.jpg', 'Icerik Deneme Baslik', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'key1 , key2 , key3,key4', '1'),
(9, '2017-08-14 20:13:44', 'dimg/icerik/25006211942986828446icerik02.jpg', 'Tarihli Icerik Stlylee', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'key1 , key2 , key3,key4', '1'),
(10, '0000-00-00 00:00:00', 'dimg/icerik/28817240023170031036icerik01.jpg', 'Icerik Deneme Baslik', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'key1 , key2 , key3,key4', '1'),
(11, '2017-08-14 20:13:44', 'dimg/icerik/25006211942986828446icerik02.jpg', 'Tarihli Icerik Stlylee', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'key1 , key2 , key3,key4', '1'),
(12, '0000-00-00 00:00:00', 'dimg/icerik/28817240023170031036icerik01.jpg', 'Icerik Deneme Baslik', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'key1 , key2 , key3,key4', '1'),
(13, '2017-08-14 20:13:44', 'dimg/icerik/25006211942986828446icerik02.jpg', 'Tarihli Icerik Stlylee', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'key1 , key2 , key3,key4', '1'),
(14, '0000-00-00 00:00:00', 'dimg/icerik/28817240023170031036icerik01.jpg', 'Icerik Deneme Baslik', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'lorem ipsum falan filan', '1'),
(15, '2017-08-14 20:13:44', 'dimg/icerik/25006211942986828446icerik02.jpg', 'Tarihli Icerik Stlylee', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'tarihli ', '1'),
(16, '0000-00-00 00:00:00', 'dimg/icerik/28817240023170031036icerik01.jpg', 'Icerik Deneme Baslik', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'lorem ipsum falan filan', '1'),
(17, '2017-08-14 20:13:44', 'dimg/icerik/25006211942986828446icerik02.jpg', 'Tarihli Icerik Stlylee', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ornare lacus vitae massa consectetur, sed dignissim lectus dapibus. Fusce iaculis eu lectus vel vehicula. Proin id nisi nisl. Cras lacinia, dui eu tempor consectetur, felis diam luctus magna, ac sagittis nibh ante vel mauris. Maecenas ac ligula nec urna posuere finibus. Sed at velit quam. Proin quis rhoncus leo, ac ultrices leo. Vestibulum in egestas lectus, ac viverra magna. Nulla sed dui lorem. Quisque ut urna sed turpis pellent', 'tarihli ', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL,
  `kullanici_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_ad`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_yetki`, `kullanici_durum`) VALUES
(1, '2017-08-17 00:00:00', 'dimg/kullanici/26326header-img.jpg', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'Emre Berber', '5', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `menu_ust` int(11) NOT NULL,
  `menu_icon` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `kategori_id`, `menu_ust`, `menu_icon`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`) VALUES
(1, 0, 0, 'fa-home', 'Anasayfa', '', 'index.php', 1, 1),
(2, 0, 0, '', 'Hakkimizda', '', 'hakkimizda', 2, 1),
(4, 0, 0, '', 'Iletisim', '', 'bize-ulasin', 9, 1),
(5, 0, 0, '', 'Haberler', '', 'haberler', 7, 1),
(6, 0, 5, '', 'Istanbul Haberleri', '<p>Istanbul haberleriyle ilgili makale burada yayimlaniyor</p>\r\n', '', 0, 1),
(7, 0, 4, '', 'Ayrintili Bilgi', '', 'http://www.emreberber.com', 0, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(5) NOT NULL,
  `slider_ad` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` varchar(2) COLLATE utf8_turkish_ci NOT NULL,
  `slider_durum` varchar(1) COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_link`, `slider_sira`, `slider_durum`) VALUES
(1, 'Business', 'dimg/slider/2390920663318503054221995312752057727327business-q-c-1920-750-6.jpg', '#', '0', '1'),
(2, 'Computer', 'dimg/slider/2416729819258512246629827227822437628240business-q-c-1920-750-4.jpg', '#', '1', '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `icerik`
--
ALTER TABLE `icerik`
  ADD PRIMARY KEY (`icerik_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `icerik`
--
ALTER TABLE `icerik`
  MODIFY `icerik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
