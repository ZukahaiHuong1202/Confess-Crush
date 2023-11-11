-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 11, 2023 lúc 07:03 PM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlynhansu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangcap`
--

CREATE TABLE `bangcap` (
  `id_bc` int NOT NULL,
  `ma_bc` varchar(255) NOT NULL,
  `ten_bc` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `nguoitao` varchar(50) NOT NULL,
  `ngaytao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `bangcap`
--

INSERT INTO `bangcap` (`id_bc`, `ma_bc`, `ten_bc`, `mota`, `nguoitao`, `ngaytao`) VALUES
(1, 'MBC202301', 'Thạc SỸ', 'tốt nghiệp thạc sĩ', 'admin', '2023-02-11 00:00:00'),
(2, 'MBC202302', 'ádfgb', 'qưert', 'admin', '0456-03-12 00:00:00'),
(7, 'MBC202305', 'TIẾN SĨ', 'tốt nghiệp cử nhân', 'admin', '2003-02-12 00:00:00'),
(8, 'MBC202307', 'Kỹ sư', 'k có', 'hohuong', '2003-02-12 00:00:00'),
(12, 'MBC202312', 'tiến sĩ', 'qưertyui', 'admin', '2024-03-12 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congtac`
--

CREATE TABLE `congtac` (
  `id_ct` int NOT NULL,
  `ma_ct` varchar(255) NOT NULL,
  `ten_nv` varchar(255) NOT NULL,
  `ngaybd` datetime NOT NULL,
  `ngaykt` datetime NOT NULL,
  `mucdich` varchar(255) NOT NULL,
  `ngtao` varchar(300) NOT NULL,
  `ngaytao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhthuc`
--

CREATE TABLE `hinhthuc` (
  `hinhthuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhthuc`
--

INSERT INTO `hinhthuc` (`hinhthuc`) VALUES
('chuyển khoản qua thẻ tín dụng'),
('nhận tiền mặt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khenthuong`
--

CREATE TABLE `khenthuong` (
  `id_kt` int NOT NULL,
  `maloai` varchar(255) NOT NULL,
  `tenloai` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `ngtao` varchar(255) NOT NULL,
  `ngaytao` datetime NOT NULL,
  `ngsua` varchar(500) NOT NULL,
  `ngaysua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `khenthuong`
--

INSERT INTO `khenthuong` (`id_kt`, `maloai`, `tenloai`, `mota`, `ngtao`, `ngaytao`, `ngsua`, `ngaysua`) VALUES
(1, 'MLKT001', 'xuất sắc', 'k có', 'admin', '2003-02-12 00:00:00', 'hohuong', '2004-02-12 00:00:00'),
(2, 'MLKT003', 'k có', 'k có', 'admin', '2003-02-12 00:00:00', 'k có', '2003-02-12 00:00:00'),
(3, 'MLKT004', 'k có', 'k có', 'hohuong', '2003-02-10 00:00:00', 'k có', '2003-02-12 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ktnhanvien`
--

CREATE TABLE `ktnhanvien` (
  `id_loai` int NOT NULL,
  `ma_kt` varchar(255) NOT NULL,
  `soqd` int NOT NULL,
  `ngayqd` datetime NOT NULL,
  `tenkt` varchar(500) NOT NULL,
  `ten_nv` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `loai_kt` varchar(255) NOT NULL,
  `hinhthuc` varchar(300) NOT NULL,
  `sotien` int NOT NULL,
  `mota` varchar(500) NOT NULL,
  `ngtao` varchar(50) NOT NULL,
  `ngaytao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `ktnhanvien`
--

INSERT INTO `ktnhanvien` (`id_loai`, `ma_kt`, `soqd`, `ngayqd`, `tenkt`, `ten_nv`, `loai_kt`, `hinhthuc`, `sotien`, `mota`, `ngtao`, `ngaytao`) VALUES
(1, 'MKT001', 1, '2003-02-12 00:00:00', 'xuất sắc', 'Hồ Thị Hương', 'nhân viên đồng', 'chuyển khoản qua thẻ tín dụng', 0, '0', '0', '1023-02-12 00:00:00'),
(12, 'MKT040', 6, '2020-02-12 00:00:00', 'k có', 'Trần Khánh Duy', 'nhân viên kim cương', 'chuyển khoản qua thẻ tín dụng', 6000000, 'k có', 'k có', '2002-02-12 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kyluat`
--

CREATE TABLE `kyluat` (
  `id_loai` int NOT NULL,
  `ngaytao` datetime NOT NULL,
  `ngaysua` datetime NOT NULL,
  `ngtao` varchar(255) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `mucphat` varchar(255) NOT NULL,
  `ten_nv` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `kyluat`
--

INSERT INTO `kyluat` (`id_loai`, `ngaytao`, `ngaysua`, `ngtao`, `noidung`, `mucphat`, `ten_nv`) VALUES
(2, '2023-11-10 21:09:18', '2023-11-10 21:09:18', 'admin', '', '', ''),
(6, '2023-11-10 21:09:18', '2023-11-10 21:09:18', 'admin', '', '', ''),
(9, '2023-11-10 21:52:39', '2023-11-10 21:52:39', 'k coa', 'k có', 'k có', 'k có'),
(10, '3342-02-12 00:00:00', '8241-02-13 00:00:00', 'baby', 'xcvbnm', '7 triệu', 'Nguyễn Như Quỳnh'),
(13, '2003-02-12 00:00:00', '2003-02-12 00:00:00', 'hohuong', 'xcvbnm', '3 triệu', 'Nguyễn Như Quỳnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lkhenthuong`
--

CREATE TABLE `lkhenthuong` (
  `loai_kt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `lkhenthuong`
--

INSERT INTO `lkhenthuong` (`loai_kt`) VALUES
('nhân viên đồng'),
('nhân viên vàng'),
('nhân viên bạc'),
('nhân viên kim cương');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_nv`
--

CREATE TABLE `loai_nv` (
  `id_loai` int NOT NULL,
  `ma_loainv` varchar(50) NOT NULL,
  `ten_loainv` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `nguoitao` varchar(50) NOT NULL,
  `ngaytao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_nv`
--

INSERT INTO `loai_nv` (`id_loai`, `ma_loainv`, `ten_loainv`, `mota`, `nguoitao`, `ngaytao`) VALUES
(2, 'MLNV202302', 'xuất sắc', 'làm việc cẩn thận', 'admin', '2023-11-07 05:52:15'),
(3, 'MLNV202303', 'giỏi', 'qưertyhjk', 'admin', '2003-02-12 00:00:00'),
(4, 'MLNV202303', 'trung bình', 'qưertyhjk', 'admin', '2003-02-12 00:00:00'),
(7, 'MLNV202305', 'khá', 'làm việc chăm chỉ', 'hohuong', '2024-04-23 00:00:00'),
(8, 'MLNV202307', 'trung bình', 'k có', 'admin', '2003-02-12 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `login`
--

INSERT INTO `login` (`id`, `username`, `email`, `password`) VALUES
(1, 'hohuong', 'hohuong@gmail.com', '123456'),
(2, 'ngoctram', 'ngoctram@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int NOT NULL,
  `ma_nv` int NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `gioitinh` varchar(50) NOT NULL,
  `ngaysinh` varchar(50) NOT NULL,
  `dienthoai` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cccd` varchar(15) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `phongban` varchar(255) NOT NULL,
  `chucvu` varchar(255) NOT NULL,
  `trinhdo` varchar(255) NOT NULL,
  `chuyenmon` varchar(255) NOT NULL,
  `bangcap` varchar(500) NOT NULL,
  `loainhanvien` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `ma_nv`, `hoten`, `gioitinh`, `ngaysinh`, `dienthoai`, `email`, `cccd`, `diachi`, `phongban`, `chucvu`, `trinhdo`, `chuyenmon`, `bangcap`, `loainhanvien`) VALUES
(1, 1, 'hohuong', 'nu', '12/02/2003', '0382457804', 'hohuong@gmail.com', '003123345678', 'Hà Đông - Hà Nội', 'Choose one', 'Choose one', 'Choose one', 'Choose one', 'Choose one', 'Choose one'),
(2, 2, 'Hồ Thị Hương', 'nam', '12/02/2007', '0382457804', 'tuyetlinhlinhhuong9c@gmail.com', '003123345678', 'Kim Bảng _ Hà Nam', '', 'nhân viên', 'kế toán', 'quản lý', 'Thạc SỸ', 'trung bình'),
(3, 3, 'Nguyễn Thị NGọc Trâm', 'nu', '25/06/2003', '0382457804', 'ngoctram@gmail.com', '003123345678', 'hà đông hà nội', 'uk', 'uk', 'uk', 'uk', 'uk', 'uk'),
(4, 4, 'Nguyễn Như Quỳnh', 'nữ', '23/02/2002', '0387654245', 'nhuquynh@gmail.com', '003123345678', 'Kim Bảng _ Hà Nam', '', 'Trưởng Phòng', 'kế toán', 'quản lý', 'Thạc SỸ', 'xuất sắc'),
(5, 5, 'Trần Khánh Duy', 'nam', '30/01/2003', '0382457804', 'khanhduy@gmail.com', '003123345678', 'Kim Bảng _ Hà Nam', 'uk', 'uk', 'uk', 'uk', 'uk', 'uk'),
(1234, 12, 'Nancy', 'nam', '12/08/1997', '0382457804', 'phonghoanguyethuong@gmail.com', '003123345678', 'Hà Đông - Hà Nội', 'Bảo vệ', 'nhân viên', 'nhan sự', 'quản lý', 'Thạc SỸ', 'xuất sắc'),
(112, 112, 'hohuong', 'nam', '12/02/2003', '0382457804', 'tuyetlinhlinhhuong9c@gmail.com', '12345678909', 'hà đông hà nội', 'TRUONG PHONG', 'Trưởng Phòng', 'kế toán', 'quản lý', 'Thạc SỸ', 'xuất sắc'),
(7, 123, 'Trần Khánh Duy', 'nam', '12/08/1997', '12345678909', 'khanhduy@gmail.com', '12345678909', 'Kim Bảng _ Hà Nam', 'Choose one', 'Choose one', 'Choose one', 'Choose one', 'Choose one', 'Choose one'),
(14, 1234, 'van phuc', 'nu', '12/08/1997', '12345678909', 'phonghoanguyethuong@gmail.com', '12345678909', 'Hà Đông - Hà Nội', 'Choose one', 'Choose one', 'Choose one', 'Choose one', 'Choose one', 'Choose one');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chucvu`
--

CREATE TABLE `tbl_chucvu` (
  `idcv` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `tencv` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `luongngay` int NOT NULL,
  `mota` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `nguoitao` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `ngaytao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chucvu`
--

INSERT INTO `tbl_chucvu` (`idcv`, `tencv`, `luongngay`, `mota`, `nguoitao`, `ngaytao`) VALUES
('MCV202301', 'Trưởng Phòng', 1234, 'ádfv', 'admin', '2003-02-12'),
('MCV202302', 'nhân viên', 12, 'làm việc', 'admin', '2023-07-11'),
('MCV202303', 'nhân viên', 12, 'k có', 'admin', '2003-02-12'),
('MCV202304', 'nhân viên', 12, 'k có', 'admin', '2003-02-12'),
('MCV202305', 'kế toán', 12, 'k có', 'admin', '2003-02-12'),
('MCV202306', 'bảo vệ', 9, 'k có', 'admin', '2003-02-12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chuyenmon`
--

CREATE TABLE `tbl_chuyenmon` (
  `idcm` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `tencm` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `mota` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `nguoitao` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `ngaytao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chuyenmon`
--

INSERT INTO `tbl_chuyenmon` (`idcm`, `tencm`, `mota`, `nguoitao`, `ngaytao`) VALUES
('MCM202301', 'quản lý', 'qưergth', 'qưerfgh', '0456-03-12'),
('MCM202302', 'quản lý', 'k có', 'hohuong', '2003-02-12'),
('MCM202303', 'quản lý', 'k có', 'admin', '2024-03-12'),
('MCM202304', 'quản lý', 'k có', 'admin', '2024-04-14'),
('MCM202305', 'quản lý', 'k có', 'hohuong', '2024-03-12'),
('MCM202306', 'quản lý', 'k có', 'ngoc trâm', '2024-04-23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hopdong`
--

CREATE TABLE `tbl_hopdong` (
  `id_hd` int NOT NULL,
  `ngaybd` datetime NOT NULL,
  `ngaykt` datetime NOT NULL,
  `ngayky` datetime NOT NULL,
  `noidung` varchar(500) NOT NULL,
  `lanky` varchar(500) NOT NULL,
  `thoihan` varchar(500) NOT NULL,
  `hesoluong` varchar(300) NOT NULL,
  `ten_nv` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_hopdong`
--

INSERT INTO `tbl_hopdong` (`id_hd`, `ngaybd`, `ngaykt`, `ngayky`, `noidung`, `lanky`, `thoihan`, `hesoluong`, `ten_nv`) VALUES
(6, '2003-02-12 00:00:00', '2003-02-12 00:00:00', '2003-02-12 00:00:00', 'k có', '3', '3 năm', '3', 'Trần Khánh Duy'),
(7, '2033-02-12 00:00:00', '2003-02-12 00:00:00', '2232-02-12 00:00:00', 'xcvbnm', 'cvbnm,', 'cv bnm', 'cvbnm', 'Nguyễn Thị NGọc Trâm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_phongban`
--

CREATE TABLE `tbl_phongban` (
  `idpb` int NOT NULL,
  `tenpb` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `mota` varchar(300) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_phongban`
--

INSERT INTO `tbl_phongban` (`idpb`, `tenpb`, `mota`) VALUES
(1, 'TRUONG PHONG', 'quan ly'),
(2, 'Bảo vệ', 'lau dọn bàn làm việc'),
(3, 'Kế Toán', 'tính Lương'),
(4, 'Trưởng phòng nhân sự', 'k có'),
(5, 'Trưởng phòng kế toán', 'k có'),
(12, 'TRƯỞNG PHÒNG', 'ádf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trinhdo`
--

CREATE TABLE `trinhdo` (
  `id_td` int NOT NULL,
  `ma_td` varchar(50) NOT NULL,
  `ten_td` varchar(255) NOT NULL,
  `nguoitao` varchar(255) NOT NULL,
  `ngaytao` datetime NOT NULL,
  `mota` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `trinhdo`
--

INSERT INTO `trinhdo` (`id_td`, `ma_td`, `ten_td`, `nguoitao`, `ngaytao`, `mota`) VALUES
(1, 'TD202301', 'kế toán', 'admin', '2023-11-07 08:11:43', 'làm việc'),
(5, 'TD202302', 'nhan sự', 'hohuong', '2003-02-12 00:00:00', 'ádfghjknbvfc'),
(7, 'TD202306', 'nhan sự', 'hohuong', '2003-02-12 00:00:00', 'k có'),
(8, 'TD202302', 'bảo vệ', 'admin', '2023-04-13 00:00:00', 'k có'),
(9, 'TD202307', 'nhan sự', 'admin', '2003-02-12 00:00:00', 'ghjkjhvb');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bangcap`
--
ALTER TABLE `bangcap`
  ADD PRIMARY KEY (`id_bc`);

--
-- Chỉ mục cho bảng `congtac`
--
ALTER TABLE `congtac`
  ADD UNIQUE KEY `id_ct` (`id_ct`);

--
-- Chỉ mục cho bảng `khenthuong`
--
ALTER TABLE `khenthuong`
  ADD UNIQUE KEY `id_kt` (`id_kt`);

--
-- Chỉ mục cho bảng `ktnhanvien`
--
ALTER TABLE `ktnhanvien`
  ADD UNIQUE KEY `id_loai` (`id_loai`);

--
-- Chỉ mục cho bảng `kyluat`
--
ALTER TABLE `kyluat`
  ADD UNIQUE KEY `id_loai` (`id_loai`);

--
-- Chỉ mục cho bảng `loai_nv`
--
ALTER TABLE `loai_nv`
  ADD UNIQUE KEY `id_loai` (`id_loai`);

--
-- Chỉ mục cho bảng `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`ma_nv`);

--
-- Chỉ mục cho bảng `tbl_chucvu`
--
ALTER TABLE `tbl_chucvu`
  ADD PRIMARY KEY (`idcv`);

--
-- Chỉ mục cho bảng `tbl_chuyenmon`
--
ALTER TABLE `tbl_chuyenmon`
  ADD PRIMARY KEY (`idcm`);

--
-- Chỉ mục cho bảng `tbl_hopdong`
--
ALTER TABLE `tbl_hopdong`
  ADD UNIQUE KEY `id_hd` (`id_hd`);

--
-- Chỉ mục cho bảng `tbl_phongban`
--
ALTER TABLE `tbl_phongban`
  ADD PRIMARY KEY (`idpb`);

--
-- Chỉ mục cho bảng `trinhdo`
--
ALTER TABLE `trinhdo`
  ADD PRIMARY KEY (`id_td`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bangcap`
--
ALTER TABLE `bangcap`
  MODIFY `id_bc` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `congtac`
--
ALTER TABLE `congtac`
  MODIFY `id_ct` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `khenthuong`
--
ALTER TABLE `khenthuong`
  MODIFY `id_kt` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `ktnhanvien`
--
ALTER TABLE `ktnhanvien`
  MODIFY `id_loai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `kyluat`
--
ALTER TABLE `kyluat`
  MODIFY `id_loai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `loai_nv`
--
ALTER TABLE `loai_nv`
  MODIFY `id_loai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `ma_nv` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123457;

--
-- AUTO_INCREMENT cho bảng `tbl_hopdong`
--
ALTER TABLE `tbl_hopdong`
  MODIFY `id_hd` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `trinhdo`
--
ALTER TABLE `trinhdo`
  MODIFY `id_td` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
