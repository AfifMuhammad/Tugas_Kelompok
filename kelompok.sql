-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2017 at 01:09 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kelompok`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
`id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `alamat`) VALUES
(3, 'Afif', 'Sleman'),
(4, 'Beda', 'Palembang'),
(5, 'Budi', 'Bandung'),
(6, 'saya', 'jogja');

-- --------------------------------------------------------

--
-- Table structure for table `import`
--

CREATE TABLE IF NOT EXISTS `import` (
  `npsn` char(8) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(70) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `kec` varchar(30) NOT NULL,
  `kab` varchar(30) NOT NULL,
  `jenjang` varchar(5) NOT NULL,
  `status` varchar(10) NOT NULL,
  `akreditasi` char(3) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `import`
--

INSERT INTO `import` (`npsn`, `nama`, `alamat`, `desa`, `kec`, `kab`, `jenjang`, `status`, `akreditasi`, `telepon`) VALUES
('20400103', 'SD NEGERI SEYEGAN', 'Seyegan,srihardono,pundong', 'SRIHARDONO', 'Kec. Pundong', 'Kab. Bantul', 'SD', 'Negeri', '-', '2749265329'),
('20400105', 'SD SEMUTEN', 'Semuten, Jatimulyo,dlingo', 'JATIMULYO', 'Kec. Kasihan', 'Kab. Bantul', 'SD', 'Negeri', '-', '81328762223'),
('20400106', 'SD NEGERI SEMBUNGAN', 'Sembungan, Bangunjiwo,kasihan', 'BANGUNJIWO', 'Kec. Banguntapan', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274-7418816'),
('20400114', 'SD NEGERI SUTRAN', 'Sutran, Sabdodadi,bantul', 'SABDODADI', 'Kec. Pundong', 'Kab. Bantul', 'SD', 'Negeri', '-', '2746608628'),
('20400138', 'SD NEGERI PLAKARAN', 'Plakaran, Baturetno,banguntapan', 'BATURETNO', 'Kec. Sanden', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274-7100097'),
('20400139', 'SD NEGERI PIYUNGAN', 'Jl. Piyungan-prambanan Km 0,1; Srimulyo,Piyungan, Bantul', 'Srimulyo', 'Kec. Piyungan', 'Kab. Bantul', 'SD', 'Negeri', 'A', '2744353007'),
('20400140', 'SD NEGERI PIRING', 'Piring, Murtigading,sanden', 'MURTIGADING', 'Kec. Piyungan', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274 7102833'),
('20400148', 'SD NEGERI ROJONITEN', 'Patihan, Gadingsari,sanden', 'GADINGSARI', 'Kec. Piyungan', 'Kab. Bantul', 'SD', 'Negeri', '-', '2749232406'),
('20400152', 'SD NEGERI PENI', 'Jl. Sultan Agung Peni Palbapang Bantul', 'PALBAPANG', 'Kec. Bantul', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274-6462711'),
('20400173', 'SD NEGERI WIYORO', 'Wiyoro, Baturetno,banguntapan', 'BATURETNO', 'Kec. Srandakan', 'Kab. Bantul', 'SD', 'Negeri', 'B', '0274-443375'),
('20400175', 'SD NEGERI TIMBULHARJO', 'Tembi', 'Timbulharjo', 'Kec. Sewon', 'Kab. Bantul', 'SD', 'Negeri', '-', '2746463069'),
('20400179', 'SD NEGERI TEGALSARI', 'Baran, Srigading,sanden', 'SRIGADING', 'Kec. Sanden', 'Kab. Bantul', 'SD', 'Negeri', 'B', '2747828018'),
('20400185', 'SD NEGERI TRUCUK', 'Trucuk, Triwidadi, Pajangan', 'TRIWIDADI', 'Kec. Pajangan', 'Kab. Bantul', 'SD', 'Negeri', 'B', '8157922779'),
('20400195', 'SD NEGERI PELEM', 'Salam, Temuwuh,dlingo', 'TEMUWUH', 'Kec. Dlingo', 'Kab. Bantul', 'SD', 'Negeri', '-', '-'),
('20400196', 'SD NEGERI LEMAHRUBUH', 'Lemahrubuh, Selopamioro,imogiri', 'SELOPAMIORO', 'Kec. Imogiri', 'Kab. Bantul', 'SD', 'Negeri', '-', '85643711445'),
('20400198', 'SD SABDODADI KEYONGAN', 'Jl. Parangtritis Km 10,5, Sabdodadi,bantul', 'Sabdodadi', 'Kec. Bantul', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274-6462589'),
('20400203', 'SD NEGERI KEMBANGAN', 'Kembangan, Sumbermulyo,bambanglipuro', 'SUMBERMULYO', 'Kec. Bambang Lipuro', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274 787845'),
('20400206', 'SD I TRIRENGGO', 'Klembon, Trirenggo,bantul', 'Trirenggo', 'Kec. Srandakan', 'Kab. Bantul', 'SD', 'Negeri', '-', '2748363234'),
('20400212', 'SD 2 PANJANGREJO', 'Krapyak, Panjangrejo,pundong', 'PANJANGREJO', 'Kec. Pundong', 'Kab. Bantul', 'SD', 'Negeri', 'A', '8282922127'),
('20400215', 'SD NEGERI KOWANG', 'Kowang', 'Trimulyo', 'Kec. Jetis', 'Kab. Bantul', 'SD', 'Negeri', 'A', '85103104333'),
('20400223', 'SD NEGERI KALIPUCANG', 'Kalipucang, Bangunjiwo,kasihan', 'BANGUNJIWO', 'Kec. Bantul', 'Kab. Bantul', 'SD', 'Negeri', '-', '2746461448'),
('20400225', 'SD NEGERI KALIGATUK', 'Kaligatuk, Srimulyo,piyungan', 'SRIMULYO', 'Kec. Bambang Lipuro', 'Kab. Bantul', 'SD', 'Negeri', '-', '87845787866'),
('20400229', 'SD NEGERI KARANGJATI', 'Tamantirto', 'TAMANTIRTO', 'Kec. Kasihan', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274 413027'),
('20400230', 'SD NEGERI KEBONAGUNG', 'Kebonagung, Kebonagung,imogiri', 'KEBONAGUNG', 'Kec. Pleret', 'Kab. Bantul', 'SD', 'Negeri', 'A', '2747480200'),
('20400238', 'SD KARANGMOJO', 'Karangmojo, Trirenggo,bantul', 'TRIRENGGO', 'Kec. Bantul', 'Kab. Bantul', 'SD', 'Negeri', 'B', '2746536902'),
('20400252', 'SD NEGERI PAYUNGAN', 'Payungan', 'Triharjo', 'Kec. Pandak', 'Kab. Bantul', 'SD', 'Negeri', '-', '2748382132'),
('20400257', 'SD NEGERI PAKIS', 'Pakis 2, Dlingo,dlingo', 'DLINGO', 'Kec. Dlingo', 'Kab. Bantul', 'SD', 'Negeri', '-', '87838700317'),
('20400264', 'SD NEGERI MANGUNAN', 'Mangunan, Mangunan, Dlingo', 'MANGUNAN', 'Kec. Banguntapan', 'Kab. Bantul', 'SD', 'Negeri', '-', '82892674697'),
('20400270', 'SEKOLAH DASAR NEGERI MOJOSARI', 'Mojosari', 'Srimartani', 'Kec. Piyungan', 'Kab. Bantul', 'SD', 'Negeri', 'A', '81392699494'),
('20400274', 'SD NEGERI NGASINAN', 'Nogosari II, Wukirsari,imogiri', 'WUKIRSARI', 'Kec. Imogiri', 'Kab. Bantul', 'SD', 'Negeri', '-', '-'),
('20400457', 'SD NEGERI BANTULAN', 'Bantulan, Gilangharjo,pandak', 'GILANGHARJO', 'Kec. Pandak', 'Kab. Bantul', 'SD', 'Negeri', '-', '( 0274 ) 646039'),
('20400462', 'SD MUHAMMADIYAH SENGGOTAN', 'Senggotan, Tirtonirmolo,kasihan', 'TIRTONIRMOLO', 'Kec. Pleret', 'Kab. Bantul', 'SD', 'Swasta', '-', '2744398118'),
('20400464', 'SD MUH PULOKADANG', 'Pulokadang, Canden,jetis', 'CANDEN', 'Kec. Pleret', 'Kab. Bantul', 'SD', 'Swasta', 'A', '0274-7484443'),
('20400467', 'SD MUH TRISIGAN', 'Trisigan, Murtigading,sanden', 'MURTIGADING', 'Kec. Pleret', 'Kab. Bantul', 'SD', 'Swasta', '-', '87738091049'),
('20400468', 'SD MUH WONOKROMO 1', 'Wonokromo I', 'WONOKROMO', 'Kec. Pleret', 'Kab. Bantul', 'SD', 'Swasta', 'A', '2744415045'),
('20400470', 'SD NEGERI 1 BANJARHARJO', 'Muntuk', 'MUNTUK', 'Kec. Dlingo', 'Kab. Bantul', 'SD', 'Negeri', '-', '81804366679'),
('20400476', 'SD MUH WONOKROMO 2', 'Dahromo, Segoroyoso,pleret', 'SEGOROYOSO', 'Kec. Piyungan', 'Kab. Bantul', 'SD', 'Swasta', 'A', '274441415'),
('20400479', 'SD MUHAMMADIYAH KALIPAKEM 2', 'Kalipakem, Seloharjo,Pundong', 'SELOHARJO', 'Kec. Sedayu', 'Kab. Bantul', 'SD', 'Swasta', 'B', '87738122112'),
('20400488', 'SD MUH KALIPAKEM I', 'Blali, Seloharjo,pundong', 'SELOHARJO', 'Kec. Pundong', 'Kab. Bantul', 'SD', 'Swasta', '-', '8282743853'),
('20400490', 'SD MUHAMMADIYAH PANDES', 'Pandes, Wonokromo,pleret', 'WONOKROMO', 'Kec. Banguntapan', 'Kab. Bantul', 'SD', 'Swasta', 'A', '2746551746'),
('20400500', 'SD NEGERI 1 PEDES', 'Jln Wates Km 10 Yogyakarta', 'ARGOMULYO', 'Kec. Sanden', 'Kab. Bantul', 'SD', 'Negeri', 'B', '0274 649 817'),
('20400501', 'SDN PAYAK', 'Payak', 'Srimulyo', 'Kec. Piyungan', 'Kab. Bantul', 'SD', 'Negeri', '-', '8122758001'),
('20400504', 'SD PANGGANG', 'Tempel', 'Sidomulyo', 'Kec. Bambang Lipuro', 'Kab. Bantul', 'SD', 'Negeri', 'B', '81328703540'),
('20400509', 'SD NEGERI PUCUNG', 'Pucung, Wukirsari,imogiri', 'WUKIRSARI', 'Kec. Imogiri', 'Kab. Bantul', 'SD', 'Negeri', 'A', ''),
('20400510', 'SD NEGERI I PUNDONG', 'Tangkil, Srihardono, Pundong', 'Srihardono', 'Kec. Pundong', 'Kab. Bantul', 'SD', 'Negeri', 'A', '82892084236'),
('20400523', 'SD NEGERI 1 DODOGAN', 'Dodogan, Jatimulyo,dlingo', 'JATIMULYO', 'Kec. Pajangan', 'Kab. Bantul', 'SD', 'Negeri', '-', '87838191797'),
('20400525', 'SD NEGERI 1 DINGKIKAN', 'Dingkikan, Argodadi,sedayu', 'ARGODADI', 'Kec. Piyungan', 'Kab. Bantul', 'SD', 'Negeri', '-', '2747431034'),
('20400533', 'SD NEGERI KREKAH', 'Krekah, Gilangharjo, Pandak', 'GILANGHARJO', 'Kec. Pandak', 'Kab. Bantul', 'SD', 'Negeri', '-', '2746543773'),
('20400535', 'SD NEGERI KEMBANGSARI', 'Munggur', 'Srimartani', 'Kec. Piyungan', 'Kab. Bantul', 'SD', 'Negeri', 'A', '2744536843'),
('20400538', 'SD NEGERI JEJERAN', 'Ketonggo, Wonokromo,pleret', 'WONOKROMO', 'Kec. Bantul', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274-4415221'),
('20400592', 'SD KANISIUS KEMBARAN', 'Kembaran, Tamantirto,kasihan', 'TAMANTIRTO', 'Kec. Kasihan', 'Kab. Bantul', 'SD', 'Swasta', '-', '81578708228'),
('20400595', 'SD MUH AMBARBINANGUN', 'Ambarbinangun, Tirtonirmolo,kasihan', 'TIRTONIRMOLO', 'Kec. Bantul', 'Kab. Bantul', 'SD', 'Swasta', '-', '2746847636'),
('20400596', 'SD MUH ARGOSARI', 'Tapen, Argosari,sedayu', 'ARGOSARI', 'Kec. Sedayu', 'Kab. Bantul', 'SD', 'Swasta', '-', '2747141760'),
('20400597', 'SD MUH. BABAKAN', 'Babakan, Poncosari,srandakan', 'PONCOSARI', 'Kec. Srandakan', 'Kab. Bantul', 'SD', 'Swasta', '-', '85878447904'),
('20400598', 'SD MUHAMMADIYAH DUKUH WIDARAN', 'Dukuh Widaran, Sidomulyo,Bambanglipuro', 'Sidomulyo', 'Kec. Bambang Lipuro', 'Kab. Bantul', 'SD', 'Swasta', '-', '81328525459'),
('20400599', 'SD MUH BOJONG', 'Bojong, Wonolelo,pleret', 'WONOLELO', 'Kec. Sedayu', 'Kab. Bantul', 'SD', 'Swasta', 'A', '8112655791'),
('20400600', 'SD MUH BODON', 'Bodon, Jagalan,banguntapan', 'JAGALAN', 'Kec. Kretek', 'Kab. Bantul', 'SD', 'Swasta', '-', '0274-375429'),
('20400601', 'SD MUH BLAWONG II', 'Ponggok II', 'Trimulyo', 'Kec. Pleret', 'Kab. Bantul', 'SD', 'Swasta', 'A', '0274-7138202'),
('20400603', 'SD MUH. BENDO', 'Bendo, Trimurti,srandakan', 'TRIMURTI', 'Kec. Bantul', 'Kab. Bantul', 'SD', 'Swasta', '-', '0274 711 1016'),
('20400605', 'SD MUH. BANGUNTAPAN', 'Jl. Wonosari Km 5, Banguntapan', 'BANGUNTAPAN', 'Kec. Banguntapan', 'Kab. Bantul', 'SD', 'Swasta', '-', '0274 7102206'),
('20400621', 'SD IT AR RAIHAN', 'Sumberbatikan', 'trirenggo', 'Kec. Bantul', 'Kab. Bantul', 'SD', 'Swasta', '-', '87738468080'),
('20400622', 'SD BOPKRI TUREN', 'Jl Mgr Sugiyopranoto no 169', 'BANTUL', 'Kec. Pundong', 'Kab. Bantul', 'SD', 'Swasta', '-', '8562925295'),
('20400628', 'SD NEGERI 1 SEWON', 'Cabeyan, Panggungharjo,sewon', 'PANGGUNGHARJO', 'Kec. Sewon', 'Kab. Bantul', 'SD', 'Negeri', '-', '445580'),
('20400629', 'SD NEGERI CEGOKAN', 'Cegokan, Wonolelo,pleret', 'WONOLELO', 'Kec. Imogiri', 'Kab. Bantul', 'SD', 'Negeri', 'B', '85866606039'),
('20400630', 'SD BECARI', 'Dukuh', 'Seloharjo', 'Kec. Pundong', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274-7461521'),
('20400631', 'SD NEGERI BAWURAN', 'Tegalrejo', 'Bawuran', 'Kec. Pundong', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274 441149'),
('20400633', 'SD N BARAN', 'Piring', 'Srihardono', 'Kec. Pandak', 'Kab. Bantul', 'SD', 'Negeri', 'A', '2746464180'),
('20400635', 'SD NEGERI BANYURIPAN', 'Kenalan', 'BANGUNJIWO', 'Kec. Pandak', 'Kab. Bantul', 'SD', 'Negeri', '-', '81903792125'),
('20400638', 'SD NEGERI BEJI', 'Beji', 'SENDANGSARI', 'Kec. Sewon', 'Kab. Bantul', 'SD', 'Negeri', '-', '(0274) 66546'),
('20400645', 'SD NEGERI BONGGALAN', 'Bonggalan, Srigading,sanden', 'SRIGADING', 'Kec. Sanden', 'Kab. Bantul', 'SD', 'Negeri', 'B', '2746464321'),
('20400648', 'SD NEGERI BIBIS', 'Bibis, Bangunjiwo,kasihan', 'BANGUNJIWO', 'Kec. Kasihan', 'Kab. Bantul', 'SD', 'Negeri', '-', '2742650562'),
('20400664', 'SD NEGERI BALONG', 'Balong', 'Timbulharjo', 'Kec. Sewon', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274-6829909'),
('20400665', 'SD NEGERI BAKULAN', 'BAKULAN PATALAN JETIS BANTUL YOGYAKARTA', 'PATALAN', 'Kec. Pleret', 'Kab. Bantul', 'SD', 'Negeri', 'A', '0274 6460226'),
('20400670', 'SD NEGERI 2 PATALAN', 'Ketandan', 'Patalan', 'Kec. Banguntapan', 'Kab. Bantul', 'SD', 'Negeri', '-', '81328012633'),
('20400672', 'SD NEGERI PALBAPANG BARU', 'Kadirojo, Palbapang,bantul', 'PALBAPANG', 'Kec. Sanden', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274 6462256'),
('20400676', 'SD NEGERI JARANAN', 'PRINGGOLAYAN', 'BANGUNTAPAN', 'Kec. Banguntapan', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274 452459'),
('20400684', 'SD NEGERI JETIS', 'jln Wates km 13,jetis, argosari, sedayu, bantul', 'argosari', 'Kec. Kasihan', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274-6507026'),
('20400686', 'SD NEGERI KABREGAN', 'KABREGAN', 'SRIMULYO', 'Kec. Piyungan', 'Kab. Bantul', 'SD', 'Negeri', '-', '2744353314'),
('20400695', 'SD NEGERI DONOTIRTO', 'Donotirto, Bangunjiwo,kasihan', 'BANGUNJIWO', 'Kec. Bantul', 'Kab. Bantul', 'SD', 'Negeri', 'A', '0274-7124491'),
('20400699', 'SD DAHROMO', 'Trukan', 'Segoroyoso', 'Kec. Pleret', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274 441287'),
('20400704', 'SD NEGERI GANDOK', 'Gandok, Timbulharjo,sewon', 'TIMBUHARJO', 'Kec. Pleret', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274-4396233'),
('20400719', 'SD NEGERI 2 CEPOKOJAJAR', 'Padangan, Sitimulyo,piyungan', 'SITIMULYO', 'Kec. Piyungan', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274 4536137'),
('20400733', 'SD NEGERI JARAKAN', 'Jl. Bantul Km 5, Panggungharjo,sewon', 'PANGGUNGHARJO', 'Kec. Bantul', 'Kab. Bantul', 'SD', 'Negeri', 'A', '0274-382155'),
('20400737', 'SD NEGERI 2 BANJARHARJO', 'Banjarharjo II, Muntuk,dlingo', 'MUNTUK', 'Kec. Pundong', 'Kab. Bantul', 'SD', 'Negeri', '-', ''),
('20400742', 'SD N 1 SRIBITAN', 'Sribitan, Bangunjiwo,kasihan', 'BANGUNJIWO', 'Kec. Kasihan', 'Kab. Bantul', 'SD', 'Negeri', '-', '2746465250'),
('20400747', 'SD NEGERI 1 TERONG', 'Jl. Patuk-Dlingo Km 6', 'Terong', 'Kec. Dlingo', 'Kab. Bantul', 'SD', 'Negeri', '-', '8282744891'),
('20400750', 'SD NEGERI WOJO', 'Jl. Imogiri Barat Km 5, Bangunharjo,sewon', 'BANGUNHARJO', 'Kec. Bantul', 'Kab. Bantul', 'SD', 'Negeri', 'A', '(0274)380995'),
('20400757', 'SD NEGERI SONO', 'Kretek, Parangtritis,kretek', 'PARANGTRITIS', 'Kec. Kretek', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274 7104687'),
('20400759', 'SD NEGERI TIRTOHARGO', 'Gegunung', 'TIRTOHARGO', 'Kec. Kasihan', 'Kab. Bantul', 'SD', 'Negeri', 'A', '85101847800'),
('20400762', 'SD NEGERI 2 TEMUWUH', 'Tanjan, Temuwuh,Dlingo', 'Temuwuh', 'Kec. Dlingo', 'Kab. Bantul', 'SD', 'Negeri', '-', '87838816212'),
('20400770', 'SD NEGERI 3 KADIPIRO', 'Sonopakis Lor, Ngestiharjo,kasihan', 'NGESTIHARJO', 'Kec. Sanden', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274-6556319'),
('20400783', 'SD NEGERI 2 PEDES', 'Surobayan, Argomulyo,sedayu', 'ARGOMULYO', 'Kec. Kretek', 'Kab. Bantul', 'SD', 'Negeri', 'B', '6498182'),
('20400792', 'SD NEGERI KAUMAN', 'Kauman', 'Pleret', 'Kec. Sewon', 'Kab. Bantul', 'SD', 'Negeri', 'A', '274441238'),
('20400799', 'SD N 2 SANDEN', 'Pucanganom', 'MURTIGADING', 'Kec. Piyungan', 'Kab. Bantul', 'SD', 'Negeri', 'A', '2746464329'),
('20400801', 'SD NEGERI 2 SABDODADI', 'Bangeran, Sabdodadi, Bantul', 'Sabdodadi', 'Kec. Kasihan', 'Kab. Bantul', 'SD', 'Negeri', 'A', '85102586975'),
('20403529', 'SD NEGERI REJODADI', 'Brengosan', 'Ngestiharjo', 'Kec. Sewon', 'Kab. Bantul', 'SD', 'Negeri', '-', '0274-415771'),
('20403530', 'SD NEGERI JOLOSUTRO', 'Jolosutro, Srimulyo, Piyungan, Bantul', 'SRIMULYO', 'Kec. Piyungan', 'Kab. Bantul', 'SD', 'Negeri', '-', '2746651285'),
('69852105', 'SD KLENGGOTAN', 'KLENGGOTAN, SRIMULYO, PIYUNGAN, BANTUL', 'Srimulyo', 'Kec. Piyungan', 'Kab. Bantul', 'SD', 'Negeri', '-', '85868122545'),
('69886261', 'SD IT INSAN MULIA', 'JL. GANJURAN MULYODADI BEBEKAN DESTAN MULYODADI BAMBANGLIPURO', 'MULYODADI', 'Kec. Bambang Lipuro', 'Kab. Bantul', 'SD', 'Swasta', '-', '87837556079');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import`
--
ALTER TABLE `import`
 ADD PRIMARY KEY (`npsn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
