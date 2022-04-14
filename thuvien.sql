-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2022 at 06:49 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thuvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_Danhmuc` int(50) NOT NULL,
  `tendanhmuc` varchar(50) NOT NULL,
  `slugdanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id_Danhmuc`, `tendanhmuc`, `slugdanhmuc`) VALUES
(9, 'Sách khoa học', 'sach-khoa-hoc'),
(10, 'Sách lập trình', 'sach-lap-trinh'),
(12, 'Sách ngữ văn', 'sach-ngu-van'),
(14, 'Sách tiếng anh', 'sach-tieng-anh');

-- --------------------------------------------------------

--
-- Table structure for table `ddc`
--

CREATE TABLE `ddc` (
  `malopDDC` int(11) NOT NULL,
  `tenlopDDC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `muontra`
--

CREATE TABLE `muontra` (
  `id_Muontra` int(11) NOT NULL,
  `id_Sach` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `ngay_Muon` date NOT NULL,
  `ngay_Hentra` date NOT NULL,
  `ngay_Tra` date DEFAULT NULL,
  `tinhtrang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muontra`
--

INSERT INTO `muontra` (`id_Muontra`, `id_Sach`, `id`, `ngay_Muon`, `ngay_Hentra`, `ngay_Tra`, `tinhtrang`) VALUES
(1, 2, 3, '2021-08-01', '2022-07-31', NULL, 'Đồng ý'),
(2, 8, 2, '2021-08-01', '2022-08-01', '2022-02-11', 'Đã trả'),
(3, 8, 3, '2021-08-01', '2022-08-01', '2021-08-01', 'Đã trả');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tranmanhduc0964875742@gmail.com', '$2y$10$WuAz6eib6y8Skoe4AMvNHOZ4UiNnG9tuSMfxYEKmQ4JIhHr.n91Rm', '2021-07-31 19:23:36'),
('ductm00@gmail.com', '$2y$10$qbhqhmpeStgZ.w4sngLaMOtZ9CwStE/qaeUIiUS8.HcHbohp.wnP2', '2021-07-31 19:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE `sach` (
  `id_Sach` int(50) NOT NULL,
  `tensach` varchar(50) NOT NULL,
  `slugsach` varchar(100) NOT NULL,
  `tentacgia` varchar(50) NOT NULL,
  `id_Danhmuc` varchar(50) NOT NULL,
  `nhaxuatban` varchar(50) NOT NULL,
  `namxuatban` int(10) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `tomtat` text NOT NULL,
  `soluong` int(50) NOT NULL,
  `giabia` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`id_Sach`, `tensach`, `slugsach`, `tentacgia`, `id_Danhmuc`, `nhaxuatban`, `namxuatban`, `hinhanh`, `tomtat`, `soluong`, `giabia`) VALUES
(1, 'Code Dạo Kí Sự', 'code-dao-ky-su', 'Phạm Huy Hoàng', '10', 'Nhà xuất bản Thanh Niên', 2018, 'codedaokysu.jpg', 'Code Dạo Kí Sự - Lập Trình Viên Đâu Phải Chỉ Biết Code\r\n\r\nNếu các bạn có đọc các blog về lập trình ở Việt Nam thì có lẽ cái tên Tôi đi code dạo không có gì quá xa lạ đối với các bạn.', 9, 127100),
(2, 'Giáo Trình Lập Trình C Căn Bản Và Nâng Cao', 'giao-trinh-lap-trinh-c-can-ban-va-nang-cao', 'Nhiều tác giả', '10', 'Nhà xuất bản Bách Khóa Hà Nội', 2018, 'kythuatlaptrinhc.jpg', 'Giáo trình kỹ thuật lập trình C căn bản và nâng cao được hình thành qua nhiều năm giảng dạy của các tác giả. Ngôn ngữ lập trình C là một môn học cơ sở trong chương trình đào tạo kỹ sư, cử nhân tin học của nhiều trường đại học. Ở đây sinh viên được trang bị những kiến thức cơ bản nhất về lập trình, các kỹ thuật  tổ chức dữ liệu và lập trình căn bản với ngôn ngữ C.', 9, 135000),
(3, 'Lập Trình Java Căn Bản', 'lap-trinh-java-can-ban', 'Nhiều tác giả', '10', 'Nhà xuất bản Xây Dựng', 2018, 'laptrinhjava.jpg', 'Cung cấp các kiến thức cơ bản về ngôn ngữ lập trình Java, kiến thức về lập trình hướng đối tượng, xử lý biệt lệ, lập trình đa luồng, lập trình from với swing và kết nối cơ sở dữ liệu với Java…\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, .....', 9, 85000),
(4, 'Học Tốt Ngữ Văn Lớp 12 Toàn Tập', 'hoc-tot-ngu-van-lop-12-toan-tap', 'Nhiều tác giả', '12', 'Nhà xuất bản TP. Hồ Chí Minh', 2019, 'hoctotnguvan12.jpg', 'Học Tốt Ngữ Văn Lớp 12 Toàn Tập\r\n\r\nNhằm giúp các em học sinh học tốt chương trình Ngữ văn 10, chúng tôi biên soạn cuốn Học tốt ngữ văn 10 theo chương trình mới do Bộ GD&ĐT ban hành.\r\n\r\nChúng tôi đã bám sát nội dung của sách giáo khoa để trả lời hệ thống các câu hỏi, hướng dẫn làm bài tập; đồng thời đưa vào một số bài văn tham khảo, những đề văn mở nhằm giúp các em có định hướng cụ thể, tạo điều kiện để các em có thể học tốt môn Ngữ văn một cách chủ động, sáng tạo.', 9, 67000),
(5, 'Bồi Dưỡng Học Sinh Giỏi Ngữ Văn Lớp 12', 'boi-duong-hoc-sinh-gioi-ngu-van-lop-12', 'ThS. Lê Xuân Soạn', '12', 'Nhà xuất bản Đại học Quốc gia Hà Nội', 2019, 'hsgnguvan12.jpg', 'Những Điều Cần Biết Bồi Dưỡng Học Sinh Giỏi Ngữ Văn Lớp 12\r\n\r\nTập tài liệu gồm 2 phần, với những nội dung cơ bản sau:\r\n\r\nPhần thứ nhất: Những vấn đề chung về bồi dưỡng học sinh giỏi Văn lớp 12\r\n\r\nPhần thứ hai: Kiến thức cơ bản, Hướng dẫn làm bài, Lập dàn bài và bài làm tham khảo', 9, 78300),
(6, 'Sổ tay Kiến Thức Ngữ Văn', 'so-tay-kien-thuc-ngu-van', 'Lê Nguyên Lâm', '12', 'Nhà xuất bản Đại học Quốc gia Hà Nội', 2018, 'sotaynguvan.jpg', 'Cuốn Sổ tay kiến thức Ngữ văn Trung học phổ thông được biên soạn nhằm hệ thống hóa toàn bộ kiến thức Ngữ văn trong chương trình Trung học phổ thông – giai đoạn quan trọng để chuẩn bị cho kì thi tốt nghiệp phổ thông và đại học.', 9, 60000),
(7, 'Tài Liệu Luyện Thi Tổng Hợp VSTEP Bậc 3', 'tai-lieu-luyen-thi-tong-hop-vstep-bac-3', 'Nhiều tác giả', '14', 'Nhà xuất bản TP. Hồ Chí Minh', 2020, 'vstepbac3.jpg', 'Nhanh chóng nắm vững kiến thức cần thiết cũng như kỹ năng làm bài thi B1 trong thời gian ngắn', 9, 276000),
(8, 'Hackers Toeic Vocabulary', 'hacker-toeic-vocabulary', 'David Cho', '14', 'Nhà xuất bản Dân Trí', 2021, 'toeic.jpg', 'Hackers TOEIC Vocabulary là cuốn sách được thiết kế nhằm giúp người học có thể hoàn thành mục tiêu nhớ và nắm được cách sử dụng của khoảng gần 7600 từ vựng theo các chủ đề khác nhau trong vòng 30 ngày. Ngoài ra, bạn còn được cung cấp những nội dung cần thiết liên quan như: câu hỏi theo định dạng bài thi thật, các xu hướng ra đề của bài thi dạng thức mới. “120 thành ngữ và cụm từ cố định cần biết để chinh phục bài thi TOEIC” ở cuối sách cũng là một nguồn tài liệu quý giá khiến cho các câu hỏi trong bài thi TOEIC không thể làm khó bạn trên con đường chinh phục điểm số mơ ước.', 9, 249000),
(10, 'Mastering Cambridge Ielts Practice Tests 1', 'Mastering-Cambridge-Ielts-Practice-Tests-1-With-Answers', 'Xuân Lan', '14', 'Nhà xuất bản Đà Nẵng', 2021, 'ielts1.jpg', 'Cẩm Nang Luyện Thi Ielts - Mastering Cambridge Ielts Practice Tests 1 With Answers', 9, 98400),
(11, 'Các Thế Giới Song Song', 'cac-the-gioi-song-song', 'Michio Kaku', '9', 'Nhà xuất bản Thế Giới', 2018, 'cacthegioisongsong.jpg', 'Một chuyến du hành đầy trí tuệ qua các vũ trụ, được dẫn dắt tài tình bởi \"thuyền trưởng\" Michio Kaku.', 9, 109500),
(12, 'Bách Khoa Thư Về Khoa Học', 'bach-khoa-thu-ve-khooa-hoc', 'Nhiều tác giả', '9', 'Nhà xuất bản Thanh Niên', 2018, 'bachkhoatoanthuvekhoahoc.jpg', 'BÁCH KHOA THƯ VỀ KHOA HỌC tóm lược kiến thức khoa học của loài người suốt nhiều thế kỷ trong một cuốn sách. Những hiện tượng tự nhiên, những phát minh có tính đột phá, những sự thật khoa học và những vấn đề mới nhất được giải thích thật đơn giản và rõ ràng. Vô số biểu đồ cùng hình ảnh minh họa hấp dẫn với thị giác xuất hiện khắp các trang sách, khiến những kiến thức và thông tin trở nên dễ hiểu hơn rất nhiều.', 9, 335500),
(13, 'Bách Khoa Lịch Sử Thế Giới', 'bach-khoa-lich-su-the-gioi', 'The Usborne', '9', 'Nhà xuất bản Dân Trí', 2018, 'licsuthegioi.jpg', 'Bách khoa Lịch sử thế giới là ấn phẩm vừa được phát hành thuộc tủ sách Bách khoa tri thức của Công ty Văn hóa Đông A. Cuốn sách chứa đựng lượng kiến thức khổng lồ về thế giới từ trước đến nay với hơn 200 chủ đề nằm trong 4 phần chính: Thế giới Tiền sử, Thế giới Cổ đại, Thế giới Trung cổ và 500 năm gần đây.', 9, 320400);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `address`) VALUES
(1, 'Đức', 'tranmanhduc0964875742@gmail.com', NULL, '$2y$10$tdz1mqzztnWRQcX8D2/2a.xsalyVCcpkZd/Pyb8xDqNNS1huya0uC', 'KiVPjApueuDSrZHTZN3t3DxvaPQgZKqE7LAFi4bMRT9HzGaW2SJPpXrV6I0M', '2021-07-14 03:55:51', '2021-07-14 03:55:51', '', ''),
(2, 'Đứcc', 'ductm00@gmail.com', NULL, '$2y$10$Em4irEIqP9nb98KtS7mjFuTefmtwqa9blLHI/qQrWsZxA.6d5mRAO', NULL, '2021-07-28 00:53:29', '2021-07-28 00:53:29', '', ''),
(3, 'Đứccc', '18020341@vun.edu.vn', NULL, '$2y$10$c05djjCsjpTGaq4MIJWVhOAwXRQX9E5C1ZvkFrZUz1cFwWXlsDUo2', NULL, '2021-07-28 01:44:06', '2021-07-28 01:44:06', '', ''),
(4, 'Đức', 'fffff@gmail.com', NULL, '$2y$10$x3vFxcubdSTFf2HZzIMb2.61b08NnAw3Zhcfqkbc1Q.ob.upXoUtG', NULL, '2021-07-31 02:18:57', '2021-07-31 02:18:57', '0964875742', 'trung hoà cầu giấy'),
(5, 'TRAN MANH DUC', 'user@gmail.com', NULL, '$2y$10$DvqdPAbHv9yLEdYQGLPni.DjXFnvE3WvRqyg.t1hpE6nFjclIpN9G', NULL, '2021-12-08 07:10:25', '2021-12-08 07:10:25', '0864875742', 'trung hoà cầu giấy'),
(6, 'duc', 'admin@gmail.com', NULL, '$2y$10$rpHd0ruta11lqEV7at.mz.OJBjDfF8gQmE2zDlsy4Bg5uL3NWRtsq', NULL, '2022-02-08 20:28:43', '2022-02-08 20:28:43', '0111111111', 'ha noi, ha nam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_Danhmuc`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `muontra`
--
ALTER TABLE `muontra`
  ADD PRIMARY KEY (`id_Muontra`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`id_Sach`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_Danhmuc` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `muontra`
--
ALTER TABLE `muontra`
  MODIFY `id_Muontra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sach`
--
ALTER TABLE `sach`
  MODIFY `id_Sach` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
