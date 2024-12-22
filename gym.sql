-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 22, 2024 lúc 10:23 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `gym`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `class_name` varchar(100) DEFAULT NULL,
  `schedule_time` varchar(50) DEFAULT NULL,
  `trainer_id` int(11) DEFAULT NULL,
  `max_members` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `classes`
--

INSERT INTO `classes` (`id`, `class_name`, `schedule_time`, `trainer_id`, `max_members`) VALUES
(1, 'Yoga cơ bản', 'Thứ 2 6:00 PM', 1, 15),
(2, 'Cardio nâng cao', 'Thứ 3 7:00 AM', 2, 20),
(3, 'Tập tạ cường độ cao', 'Thứ 4 5:00 PM', 3, 10),
(4, 'HIIT đốt mỡ toàn thân', 'Thứ 5 6:00 PM', 4, 12),
(5, 'Zumba cơ bản', 'Thứ 6 5:30 PM', 5, 18),
(6, 'Boxing cơ bản', 'Thứ 7 4:00 PM', 6, 14),
(7, 'Pilates nâng cao', 'Chủ nhật 8:00 AM', 7, 10),
(8, 'CrossFit thử thách', 'Thứ 2 7:00 AM', 8, 12),
(9, 'Aerobics giảm cân', 'Thứ 4 6:30 PM', 9, 20),
(10, 'Lớp Stretching', 'Chủ nhật 5:00 PM', 10, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `membership_type` varchar(20) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `members`
--

INSERT INTO `members` (`id`, `name`, `dob`, `phone`, `membership_type`, `start_date`, `end_date`) VALUES
(1, 'Nguyễn Văn An', '1990-05-10', '0901234001', 'Monthly', '2024-01-01', '2024-01-31'),
(2, 'Trần Thị Bích', '1988-11-22', '0901234002', 'Quarterly', '2024-01-01', '2024-03-31'),
(3, 'Lê Minh Tuấn', '1995-03-15', '0901234003', 'Yearly', '2024-01-01', '2024-12-31'),
(4, 'Phạm Thị Lan', '1992-07-20', '0901234004', 'Monthly', '2024-01-01', '2024-01-31'),
(5, 'Hoàng Quốc Bảo', '1998-09-12', '0901234005', 'Quarterly', '2024-01-01', '2024-03-31'),
(6, 'Đặng Thị Hằng', '1993-04-25', '0901234006', 'Yearly', '2024-01-01', '2024-12-31'),
(7, 'Bùi Văn Dũng', '2000-01-10', '0901234007', 'Monthly', '2024-02-01', '2024-02-29'),
(8, 'Võ Thị Thuỷ Tiên', '1997-08-30', '0901234008', 'Quarterly', '2024-01-15', '2024-04-15'),
(9, 'Dương Minh Hải', '1991-02-19', '0901234009', 'Yearly', '2024-01-01', '2024-12-31'),
(10, 'Trịnh Văn Nam', '1989-06-11', '0901234010', 'Monthly', '2024-02-01', '2024-02-29'),
(11, 'Vũ Thị Thu Hà', '2001-03-01', '0901234011', 'Monthly', '2024-01-01', '2024-01-31'),
(12, 'Nguyễn Thế Mạnh', '1994-12-05', '0901234012', 'Quarterly', '2024-02-01', '2024-05-01'),
(13, 'Trần Hồng Phúc', '1990-08-14', '0901234013', 'Yearly', '2024-01-01', '2024-12-31'),
(14, 'Ngô Hải Yến', '1996-10-09', '0901234014', 'Quarterly', '2024-01-10', '2024-04-10'),
(15, 'Mai Văn Cường', '1993-02-25', '0901234015', 'Monthly', '2024-03-01', '2024-03-31'),
(16, 'Phan Quốc Khánh', '1992-09-01', '0901234016', 'Yearly', '2024-01-01', '2024-12-31'),
(17, 'Đoàn Thị Kim Oanh', '1995-12-12', '0901234017', 'Monthly', '2024-01-01', '2024-01-31'),
(18, 'Hà Minh Hương', '2000-11-05', '0901234018', 'Quarterly', '2024-02-01', '2024-05-01'),
(19, 'Nguyễn Quốc Thịnh', '1994-05-23', '0901234019', 'Yearly', '2024-01-01', '2024-12-31'),
(20, 'Lương Thị Thuỳ Linh', '1991-06-17', '0901234020', 'Monthly', '2024-01-01', '2024-01-31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `schedule_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `schedules`
--

INSERT INTO `schedules` (`id`, `member_id`, `class_id`, `schedule_date`) VALUES
(1, 1, 3, '2024-03-01'),
(2, 2, 2, '2024-03-02'),
(3, 3, 4, '2024-03-03'),
(4, 4, 1, '2024-03-04'),
(5, 5, 5, '2024-03-05'),
(6, 12, 6, '2024-03-06'),
(7, 15, 7, '2024-03-07'),
(8, 18, 8, '2024-03-08'),
(9, 20, 9, '2024-03-09'),
(10, 19, 10, '2024-03-10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trainers`
--

CREATE TABLE `trainers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `member_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `dob`, `phone`, `member_count`) VALUES
(1, 'Nguyễn Văn Long', '1985-02-11', '0902234001', 12),
(2, 'Trần Thị Mai', '1990-05-05', '0902234002', 15),
(3, 'Lê Hồng Sơn', '1993-11-25', '0902234003', 10),
(4, 'Phạm Thị Thuỳ Dung', '1994-01-14', '0902234004', 8),
(5, 'Hoàng Anh Tú', '1987-04-21', '0902234005', 14),
(6, 'Đặng Văn Phú', '1995-06-10', '0902234006', 20),
(7, 'Bùi Thị Ngọc', '1992-08-31', '0902234007', 13),
(8, 'Võ Quốc Thắng', '1988-12-30', '0902234008', 18),
(9, 'Dương Thị Hồng', '1997-02-28', '0902234009', 11),
(10, 'Trịnh Thế Hiển', '1990-10-03', '0902234010', 16);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainer_id` (`trainer_id`);

--
-- Chỉ mục cho bảng `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Chỉ mục cho bảng `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Chỉ mục cho bảng `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`);

--
-- Các ràng buộc cho bảng `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`),
  ADD CONSTRAINT `schedules_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
