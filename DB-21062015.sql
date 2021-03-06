-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 21, 2015 at 03:20 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quan_ly_tiec_cuoi`
--
CREATE DATABASE IF NOT EXISTS `quan_ly_tiec_cuoi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quan_ly_tiec_cuoi`;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=305 ;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`id`, `name`, `name_ascii`, `group`, `description`, `money`) VALUES
(1, 'Cẩm Huy', 'cam huy', 1, 'ITEC', NULL),
(2, 'Kiến Huy', 'kien huy', 1, 'ITEC', NULL),
(3, 'Đức', 'duc', 1, 'ITEC', NULL),
(4, 'Giang', 'giang', 1, 'ITEC', NULL),
(5, 'Tâm', 'tam', 1, 'ITEC', NULL),
(6, 'Hải Phong', 'hai phong', 1, 'ITEC', NULL),
(7, 'Vỹ Phong', 'vy phong', 1, 'ITEC', NULL),
(8, 'Thiện', 'thien', 1, 'ITEC', NULL),
(9, 'Tuấn', 'tuan', 1, 'ITEC', NULL),
(10, 'Trọng', 'trong', 1, 'ITEC', NULL),
(11, 'Lăng', 'lang', 1, 'ITEC', NULL),
(12, 'Sơn', 'son', 1, 'ITEC', NULL),
(13, 'Huy', 'huy', 1, 'Cấp 2', NULL),
(14, 'Đạt', 'dat', 1, 'Cấp 2', NULL),
(15, 'Thầy Tú', 'thay tu', 2, 'Nguyễn Khuyến', NULL),
(16, 'Bảo Ngọc', 'bao ngoc', 2, 'Nguyễn Khuyến', NULL),
(17, 'Chi', 'chi', 2, 'Nguyễn Khuyến', NULL),
(18, 'Thơ', 'tho', 2, 'Nguyễn Khuyến', NULL),
(19, 'Uyên', 'uyen', 2, 'Nguyễn Khuyến', NULL),
(20, 'Sang', 'sang', 2, 'Nguyễn Khuyến', NULL),
(21, 'Ngọc Trường', 'ngoc truong', 2, 'Nguyễn Khuyến', NULL),
(22, 'Nguyên', 'nguyen', 2, 'Nguyễn Khuyến', NULL),
(23, 'Nam', 'nam', 2, 'Nguyễn Khuyến', NULL),
(24, 'Hạo', 'hao', 2, 'Nguyễn Khuyến', NULL),
(25, 'Duy', 'duy', 2, 'Nguyễn Khuyến', NULL),
(26, 'Jenny Nguyen', 'jenny nguyen', 2, 'Nguyễn Khuyến', NULL),
(27, 'Tiến - Oanh', 'tien - oanh', 2, 'Nguyễn Khuyến', NULL),
(28, 'Hân', 'han', 2, 'Nguyễn Khuyến', NULL),
(29, 'Hon', 'hon', 2, 'Nguyễn Khuyến', NULL),
(30, 'Tuấn', 'tuan', 2, 'Nguyễn Khuyến', NULL),
(31, 'Tùng', 'tung', 2, 'Nguyễn Khuyến', NULL),
(32, 'Đức Minh', 'duc minh', 2, 'Nguyễn Khuyến', NULL),
(33, 'Tiên', 'tien', 2, 'Nguyễn Khuyến', NULL),
(34, 'Huyền', 'huyen', 2, 'Nguyễn Khuyến', NULL),
(35, 'Toàn', 'toan', 2, 'Nguyễn Khuyến', NULL),
(36, 'Chị Ni', 'chi ni', 0, 'Cao Đẳng Thi', NULL),
(37, 'Phương', 'phuong', 0, 'Cao Đẳng Thi', NULL),
(38, 'Quyên', 'quyen', 0, 'Cao Đẳng Thi', NULL),
(39, 'Tùng', 'tung', 0, 'Cao Đẳng Thi', NULL),
(40, 'Dung', 'dung', 0, 'Cao Đẳng Thi', NULL),
(41, 'Thi', 'thi', 0, 'Cao Đẳng Thi', NULL),
(42, 'Ly', 'ly', 0, 'Cao Đẳng Thi', NULL),
(43, 'Linh', 'linh', 0, 'Cao Đẳng Thi', NULL),
(44, 'Oanh', 'oanh', 0, 'Cao Đẳng Thi', NULL),
(45, 'Đoan', 'doan', 0, 'Cao Đẳng Thi', NULL),
(46, 'Sơn', 'son', 0, 'Cao Đẳng Thi', NULL),
(47, 'Mỹ', 'my', 0, 'Cao Đẳng Thi', NULL),
(48, 'Yến', 'yen', 0, 'Cao Đẳng Thi', NULL),
(49, 'C.T.Anh', 'c.t.anh', 0, 'Yusen', NULL),
(50, 'C.Tâm', 'c.tam', 0, 'Yusen', NULL),
(51, 'C.Thủy', 'c.thuy', 0, 'Yusen', NULL),
(52, 'A.Hiếu', 'a.hieu', 0, 'Yusen', NULL),
(53, 'C.Hạnh', 'c.hanh', 0, 'Yusen', NULL),
(54, 'C.Liên', 'c.lien', 0, 'Yusen', NULL),
(55, 'C.Loan', 'c.loan', 0, 'Yusen', NULL),
(56, 'C.Hà', 'c.ha', 0, 'Yusen', NULL),
(57, 'C.Mi', 'c.mi', 0, 'Yusen', NULL),
(58, 'Trang', 'trang', 0, 'Yusen', NULL),
(59, 'C.Huệ', 'c.hue', 0, 'Yusen', NULL),
(60, 'A.Hải', 'a.hai', 0, 'Yusen', NULL),
(61, 'C.Kim Loan', 'c.kim loan', 0, 'Yusen', NULL),
(62, 'C.Hải Yến', 'c.hai yen', 0, 'Yusen', NULL),
(63, 'C.Phương', 'c.phuong', 0, 'Yusen', NULL),
(64, 'C.Thúy', 'c.thuy', 0, 'Yusen', NULL),
(65, 'C.Ngát', 'c.ngat', 0, 'Yusen', NULL),
(66, 'C.K.Anh', 'c.k.anh', 0, 'Yusen', NULL),
(67, 'Hiệp', 'hiep', 0, 'Yusen', NULL),
(68, 'Nguyên', 'nguyen', 0, 'Yusen', NULL),
(69, 'B.Phượng', 'b.phuong', 0, 'Yusen', NULL),
(70, 'Thanh', 'thanh', 0, 'Yusen', NULL),
(71, 'A.Thiện', 'a.thien', 0, 'Yusen', NULL),
(72, 'C.Sa', 'c.sa', 0, 'Yusen', NULL),
(73, 'C.Thuận', 'c.thuan', 0, 'Yusen', NULL),
(74, 'C.Như Ý', 'c.nhu y', 0, 'Yusen', NULL),
(75, 'C.Uyên', 'c.uyen', 0, 'Yusen', NULL),
(76, 'C.Hằng', 'c.hang', 0, 'Yusen', NULL),
(77, 'C.Vân', 'c.van', 0, 'Yusen', NULL),
(78, 'A.Tuấn', 'a.tuan', 0, 'Yusen', NULL),
(79, 'VC A.Minh', 'vc a.minh', 0, 'Yusen', NULL),
(80, 'A.Ba', 'a.ba', 0, 'Yusen', NULL),
(81, 'A.Hưng', 'a.hung', 0, 'Yusen', NULL),
(82, 'A.Tâm', 'a.tam', 1, 'Infory', NULL),
(83, 'Huy', 'huy', 1, 'Infory', NULL),
(84, 'Hà', 'ha', 1, 'Infory', NULL),
(85, 'Phương', 'phuong', 1, 'Infory', NULL),
(86, 'A.Duy', 'a.duy', 1, 'Infory', NULL),
(87, 'A.Duyên', 'a.duyen', 1, 'Infory', NULL),
(88, 'Hào', 'hao', 1, 'Infory', NULL),
(89, 'Đạt', 'dat', 1, 'Infory', NULL),
(90, 'Kha', 'kha', 1, 'Infory', NULL),
(91, 'Thầy Minh', 'thay minh', 1, 'Infory', NULL),
(92, 'Thầy Huy', 'thay huy', 1, 'Infory', NULL),
(93, 'Thầy Hưng', 'thay hung', 2, 'Thầy Hưng', NULL),
(94, 'A.Thống', 'a.thong', 2, 'Thầy Hưng', NULL),
(95, 'Nam', 'nam', 2, 'Thầy Hưng', NULL),
(96, 'Nguyệt', 'nguyet', 2, 'Thầy Hưng', NULL),
(97, 'Ông chú', 'ong chu', 0, 'Nhà Gái (Nội)', NULL),
(98, 'Bà dì', 'ba di', 0, 'Nhà Gái (Nội)', NULL),
(99, 'Phương Anh', 'phuong anh', 0, 'Nhà Gái (Nội)', NULL),
(100, 'Phong', 'phong', 0, 'Nhà Gái (Nội)', NULL),
(101, 'Ngọc Anh', 'ngoc anh', 0, 'Nhà Gái (Nội)', NULL),
(102, 'Sang', 'sang', 0, 'Nhà Gái (Nội)', NULL),
(103, 'Thúy Anh', 'thuy anh', 0, 'Nhà Gái (Nội)', NULL),
(104, 'Hùng', 'hung', 0, 'Nhà Gái (Nội)', NULL),
(105, 'Tố Anh', 'to anh', 0, 'Nhà Gái (Nội)', NULL),
(106, 'Thuận', 'thuan', 0, 'Nhà Gái (Nội)', NULL),
(107, 'Chị Dung', 'chi dung', 0, 'Nhà Gái (Nội)', NULL),
(108, 'Chị Lan', 'chi lan', 0, 'Nhà Gái (Nội)', NULL),
(109, 'Anh Sơn', 'anh son', 0, 'Nhà Gái (Nội)', NULL),
(110, 'Cô Hạnh', 'co hanh', 0, 'Nhà Gái (Nội)', NULL),
(111, 'Chú Lâm', 'chu lam', 0, 'Nhà Gái (Nội)', NULL),
(112, 'Hồng', 'hong', 0, 'Nhà Gái (Nội)', NULL),
(113, 'Vợ chồng Tý', 'vo chong ty', 0, 'Nhà Gái (Nội)', NULL),
(114, 'Vợ chồng Nga nhỏ', 'vo chong nga nho', 0, 'Nhà Gái (Nội)', NULL),
(115, 'Vợ chồng Nam', 'vo chong nam', 0, 'Nhà Gái (Nội)', NULL),
(116, 'Ông Chộc (Điền)', 'ong choc (dien)', 0, 'Nhà Gái (Nội)', NULL),
(117, 'Cô Mỉu', 'co miu', 0, 'Nhà Gái (Nội)', NULL),
(118, 'Chú Đạt', 'chu dat', 0, 'Nhà Gái (Nội)', NULL),
(119, 'Anh Quý', 'anh quy', 0, 'Nhà Gái (Nội)', NULL),
(120, 'Anh Cách', 'anh cach', 0, 'Nhà Gái (Nội)', NULL),
(121, 'Ba mẹ vợ Thành', 'ba me vo thanh', 0, 'Nhà Gái (Nội)', NULL),
(122, 'Tín', 'tin', 0, 'Nhà Gái (Nội)', NULL),
(123, 'Bích', 'bich', 0, 'Nhà Gái (Nội)', NULL),
(124, 'Bác Minh', 'bac minh', 0, 'Nhà Gái (Ngoại)', NULL),
(125, 'Dì Út', 'di ut', 0, 'Nhà Gái (Ngoại)', NULL),
(126, 'Chị Tư Hồng', 'chi tu hong', 0, 'Nhà Gái (Ngoại)', NULL),
(127, 'VC Hiền', 'vc hien', 0, 'Nhà Gái (Ngoại)', NULL),
(128, 'Nghĩa', 'nghia', 0, 'Nhà Gái (Ngoại)', NULL),
(129, 'Nhân', 'nhan', 0, 'Nhà Gái (Ngoại)', NULL),
(130, 'Chị Hai Thủy', 'chi hai thuy', 0, 'Nhà Gái (Ngoại)', NULL),
(131, 'Xuân Trang', 'xuan trang', 0, 'Nhà Gái (Ngoại)', NULL),
(132, 'VC Tuyết Loan', 'vc tuyet loan', 0, 'Nhà Gái (Ngoại)', NULL),
(133, 'VC Cháu Tài', 'vc chau tai', 0, 'Nhà Gái (Ngoại)', NULL),
(134, 'Dì Út Lộng', 'di ut long', 0, 'Nhà Gái (Ngoại)', NULL),
(135, 'Diệu (Tư Diệp)', 'dieu (tu diep)', 0, 'Nhà Gái (Ngoại)', NULL),
(136, 'VC Cháu Loan', 'vc chau loan', 0, 'Nhà Gái (Ngoại)', NULL),
(137, 'AC 7 Hát', 'ac 7 hat', 0, 'Nhà Gái (Ngoại)', NULL),
(138, 'Mợ 4', 'mo 4', 0, 'Nhà Gái (Ngoại)', NULL),
(139, 'AC Tý', 'ac ty', 0, 'Nhà Gái (Ngoại)', NULL),
(140, 'Anh Ân', 'anh an', 0, 'Nhà Gái (Ngoại)', NULL),
(141, 'Anh Hiệp', 'anh hiep', 0, 'Nhà Gái (Ngoại)', NULL),
(145, 'Thanh Phong', 'thanh phong', 0, 'Nhà Gái (Ngoại)', NULL),
(146, 'Thanh Long', 'thanh long', 0, 'Nhà Gái (Ngoại)', NULL),
(147, 'Nhựt', 'nhut', 0, 'Nhà Gái (Ngoại)', NULL),
(148, 'Mai Hân', 'mai han', 0, 'Nhà Gái (Ngoại)', NULL),
(149, 'Tuyết Anh', 'tuyet anh', 0, 'Nhà Gái (Ngoại)', NULL),
(150, 'VC Bim', 'vc bim', 0, 'Nhà Gái (Ngoại)', NULL),
(151, 'VC Vân', 'vc van', 0, 'Nhà Gái (Ngoại)', NULL),
(152, 'Luân', 'luan', 0, 'Nhà Gái (Ngoại)', NULL),
(153, 'Minh Em', 'minh em', 0, 'Nhà Gái (Ngoại)', NULL),
(159, 'Bu', 'bu', 0, 'Bạn Ba Thi', NULL),
(160, 'Trường (Na)', 'truong (na)', 0, 'Bạn Ba Thi', NULL),
(161, 'Quý nhỏ', 'quy nho', 0, 'Bạn Ba Thi', NULL),
(163, 'Anh Tuấn', 'anh tuan', 0, 'Bạn Ba Thi', NULL),
(164, 'Anh Thông', 'anh thong', 0, 'Bạn Ba Thi', NULL),
(165, 'Anh Thống', 'anh thong', 0, 'Bạn Ba Thi', NULL),
(166, 'Trí', 'tri', 0, 'Bạn Ba Thi', NULL),
(167, 'Anh Tư Hưng', 'anh tu hung', 0, 'Bạn Ba Thi', NULL),
(168, 'Anh Ngọt', 'anh ngot', 0, 'Bạn Ba Thi', NULL),
(169, 'Anh Thoại', 'anh thoai', 0, 'Bạn Ba Thi', NULL),
(170, 'Anh Nho', 'anh nho', 0, 'Bạn Ba Thi', NULL),
(179, 'VC Thanh Đẹp', 'vc thanh dep', 0, 'Bạn Ba Thi', NULL),
(180, 'VC Em Quý', 'vc em quy', 0, 'Bạn Ba Thi', NULL),
(181, 'Tuyết Phong', 'tuyet phong', 1, 'Chợ Tân Thành', NULL),
(182, 'Hai em Thanh', 'hai em thanh', 1, 'Chợ Tân Thành', NULL),
(183, 'Hai em Hương', 'hai em huong', 1, 'Chợ Tân Thành', NULL),
(184, 'Hai em Tèo', 'hai em teo', 1, 'Chợ Tân Thành', NULL),
(185, 'Anh chị Hương', 'anh chi huong', 1, 'Chợ Tân Thành', NULL),
(186, 'Hai em Bình', 'hai em binh', 1, 'Chợ Tân Thành', NULL),
(187, 'Hai em Quân', 'hai em quan', 1, 'Chợ Tân Thành', NULL),
(188, 'Hai em Mí', 'hai em mi', 1, 'Chợ Tân Thành', NULL),
(189, 'Hai em Bính', 'hai em binh', 1, 'Chợ Tân Thành', NULL),
(190, 'Em Ánh', 'em anh', 1, 'Chợ Tân Thành', NULL),
(191, 'Anh chị Hồng', 'anh chi hong', 1, 'Chợ Tân Thành', NULL),
(192, 'Em Thông', 'em thong', 1, 'Chợ Tân Thành', NULL),
(193, 'Anh chị Diệu', 'anh chi dieu', 1, 'Chợ Tân Thành', NULL),
(194, 'Anh chị Trang', 'anh chi trang', 1, 'Chợ Tân Thành', NULL),
(195, 'Anh chị Phúc', 'anh chi phuc', 1, 'Chợ Tân Thành', NULL),
(196, 'Hai em Dũng', 'hai em dung', 1, 'Chợ Tân Thành', NULL),
(197, 'Hai cháu Cường', 'hai chau cuong', 1, 'Chợ Tân Thành', NULL),
(198, 'Hai em Vĩnh Lợi', 'hai em vinh loi', 1, 'Chợ Tân Thành', NULL),
(199, 'Hai em Liêu Hòa', 'hai em lieu hoa', 1, 'Chợ Tân Thành', NULL),
(200, 'Hai em Hùng', 'hai em hung', 1, 'Chợ Tân Thành', NULL),
(201, 'Anh chị Phượng', 'anh chi phuong', 1, 'Chợ Tân Thành', NULL),
(202, 'Anh chị Ba', 'anh chi ba', 1, 'Chợ Tân Thành', NULL),
(203, 'Hai em Phấn', 'hai em phan', 1, 'Chợ Tân Thành', NULL),
(204, 'Hai em Minh', 'hai em minh', 1, 'Chợ Tân Thành', NULL),
(205, 'Anh chị Mơ', 'anh chi mo', 1, 'Chợ Tân Thành', NULL),
(206, 'Hai em Chúng', 'hai em chung', 1, 'Chợ Tân Thành', NULL),
(207, 'Anh chị Chánh', 'anh chi chanh', 1, 'Chợ Tân Thành', NULL),
(208, 'Anh chị Phón', 'anh chi phon', 1, 'Chợ Tân Thành', NULL),
(209, 'Anh chị Lệ', 'anh chi le', 1, 'Chợ Tân Thành', NULL),
(210, 'Hai em Trúc', 'hai em truc', 1, 'Chợ Tân Thành', NULL),
(211, 'Hai em Lợi', 'hai em loi', 1, 'Chợ Tân Thành', NULL),
(212, 'Hai em Tính', 'hai em tinh', 1, 'Chợ Tân Thành', NULL),
(213, 'Em Bạc', 'em bac', 1, 'Chợ Tân Thành', NULL),
(214, 'Hai em Sơn', 'hai em son', 1, 'Chợ Tân Thành', NULL),
(215, 'Hai em Siếu', 'hai em sieu', 1, 'Chợ Tân Thành', NULL),
(216, 'Anh chị Cón', 'anh chi con', 1, 'Chợ Tân Thành', NULL),
(217, 'Anh chị Rổ Văn', 'anh chi ro van', 1, 'Chợ Tân Thành', NULL),
(218, 'Anh chị Tuấn', 'anh chi tuan', 1, 'Chợ Tân Thành', NULL),
(219, 'Anh chị Lũ Ký', 'anh chi lu ky', 1, 'Chợ Tân Thành', NULL),
(220, 'Anh chị Đức', 'anh chi duc', 1, 'Chợ Tân Thành', NULL),
(221, 'Anh chị Lan', 'anh chi lan', 1, 'Chợ Tân Thành', NULL),
(222, 'Anh chị Ánh', 'anh chi anh', 1, 'Chợ Tân Thành', NULL),
(223, 'Anh chị Linh', 'anh chi linh', 1, 'Chợ Tân Thành', NULL),
(224, 'Cháu Tuấn', 'chau tuan', 1, 'Chợ Tân Thành', NULL),
(225, 'Anh chị Khải', 'anh chi khai', 1, 'Chợ Tân Thành', NULL),
(226, 'Hai em Liền', 'hai em lien', 1, 'Chợ Tân Thành', NULL),
(227, 'Anh chị Bảy', 'anh chi bay', 1, 'Chợ Tân Thành', NULL),
(228, 'Liền Cú', 'lien cu', 1, 'Chợ Tân Thành', NULL),
(229, 'Anh chị Y', 'anh chi y', 1, 'Hàng Xóm', NULL),
(230, 'Anh chị Quý', 'anh chi quy', 1, 'Hàng Xóm', NULL),
(231, 'Anh chị Bảy', 'anh chi bay', 1, 'Hàng Xóm', NULL),
(232, 'Anh chị Tuyến', 'anh chi tuyen', 1, 'Hàng Xóm', NULL),
(233, 'Chú thím Lý Hán', 'chu thim ly han', 1, 'Hàng Xóm', NULL),
(234, 'Chị Liên', 'chi lien', 1, 'Hàng Xóm', NULL),
(235, 'Chị Phương', 'chi phuong', 1, 'Hàng Xóm', NULL),
(236, 'Chú thím Hùng', 'chu thim hung', 1, 'Hàng Xóm', NULL),
(237, 'Chị Ngọc', 'chi ngoc', 1, 'Hàng Xóm', NULL),
(238, 'Anh chị Hương', 'anh chi huong', 1, 'Hàng Xóm', NULL),
(239, 'Anh chị Nga', 'anh chi nga', 1, 'Hàng Xóm', NULL),
(240, 'Anh chị Thang Sĩ Hồng', 'anh chi thang si hong', 1, 'Hàng Xóm', NULL),
(241, 'Chị Thuê Huê Nghi', 'chi thue hue nghi', 1, 'Hàng Xóm', NULL),
(242, 'Hai em Nguyên', 'hai em nguyen', 1, 'Hàng Xóm', NULL),
(243, 'Anh chị Huệ', 'anh chi hue', 1, 'Hàng Xóm', NULL),
(244, 'Em Xinh', 'em xinh', 1, 'Hàng Xóm', NULL),
(245, 'Bạn Tấn', 'ban tan', 1, 'Bạn Má', NULL),
(246, 'Anh chị Vàng', 'anh chi vang', 1, 'Bạn Má', NULL),
(247, 'Hai bạn Đào', 'hai ban dao', 1, 'Bạn Má', NULL),
(248, 'Anh chị Tuyết', 'anh chi tuyet', 1, 'Bạn Má', NULL),
(249, 'Anh chị Hạnh', 'anh chi hanh', 1, 'Bạn Má', NULL),
(250, 'Anh chị Châu', 'anh chi chau', 1, 'Bạn Má', NULL),
(251, 'Anh chị Dung', 'anh chi dung', 1, 'Bạn Má', NULL),
(252, 'Anh chị Siều', 'anh chi sieu', 1, 'Bạn Má', NULL),
(253, 'Anh chị Tám', 'anh chi tam', 1, 'Chùa', NULL),
(254, 'Em Diệu Phương Loan', 'em dieu phuong loan', 1, 'Chùa', NULL),
(255, 'Anh chị Trung Đức', 'anh chi trung duc', 1, 'Chùa', NULL),
(256, 'Anh chị Trung Thủy Lệ', 'anh chi trung thuy le', 1, 'Chùa', NULL),
(257, 'Anh chị Diệu Bảo', 'anh chi dieu bao', 1, 'Chùa', NULL),
(258, 'Anh chị Trung Thủy', 'anh chi trung thuy', 1, 'Chùa', NULL),
(259, 'Anh chị Cúc', 'anh chi cuc', 1, 'Chùa', NULL),
(260, 'Hai em Trung Quỳnh', 'hai em trung quynh', 1, 'Chùa', NULL),
(261, 'Hai em Diệu Hòa', 'hai em dieu hoa', 1, 'Chùa', NULL),
(262, 'Anh chị Sáu', 'anh chi sau', 1, 'Bàn Chay', NULL),
(263, 'Anh chị Trang', 'anh chi trang', 1, 'Bàn Chay', NULL),
(264, 'Anh chị Giang', 'anh chi giang', 1, 'Bàn Chay', NULL),
(265, 'Chị Tất Lan', 'chi tat lan', 1, 'Bàn Chay', NULL),
(266, 'Em Huệ', 'em hue', 1, 'Bàn Chay', NULL),
(267, 'Em Hà', 'em ha', 1, 'Bàn Chay', NULL),
(268, 'Hai bạn Của', 'hai ban cua', 1, 'Bàn Chay', NULL),
(269, 'Hai bạn Y + Lan', 'hai ban y + lan', 1, 'Bàn Chay', NULL),
(270, 'Hai bạn Lan Khánh', 'hai ban lan khanh', 1, 'Bàn Chay', NULL),
(271, 'Anh chị Thủy Ky', 'anh chi thuy ky', 1, 'Bàn Chay', NULL),
(272, 'Chị Tần', 'chi tan', 1, 'Bàn Chay', NULL),
(273, 'Hai cháu Thường', 'hai chau thuong', 1, 'Bàn Chay', NULL),
(274, 'Vợ anh Bé Bốn Xã', 'vo anh be bon xa', 1, 'Bàn Chay', NULL),
(275, 'Anh chị Hồng', 'anh chi hong', 1, 'Bao Kinh', NULL),
(276, 'Anh chị Hai', 'anh chi hai', 1, 'Bao Kinh', NULL),
(277, 'Anh chị Năm', 'anh chi nam', 1, 'Bao Kinh', NULL),
(278, 'Anh chị Lan', 'anh chi lan', 1, 'Bao Kinh', NULL),
(279, 'Em Liên', 'em lien', 1, 'Bao Kinh', NULL),
(280, 'Em Thúy', 'em thuy', 1, 'Bao Kinh', NULL),
(281, 'Anh chị Mỹ Lệ', 'anh chi my le', 1, 'Bao Kinh', NULL),
(282, 'Chị Bích', 'chi bich', 1, 'Bao Kinh', NULL),
(283, 'Cháu Phượng', 'chau phuong', 1, 'Bao Kinh', NULL),
(284, 'Anh chị Giác', 'anh chi giac', 1, 'Bao Kinh', NULL),
(285, 'Hai em Xé', 'hai em xe', 1, 'Bạn Ba', NULL),
(286, 'Anh chị Sủng', 'anh chi sung', 1, 'Bạn Ba', NULL),
(287, 'Em Cường', 'em cuong', 1, 'Bạn Ba', NULL),
(288, 'Hai bạn Hòa', 'hai ban hoa', 1, 'Bạn Ba', NULL),
(289, 'Hai bạn Hùng', 'hai ban hung', 1, 'Bạn Ba', NULL),
(290, 'Hai em Luân', 'hai em luan', 1, 'Bạn Ba', NULL),
(291, 'Anh chị Nguyên', 'anh chi nguyen', 1, 'Bạn Ba', NULL),
(292, 'Anh chị Bé', 'anh chi be', 1, 'Bạn Ba', NULL),
(293, 'Anh chị Thu', 'anh chi thu', 1, 'Bạn Ba', NULL),
(294, 'Li Li (TBC)', 'li li (tbc)', 0, 'Trần Bội Cơ', NULL),
(295, 'Lan', 'lan', 0, 'Trần Bội Cơ', NULL),
(296, 'Út Hào', 'ut hao', 0, 'Nhà Gái (Nội)', NULL),
(297, 'Chị Linh', 'chi linh', 1, 'Bạn Má', NULL),
(298, 'Hai em Tý', 'hai em ty', 1, 'Chợ Tân Thành', NULL),
(299, 'Anh chị Siếu', 'anh chi sieu', 1, 'Chợ Tân Thành', NULL),
(300, 'Anh chị Diệu Giác', 'anh chi dieu giac', 1, 'Chùa', NULL),
(301, 'Anh Tài', 'anh tai', 0, 'Bạn Ba Thi', NULL),
(302, 'Mợ Tư', 'mo tu', 0, 'Nhà Gái (Ngoại)', NULL),
(303, 'Như Ý', 'nhu y', 0, 'Yusen', NULL),
(304, 'Chú Vinh', 'chu vinh', 1, 'Infory', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `guest_table`
--

INSERT INTO `guest_table` (`id_table`, `id_guest`, `status`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(1, 11, 0),
(1, 12, 0),
(2, 13, 0),
(2, 14, 0),
(3, 15, 0),
(3, 16, 0),
(3, 17, 0),
(3, 18, 0),
(3, 19, 0),
(3, 20, 0),
(3, 21, 0),
(3, 22, 0),
(3, 23, 0),
(3, 24, 0),
(3, 25, 0),
(3, 26, 0),
(3, 27, 0),
(3, 28, 0),
(3, 29, 0),
(3, 30, 0),
(3, 31, 0),
(3, 32, 0),
(3, 33, 0),
(3, 34, 0),
(3, 35, 0),
(4, 36, 0),
(4, 37, 0),
(4, 38, 0),
(4, 39, 0),
(4, 40, 0),
(4, 41, 0),
(4, 42, 0),
(4, 43, 0),
(4, 44, 0),
(4, 45, 0),
(4, 46, 0),
(4, 47, 0),
(4, 48, 0),
(5, 49, 0),
(5, 50, 0),
(5, 51, 0),
(5, 52, 0),
(5, 53, 0),
(5, 54, 0),
(5, 55, 0),
(5, 56, 0),
(5, 57, 0),
(5, 58, 0),
(5, 59, 0),
(5, 60, 0),
(5, 61, 0),
(5, 62, 0),
(5, 63, 0),
(5, 64, 0),
(5, 65, 0),
(5, 66, 0),
(5, 67, 0),
(5, 68, 0),
(5, 69, 0),
(5, 70, 0),
(5, 71, 0),
(5, 72, 0),
(5, 73, 0),
(5, 74, 0),
(5, 75, 0),
(5, 76, 0),
(5, 77, 0),
(5, 78, 0),
(5, 79, 0),
(5, 80, 0),
(5, 81, 0),
(5, 303, 0),
(6, 82, 0),
(6, 83, 0),
(6, 84, 0),
(6, 85, 0),
(6, 86, 0),
(6, 87, 0),
(6, 88, 0),
(6, 89, 0),
(6, 90, 0),
(6, 91, 0),
(6, 92, 0),
(6, 304, 0),
(7, 93, 0),
(7, 94, 0),
(7, 95, 0),
(7, 96, 0),
(8, 97, 0),
(8, 98, 0),
(8, 99, 0),
(8, 100, 0),
(8, 101, 0),
(8, 102, 0),
(8, 103, 0),
(8, 104, 0),
(8, 105, 0),
(8, 106, 0),
(8, 107, 0),
(8, 108, 0),
(8, 109, 0),
(8, 110, 0),
(8, 111, 0),
(8, 112, 0),
(8, 113, 0),
(8, 114, 0),
(8, 115, 0),
(8, 116, 0),
(8, 117, 0),
(8, 118, 0),
(8, 119, 0),
(8, 120, 0),
(8, 121, 0),
(8, 122, 0),
(8, 123, 0),
(8, 296, 0),
(9, 124, 0),
(9, 125, 0),
(9, 126, 0),
(9, 127, 0),
(9, 128, 0),
(9, 129, 0),
(9, 130, 0),
(9, 131, 0),
(9, 132, 0),
(9, 133, 0),
(9, 134, 0),
(9, 135, 0),
(9, 136, 0),
(9, 137, 0),
(9, 138, 0),
(9, 139, 0),
(9, 140, 0),
(9, 141, 0),
(9, 145, 0),
(9, 146, 0),
(9, 147, 0),
(9, 148, 0),
(9, 149, 0),
(9, 150, 0),
(9, 151, 0),
(9, 152, 0),
(9, 153, 0),
(9, 302, 0),
(10, 159, 0),
(10, 160, 0),
(10, 161, 0),
(10, 163, 0),
(10, 164, 0),
(10, 165, 0),
(10, 166, 0),
(10, 167, 0),
(10, 168, 0),
(10, 169, 0),
(10, 170, 0),
(10, 179, 0),
(10, 180, 0),
(10, 301, 0),
(12, 181, 0),
(12, 182, 0),
(12, 183, 0),
(12, 184, 0),
(12, 185, 0),
(12, 186, 0),
(12, 187, 0),
(12, 188, 0),
(12, 190, 0),
(12, 191, 0),
(12, 192, 0),
(12, 193, 0),
(12, 194, 0),
(12, 195, 0),
(12, 196, 0),
(12, 197, 0),
(12, 198, 0),
(12, 199, 0),
(12, 200, 0),
(12, 201, 0),
(12, 202, 0),
(12, 203, 0),
(12, 204, 0),
(12, 205, 0),
(12, 206, 0),
(12, 207, 0),
(12, 208, 0),
(12, 209, 0),
(12, 210, 0),
(12, 211, 0),
(12, 212, 0),
(12, 213, 0),
(12, 214, 0),
(12, 215, 0),
(12, 216, 0),
(12, 217, 0),
(12, 218, 0),
(12, 219, 0),
(12, 220, 0),
(12, 221, 0),
(12, 222, 0),
(12, 223, 0),
(12, 224, 0),
(12, 225, 0),
(12, 226, 0),
(12, 227, 0),
(12, 228, 0),
(12, 298, 0),
(12, 299, 0),
(13, 229, 0),
(13, 230, 0),
(13, 231, 0),
(13, 232, 0),
(13, 233, 0),
(13, 234, 0),
(13, 235, 0),
(13, 236, 0),
(13, 237, 0),
(13, 238, 0),
(13, 239, 0),
(13, 240, 0),
(13, 241, 0),
(13, 242, 0),
(13, 243, 0),
(13, 244, 0),
(14, 245, 0),
(14, 246, 0),
(14, 247, 0),
(14, 248, 0),
(14, 249, 0),
(14, 250, 0),
(14, 251, 0),
(14, 252, 0),
(14, 297, 0),
(15, 253, 0),
(15, 254, 0),
(15, 255, 0),
(15, 256, 0),
(15, 257, 0),
(15, 258, 0),
(15, 259, 0),
(15, 260, 0),
(15, 261, 0),
(15, 300, 0),
(16, 262, 0),
(16, 263, 0),
(16, 264, 0),
(16, 265, 0),
(16, 266, 0),
(16, 267, 0),
(16, 268, 0),
(16, 269, 0),
(16, 270, 0),
(16, 271, 0),
(16, 272, 0),
(16, 273, 0),
(16, 274, 0),
(17, 275, 0),
(17, 276, 0),
(17, 277, 0),
(17, 278, 0),
(17, 279, 0),
(17, 280, 0),
(17, 281, 0),
(17, 282, 0),
(17, 283, 0),
(17, 284, 0),
(18, 285, 0),
(18, 286, 0),
(18, 287, 0),
(18, 288, 0),
(18, 289, 0),
(18, 290, 0),
(18, 291, 0),
(18, 292, 0),
(18, 293, 0),
(19, 294, 0),
(19, 295, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`id`, `name`, `total_num_of_guest`, `current_num_of_guest`, `status`) VALUES
(1, 'ITEC', 12, 0, 0),
(2, 'Cấp 2', 2, 0, 0),
(3, 'Nguyễn Khuyến', 21, 0, 0),
(4, 'Cao Đẳng Thi', 13, 0, 0),
(5, 'Yusen', 34, 0, 0),
(6, 'Infory', 12, 0, 0),
(7, 'Thầy Hưng', 4, 0, 0),
(8, 'Nhà Gái (Nội)', 28, 0, 0),
(9, 'Nhà Gái (Ngoại)', 28, 0, 0),
(10, 'Bạn Ba Thi', 14, 0, 0),
(12, 'Chợ Tân Thành', 49, 0, 0),
(13, 'Hàng Xóm', 16, 0, 0),
(14, 'Bạn Má', 9, 0, 0),
(15, 'Chùa', 10, 0, 0),
(16, 'Bàn Chay', 13, 0, 0),
(17, 'Bao Kinh', 10, 0, 0),
(18, 'Bạn Ba', 9, 0, 0),
(19, 'Trần Bội Cơ', 2, 0, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guest_table`
--
ALTER TABLE `guest_table`
  ADD CONSTRAINT `fk_gt_guest` FOREIGN KEY (`id_guest`) REFERENCES `guest` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gt_table` FOREIGN KEY (`id_table`) REFERENCES `table` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
