-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql312.byethost14.com
-- Generation Time: Aug 05, 2015 at 10:51 AM
-- Server version: 5.6.22-71.0
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `b14_15264799_qltc`
--

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE IF NOT EXISTS `guest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ascii` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `money` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=314 ;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`id`, `name`, `name_ascii`, `group`, `description`, `money`) VALUES
(1, 'Cẩm Huy', 'cam huy', 1, 'ITEC', '500'),
(2, 'Kiến Huy', 'kien huy', 1, 'ITEC', '500'),
(3, 'Đức', 'duc', 1, 'ITEC', '300'),
(4, 'Giang', 'giang', 1, 'ITEC', '300'),
(5, 'Tâm', 'tam', 1, 'ITEC', '300'),
(6, 'Hải Phong', 'hai phong', 1, 'ITEC', '300'),
(7, 'Vỹ Phong', 'vy phong', 1, 'ITEC', '250'),
(8, 'Thiện', 'thien', 1, 'ITEC', '300'),
(9, 'Tuấn', 'tuan', 1, 'ITEC', '600'),
(10, 'Trọng', 'trong', 1, 'ITEC', '500'),
(11, 'Lăng', 'lang', 1, 'ITEC', '300'),
(12, 'Sơn', 'son', 1, 'ITEC', '300'),
(13, 'Huy', 'huy', 1, 'Cấp 2', '500'),
(14, 'Đạt', 'dat', 1, 'Cấp 2', '1000'),
(15, 'Thầy Tú', 'thay tu', 2, 'Nguyễn Khuyến', '300'),
(16, 'Bảo Ngọc', 'bao ngoc', 2, 'Nguyễn Khuyến', '1000'),
(17, 'Chi', 'chi', 2, 'Nguyễn Khuyến', NULL),
(18, 'Thơ', 'tho', 2, 'Nguyễn Khuyến', '300'),
(19, 'Uyên', 'uyen', 2, 'Nguyễn Khuyến', NULL),
(20, 'Sang', 'sang', 2, 'Nguyễn Khuyến', NULL),
(21, 'Ngọc Trường', 'ngoc truong', 2, 'Nguyễn Khuyến', NULL),
(22, 'Nguyên', 'nguyen', 2, 'Nguyễn Khuyến', NULL),
(23, 'Nam', 'nam', 2, 'Nguyễn Khuyến', '500'),
(24, 'Hạo', 'hao', 2, 'Nguyễn Khuyến', '400'),
(25, 'Duy', 'duy', 2, 'Nguyễn Khuyến', NULL),
(26, 'Jenny Nguyen', 'jenny nguyen', 2, 'Nguyễn Khuyến', '200'),
(27, 'Tiến - Oanh', 'tien - oanh', 2, 'Nguyễn Khuyến', '600'),
(28, 'Hân', 'han', 2, 'Nguyễn Khuyến', NULL),
(29, 'Hon', 'hon', 2, 'Nguyễn Khuyến', '400'),
(30, 'Tuấn', 'tuan', 2, 'Nguyễn Khuyến', '400'),
(31, 'Tùng', 'tung', 2, 'Nguyễn Khuyến', '400'),
(32, 'Đức Minh', 'duc minh', 2, 'Nguyễn Khuyến', NULL),
(33, 'Tiên', 'tien', 2, 'Nguyễn Khuyến', '700'),
(34, 'Huyền', 'huyen', 2, 'Nguyễn Khuyến', NULL),
(35, 'Toàn', 'toan', 2, 'Nguyễn Khuyến', NULL),
(36, 'Chị Ni', 'chi ni', 0, 'Cao Đẳng Thi', NULL),
(37, 'Phương', 'phuong', 0, 'Cao Đẳng Thi', '400'),
(38, 'Quyên', 'quyen', 0, 'Cao Đẳng Thi', '300'),
(39, 'Tùng', 'tung', 0, 'Cao Đẳng Thi', '300'),
(40, 'Dung', 'dung', 0, 'Cao Đẳng Thi', '500'),
(41, 'Thi', 'thi', 0, 'Cao Đẳng Thi', '1000'),
(42, 'Ly', 'ly', 0, 'Cao Đẳng Thi', NULL),
(43, 'Linh', 'linh', 0, 'Cao Đẳng Thi', NULL),
(44, 'Oanh', 'oanh', 0, 'Cao Đẳng Thi', NULL),
(45, 'Đoan', 'doan', 0, 'Cao Đẳng Thi', '500'),
(46, 'Sơn', 'son', 0, 'Cao Đẳng Thi', NULL),
(47, 'Mỹ', 'my', 0, 'Cao Đẳng Thi', NULL),
(48, 'Yến', 'yen', 0, 'Cao Đẳng Thi', NULL),
(49, 'C.T.Anh', 'c.t.anh', 0, 'Yusen', NULL),
(50, 'C.Tâm', 'c.tam', 0, 'Yusen', '1000'),
(51, 'C.Thủy', 'c.thuy', 0, 'Yusen', '1500'),
(52, 'A.Hiếu', 'a.hieu', 0, 'Yusen', '500'),
(53, 'C.Hạnh', 'c.hanh', 0, 'Yusen', '1000'),
(54, 'C.Liên', 'c.lien', 0, 'Yusen', '500'),
(55, 'C.Loan', 'c.loan', 0, 'Yusen', '200'),
(56, 'C.Hà', 'c.ha', 0, 'Yusen', '500'),
(57, 'C.Mi', 'c.mi', 0, 'Yusen', '500'),
(58, 'Trang', 'trang', 0, 'Yusen', '500'),
(59, 'C.Huệ', 'c.hue', 0, 'Yusen', NULL),
(60, 'A.Hải', 'a.hai', 0, 'Yusen', '500'),
(61, 'C.Kim Loan', 'c.kim loan', 0, 'Yusen', '500'),
(62, 'C.Hải Yến', 'c.hai yen', 0, 'Yusen', '500'),
(63, 'C.Phương', 'c.phuong', 0, 'Yusen', '300'),
(64, 'C.Thúy', 'c.thuy', 0, 'Yusen', '400'),
(65, 'C.Ngát', 'c.ngat', 0, 'Yusen', '300'),
(66, 'C.K.Anh', 'c.k.anh', 0, 'Yusen', '400'),
(67, 'Hiệp', 'hiep', 0, 'Yusen', '400'),
(68, 'Nguyên', 'nguyen', 0, 'Yusen', '500'),
(69, 'B.Phượng', 'b.phuong', 0, 'Yusen', '500'),
(70, 'Thanh', 'thanh', 0, 'Yusen', '500'),
(71, 'A.Thiện', 'a.thien', 0, 'Yusen', NULL),
(72, 'C.Sa', 'c.sa', 0, 'Yusen', '300'),
(73, 'C.Thuận', 'c.thuan', 0, 'Yusen', NULL),
(74, 'C.Như Ý', 'c.nhu y', 0, 'Yusen', '200'),
(75, 'C.Uyên', 'c.uyen', 0, 'Yusen', '500'),
(76, 'C.Hằng', 'c.hang', 0, 'Yusen', '400'),
(77, 'C.Vân', 'c.van', 0, 'Yusen', '500'),
(78, 'A.Tuấn', 'a.tuan', 0, 'Yusen', '500'),
(79, 'VC A.Minh', 'vc a.minh', 0, 'Yusen', '400'),
(80, 'A.Ba', 'a.ba', 0, 'Yusen', '2000'),
(81, 'A.Hưng', 'a.hung', 0, 'Yusen', '500'),
(82, 'A.Tâm', 'a.tam', 1, 'Infory', NULL),
(83, 'Huy', 'huy', 1, 'Infory', '1000'),
(84, 'Hà', 'ha', 1, 'Infory', '500'),
(85, 'Phương', 'phuong', 1, 'Infory', '500'),
(86, 'A.Duy', 'a.duy', 1, 'Infory', '300'),
(87, 'A.Duyên', 'a.duyen', 1, 'Infory', '500'),
(88, 'Hào', 'hao', 1, 'Infory', NULL),
(89, 'Đạt', 'dat', 1, 'Infory', '300'),
(90, 'Kha', 'kha', 1, 'Infory', NULL),
(91, 'Thầy Minh', 'thay minh', 1, 'Infory', NULL),
(93, 'Thầy Hưng', 'thay hung', 2, 'Thầy Hưng', NULL),
(95, 'Nam', 'nam', 2, 'Thầy Hưng', '500'),
(96, 'Nguyệt', 'nguyet', 2, 'Thầy Hưng', NULL),
(97, 'Ông chú', 'ong chu', 0, 'Nhà Gái (Nội)', '4000'),
(98, 'Bà dì', 'ba di', 0, 'Nhà Gái (Nội)', NULL),
(99, 'Phương Anh', 'phuong anh', 0, 'Nhà Gái (Nội)', '2000'),
(100, 'Phong', 'phong', 0, 'Nhà Gái (Nội)', NULL),
(101, 'Ngọc Anh', 'ngoc anh', 0, 'Nhà Gái (Nội)', '1000'),
(102, 'Sang', 'sang', 0, 'Nhà Gái (Nội)', NULL),
(103, 'Thúy Anh', 'thuy anh', 0, 'Nhà Gái (Nội)', '2000'),
(104, 'Hùng', 'hung', 0, 'Nhà Gái (Nội)', NULL),
(105, 'Tố Anh', 'to anh', 0, 'Nhà Gái (Nội)', '1000'),
(106, 'Thuận', 'thuan', 0, 'Nhà Gái (Nội)', NULL),
(107, 'Chị Dung', 'chi dung', 0, 'Nhà Gái (Nội)', '2000'),
(108, 'Chị Lan', 'chi lan', 0, 'Nhà Gái (Nội)', '1000'),
(109, 'Anh Sơn', 'anh son', 0, 'Nhà Gái (Nội)', NULL),
(110, 'Cô Hạnh', 'co hanh', 0, 'Nhà Gái (Nội)', NULL),
(111, 'Chú Lâm', 'chu lam', 0, 'Nhà Gái (Nội)', NULL),
(112, 'Hồng', 'hong', 0, 'Nhà Gái (Nội)', NULL),
(113, 'Vợ chồng Tý', 'vo chong ty', 0, 'Nhà Gái (Nội)', '500'),
(114, 'Vợ chồng Nga nhỏ', 'vo chong nga nho', 0, 'Nhà Gái (Nội)', '500'),
(115, 'Vợ chồng Nam', 'vo chong nam', 0, 'Nhà Gái (Nội)', '500'),
(116, 'Ông Chộc (Điền)', 'ong choc (dien)', 0, 'Nhà Gái (Nội)', '1000'),
(117, 'Cô Mỉu', 'co miu', 0, 'Nhà Gái (Nội)', '1000'),
(118, 'Chú Đạt', 'chu dat', 0, 'Nhà Gái (Nội)', NULL),
(119, 'Anh Quý', 'anh quy', 0, 'Nhà Gái (Nội)', '2000'),
(120, 'Anh Cách', 'anh cach', 0, 'Nhà Gái (Nội)', '300'),
(121, 'Ba mẹ vợ Thành', 'ba me vo thanh', 0, 'Nhà Gái (Nội)', '2000'),
(122, 'Tín', 'tin', 0, 'Nhà Gái (Nội)', '500'),
(123, 'Bích', 'bich', 0, 'Nhà Gái (Nội)', '500'),
(124, 'Bác Minh', 'bac minh', 0, 'Nhà Gái (Ngoại)', NULL),
(125, 'Dì Út', 'di ut', 0, 'Nhà Gái (Ngoại)', '2000'),
(126, 'Chị Tư Hồng', 'chi tu hong', 0, 'Nhà Gái (Ngoại)', '500'),
(127, 'Sáng', 'sang', 0, 'Nhà Gái (Ngoại)', '500'),
(128, 'Nghĩa', 'nghia', 0, 'Nhà Gái (Ngoại)', '1000'),
(129, 'Tân', 'tan', 0, 'Nhà Gái (Ngoại)', '300'),
(130, 'Chị Hai Thủy', 'chi hai thuy', 0, 'Nhà Gái (Ngoại)', '1000'),
(131, 'Xuân Trang', 'xuan trang', 0, 'Nhà Gái (Ngoại)', '1000'),
(132, 'VC Tuyết Loan', 'vc tuyet loan', 0, 'Nhà Gái (Ngoại)', '1000'),
(133, 'VC Cháu Tài', 'vc chau tai', 0, 'Nhà Gái (Ngoại)', '1000'),
(134, 'Dì Út Lộng', 'di ut long', 0, 'Nhà Gái (Ngoại)', NULL),
(135, 'Diệu (Tư Diệp)', 'dieu (tu diep)', 0, 'Nhà Gái (Ngoại)', NULL),
(136, 'Anh Hai', 'anh hai', 0, 'Nhà Gái (Ngoại)', NULL),
(137, 'AC 7 Hát', 'ac 7 hat', 0, 'Nhà Gái (Ngoại)', NULL),
(138, 'Mợ 4', 'mo 4', 0, 'Nhà Gái (Ngoại)', NULL),
(139, 'AC Tý', 'ac ty', 0, 'Nhà Gái (Ngoại)', NULL),
(140, 'Anh Ân', 'anh an', 0, 'Nhà Gái (Ngoại)', NULL),
(141, 'Anh Hiệp', 'anh hiep', 0, 'Nhà Gái (Ngoại)', '400'),
(145, 'Thanh Phong', 'thanh phong', 0, 'Nhà Gái (Ngoại)', '1000'),
(146, 'Thanh Long', 'thanh long', 0, 'Nhà Gái (Ngoại)', NULL),
(147, 'Nhựt', 'nhut', 0, 'Nhà Gái (Ngoại)', NULL),
(148, 'Mai Hân', 'mai han', 0, 'Nhà Gái (Ngoại)', '500'),
(149, 'Tuyết Anh', 'tuyet anh', 0, 'Nhà Gái (Ngoại)', '1000'),
(150, 'VC Bim', 'vc bim', 0, 'Nhà Gái (Ngoại)', '1000'),
(151, 'VC Vân', 'vc van', 0, 'Nhà Gái (Ngoại)', '1000'),
(152, 'Luân', 'luan', 0, 'Nhà Gái (Ngoại)', NULL),
(153, 'Minh Em', 'minh em', 0, 'Nhà Gái (Ngoại)', NULL),
(159, 'Bu', 'bu', 0, 'Bạn Ba Thi', NULL),
(160, 'Trường (Na)', 'truong (na)', 0, 'Bạn Ba Thi', '4000'),
(161, 'Quý nhỏ', 'quy nho', 0, 'Bạn Ba Thi', '500'),
(163, 'Anh Tuấn', 'anh tuan', 0, 'Bạn Ba Thi', '500'),
(164, 'Anh Thông', 'anh thong', 0, 'Bạn Ba Thi', '500'),
(165, 'Anh Thống', 'anh thong', 0, 'Bạn Ba Thi', '500'),
(166, 'Trí', 'tri', 0, 'Bạn Ba Thi', '500'),
(167, 'Anh Tư Hưng', 'anh tu hung', 0, 'Bạn Ba Thi', '400'),
(168, 'Anh Ngọt', 'anh ngot', 0, 'Bạn Ba Thi', '1000'),
(169, 'Anh Thoại', 'anh thoai', 0, 'Bạn Ba Thi', '500'),
(170, 'Anh Nho', 'anh nho', 0, 'Bạn Ba Thi', '400'),
(179, 'VC Thanh Đẹp', 'vc thanh dep', 0, 'Bạn Ba Thi', '1000'),
(180, 'VC Em Quý', 'vc em quy', 0, 'Bạn Ba Thi', '400'),
(181, 'Tuyết Phong', 'tuyet phong', 1, 'Chợ Tân Thành', '1000'),
(182, 'Hai em Thanh', 'hai em thanh', 1, 'Chợ Tân Thành', '1000'),
(183, 'Hai em Hương', 'hai em huong', 1, 'Chợ Tân Thành', '500'),
(184, 'Hai em Tèo', 'hai em teo', 1, 'Chợ Tân Thành', NULL),
(185, 'Anh chị Hương', 'anh chi huong', 1, 'Chợ Tân Thành', '500'),
(186, 'Hai em Bình', 'hai em binh', 1, 'Chợ Tân Thành', '400'),
(187, 'Hai em Quân', 'hai em quan', 1, 'Chợ Tân Thành', '400'),
(188, 'Hai em Mí', 'hai em mi', 1, 'Chợ Tân Thành', '800'),
(189, 'Hai em Bính', 'hai em binh', 1, 'Chợ Tân Thành', '1200'),
(190, 'Em Ánh', 'em anh', 1, 'Chợ Tân Thành', NULL),
(191, 'Anh chị Hồng', 'anh chi hong', 1, 'Chợ Tân Thành', '300'),
(192, 'Em Thông', 'em thong', 1, 'Chợ Tân Thành', '300'),
(193, 'Anh chị Diệu', 'anh chi dieu', 1, 'Chợ Tân Thành', '500'),
(194, 'Anh chị Trang', 'anh chi trang', 1, 'Chợ Tân Thành', NULL),
(195, 'Anh chị Phúc', 'anh chi phuc', 1, 'Chợ Tân Thành', '500'),
(196, 'Hai em Dũng', 'hai em dung', 1, 'Chợ Tân Thành', '500'),
(197, 'Hai cháu Cường', 'hai chau cuong', 1, 'Chợ Tân Thành', '500'),
(198, 'Hai em Vĩnh Lợi', 'hai em vinh loi', 1, 'Chợ Tân Thành', '400'),
(199, 'Hai em Liêu Hòa', 'hai em lieu hoa', 1, 'Chợ Tân Thành', '500'),
(200, 'Hai em Hùng', 'hai em hung', 1, 'Chợ Tân Thành', '800'),
(201, 'Anh chị Phượng', 'anh chi phuong', 1, 'Chợ Tân Thành', '1000'),
(202, 'Anh chị Ba', 'anh chi ba', 1, 'Chợ Tân Thành', '1000'),
(203, 'Hai em Phấn', 'hai em phan', 1, 'Chợ Tân Thành', NULL),
(204, 'Hai em Minh', 'hai em minh', 1, 'Chợ Tân Thành', '500'),
(205, 'Anh chị Mơ', 'anh chi mo', 1, 'Chợ Tân Thành', '500'),
(206, 'Hai em Chúng', 'hai em chung', 1, 'Chợ Tân Thành', '600'),
(207, 'Anh chị Chánh', 'anh chi chanh', 1, 'Chợ Tân Thành', '600'),
(208, 'Anh chị Phón', 'anh chi phon', 1, 'Chợ Tân Thành', '500'),
(209, 'Anh chị Lệ', 'anh chi le', 1, 'Chợ Tân Thành', '500'),
(210, 'Hai em Trúc', 'hai em truc', 1, 'Chợ Tân Thành', '300'),
(211, 'Hai em Lợi', 'hai em loi', 1, 'Chợ Tân Thành', '600'),
(212, 'Hai em Tính', 'hai em tinh', 1, 'Chợ Tân Thành', '500'),
(213, 'Em Bạc', 'em bac', 1, 'Chợ Tân Thành', '500'),
(214, 'Hai em Sơn', 'hai em son', 1, 'Chợ Tân Thành', '500'),
(215, 'Hai em Siếu', 'hai em sieu', 1, 'Chợ Tân Thành', NULL),
(216, 'Anh chị Cón', 'anh chi con', 1, 'Chợ Tân Thành', '600'),
(217, 'Anh chị Rổ Văn', 'anh chi ro van', 1, 'Chợ Tân Thành', '500'),
(218, 'Anh chị Tuấn', 'anh chi tuan', 1, 'Chợ Tân Thành', '500'),
(219, 'Anh chị Lũ Ký', 'anh chi lu ky', 1, 'Chợ Tân Thành', '500'),
(220, 'Anh chị Đức', 'anh chi duc', 1, 'Chợ Tân Thành', '600'),
(221, 'Anh chị Lan', 'anh chi lan', 1, 'Chợ Tân Thành', '1000'),
(222, 'Anh chị Ánh', 'anh chi anh', 1, 'Chợ Tân Thành', '500'),
(223, 'Anh chị Linh', 'anh chi linh', 1, 'Chợ Tân Thành', NULL),
(224, 'Cháu Tuấn', 'chau tuan', 1, 'Chợ Tân Thành', NULL),
(225, 'Anh chị Khải', 'anh chi khai', 1, 'Chợ Tân Thành', NULL),
(226, 'Hai em Liền', 'hai em lien', 1, 'Chợ Tân Thành', '700'),
(227, 'Anh chị Bảy', 'anh chi bay', 1, 'Chợ Tân Thành', '1000'),
(228, 'Liền Cú', 'lien cu', 1, 'Chợ Tân Thành', '800'),
(229, 'Anh chị Y', 'anh chi y', 1, 'Hàng Xóm', '400'),
(230, 'Anh chị Quý', 'anh chi quy', 1, 'Hàng Xóm', '300'),
(231, 'Anh chị Bảy', 'anh chi bay', 1, 'Hàng Xóm', '500'),
(232, 'Anh chị Tuyến', 'anh chi tuyen', 1, 'Hàng Xóm', '500'),
(233, 'Chú thím Lý Hán', 'chu thim ly han', 1, 'Hàng Xóm', '400'),
(234, 'Chị Liên', 'chi lien', 1, 'Hàng Xóm', '300'),
(235, 'Chị Phương', 'chi phuong', 1, 'Hàng Xóm', '300'),
(236, 'Chú thím Hùng', 'chu thim hung', 1, 'Hàng Xóm', '500'),
(237, 'Chị Ngọc', 'chi ngoc', 1, 'Hàng Xóm', '200'),
(238, 'Anh chị Hương', 'anh chi huong', 1, 'Hàng Xóm', '500'),
(239, 'Anh chị Nga', 'anh chi nga', 1, 'Hàng Xóm', '500'),
(240, 'Anh chị Thang Sĩ Hồng', 'anh chi thang si hong', 1, 'Hàng Xóm', '400'),
(241, 'Chị Thuê Huê Nghi', 'chi thue hue nghi', 1, 'Hàng Xóm', NULL),
(242, 'Hai em Nguyên', 'hai em nguyen', 1, 'Hàng Xóm', '200'),
(243, 'Anh chị Huệ', 'anh chi hue', 1, 'Hàng Xóm', NULL),
(244, 'Em Xinh', 'em xinh', 1, 'Hàng Xóm', NULL),
(245, 'Bạn Tấn', 'ban tan', 1, 'Bạn Má', NULL),
(246, 'Anh chị Vàng', 'anh chi vang', 1, 'Bạn Má', '500'),
(247, 'Hai bạn Đào', 'hai ban dao', 1, 'Bạn Má', NULL),
(248, 'Anh chị Tuyết', 'anh chi tuyet', 1, 'Bạn Má', '500'),
(249, 'Anh chị Hạnh', 'anh chi hanh', 1, 'Bạn Má', '500'),
(250, 'Anh chị Châu', 'anh chi chau', 1, 'Bạn Má', '2000'),
(251, 'Anh chị Dung', 'anh chi dung', 1, 'Bạn Má', '1000'),
(252, 'Anh chị Siều', 'anh chi sieu', 1, 'Bạn Má', NULL),
(253, 'Anh chị Tám', 'anh chi tam', 1, 'Chùa', '300'),
(254, 'Em Diệu Phương Loan', 'em dieu phuong loan', 1, 'Chùa', '200'),
(255, 'Anh chị Trung Đức', 'anh chi trung duc', 1, 'Chùa', '300'),
(256, 'Anh chị Trung Thủy Lệ', 'anh chi trung thuy le', 1, 'Chùa', '400'),
(257, 'Anh chị Diệu Bảo', 'anh chi dieu bao', 1, 'Chùa', '300'),
(258, 'Anh chị Trung Thủy', 'anh chi trung thuy', 1, 'Chùa', NULL),
(259, 'Anh chị Cúc', 'anh chi cuc', 1, 'Chùa', NULL),
(260, 'Hai em Trung Quỳnh', 'hai em trung quynh', 1, 'Chùa', '300'),
(261, 'Hai em Diệu Hòa', 'hai em dieu hoa', 1, 'Chùa', '600'),
(262, 'Anh chị Sáu', 'anh chi sau', 1, 'Bàn Chay', NULL),
(263, 'Anh chị Trang', 'anh chi trang', 1, 'Bàn Chay', '400'),
(264, 'Anh chị Giang', 'anh chi giang', 1, 'Bàn Chay', '400'),
(265, 'Chị Tất Lan', 'chi tat lan', 1, 'Bàn Chay', NULL),
(266, 'Em Huệ', 'em hue', 1, 'Bàn Chay', NULL),
(267, 'Em Hà', 'em ha', 1, 'Bàn Chay', '300'),
(268, 'Hai bạn Của', 'hai ban cua', 1, 'Bàn Chay', '500'),
(269, 'Hai bạn Y + Lan', 'hai ban y + lan', 1, 'Bàn Chay', NULL),
(270, 'Hai bạn Lan Khánh', 'hai ban lan khanh', 1, 'Bàn Chay', '300'),
(271, 'Anh chị Thủy Ky', 'anh chi thuy ky', 1, 'Bàn Chay', NULL),
(272, 'Chị Tần', 'chi tan', 1, 'Bàn Chay', NULL),
(273, 'Hai cháu Thường', 'hai chau thuong', 1, 'Bàn Chay', '500'),
(274, 'Vợ anh Bé Bốn Xã', 'vo anh be bon xa', 1, 'Bàn Chay', NULL),
(275, 'Anh chị Hồng', 'anh chi hong', 1, 'Bao Kinh', '300'),
(276, 'Anh chị Hai', 'anh chi hai', 1, 'Bao Kinh', '300'),
(277, 'Anh chị Năm', 'anh chi nam', 1, 'Bao Kinh', '400'),
(278, 'Anh chị Lan', 'anh chi lan', 1, 'Bao Kinh', '400'),
(279, 'Em Liên', 'em lien', 1, 'Bao Kinh', '400'),
(280, 'Em Thúy', 'em thuy', 1, 'Bao Kinh', '500'),
(281, 'Anh chị Mỹ Lệ', 'anh chi my le', 1, 'Bao Kinh', '400'),
(282, 'Chị Bích', 'chi bich', 1, 'Bao Kinh', NULL),
(283, 'Cháu Phượng', 'chau phuong', 1, 'Bao Kinh', '300'),
(284, 'Anh chị Giác', 'anh chi giac', 1, 'Bao Kinh', '400'),
(285, 'Hai em Xé', 'hai em xe', 1, 'Bạn Ba', '500'),
(286, 'Anh chị Sủng', 'anh chi sung', 1, 'Bạn Ba', '400'),
(287, 'Em Cường', 'em cuong', 1, 'Bạn Ba', '300'),
(288, 'Hai bạn Hòa', 'hai ban hoa', 1, 'Bạn Ba', NULL),
(289, 'Hai bạn Hùng', 'hai ban hung', 1, 'Bạn Ba', '500'),
(290, 'Hai em Luân', 'hai em luan', 1, 'Bạn Ba', '700'),
(291, 'Anh chị Nguyên', 'anh chi nguyen', 1, 'Bạn Ba', '700'),
(292, 'Anh chị Bé', 'anh chi be', 1, 'Bạn Ba', '1000'),
(293, 'Anh chị Thu', 'anh chi thu', 1, 'Bạn Ba', '500'),
(294, 'Li Li (TBC)', 'li li (tbc)', 0, 'Trần Bội Cơ', '400'),
(295, 'Lan', 'lan', 0, 'Trần Bội Cơ', '200'),
(296, 'Út Hào', 'ut hao', 0, 'Nhà Gái (Nội)', '500'),
(297, 'Chị Linh', 'chi linh', 1, 'Bạn Má', NULL),
(298, 'Hai em Tý', 'hai em ty', 1, 'Chợ Tân Thành', '500'),
(299, 'Anh chị Siếu', 'anh chi sieu', 1, 'Chợ Tân Thành', NULL),
(300, 'Anh chị Diệu Giác', 'anh chi dieu giac', 1, 'Chùa', '300'),
(301, 'Anh Tài', 'anh tai', 0, 'Bạn Ba Thi', NULL),
(302, 'Mợ Tư', 'mo tu', 0, 'Nhà Gái (Ngoại)', NULL),
(303, 'Như Ý', 'nhu y', 0, 'Yusen', '400'),
(304, 'Chú Vinh', 'chu vinh', 1, 'Infory', '500'),
(305, 'Chị Trang', 'chi trang', 0, 'Yusen (amind)', '300'),
(306, 'Long', 'long', 1, 'Infory', '500'),
(307, 'GĐ Chị Nhung', 'gd chi nhung', 0, 'Yusen', '300'),
(309, 'GĐ Em Huệ', 'gd em hue', 0, 'Nhà Gái (Ngoại)', '600'),
(310, 'GĐ Em Cẩu Woòng', 'gd em cau woong', 0, 'Nhà Gái (Ngoại)', '1000'),
(311, 'K.Loan', 'k.loan', 0, 'Bạn Ba Thi', '1000'),
(312, 'Hoàng', 'hoang', 2, 'Nguyễn Khuyến', NULL),
(313, 'ngat', 'ngat', 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guest_table`
--

CREATE TABLE IF NOT EXISTS `guest_table` (
  `id_table` int(11) NOT NULL,
  `id_guest` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id_table`,`id_guest`),
  KEY `fk_gt_guest_idx` (`id_guest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `guest_table`
--

INSERT INTO `guest_table` (`id_table`, `id_guest`, `status`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
(1, 6, 1),
(1, 7, 1),
(1, 8, 1),
(1, 9, 1),
(1, 10, 0),
(1, 11, 1),
(1, 12, 1),
(2, 13, 1),
(2, 14, 1),
(3, 15, 1),
(3, 16, 1),
(3, 17, 0),
(3, 18, 1),
(3, 19, 0),
(3, 20, 0),
(3, 21, 0),
(3, 22, 0),
(3, 23, 1),
(3, 24, 1),
(3, 25, 0),
(3, 26, 1),
(3, 27, 0),
(3, 28, 0),
(3, 29, 1),
(3, 30, 1),
(3, 31, 1),
(3, 32, 0),
(3, 33, 0),
(3, 34, 0),
(3, 35, 0),
(3, 312, 0),
(4, 36, 0),
(4, 37, 1),
(4, 38, 1),
(4, 39, 1),
(4, 40, 1),
(4, 41, 1),
(4, 42, 0),
(4, 43, 0),
(4, 44, 0),
(4, 45, 1),
(4, 46, 0),
(4, 47, 0),
(4, 48, 0),
(5, 49, 0),
(5, 50, 1),
(5, 51, 1),
(5, 52, 1),
(5, 53, 0),
(5, 54, 1),
(5, 55, 1),
(5, 56, 0),
(5, 57, 1),
(5, 58, 1),
(5, 59, 0),
(5, 60, 1),
(5, 61, 1),
(5, 62, 1),
(5, 63, 1),
(5, 64, 1),
(5, 65, 1),
(5, 66, 1),
(5, 67, 1),
(5, 68, 1),
(5, 69, 1),
(5, 70, 1),
(5, 71, 0),
(5, 72, 1),
(5, 73, 0),
(5, 74, 1),
(5, 75, 1),
(5, 76, 1),
(5, 77, 0),
(5, 78, 1),
(5, 79, 1),
(5, 80, 1),
(5, 81, 0),
(5, 303, 1),
(5, 305, 0),
(5, 307, 0),
(6, 82, 0),
(6, 83, 1),
(6, 84, 1),
(6, 85, 1),
(6, 86, 1),
(6, 87, 1),
(6, 88, 0),
(6, 89, 1),
(6, 90, 0),
(6, 91, 0),
(6, 304, 1),
(6, 306, 1),
(7, 93, 0),
(7, 95, 1),
(7, 96, 0),
(8, 97, 1),
(8, 98, 0),
(8, 99, 1),
(8, 100, 0),
(8, 101, 1),
(8, 102, 0),
(8, 103, 0),
(8, 104, 0),
(8, 105, 0),
(8, 106, 0),
(8, 107, 1),
(8, 108, 1),
(8, 109, 0),
(8, 110, 0),
(8, 111, 0),
(8, 112, 0),
(8, 113, 1),
(8, 114, 1),
(8, 115, 1),
(8, 116, 1),
(8, 117, 1),
(8, 118, 0),
(8, 119, 0),
(8, 120, 1),
(8, 121, 1),
(8, 122, 1),
(8, 123, 1),
(8, 296, 1),
(9, 124, 1),
(9, 125, 0),
(9, 126, 0),
(9, 127, 1),
(9, 128, 1),
(9, 129, 1),
(9, 130, 0),
(9, 131, 0),
(9, 132, 0),
(9, 133, 1),
(9, 134, 0),
(9, 135, 0),
(9, 136, 0),
(9, 137, 0),
(9, 138, 0),
(9, 139, 0),
(9, 140, 0),
(9, 141, 1),
(9, 145, 1),
(9, 146, 0),
(9, 147, 0),
(9, 148, 0),
(9, 149, 0),
(9, 150, 0),
(9, 151, 1),
(9, 152, 0),
(9, 153, 0),
(9, 302, 0),
(9, 309, 1),
(9, 310, 1),
(10, 159, 0),
(10, 160, 1),
(10, 161, 1),
(10, 163, 1),
(10, 164, 1),
(10, 165, 1),
(10, 166, 1),
(10, 167, 1),
(10, 168, 1),
(10, 169, 0),
(10, 170, 0),
(10, 179, 1),
(10, 180, 0),
(10, 301, 0),
(10, 311, 0),
(12, 181, 1),
(12, 182, 0),
(12, 183, 1),
(12, 184, 0),
(12, 185, 1),
(12, 186, 0),
(12, 187, 0),
(12, 188, 1),
(12, 190, 0),
(12, 191, 1),
(12, 192, 1),
(12, 193, 1),
(12, 194, 0),
(12, 195, 1),
(12, 196, 1),
(12, 197, 1),
(12, 198, 1),
(12, 199, 1),
(12, 200, 1),
(12, 201, 1),
(12, 202, 1),
(12, 203, 0),
(12, 204, 1),
(12, 205, 1),
(12, 206, 0),
(12, 207, 1),
(12, 208, 1),
(12, 209, 1),
(12, 210, 0),
(12, 211, 1),
(12, 212, 1),
(12, 213, 1),
(12, 214, 1),
(12, 215, 0),
(12, 216, 0),
(12, 217, 0),
(12, 218, 0),
(12, 219, 1),
(12, 220, 0),
(12, 221, 1),
(12, 222, 0),
(12, 223, 0),
(12, 224, 0),
(12, 225, 1),
(12, 226, 1),
(12, 227, 0),
(12, 228, 1),
(12, 298, 1),
(12, 299, 0),
(13, 229, 0),
(13, 230, 1),
(13, 231, 1),
(13, 232, 1),
(13, 233, 0),
(13, 234, 1),
(13, 235, 1),
(13, 236, 1),
(13, 237, 1),
(13, 238, 1),
(13, 239, 1),
(13, 240, 1),
(13, 241, 0),
(13, 242, 1),
(13, 243, 0),
(13, 244, 0),
(14, 245, 0),
(14, 246, 1),
(14, 247, 0),
(14, 248, 0),
(14, 249, 1),
(14, 250, 0),
(14, 251, 1),
(14, 252, 1),
(14, 297, 0),
(15, 253, 1),
(15, 254, 1),
(15, 255, 1),
(15, 256, 1),
(15, 257, 1),
(15, 258, 1),
(15, 259, 1),
(15, 260, 1),
(15, 261, 1),
(15, 300, 1),
(16, 262, 0),
(16, 263, 0),
(16, 264, 1),
(16, 265, 0),
(16, 266, 0),
(16, 267, 1),
(16, 268, 1),
(16, 269, 0),
(16, 270, 1),
(16, 271, 0),
(16, 272, 0),
(16, 273, 1),
(16, 274, 0),
(17, 275, 1),
(17, 276, 1),
(17, 277, 1),
(17, 278, 1),
(17, 279, 1),
(17, 280, 1),
(17, 281, 1),
(17, 282, 0),
(17, 283, 1),
(17, 284, 1),
(18, 285, 0),
(18, 286, 1),
(18, 287, 1),
(18, 288, 0),
(18, 289, 1),
(18, 290, 0),
(18, 291, 1),
(18, 292, 0),
(18, 293, 1),
(19, 294, 1),
(19, 295, 1),
(5, 313, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE IF NOT EXISTS `table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_num_of_guest` int(11) DEFAULT '0',
  `current_num_of_guest` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`id`, `name`, `total_num_of_guest`, `current_num_of_guest`, `status`) VALUES
(1, 'ITEC (21,22)', 12, 11, 0),
(2, 'Cấp 2 (22)', 2, 2, 1),
(3, 'Nguyễn Khuyến (19,23)', 22, 9, 0),
(4, 'Cao Đẳng Thi (20)', 13, 6, 0),
(5, 'Yusen (25-27)', 37, 26, 0),
(6, 'Infory (17)', 12, 8, 0),
(7, 'Thầy Hưng (22)', 3, 1, 0),
(8, 'Nhà Gái (Nội) (31,33,34,35)', 28, 15, 0),
(9, 'Nhà Gái (Ngoại) (28-30)', 30, 10, 0),
(10, 'Bạn Ba Thi (32)', 15, 9, 0),
(12, 'Tân Thành (6,8,9,10)', 49, 30, 0),
(13, 'Hàng Xóm (1,5)', 16, 11, 0),
(14, 'Bạn Má (6,8,9,10)', 9, 4, 0),
(15, 'Chùa (13,14)', 10, 10, 1),
(16, 'Bàn Chay (15,16)', 13, 5, 0),
(17, 'Bao Kinh (13,14)', 10, 9, 0),
(18, 'Bạn Ba (7)', 9, 5, 0),
(19, 'Trần Bội Cơ (20)', 2, 2, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
