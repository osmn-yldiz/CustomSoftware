-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 29 Ara 2021, 14:32:17
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `mobilya_sitesi_2`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `ID` int(11) NOT NULL,
  `categoriesMainID` int(11) NOT NULL,
  `Name` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `Images` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`ID`, `categoriesMainID`, `Name`, `Images`) VALUES
(1, 1, 'Üçlü Koltuklar', 'uclu_koltuk_19_19_19.jpg'),
(2, 1, 'Tekli Koltuk - Berjer', 'tekli_koltuk_1_19_1.jpg'),
(3, 1, 'Köşe Koltuk Takımları', 'fonksiyonel_kose_19.jpg'),
(4, 1, 'Yataklı Koltuk Takımları', 'yatakli_koltuk_21029.jpg'),
(5, 1, 'Salon Takımları', 'salon_takimlari.jpg'),
(6, 1, 'Oturma Grupları', 'img_5625-copy.jpg'),
(7, 1, 'Chester Koltuk Takımları', 'chester_koltuk_19.jpg'),
(25, 21, 'SÜRGÜLÜ YATAK ODALARI', '1638207966-ofQ.jpg'),
(24, 20, 'yataklı koltuk', '1638207828-pDk.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categoriesmain`
--

CREATE TABLE `categoriesmain` (
  `ID` int(11) NOT NULL,
  `Name` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ISDELETED` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `categoriesmain`
--

INSERT INTO `categoriesmain` (`ID`, `Name`, `ISDELETED`) VALUES
(20, 'KOLTUK TAKIMLARI', 0),
(21, 'Yatak Odası Takımları', 0),
(1, 'KOLTUK TAKIMLARI GERÇEK', 0),
(25, 'belami mir koltuk', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `categoriesID` int(11) NOT NULL,
  `Name` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `Price` decimal(8,3) NOT NULL,
  `Measure` text COLLATE utf8_turkish_ci NOT NULL,
  `Property` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`ID`, `categoriesID`, `Name`, `Price`, `Measure`, `Property`) VALUES
(1, 6, 'Gloss Modern Koltuk Takımı Tri', '15.890', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>250cm</td>\r\n			<td>85cm</td>\r\n			<td>98cm</td>\r\n			<td>6497 TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>220cm</td>\r\n			<td>70cm</td>\r\n			<td>98cm</td>\r\n			<td>6169 TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>90cm</td>\r\n			<td>86cm</td>\r\n			<td>60cm</td>\r\n			<td>2428 TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>5000 TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"oamN\"},{\"value\":\"ramzan\"},{\"value\":\"mahmuasdadasd\"}]'),
(28, 4, 'pianno', '0.000', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"spor\"}]'),
(19, 4, 'voov koltuk', '0.000', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"spor+ahşap kasa\"}]'),
(7, 4, 'bella koltuk  duccani', '0.000', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"singer+demir ayak+\"}]'),
(8, 4, 'duccani sole', '0.000', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"singer+ahşap kasa\"}]'),
(9, 4, 'diamond duccani', '0.000', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"singer+ahşap kasa\"}]'),
(25, 4, 'düette kitaplık', '0.000', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"ahşap kasa+kitaplık\"}]'),
(26, 4, 'mirkoltuk', '0.000', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"spor\"},{\"value\":\"demir ayaklı\"}]'),
(27, 4, 'ilhan ser koltuk', '0.000', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"demir ayak+ahşap\"}]'),
(29, 4, 'zümre', '0.000', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"singer\"}]'),
(30, 4, 'zümre paris', '0.000', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"singer\"}]'),
(31, 4, 'esina yeni avm', '0.000', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"demir ayak\"}]'),
(32, 4, 'grüze hakan', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"singer+ahşap kasa\"}]'),
(33, 4, 'zümre caster', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"caster koltuk\"}]'),
(34, 4, 'yeni avm koltuk', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"metel ayak +ahşap kasa\"}]'),
(35, 4, 'yeni 0507 8266946', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(36, 4, 'ayasofa 05432181877', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"demir ayaklı\"}]'),
(37, 4, 'ayasofa 05432181877 inegöl', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"demir yakalı\"}]'),
(38, 4, 'cosion rivista', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"demir ayak\"}]'),
(41, 4, 'cosion rivista 05076292174 rivista', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(42, 4, 'cosion rivista 05076292174', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(43, 4, '05076292174 cosion rivista', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(44, 4, 'wosse orhan  oktay', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(45, 4, 'wosse line modeli', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(47, 24, 'DÜETTE KİTAPLIK', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"AHŞAP KASA\"}]'),
(49, 24, 'hakan grüze  0532 763 1164', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"ahşap kasa +singer\"}]'),
(50, 24, 'ersin 0537 7412498', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"ahşap ayaklı\"}]'),
(51, 24, 'parlak ev', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"keten +ahşap ayaklı\"}]'),
(52, 24, 'belita duccani  05493364081', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"spor +ahşap kasa\"}]'),
(53, 24, 'parlak ev', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"ahşap ayak\"}]'),
(56, 24, 'duccani zümrüt', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"demir ayak\"}]'),
(55, 24, 'duccani idris', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"metal ayak\"}]'),
(57, 24, 'duccani bella', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"demir ayaklı\"}]'),
(58, 24, 'duccani lara', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"metal ayak\"}]'),
(61, 24, 'yeni avm esine 0537646 8629', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(60, 24, 'wosse erolun kardeşi loft', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(62, 24, 'doğan koltuk', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"demir ayaklı\"}]'),
(63, 24, 'wosse miya  modeli  erolun kardeşi oktay', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(64, 24, 'wosse erol alya modeli', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(65, 24, 'galata caster 05327114634', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(66, 24, 'galata florya', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(67, 24, 'galata nişantaşı', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"demir ayaklı\"}]'),
(68, 24, 'galata balat', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '');
INSERT INTO `products` (`ID`, `categoriesID`, `Name`, `Price`, `Measure`, `Property`) VALUES
(69, 24, 'EN MİR 0532 715 6516', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(70, 24, 'GALATA BEYKOZ', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(71, 24, 'VOOV KOLTUK 0530 0738166', '5.335', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(72, 24, 'YENİ AVM 0507 8266946', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(73, 24, 'YENİ AVM AHŞAP 0507 8266946', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(74, 24, 'BRAND HOME  05416008533', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(75, 24, 'AYESSOFA AVŞA MODELİ 05432181877', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(76, 24, 'SAGA MODEL MTERA 05427872606', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(77, 24, 'SAGA CASTER AHŞAP  0542 787 2606', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(78, 24, 'SAGA CASTER METAL 0542 787 2606', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', ''),
(79, 24, 'COSİON SOFA RİVİSTA', '0.000', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"0507 629 2174\"}]'),
(80, 24, 'KUKA   MOBİLYA TEYFİK DEMİR AYAK', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"05455154308\"}]'),
(81, 24, 'kuka mobilya teyfik demir ayaklı', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"05455154308\"}]'),
(82, 24, 'bemente yeni', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"05442425860\"}]'),
(83, 24, 'belami mir koltuk', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"05076698536\"}]'),
(84, 24, 'zafer koltuk  model efe ', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"0543 5891725\"}]'),
(85, 24, 'zafer koltuk fasulye', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"0543 5891725\"}]'),
(86, 24, 'FATİH TEYFİKİN ARKADAŞI', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"0553 535 4894\"}]'),
(87, 24, 'KULA YUSUF ', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"0532 433 0248\"}]'),
(88, 24, 'kula p kol modeli', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"0532 433 0248\"}]'),
(89, 24, 'ilfa  eski', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"0532 547 5420\"}]'),
(90, 24, 'kula spor model', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"0532 433 0248\"}]'),
(91, 24, 'arwen mss .boss MRS ', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"0532 616 2760\"}]'),
(93, 25, 'eswed asel aytaşı', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"0533 705  66 54\"}]'),
(95, 25, 'eswed vera yatak odası', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"kapaklı\"}]'),
(96, 25, 'eswed vera kumtaşı', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"KAPAKLI\"}]'),
(97, 25, 'eswed klas ceviz yatak odası', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"sürgülü\"}]'),
(99, 25, 'Gardolabe alfa yatak odası', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"zülkif 0532 230 0664\"}]'),
(100, 24, 'volente koltuk takımı', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"0533 406 4347\"}]'),
(101, 24, 'elmalı mobilya', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"0532 424 7457\"}]'),
(102, 25, 'GARDOLEBE WHİTE YATAK ODASI', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"0532 230 0664\"}]'),
(103, 24, 'alper  koltuk SİDNEY MODELİ', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"YILDIZ MOBİLYA\"}]'),
(104, 24, 'serhat mobilya oslo koltuk', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"ahşap kasa\"}]'),
(105, 25, 'gardolebe lotus yatak odası', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"ahşap\"}]'),
(106, 25, 'gardolebe santino yatak odası', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"ahşap\"}]'),
(107, 25, 'calitelli marbella modeli', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"0224 715 5156\"}]'),
(108, 25, 'calitelli marbella sürgülü yatak odası', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"0224 715 5156\"}]'),
(109, 25, 'SANTRA İSTANBUL MODELİ', '101.010', '<table class=\"table table-responsive table-hover table-bordered table-condensed table-striped tbl-dimens\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">&Uuml;R&Uuml;N ADI</th>\r\n			<th scope=\"col\">G</th>\r\n			<th scope=\"col\">Y</th>\r\n			<th scope=\"col\">D</th>\r\n			<th scope=\"col\">FİYAT</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Yarmalı</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Uuml;&ccedil;l&uuml; Koltuk Kırlentli</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berjer</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>cm</td>\r\n			<td>TL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Orta Sehpa</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>TL</td>\r\n		</tr>\r\n	</tbody>\r\n	<tfoot>\r\n		<tr>\r\n			<th scope=\"row\">Kısaltmalar :</th>\r\n			<td colspan=\"7\">G : Genişlik | Y : Y&uuml;kseklik | D : Derinlik</td>\r\n		</tr>\r\n	</tfoot>\r\n</table>\r\n', '[{\"value\":\"KAPAKLI\"}]');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `productsimages`
--

CREATE TABLE `productsimages` (
  `ID` int(11) NOT NULL,
  `productsID` int(11) NOT NULL,
  `Name` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `Images` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `productsimages`
--

INSERT INTO `productsimages` (`ID`, `productsID`, `Name`, `Images`) VALUES
(2, 1, 'Gloss Modern Koltuk Takımı Tri', 'gloss_grh-_6_.jpg'),
(3, 1, 'Gloss Modern Koltuk Takımı Tri', 'gloss_grh-_13_.jpg'),
(7, 1, 'Gloss Modern Koltuk Takımı Tri', '1.jpg'),
(10, 5, 'Midas Mini Köşe Takımı', '1637839635-vSV.jpg'),
(11, 5, 'Midas Mini Köşe Takımı', '1637839651-LHi.png'),
(12, 5, 'Midas Mini Köşe Takımı', '1637839661-rrF.jpg'),
(13, 6, 'kalas', '1637839812-Ewr.jpg'),
(14, 6, 'kalas', '1637839843-XCF.png'),
(15, 7, 'bella', '1637842727-jGa.png'),
(16, 7, 'bella', '1637842775-XaX.png'),
(17, 7, 'bella', '1637842811-DGP.png'),
(18, 8, 'sole duccanı', '1637843816-CuU.png'),
(19, 8, 'sole duccanı', '1637844542-cHe.png'),
(20, 8, 'sole duccanı', '1637844624-hFp.png'),
(21, 8, 'sole duccanı', '1637844646-HTP.png'),
(22, 9, 'diamond duccani', '1637845537-Hpt.png'),
(23, 9, 'diamond duccani', '1637845607-Gge.png'),
(24, 9, 'diamond duccani', '1637845636-jdh.png'),
(25, 9, 'diamond duccani', '1637845881-EMx.png'),
(26, 11, 'voov koltuk', '1637855087-yJv.jpg'),
(28, 19, 'voov koltuk', '1637859236-Qso.jpg'),
(29, 19, 'voov koltuk', '1637859342-xaJ.jpg'),
(32, 19, 'voov koltuk', '1637859735-Ofv.jpg'),
(33, 19, 'voov koltuk', '1637859796-kZc.jpg'),
(34, 19, 'voov koltuk', '1637859870-qAR.jpg'),
(35, 19, 'voov koltuk', '1637859901-afR.jpg'),
(36, 25, 'düette kitaplık', '1637860829-zXG.jpg'),
(39, 25, 'düette kitaplık', '1637860947-CGc.jpg'),
(40, 25, 'düette kitaplık', '1637860961-moo.jpg'),
(41, 25, 'düette kitaplık', '1637860981-OAg.jpg'),
(149, 25, 'duette kitaplık', '1638207282-VcN.jpg'),
(148, 25, 'cosion rivista 05076292174 rivista', '1638120526-wfF.jpg'),
(44, 25, 'düette kitaplık', '1637861042-SdK.jpg'),
(45, 26, 'mirkoltuk', '1637861692-SPk.jpg'),
(46, 26, 'mirkoltuk', '1637861708-opz.jpg'),
(47, 26, 'mirkoltuk', '1637861726-zYH.jpg'),
(48, 26, 'mirkoltuk', '1637861743-HUa.jpg'),
(49, 26, 'mirkoltuk', '1637861761-ZFo.jpg'),
(50, 26, 'mirkoltuk', '1637861779-Bbb.jpg'),
(51, 26, 'mirkoltuk', '1637861862-KdX.jpg'),
(52, 27, 'ilhan ser koltuk', '1637862272-rjP.jpg'),
(53, 27, 'ilhan ser koltuk', '1637862292-TqT.jpg'),
(54, 27, 'ilhan ser koltuk', '1637862310-LJF.jpg'),
(55, 27, 'ilhan ser koltuk', '1637862336-NTh.jpg'),
(56, 27, 'ilhan ser koltuk', '1637862356-mkh.jpg'),
(57, 27, 'ilhan ser koltuk', '1637862376-sei.jpg'),
(58, 27, 'ilhan ser koltuk', '1637862389-bMH.jpg'),
(60, 27, 'ilhan ser koltuk', '1637862559-Jea.jpg'),
(61, 28, 'pianno', '1637863782-vxT.jpg'),
(62, 28, 'pianno', '1637863796-Jtz.jpg'),
(64, 28, 'pianno', '1637863818-aKM.jpg'),
(65, 28, 'pianno', '1637863835-exV.jpg'),
(66, 28, 'pianno', '1637863851-WzN.jpg'),
(67, 28, 'pianno', '1637863867-pnD.jpg'),
(68, 29, 'zümre', '1637864468-Nwe.jpg'),
(69, 29, 'zümre', '1637864483-Xgr.jpg'),
(70, 29, 'zümre', '1637864501-ixk.jpg'),
(71, 29, 'zümre', '1637864524-Evx.jpg'),
(72, 30, 'zümre paris', '1637864859-izM.jpg'),
(73, 30, 'zümre paris', '1637864883-Dnw.jpg'),
(76, 30, 'zümre paris', '1637864967-HBH.jpg'),
(77, 31, 'esina yeni avm', '1637866152-PbK.jpg'),
(79, 31, 'esina yeni avm', '1637866195-ZQu.jpg'),
(80, 32, 'grüze hakan', '1637912647-qCy.jpg'),
(81, 32, 'grüze hakan', '1637912665-itr.jpg'),
(82, 32, 'grüze hakan', '1637912687-kzi.jpg'),
(83, 32, 'grüze hakan', '1637912710-dgc.jpg'),
(84, 32, 'grüze', '1637912742-TzA.jpg'),
(85, 32, 'grüze hakan', '1637912773-uUN.jpg'),
(86, 33, 'caster zümre', '1637913211-WUX.jpg'),
(87, 33, 'caster zümre', '1637913243-Udk.jpg'),
(88, 33, 'caster zümre', '1637913271-Ubj.jpg'),
(89, 33, 'caster zümre', '1637913292-Fmk.jpg'),
(90, 34, 'yeni avm koltuk', '1637913820-ZHN.jpg'),
(91, 34, 'yeni avm koltuk', '1637913837-upC.jpg'),
(92, 34, 'yeni avm koltuk', '1637913857-xNg.jpg'),
(93, 34, 'yeni avm koltuk', '1637913883-KoG.jpg'),
(94, 34, 'yeni avm koltuk', '1637913904-GJC.jpg'),
(95, 34, 'yeni avm koltuk', '1637913942-shL.jpg'),
(96, 34, 'yeni avm koltuk', '1637913967-hcM.jpg'),
(97, 35, 'yeni 0507 8266946', '1637914436-dPz.jpg'),
(98, 35, 'yeni 0507 8266946', '1637914461-RAj.jpg'),
(99, 35, 'yeni 0507 8266946', '1637914479-ALo.jpg'),
(100, 35, 'yeni 0507 8266946', '1637914514-tkE.jpg'),
(101, 35, 'yeni 0507 8266946', '1637914537-TRL.jpg'),
(102, 35, 'yeni 0507 8266946', '1637914566-nXt.jpg'),
(103, 35, 'yeni 0507 8266946', '1637914586-cqn.jpg'),
(104, 35, 'yeni 0507 8266946', '1637914632-aQx.jpg'),
(105, 36, 'ayasofa 05432181877', '1637945828-ZHM.png'),
(106, 36, 'ayasofa 05432181877', '1637945868-YNe.png'),
(107, 36, 'ayasofa 05432181877', '1637945892-ZSF.png'),
(108, 36, 'ayasofa 05432181877', '1637945926-qqr.png'),
(109, 36, 'ayasofa 05432181877', '1637945949-mcJ.png'),
(110, 37, 'ayasofa 05432181877 inegöl', '1637946413-CwX.png'),
(111, 37, 'ayasofa 05432181877 inegöl', '1637946451-EhF.png'),
(112, 37, 'ayasofa 05432181877 inegöl', '1637946481-pzg.png'),
(113, 37, 'ayasofa 05432181877 inegöl', '1637946552-vVt.png'),
(114, 37, 'ayasofa 05432181877 inegöl', '1637946576-ejv.png'),
(115, 38, 'cosion rivista 05076292174', '1637947526-tWt.png'),
(116, 38, 'cosion rivista', '1637947561-nsk.png'),
(117, 38, 'cosion rivista', '1637949113-UHT.png'),
(118, 38, 'cosion rivista', '1637949155-Aqo.png'),
(119, 38, 'cosion rivista', '1637949297-weT.png'),
(120, 38, 'cosion rivista', '1637949322-ViQ.png'),
(121, 41, 'cosion rivista 05076292174 rivista', '1637949806-tnj.png'),
(122, 41, 'cosion rivista 05076292174 rivista', '1637949867-Hby.png'),
(123, 41, 'cosion rivista 05076292174 rivista', '1637949908-jPL.png'),
(124, 41, 'cosion rivista 05076292174 rivista', '1637949946-sAB.png'),
(125, 41, 'cosion rivista 05076292174 rivista', '1637950001-aaz.png'),
(126, 42, 'cosion rivista 05076292174 rivista', '1637950345-krO.png'),
(127, 42, 'cosion rivista 05076292174 rivista', '1637950377-FZH.png'),
(128, 42, 'cosion rivista 05076292174 rivista', '1637950470-fPv.png'),
(130, 42, 'cosion rivista 05076292174 rivista', '1637950680-EeN.png'),
(131, 43, '05076292174 cosion rivista', '1637951116-zYO.png'),
(132, 43, '05076292174 cosion rivista', '1637951149-bEP.png'),
(133, 43, '05076292174 cosion rivista', '1637951181-Zgc.png'),
(134, 43, '05076292174 cosion rivista', '1637951202-UYW.png'),
(135, 44, 'wosse orhan  oktay', '1637951901-BXr.png'),
(136, 44, 'wosse orhan  oktay', '1637951950-hZX.png'),
(137, 44, 'wosse orhan  oktay', '1637951977-AFj.png'),
(138, 44, 'wosse orhan  oktay', '1637952002-Xay.png'),
(139, 44, 'wosse orhan  oktay', '1637952034-ZyD.png'),
(140, 44, 'wosse orhan  oktay', '1637952372-PDw.jpg'),
(141, 44, 'wosse orhan  oktay', '1637952398-BmG.jpg'),
(142, 45, 'wosse line modeli', '1637952794-XjE.png'),
(143, 45, 'wosse line modeli', '1637952837-kXU.png'),
(144, 45, 'wosse line modeli', '1637952891-NDz.png'),
(145, 45, 'wosse line modeli', '1637952942-OHf.png'),
(146, 45, 'wosse line modeli', '1637953032-XAu.png'),
(150, 25, 'duette kitaplık', '1638207283-zEQ.jpg'),
(151, 47, 'DÜETTE KİTAPLIK', '1638209038-umd.jpg'),
(152, 47, 'DÜETTE KİTAPLIK', '1638209076-mCA.jpg'),
(155, 47, 'DÜETTE KİTAPLIK', '1638256834-xmO.jpg'),
(156, 47, 'DÜETTE KİTAPLIK', '1638257860-Trf.jpg'),
(157, 47, 'DÜETTE KİTAPLIK', '1638257891-pNp.jpg'),
(158, 47, 'düett', '1638258121-xKT.jpg'),
(159, 49, 'hakan grüze  0532 763 1164', '1638260812-pYd.jpg'),
(160, 49, 'hakan grüze  0532 763 1164', '1638260878-wNm.jpg'),
(161, 49, 'hakan grüze  0532 763 1164', '1638260910-hZJ.jpg'),
(162, 49, 'hakan grüze  0532 763 1164', '1638260946-RPw.jpg'),
(163, 49, 'hakan grüze  0532 763 1164', '1638261444-QeR.jpg'),
(164, 49, 'hakan grüze  0532 763 1164', '1638262218-ijR.jpg'),
(165, 50, 'ersin 0537 7412498', '1638279026-Wdv.jpg'),
(166, 50, 'ersin 0537 7412498', '1638279042-YQZ.jpg'),
(167, 50, 'ersin 0537 7412498', '1638279066-kuK.jpg'),
(168, 51, 'parlak ev', '1638279632-hXN.png'),
(170, 51, 'parlak ev', '1638279667-Vds.png'),
(171, 51, 'parlak ev', '1638279690-Rng.png'),
(173, 52, 'belita duccani  05493364081', '1638283727-cNa.jpg'),
(174, 52, 'belita duccani  05493364081', '1638283752-KMK.jpg'),
(175, 52, 'belita duccani  05493364081', '1638283781-Qpp.jpg'),
(176, 53, 'parlak ev', '1638287086-pHG.jpg'),
(177, 53, 'parlak ev', '1638287103-oOj.jpg'),
(178, 53, 'parlak ', '1638287128-rdv.jpg'),
(179, 55, 'duccani idris', '1638289975-uui.jpg'),
(180, 55, 'duccani idris', '1638290003-OhM.jpg'),
(181, 55, 'duccani idris', '1638290045-Nrm.jpg'),
(182, 56, 'duccani zümrüt', '1638290801-cDv.jpg'),
(183, 56, 'duccani zümrüt', '1638290821-ZdD.jpg'),
(184, 56, 'duccani zümrüt', '1638290845-JxY.jpg'),
(185, 57, 'duccani bella', '1638291667-bQP.jpg'),
(186, 57, 'duccani bella', '1638291700-kDv.jpg'),
(187, 57, 'duccani bella', '1638291854-PBK.jpg'),
(188, 57, 'duccani bella', '1638291872-OHZ.jpg'),
(189, 58, 'duccani lara', '1638292422-BPQ.jpg'),
(190, 58, 'duccani lara', '1638292443-rJD.jpg'),
(191, 58, 'duccani lara', '1638292477-bkB.jpg'),
(192, 58, 'duccani lara', '1638292551-hWa.jpg'),
(193, 60, 'wosse erolun kardeşi loft', '1638295881-rZE.jpg'),
(194, 60, 'wosse erolun kardeşi loft', '1638295905-Khi.jpg'),
(195, 60, 'wosse erolun kardeşi loft', '1638295930-cUt.jpg'),
(196, 61, 'yeni avm esine 0537646 8629', '1638350487-CVe.jpg'),
(197, 61, 'yeni avm esine 0537646 8629', '1638350527-mhA.jpg'),
(198, 61, 'yeni avm esine 0537646 8629', '1638350550-ziq.jpg'),
(199, 61, 'yeni avm esine 0537646 8629', '1638350581-kvJ.jpg'),
(200, 50, 'ersin 0537 7412498', '1638355941-umw.jpg'),
(201, 50, 'ersin', '1638355966-ppc.jpg'),
(202, 50, 'ersin 0537 7412498', '1638355997-vWd.jpg'),
(203, 62, 'doğan koltuk', '1638360285-kEz.jpg'),
(204, 62, 'doğan koltuk', '1638360314-EHe.jpg'),
(205, 62, 'doğan koltuk', '1638360345-Wqa.jpg'),
(207, 62, 'doğan koltuk', '1638360439-exq.jpg'),
(208, 62, 'doğan koltuk', '1638360465-VSm.jpg'),
(209, 62, 'doğan koltuk', '1638360490-Odf.jpg'),
(211, 62, 'doğan koltuk', '1638360550-rbz.jpg'),
(212, 62, 'doğan koltuk', '1638360586-Kot.jpg'),
(213, 62, 'doğan koltuk', '1638360604-rHS.jpg'),
(214, 62, 'doğan koltuk', '1638360629-awr.jpg'),
(215, 63, 'wosse miya  modeli  erolun kardeşi oktay', '1638363183-gqA.jpg'),
(216, 63, 'wosse miya  modeli  erolun kardeşi oktay', '1638363202-vwO.jpg'),
(217, 63, 'wosse miya  modeli  erolun kardeşi oktay', '1638363227-UVW.jpg'),
(218, 63, 'wosse miya  modeli  erolun kardeşi oktay', '1638363252-Cme.jpg'),
(219, 63, 'wosse miya  modeli  erolun kardeşi oktay', '1638363274-PiM.jpg'),
(220, 63, 'wosse miya  modeli  erolun kardeşi oktay', '1638363302-JLk.jpg'),
(221, 63, 'wosse miya  modeli  erolun kardeşi oktay', '1638363325-mBq.jpg'),
(222, 63, 'wosse miya  modeli  erolun kardeşi oktay', '1638363345-mBQ.jpg'),
(223, 63, 'wosse miya  modeli  erolun kardeşi oktay', '1638363572-Vfh.jpg'),
(224, 63, 'wosse miya  modeli  erolun kardeşi oktay', '1638363598-ajp.jpg'),
(225, 64, 'wosse erol alya modeli', '1638367274-tCt.jpg'),
(226, 64, 'wosse erolun kardeşi loft', '1638367331-VSo.jpg'),
(227, 64, 'wosse erolun kardeşi loft', '1638367354-aeb.jpg'),
(228, 64, 'wosse erolun kardeşi loft', '1638367394-unL.jpg'),
(229, 64, 'wosse erol alya modeli', '1638367425-oSu.jpg'),
(230, 65, 'galata caster 05327114634', '1638371572-VDm.jpg'),
(231, 65, 'galata caster 05327114634', '1638371607-MWm.jpg'),
(232, 65, 'galata caster 05327114634', '1638371632-OcP.jpg'),
(233, 65, 'galata caster 05327114634', '1638371647-SML.jpg'),
(234, 66, 'galata florya', '1638372654-ngR.jpg'),
(235, 66, 'galata florya', '1638372696-yem.jpg'),
(236, 66, 'galata florya', '1638372718-Cxc.jpg'),
(237, 66, 'galata florya', '1638372750-LqU.jpg'),
(238, 66, 'galata florya', '1638372773-RZn.jpg'),
(239, 66, 'galata florya', '1638372800-FBs.jpg'),
(241, 67, 'galata nişantaşı', '1638382414-aRA.jpg'),
(242, 67, 'galata nişantaşı', '1638382485-CxU.jpg'),
(243, 67, 'galata nişantaşı', '1638382517-Lyn.jpg'),
(244, 67, 'galata nişantaşı', '1638382546-hAR.jpg'),
(245, 67, 'galata nişantaşı', '1638382567-yFu.jpg'),
(246, 67, 'galata nişantaşı', '1638382596-NXF.jpg'),
(247, 67, 'galata nişantaşı', '1638382622-eKv.jpg'),
(248, 68, 'galata balat', '1638383971-pYH.jpg'),
(249, 68, 'galata balat', '1638383989-gNa.jpg'),
(250, 68, 'galata balat', '1638384008-qfU.jpg'),
(251, 68, 'galata balat', '1638384038-DML.jpg'),
(252, 68, 'galata balat', '1638384058-vCC.png'),
(253, 68, 'galata balat', '1638384089-rvY.jpg'),
(254, 68, 'galata balat', '1638384118-oVj.jpg'),
(255, 68, 'galata balat', '1638384138-mnV.jpg'),
(256, 69, 'EN MİR 0532 715 6516', '1638385271-Sec.jpg'),
(257, 69, 'EN MİR', '1638385289-hYA.jpg'),
(258, 69, 'EN MİR 0532 715 6516', '1638385313-UcZ.jpg'),
(259, 69, 'EN MİR 0532 715 6516', '1638385334-kgn.jpg'),
(260, 69, 'EN MİR 0532 715 6516', '1638448690-thC.jpg'),
(261, 69, 'EN MİR 0532 715 6516', '1638448714-tYy.jpg'),
(262, 69, 'EN MİR 0532 715 6516', '1638448823-nSv.jpg'),
(263, 70, 'GALATA BEYKOZ', '1638449826-hur.jpg'),
(264, 70, 'GALATA BEYKOZ', '1638449856-kbi.jpg'),
(265, 70, 'GALATA BEYKOZ', '1638449880-zZb.png'),
(266, 70, 'GALATA BEYKOZ', '1638449912-gNr.jpg'),
(267, 70, 'GALATA BEYKOZ', '1638449932-PnF.jpg'),
(268, 70, 'GALATA BEYKOZ', '1638449968-bLo.jpg'),
(269, 70, 'GALATA BEYKOZ', '1638449990-WCH.jpg'),
(270, 70, 'GALATA BEYKOZ', '1638450019-ngn.jpg'),
(271, 70, 'GALATA BEYKOZ', '1638450040-GWd.jpg'),
(272, 71, 'VOOV KOLTUK 0530 0738166', '1638457663-Ocq.jpg'),
(273, 71, 'VOOV', '1638457698-CZQ.jpg'),
(274, 71, 'VOOV KOLTUK 0530 0738166', '1638457727-cpj.jpg'),
(275, 71, 'VOOV KOLTUK 0530 0738166', '1638457755-DHC.jpg'),
(276, 71, 'VOOV KOLTUK 0530 0738166', '1638457800-Aug.jpg'),
(277, 71, 'VOOV KOLTUK 0530 0738166', '1638457854-qrL.jpg'),
(278, 71, 'VOOV KOLTUK 0530 0738166', '1638457888-nfF.jpg'),
(279, 71, 'VOOV KOLTUK 0530 0738166', '1638457915-gio.jpg'),
(280, 71, 'VOOV KOLTUK 0530 0738166', '1638457943-BrE.jpg'),
(281, 71, 'VOOV KOLTUK 0530 0738166', '1638457963-APB.jpg'),
(282, 71, 'VOOV KOLTUK 0530 0738166', '1638457983-PSU.jpg'),
(283, 71, 'VOOV KOLTUK 0530 0738166', '1638458008-anf.jpg'),
(284, 71, 'VOOV KOLTUK 0530 0738166', '1638458040-Znx.jpg'),
(285, 71, 'VOOV KOLTUK 0530 0738166', '1638458129-xqf.jpg'),
(286, 71, 'VOOV KOLTUK 0530 0738166', '1638458156-KTa.jpg'),
(287, 71, 'VOOV KOLTUK 0530 0738166', '1638458253-svB.jpg'),
(288, 72, 'YENİ AVM 0507 8266946', '1638459603-CPE.jpg'),
(289, 72, 'YENİ AVM 0507 8266946', '1638459623-VWi.jpg'),
(290, 72, 'YENİ AVM 0507 8266946', '1638459646-auC.jpg'),
(291, 72, 'YENİ AVM 0507 8266946', '1638459669-acx.jpg'),
(292, 72, 'YENİ AVM 0507 8266946', '1638459695-YKb.jpg'),
(293, 72, 'YENİ AVM 0507 8266946', '1638459719-Nen.jpg'),
(294, 72, 'YENİ AVM 0507 8266946', '1638459739-jvX.jpg'),
(295, 73, 'YENİ AVM AHŞAP 0507 8266946', '1638462957-KmR.jpg'),
(296, 73, 'YENİ AVM AHŞAP 0507 8266946', '1638462973-Dna.jpg'),
(297, 73, 'YENİ AVM AHŞAP 0507 8266946', '1638463092-Etz.jpg'),
(298, 73, 'YENİ AVM AHŞAP 0507 8266946', '1638463126-bXh.jpg'),
(299, 73, 'YENİ AVM AHŞAP 0507 8266946', '1638463155-ubi.jpg'),
(300, 73, 'YENİ AVM AHŞAP 0507 8266946', '1638463180-Wmg.jpg'),
(301, 73, 'YENİ AVM AHŞAP 0507 8266946', '1638463201-pEA.jpg'),
(302, 73, 'YENİ AVM AHŞAP 0507 8266946', '1638463244-gUA.jpg'),
(303, 73, 'YENİ AVM AHŞAP 0507 8266946', '1638463309-bfT.jpg'),
(304, 74, 'BRAND HOME  05416008533', '1638466776-bbW.jpg'),
(305, 74, 'BRAND HOME  05416008533', '1638466795-oKy.jpg'),
(306, 74, 'BRAND HOME  05416008533', '1638466819-yRY.jpg'),
(307, 74, 'BRAND HOME  05416008533', '1638466839-Kue.jpg'),
(308, 74, 'BRAND HOME  05416008533', '1638466858-iev.jpg'),
(309, 74, 'BRAND HOME  05416008533', '1638466883-qvY.jpg'),
(310, 74, 'BRAND HOME  05416008533', '1638466901-uAk.jpg'),
(311, 74, 'BRAND HOME  05416008533', '1638466924-uQL.jpg'),
(312, 74, 'BRAND HOME  05416008533', '1638466956-EbU.jpg'),
(313, 74, 'BRAND HOME  05416008533', '1638466980-maJ.jpg'),
(314, 74, 'BRAND HOME  05416008533', '1638466999-xfb.jpg'),
(315, 74, 'BRAND HOME  05416008533', '1638467018-ESP.jpg'),
(316, 75, 'AYESSOFA AVŞA MODELİ 05432181877', '1638805198-PNL.png'),
(317, 75, 'AYESSOFA AVŞA MODELİ 05432181877', '1638805222-jKu.jpg'),
(318, 75, 'AYESSOFA AVŞA MODELİ 05432181877', '1638805241-xBe.jpg'),
(319, 75, 'AYESSOFA AVŞA MODELİ 05432181877', '1638805264-OPv.jpg'),
(320, 75, 'AYESSOFA AVŞA MODELİ 05432181877', '1638805283-OSu.jpg'),
(321, 76, 'SAGA MODEL MTERA 05427872606', '1638810451-wnY.jpg'),
(322, 76, 'SAGA MODEL MTERA 05427872606', '1638810472-KoZ.jpg'),
(323, 76, 'SAGA MODEL MTERA 05427872606', '1638810496-Bhe.jpg'),
(324, 76, 'SAGA MODEL MTERA 05427872606', '1638810514-TQt.jpg'),
(325, 76, 'SAGA MODEL MTERA 05427872606', '1638810535-hgG.jpg'),
(326, 76, 'SAGA MODEL MTERA 05427872606', '1638810561-jKK.jpg'),
(327, 76, 'SAGA MODEL MTERA 05427872606', '1638810585-ggE.jpg'),
(328, 76, 'SAGA MODEL MTERA 05427872606', '1638810607-sTg.jpg'),
(329, 76, 'SAGA MODEL MTERA 05427872606', '1638810626-QGT.jpg'),
(330, 77, 'SAGA CASTER AHŞAP  0542 787 2606', '1638811398-bvj.jpg'),
(331, 77, 'SAGA CASTER AHŞAP  0542 787 2606', '1638811419-kMk.jpg'),
(332, 77, 'SAGA CASTER AHŞAP  0542 787 2606', '1638811439-vey.jpg'),
(333, 77, 'SAGA CASTER AHŞAP  0542 787 2606', '1638811457-MOm.jpg'),
(334, 77, 'SAGA CASTER AHŞAP  0542 787 2606', '1638811480-Qqf.jpg'),
(335, 78, 'SAGA CASTER METAL 0542 787 2606', '1638812332-KAF.jpg'),
(336, 78, 'SAGA CASTER METAL 0542 787 2606', '1638812359-Nfc.jpg'),
(337, 78, 'SAGA CASTER METAL 0542 787 2606', '1638812388-hUx.jpg'),
(338, 78, 'SAGA CASTER METAL 0542 787 2606', '1638812413-SRM.jpg'),
(339, 78, 'SAGA CASTER METAL 0542 787 2606', '1638812452-iyn.jpg'),
(340, 78, 'SAGA CASTER METAL 0542 787 2606', '1638812477-sUa.jpg'),
(341, 78, 'SAGA CASTER METAL 0542 787 2606', '1638812504-bTj.jpg'),
(342, 79, 'cosion rivista', '1638813896-COD.jpg'),
(343, 79, 'COSİON SOFA RİVİSTA', '1638814035-mJn.jpg'),
(344, 79, 'COSİON SOFA RİVİSTA', '1638814056-HDD.jpg'),
(345, 79, 'COSİON SOFA RİVİSTA', '1638814073-aod.jpg'),
(346, 79, 'COSİON SOFA RİVİSTA', '1638814098-gMg.jpg'),
(347, 79, 'COSİON SOFA RİVİSTA', '1638814116-ZTP.jpg'),
(348, 79, 'COSİON SOFA RİVİSTA', '1638814139-aaZ.jpg'),
(349, 79, 'COSİON SOFA RİVİSTA', '1638814160-joh.jpg'),
(350, 79, 'cosion rivista 05076292174', '1638814194-vKN.jpg'),
(351, 80, 'KUKA   MOBİLYA TEYFİK DEMİR AYAK', '1638815591-YUy.jpg'),
(352, 80, 'KUKA   MOBİLYA TEYFİK DEMİR AYAK', '1638815615-Xog.jpg'),
(353, 80, 'KUKA', '1638815630-mNr.jpg'),
(354, 80, 'KUKA   MOBİLYA TEYFİK DEMİR AYAK', '1638815652-AKc.jpg'),
(355, 80, 'KUKA   MOBİLYA TEYFİK DEMİR AYAK', '1638815671-pOT.jpg'),
(356, 80, 'KUKA   MOBİLYA TEYFİK DEMİR AYAK', '1638815689-SAz.jpg'),
(357, 80, 'KUKA   MOBİLYA TEYFİK DEMİR AYAK', '1638815714-NRG.jpg'),
(358, 80, 'KUKA   MOBİLYA TEYFİK DEMİR AYAK', '1638815750-FKW.jpg'),
(359, 80, 'KUKA   MOBİLYA TEYFİK DEMİR AYAK', '1638815774-mno.jpg'),
(360, 80, 'KUKA   MOBİLYA TEYFİK DEMİR AYAK', '1638815834-Tnj.jpg'),
(361, 80, 'KUKA   MOBİLYA TEYFİK DEMİR AYAK', '1638816426-dXZ.jpg'),
(362, 80, 'KUKA   MOBİLYA TEYFİK DEMİR AYAK', '1638816512-PHW.jpg'),
(363, 81, 'kuka mobilya teyfik demir ayaklı', '1638862818-XSe.jpg'),
(364, 81, 'kuka mobilya teyfik demir ayaklı', '1638863005-Sit.jpg'),
(365, 81, 'kuka mobilya teyfik demir ayaklı', '1638863027-ATP.jpg'),
(366, 81, 'kuka mobilya teyfik demir ayaklı', '1638863070-vFO.jpg'),
(367, 81, 'kuka mobilya teyfik demir ayaklı', '1638863097-sps.jpg'),
(368, 81, 'kuka mobilya teyfik demir ayaklı', '1638863131-gyN.jpg'),
(369, 81, 'kuka mobilya teyfik demir ayaklı', '1638863147-WQC.jpg'),
(370, 81, 'kuka mobilya teyfik demir ayaklı', '1638863171-HUK.jpg'),
(371, 81, 'kuka mobilya teyfik demir ayaklı', '1638863195-CJJ.jpg'),
(372, 81, 'kuka mobilya teyfik demir ayaklı', '1638863219-LUR.jpg'),
(373, 81, 'kuka mobilya teyfik demir ayaklı', '1638863246-koB.jpg'),
(374, 82, 'bemente yeni', '1638864489-NAP.jpg'),
(375, 82, 'bemente yeni', '1638864505-Ggq.jpg'),
(376, 82, 'bemente yeni', '1638864524-Omn.jpg'),
(377, 82, 'bemente yeni', '1638864550-DiQ.jpg'),
(378, 82, 'bemente yeni', '1638864566-rwm.jpg'),
(379, 82, 'bemente yeni', '1638864587-sfv.jpg'),
(380, 82, 'bemente yeni', '1638864615-pWe.jpg'),
(381, 82, 'bemente yeni', '1638864634-rkg.jpg'),
(382, 82, 'bemente yeni', '1638864654-QLR.jpg'),
(383, 83, 'belami mir koltuk', '1638880141-dki.jpg'),
(384, 83, 'belami mir koltuk', '1638880200-kNd.jpg'),
(385, 83, 'belami mir koltuk', '1638880231-ngN.jpg'),
(386, 83, 'belami mir koltuk', '1638880253-fhw.jpg'),
(388, 83, 'belami mir koltuk', '1638880323-dxi.jpg'),
(389, 83, 'belami mir koltuk', '1638880390-Hqo.jpg'),
(390, 83, 'belami', '1638880424-neH.jpg'),
(391, 84, 'zafer koltuk  model efe ', '1638886478-syK.jpg'),
(392, 84, 'zafer', '1638886505-NSL.jpg'),
(393, 84, 'zafer koltuk  model efe ', '1638886524-aVy.jpg'),
(395, 84, 'zafer koltuk  model efe ', '1638886588-OPB.jpg'),
(396, 84, 'zafer koltuk  model efe ', '1638886605-zbb.jpg'),
(397, 84, 'zafer koltuk  model efe ', '1638886630-bDg.jpg'),
(398, 84, 'zafer koltuk  model efe ', '1638886650-uxh.jpg'),
(399, 84, 'zafer koltuk  model efe ', '1638886670-WMF.jpg'),
(400, 84, 'zafer koltuk  model efe ', '1638886694-PrZ.jpg'),
(401, 85, 'zafer koltuk fasulye', '1638896078-dca.jpg'),
(402, 85, 'zafer koltuk fasulye', '1638896101-ZYw.jpg'),
(403, 85, 'zafer koltuk fasulye', '1638896126-csZ.jpg'),
(404, 85, 'zafer koltuk fasulye', '1638896147-KbH.jpg'),
(405, 86, 'FATİH TEYFİKİN ARKADAŞI', '1638898085-cqS.jpg'),
(406, 86, 'FATİH TEYFİKİN ARKADAŞI', '1638898115-cKC.jpg'),
(407, 86, 'FATİH TEYFİKİN ARKADAŞI', '1638898150-Loc.jpg'),
(408, 86, 'FATİH', '1638898175-fvy.jpg'),
(409, 86, 'FATİH TEYFİKİN ARKADAŞI', '1638898197-bmD.jpg'),
(410, 86, 'FATİH TEYFİKİN ARKADAŞI', '1638898224-Wrm.jpg'),
(411, 86, 'FATİH TEYFİKİN ARKADAŞI', '1638898252-dHR.jpg'),
(412, 86, 'FATİH TEYFİKİN ARKADAŞI', '1638898273-Aqv.jpg'),
(413, 86, 'FATİH TEYFİKİN ARKADAŞI', '1638898381-ELF.jpg'),
(414, 87, 'KULA YUSUF ', '1638900579-rZx.jpg'),
(415, 87, 'KULA', '1638900601-DHm.jpg'),
(416, 87, 'KULA YUSUF ', '1638900626-kOm.jpg'),
(417, 87, 'KULA YUSUF ', '1638900646-cks.jpg'),
(418, 87, 'KULA YUSUF ', '1638900673-FQf.jpg'),
(419, 87, 'KULA YUSUF ', '1638900695-RAi.jpg'),
(420, 87, 'KULA YUSUF ', '1638900712-WWL.jpg'),
(421, 87, 'KULA YUSUF ', '1638900728-pJc.jpg'),
(422, 87, 'KULA YUSUF ', '1638900746-YPb.jpg'),
(423, 87, 'KULA YUSUF ', '1638900769-GmT.jpg'),
(424, 87, 'KULA YUSUF ', '1638900792-UNe.jpg'),
(425, 87, 'KULA YUSUF ', '1638900834-tis.jpg'),
(426, 87, 'KULA YUSUF ', '1638900867-qWy.jpg'),
(427, 87, 'KULA YUSUF ', '1638901017-Fcz.jpg'),
(428, 88, 'kula p kol modeli', '1638984335-mSc.jpg'),
(429, 88, 'kula p kol modeli', '1638984360-Lyu.jpg'),
(430, 88, 'kula p kol modeli', '1638984385-nfr.jpg'),
(431, 88, 'kula p kol modeli', '1638984406-Ork.jpg'),
(432, 88, 'kula p kol modeli', '1638984424-hSB.jpg'),
(433, 88, 'kula p kol modeli', '1638984443-Ofx.jpg'),
(434, 88, 'kula p kol modeli', '1638984578-kAV.jpg'),
(435, 88, 'kula p kol modeli', '1638984598-ozg.jpg'),
(436, 88, 'kula p kol modeli', '1638984619-SBw.jpg'),
(437, 88, 'kula p kol modeli', '1638984636-MKh.jpg'),
(438, 89, 'ilfa  eski', '1638985917-ZcM.jpg'),
(439, 89, 'ilfa  eski', '1638985933-Hbb.jpg'),
(440, 89, 'ilfa  eski', '1638985948-fau.jpg'),
(441, 89, 'ilfa  eski', '1638985978-aOp.jpg'),
(442, 89, 'ilfa  eski', '1638985999-eFH.jpg'),
(443, 89, 'ilfa  eski', '1638986017-vDC.jpg'),
(444, 89, 'ilfa  eski', '1638986039-TAw.jpg'),
(445, 89, 'ilfa  eski', '1638986064-frH.jpg'),
(446, 90, 'kula spor model', '1638987738-QGW.jpg'),
(447, 90, 'kula spor model', '1638987756-gxe.jpg'),
(448, 90, 'kula spor model', '1638987774-QTo.jpg'),
(449, 90, 'kula spor model', '1638987808-Lqs.jpg'),
(450, 90, 'kula spor model', '1638987826-Mwt.jpg'),
(451, 90, 'kula spor model', '1638987844-Xwf.jpg'),
(452, 90, 'kula spor model', '1638987863-mkj.jpg'),
(453, 90, 'kula spor model', '1638987883-HaY.jpg'),
(454, 90, 'kula spor model', '1638987904-GZi.jpg'),
(455, 90, 'kula spor model', '1638987928-ubq.jpg'),
(456, 90, 'kula spor model', '1638987948-ysq.jpg'),
(458, 90, 'kula spor model', '1638988004-MnE.jpg'),
(459, 90, 'kula p kol modeli', '1638988036-eBh.jpg'),
(460, 90, 'kula p kol modeli', '1638988063-PJr.jpg'),
(461, 90, 'kula spor model', '1638988098-ZOr.jpg'),
(462, 90, 'kula spor model', '1638988136-yWX.jpg'),
(463, 91, 'arwen mss .boss MRS ', '1639055961-JUz.jpg'),
(464, 91, 'arwen mss .boss MRS ', '1639056018-yrA.jpg'),
(465, 91, 'arwen mss .boss MRS ', '1639056039-FMb.jpg'),
(466, 91, 'arwen mss .boss MRS ', '1639056069-VSc.jpg'),
(467, 91, 'arwen mss .boss MRS ', '1639056101-TTs.jpg'),
(468, 91, 'ARWEN', '1639056128-BxJ.jpg'),
(470, 93, 'eswed asel aytaşı', '1639157838-CQc.jpg'),
(471, 93, 'eswed asel aytaşı', '1639157863-RGJ.jpg'),
(472, 93, 'eswed asel aytaşı', '1639157892-uCH.jpg'),
(473, 93, 'eswed asel aytaşı', '1639157918-efF.jpg'),
(474, 93, 'eswed asel aytaşı', '1639157936-BcL.jpg'),
(475, 93, 'eswed', '1639157965-Zhd.jpg'),
(476, 95, 'eswed vera yatak odası', '1639158938-hfC.jpg'),
(477, 95, 'eswed vera yatak odası', '1639158968-mPZ.jpg'),
(479, 95, 'eswed vera yatak odası', '1639159018-vJd.jpg'),
(480, 95, 'eswed vera yatak odası', '1639159045-kqu.jpg'),
(481, 95, 'eswed vera yatak odası', '1639159078-Usj.jpg'),
(482, 96, 'eswed vera kumtaşı', '1639159644-bEG.jpg'),
(483, 96, 'eswed vera kumtaşı', '1639159667-bgz.jpg'),
(484, 96, 'eswed vera kumtaşı', '1639159689-Acz.jpg'),
(485, 96, 'eswed vera kumtaşı', '1639159710-XCX.jpg'),
(486, 97, 'eswed klas ceviz yatak odası', '1639212431-jsq.jpg'),
(487, 97, 'eswed klas ceviz yatak odası', '1639212458-hAB.jpg'),
(488, 97, 'eswed klas ceviz yatak odası', '1639212503-GFP.jpg'),
(489, 97, 'eswed klas ceviz yatak odası', '1639212534-CNF.jpg'),
(490, 99, 'Gardolabe alfa yatak odası', '1639213913-MTD.jpg'),
(491, 99, 'Gardolabe alfa yatak odası', '1639213933-dcH.jpg'),
(492, 99, 'Gardolabe alfa yatak odası', '1639213956-wPg.jpg'),
(493, 99, 'gar', '1639213981-usH.jpg'),
(494, 99, 'Gardolabe alfa yatak odası', '1639214068-Beg.jpg'),
(495, 100, 'volente koltuk takımı', '1639214786-nzq.jpg'),
(496, 100, 'volente koltuk takımı', '1639214806-nPg.jpg'),
(497, 100, 'volente koltuk takımı', '1639214830-dNz.jpg'),
(498, 100, 'volente koltuk takımı', '1639214872-khA.jpg'),
(499, 100, 'volente koltuk takımı', '1639214895-Xct.jpg'),
(500, 100, 'volente koltuk takımı', '1639214913-ifF.jpg'),
(501, 101, 'elmalı mobilya', '1639241737-oMe.jpg'),
(502, 101, 'elmalı mobilya', '1639241752-krT.jpg'),
(503, 101, 'elmalı mobilya', '1639241769-thw.jpg'),
(504, 102, 'GARDOLEBE WHİTE YATAK ODASI', '1639305576-XRQ.jpg'),
(505, 102, 'GARDOLEBE WHİTE YATAK ODASI', '1639305612-ODF.jpg'),
(506, 102, 'GARDOLEBE WHİTE YATAK ODASI', '1639305632-fWF.jpg'),
(507, 102, 'GARDOLEBE WHİTE YATAK ODASI', '1639305657-VYv.jpg'),
(508, 102, 'GARDOLEBE WHİTE YATAK ODASI', '1639305691-Uon.jpg'),
(509, 102, 'GARDOLEBE WHİTE YATAK ODASI', '1639305718-OJs.jpg'),
(510, 103, 'alper  koltuk SİDNEY MODELİ', '1639386350-JJY.jpg'),
(511, 103, 'alper  koltuk SİDNEY MODELİ', '1639386375-xYf.jpg'),
(513, 103, 'alper  koltuk SİDNEY MODELİ', '1639386429-DbL.jpg'),
(514, 103, 'alper  koltuk SİDNEY MODELİ', '1639387093-Rsh.jpg'),
(515, 104, 'serhat mobilya oslo koltuk', '1639422308-kEQ.jpg'),
(516, 104, 'serhat mobilya oslo koltuk', '1639422330-fxU.jpg'),
(517, 104, 'serhat mobilya oslo koltuk', '1639422347-UFc.jpg'),
(518, 104, 'serhat mobilya oslo koltuk', '1639422365-Vis.jpg'),
(519, 105, 'gardolebe lotus yatak odası', '1639423062-pmA.jpg'),
(520, 105, 'gardolebe lotus yatak odası', '1639423080-yJX.jpg'),
(521, 105, 'gardolebe lotus yatak odası', '1639423100-sgj.jpg'),
(522, 105, 'gardolebe lotus yatak odası', '1639423117-Lvq.jpg'),
(523, 105, 'gardolebe lotus yatak odası', '1639423137-hoc.jpg'),
(524, 105, 'gardolebe lotus yatak odası', '1639423156-KKc.jpg'),
(525, 106, 'gardolebe santino yatak odası', '1639424006-jei.jpg'),
(526, 106, 'gardolebe santino yatak odası', '1639424033-GwC.jpg'),
(527, 106, 'gardolebe santino yatak odası', '1639424050-PDy.jpg'),
(528, 106, 'gardolebe santino yatak odası', '1639424069-Kjn.jpg'),
(529, 106, 'gardolebe santino yatak odası', '1639424086-eOM.jpg'),
(530, 106, 'gardolebe santino yatak odası', '1639424123-uCH.jpg'),
(531, 107, 'calitelli marbella modeli', '1639499971-FPe.jpg'),
(532, 107, 'calitelli marbella modeli', '1639500013-eWy.jpg'),
(533, 107, 'calitelli marbella modeli', '1639500038-TyE.jpg'),
(534, 107, 'calitelli marbella modeli', '1639500061-aGu.jpg'),
(535, 107, 'calitelli marbella modeli', '1639500102-bUm.jpg'),
(536, 107, 'calitelli marbella modeli', '1639500480-abZ.jpg'),
(537, 108, 'calitelli marbella sürgülü yatak odası', '1639500589-GYs.jpg'),
(538, 108, 'calitelli marbella sürgülü yatak odası', '1639500611-HFt.jpg'),
(539, 108, 'calitelli marbella sürgülü yatak odası', '1639500642-vkk.jpg'),
(540, 108, 'calitelli marbella sürgülü yatak odası', '1639500662-nYX.jpg'),
(541, 109, 'SANTRA İSTANBUL MODELİ', '1639504711-qjx.jpg'),
(542, 109, 'SANTRA İSTANBUL MODELİ', '1639504730-kbs.jpg'),
(543, 109, 'SANTRA İSTANBUL MODELİ', '1639504750-bAG.jpg'),
(544, 109, 'SANTRA İSTANBUL MODELİ', '1639504768-FAw.jpg'),
(545, 109, 'SANTRA İSTANBUL MODELİ', '1639504791-KqW.png'),
(546, 109, 'SANTRA İSTANBUL MODELİ', '1639504826-UXi.jpg'),
(547, 109, 'SANTRA İSTANBUL MODELİ', '1639507348-xnE.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Images` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `Name` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `Email` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `Password` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `lockedCount` tinyint(1) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`ID`, `Images`, `Name`, `Email`, `Password`, `lockedCount`, `CreateDate`) VALUES
(1, 'users.jpg', 'Osman Yıldız', 'musa@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '2021-12-13 12:03:32');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `categoriesmain`
--
ALTER TABLE `categoriesmain`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `productsimages`
--
ALTER TABLE `productsimages`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `categoriesmain`
--
ALTER TABLE `categoriesmain`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- Tablo için AUTO_INCREMENT değeri `productsimages`
--
ALTER TABLE `productsimages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=548;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
