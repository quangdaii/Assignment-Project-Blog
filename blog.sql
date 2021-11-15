-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 01, 2021 lúc 04:44 AM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id_categories` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id_categories`, `name`, `slug`) VALUES
(1, 'Y tế', 'Covid 19...');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id_post` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `view_number` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id_post`, `title`, `slug`, `view_number`, `image`, `summary`, `category_id`, `user_id`, `date`, `content`) VALUES
(1, 'Số ca mắc covid ', 'VN không ghi nhận ca mắc covid mới', 5, '', 'Tính từ 17h ngày 21/10 đến 17h ngày 22/10, trên Hệ thống Quốc gia quản lý ca bệnh COVID-19 ghi nhận 3.985 ca nhiễm mới, trong đó 08 ca nhập cảnh và 3.977 ca ghi nhận trong nước (tăng 359 ca so với ngày trước đó) tại 50 tỉnh, thành phố (có 1.782 ca trong cộng đồng).', 1, 1, '2021-10-20', 'Tại họp báo thường kỳ ngày 21/10 của Bộ Ngoại giao, trả lời câu hỏi của phóng viên về những chính sách, biện pháp của Việt Nam nhằm tạo điều kiện thuận lợi và cấp \"thẻ xanh\" cho người từ nước ngoài đã tiêm đủ 2 mũi vaccine COVID-19 đến Việt Nam, Người Phát ngôn Bộ Ngoại giao Lê Thị Thu Hằng cho biết, theo tinh thần của Nghị quyết số 128/NQ-CP ngày 11/10/2021 của Chính phủ ban hành quy định tạm thời \"Thích ứng an toàn, linh hoạt, kiểm soát hiệu quả dịch COVID-19\", hiện Việt Nam đang tạm thời công nhận mẫu giấy chứng nhận tiêm chủng của 72 quốc gia, vùng lãnh thổ đã được các quốc gia và vùng lãnh thổ này giới thiệu chính thức tới Bộ Ngoại giao.\r\n\r\nTheo đó, người mang các giấy tờ này được sử dụng trực tiếp ở Việt Nam và được giảm thời gian cách ly tập trung xuống còn 7 ngày theo Hướng dẫn của Bộ Y tế về rút ngắn thời gian cách ly cho người đã tiêm đủ liều vaccine phòng COVID-19, hoặc đã mắc COVID-19 nhưng đã khỏi bệnh.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `fullname`, `level`) VALUES
(1, 'giang', '9db06bcff9248837f86d1a6bcf41c9e7', 'nguyen nhu giang', '1'),
(2, 'giangquynh2k', '9db06bcff9248837f86d1a6bcf41c9e7', 'Nguyễn Giang', '0'),
(4, 'giangquynh2kbn', '9db06bcff9248837f86d1a6bcf41c9e7', 'Nguyễn Như Giang', '0');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categories`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_post`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categories` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
