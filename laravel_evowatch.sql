-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 11, 2022 lúc 09:59 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_evowatch`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `description`) VALUES
(1, 'Nam', 'nam.png', 'Đồng hồ nam'),
(2, 'Nữ', 'nam.png', 'Đồng hồ nữ'),
(3, 'Phụ kiện', 'nam.png', 'Phụ kiện cho đồng hồ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `address`, `phone_number`, `password`, `email_verified_at`) VALUES
(7, 'Nguyễn Văn A', 'nva@gmail.com', 'Hà Nội', '0123456789', '$2y$10$SH6psef5ILKnFHEBeeFDBuJxU3lof1Dy4AuF741GF18HBV0YRqyyy', NULL),
(8, 'Pham Minh', 'test@gmail.com', 'hà nội', '12345678', '123456', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `hot` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `name`, `description`, `content`, `photo`, `hot`) VALUES
(7, 'Bộ sưu tập của năm', 'Description of News...', '<p>Theo đại t&aacute; B&igrave;nh, trước khi x&acirc;y dựng Đề &aacute;n&nbsp;<a href=\"https://docbao.vn/xa-hoi/nguoi-chua-co-oto-co-the-dau-gia-mua-bien-so-truoc-6-thang-sau-neu-khong-dang-ky-se-bi-thu-hoi-tintuc786628\" rel=\"noopener noreferrer\" target=\"_blank\">đấu gi&aacute; biển số xe,</a>&nbsp;Cục CSGT tham khảo kinh nghiệm của c&aacute;c nước tr&ecirc;n thế giới để học hỏi, &aacute;p dụng sao cho ph&ugrave; hợp với nhu cầu thực tế ở Việt Nam v&agrave; đảm bảo c&ocirc;ng t&aacute;c quản l&yacute; nh&agrave; nước.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"250\" id=\"google_ads_iframe_/22140546871/docbao.vn_pc_inreadbanner-1_300x250_0\" name=\"\" scrolling=\"no\" src=\"https://0f4f01c6c85352b9ddd5f8fe6c5308a2.safeframe.googlesyndication.com/safeframe/1-0-38/html/container.html\" title=\"3rd party ad content\" width=\"300\"></iframe></p>\r\n\r\n<p>&quot;Cụ thể, theo kinh nghiệm ở Anh, họ đang &aacute;p dụng hệ biển số đặc biệt, người d&acirc;n c&oacute; thể lựa chọn theo sở th&iacute;ch, tr&ecirc;n biển ghi t&ecirc;n, k&egrave;m số. V&iacute; dụ c&oacute; người th&iacute;ch Điệp vi&ecirc;n 007, c&oacute; thể mua số n&agrave;y v&agrave; k&egrave;m theo t&ecirc;n của m&igrave;nh...</p>\r\n\r\n<p>Tương tự, tại Việt Nam để đ&aacute;p ứng nhu cầu, sở th&iacute;ch của người d&acirc;n, ch&uacute;ng t&ocirc;i sẽ nghi&ecirc;n cứu v&agrave; &aacute;p dụng loại biển số &quot;Đặc biệt&quot; chữ k&egrave;m số. V&iacute; dụ biển số ghi họ t&ecirc;n Nguyễn Văn A, k&egrave;m theo số m&atilde; v&ugrave;ng v&agrave; ng&agrave;y th&aacute;ng, năm sinh&quot;, đại t&aacute; B&igrave;nh lấy v&iacute; dụ.</p>\r\n\r\n<p>Pause</p>\r\n\r\n<p>Unmute</p>\r\n\r\n<p>Remaining Time&nbsp;-5:37</p>\r\n\r\n<p><iframe height=\"225\" src=\"https://imasdk.googleapis.com/js/core/bridge3.481.0_en.html#goog_693760670\" width=\"400\"></iframe></p>\r\n\r\n<p>Close Player<a href=\"https://unibots.in/\" id=\"ubp_logo\" target=\"_blank\"><img alt=\"Unibots.in\" src=\"https://cdn.jsdelivr.net/gh/unib0ts/unibots@latest/ubPlayer/ub/logo.svg\" /></a></p>\r\n\r\n<p>Theo t&igrave;m hiểu, trước đ&acirc;y Cục CSGT từng cấp h&agrave;ng trăm biển số đặc biệt gắn l&ecirc;n xe &ocirc; t&ocirc; phục vụ c&aacute;c kỳ cuộc quan trọng. Cụ thể, hồi đầu năm h&agrave;ng trăm biển số xe m&agrave;u xanh phục vụ Đại hội Đảng to&agrave;n quốc lần thứ 13 được gắn tr&ecirc;n xe &ocirc; t&ocirc; để phục vụ đưa đ&oacute;n đại biểu tham dự Đại hội.</p>\r\n\r\n<p>Biển số xe gắn tr&ecirc;n h&agrave;ng trăm xe &ocirc; t&ocirc; n&agrave;y đều c&oacute; k&yacute; tự đặc biệt: ĐHĐ XIII-000.1...Tuy nhi&ecirc;n những biển số n&agrave;y chỉ phục vụ tạm thời, trong thời gian diễn ra Đại hội, sau đ&oacute; được thu hồi lại v&agrave; kh&ocirc;ng &aacute;p dụng với c&aacute;c phương tiện c&aacute; nh&acirc;n.</p>\r\n\r\n<p><img alt=\"Cục CSGT sẽ nghiên cứu thêm loại biển số ‘đặc biệt’ có tên của chủ sở hữu-gắn mã QR code chống làm giả - 1\" src=\"https://img.docbao.vn/images/uploads/2021/09/24/base64-1632458243826403530866.png\" title=\"Cục CSGT sẽ nghiên cứu thêm loại biển số ‘đặc biệt’ có tên của chủ sở hữu-gắn mã QR code chống làm giả - 1\" /></p>\r\n\r\n<p>Biển số c&oacute; k&yacute; tự đặc biệt gắn tr&ecirc;n xe &ocirc;t&ocirc; phục vụ ĐH Đảng to&agrave;n quốc lần thứ 13 hồi đầu năm. Ảnh: Thi&ecirc;n Sơn</p>\r\n\r\n<p><strong>Biển số xe sẽ gắn m&atilde; QR code</strong><strong>&nbsp;chống l&agrave;m giả</strong></p>\r\n\r\n<p>Cũng li&ecirc;n quan đến việc quản l&yacute; biển số xe, l&atilde;nh đạo Cục CSGT cho biết đang nghi&ecirc;n cứu đưa m&atilde; QR v&agrave;o biển số để chống l&agrave;m giả. &quot;Hiện nay tr&ecirc;n giấy đăng k&yacute; xe c&oacute; m&atilde; QR rồi, c&ograve;n biển số ch&uacute;ng t&ocirc;i đang lựa chọn c&ocirc;ng nghệ, giải ph&aacute;p mới để in m&atilde; v&agrave;o cho ph&ugrave; hợp với chất liệu biển nhằm tr&aacute;nh bị nhiễu trong qu&aacute; tr&igrave;nh qu&eacute;t&quot;, l&atilde;nh đạo Cục CSGT cho hay.</p>\r\n\r\n<p>Về trường th&ocirc;ng tin tr&ecirc;n m&atilde; QR trong biển số, đại t&aacute; B&igrave;nh cho biết, &quot;trước mắt sẽ t&iacute;ch hợp chủ yếu l&agrave; th&ocirc;ng tin tr&ecirc;n biển số xe, sau đ&oacute; sẽ nghi&ecirc;n cứu th&ecirc;m c&aacute;c trường th&ocirc;ng tin kh&aacute;c cho ph&ugrave; hợp để tiện quản l&yacute;, tuy nhi&ecirc;n mục ti&ecirc;u ch&iacute;nh của việc n&agrave;y vẫn l&agrave; c&acirc;u chuyện chống l&agrave;m giả v&agrave; hỗ trợ cảnh s&aacute;t trong qu&aacute; tr&igrave;nh quản l&yacute;&quot;, đại t&aacute; B&igrave;nh nhấn mạnh.</p>\r\n\r\n<p>L&atilde;nh đạo Cục CSGT cũng cho biết th&ecirc;m nếu c&aacute;c điều kiện thuận lợi việc &aacute;p dụng m&atilde; QR v&agrave;o biển số, c&oacute; thể &aacute;p dụng sớm trong năm nay.</p>\r\n\r\n<p>Ngo&agrave;i biển số xe Cục CSGT muốn t&iacute;ch hợp m&atilde; QR, th&igrave; hiện nay một số loại giấy tờ t&ugrave;y th&acirc;n cũng đ&atilde; được cơ quan chức năng t&iacute;ch hợp c&ocirc;ng nghệ n&agrave;y như tr&ecirc;n thẻ Căn cước c&ocirc;ng d&acirc;n; bằng l&aacute;i xe, giấy đăng k&yacute; xe...</p>\r\n\r\n<p>Hiện nay, nhiều quốc gia đ&atilde; in m&atilde; QR tr&ecirc;n biển số xe. Đơn cử, tại Campuchia, m&atilde; QR được in v&agrave;o g&oacute;c phải tr&ecirc;n c&ugrave;ng của biển số &ocirc; t&ocirc;. Người d&acirc;n c&oacute; thể tra cứu những nội dung về loại xe, dung t&iacute;ch động cơ, năm sản xuất, giới t&iacute;nh người chủ xe, nơi đăng k&yacute;. Với c&aacute;c trường th&ocirc;ng tin cụ thể hơn, cảnh s&aacute;t sẽ được cấp quyền truy cứu...</p>', 'n7.png', 1),
(8, 'Lựa chọn của Minh', 'Description of News...', '<p>Sau hai năm tinh chỉnh v&agrave; ho&agrave;n thiện, 8 trong số 30 chiếc đầu ti&ecirc;n của&nbsp;Bugatti Chiron Super Sport 300+&nbsp;đ&atilde; sẵn s&agrave;ng để chuyển đến tay những chủ nh&acirc;n của ch&uacute;ng.&nbsp;</p>\r\n\r\n<p>Tất cả 8 si&ecirc;u xe Chiron Super Sport 300+ đều được chế t&aacute;c bằng sợi carbon đen tuyền, c&ugrave;ng những đường sọc m&agrave;u cam tr&ecirc;n th&acirc;n xe khiến n&oacute; c&agrave;ng trở n&ecirc;n kh&aacute;c biệt.&nbsp;Nắp capo, cần gạt mưa v&agrave; k&iacute;nh chắn gi&oacute; sử dụng c&aacute;c vật liệu nhẹ hơn.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"250\" id=\"google_ads_iframe_/22140546871/docbao.vn_pc_inreadbanner-1_300x250_0\" name=\"\" scrolling=\"no\" src=\"https://7b7fd60881c92073b94cd2de1ceb0917.safeframe.googlesyndication.com/safeframe/1-0-38/html/container.html\" title=\"3rd party ad content\" width=\"300\"></iframe></p>\r\n\r\n<p>Ri&ecirc;ng logo &#39;Macaron&#39; được l&agrave;m thủ c&ocirc;ng bằng bạc ch&iacute;nh h&atilde;ng.&nbsp;Ngo&agrave;i ra, bộ m&acirc;m xe hợp kim magi&ecirc; với m&agrave;u sơn b&oacute;ng Nocturne l&agrave; một điểm nhấn đặc biệt kh&aacute;c.</p>\r\n\r\n<p><img alt=\"8 sêu xe Bugatti Chiron Super Sport tuyệt đẹp trị giá 33 triệu USD - 1\" src=\"https://img.docbao.vn/images/uploads/2021/09/24/3-ve-ngoai-tuyet-dep-cua-bugatti-chiron-super-sport-300-anh-carbuzz.jpg\" title=\"8 sêu xe Bugatti Chiron Super Sport tuyệt đẹp trị giá 33 triệu USD - 1\" /></p>\r\n\r\n<p>Vẻ ngo&agrave;i tuyệt đẹp của Bugatti Chiron Super Sport 300+. (Ảnh: Carbuzz)</p>\r\n\r\n<p><img alt=\"8 sêu xe Bugatti Chiron Super Sport tuyệt đẹp trị giá 33 triệu USD - 2\" src=\"https://img.docbao.vn/images/uploads/2021/09/24/3-ve-ngoai-tuyet-dep-cua-bugatti-chiron-super-sport-300-anh-carbuzz-1.jpg\" title=\"8 sêu xe Bugatti Chiron Super Sport tuyệt đẹp trị giá 33 triệu USD - 2\" /></p>\r\n\r\n<p>&nbsp;Bugatti Chiron Super Sport 300+. (Ảnh: Carbuzz)&nbsp;</p>\r\n\r\n<p>Với động cơ W16 tăng &aacute;p k&eacute;p 8,0 l&iacute;t sản sinh c&ocirc;ng suất 1.577 m&atilde; lực, Super Sport 300+ c&oacute; khả năng đạt vận tốc 100km/h chỉ trong 2,4 gi&acirc;y.</p>\r\n\r\n<p><iframe height=\"225\" src=\"https://imasdk.googleapis.com/js/core/bridge3.481.0_en.html#goog_684006725\" width=\"400\"></iframe></p>\r\n\r\n<p>Advertisement: 2:54</p>\r\n\r\n<p>Close Player<a href=\"https://unibots.in/\" id=\"ubp_logo\" target=\"_blank\"><img alt=\"Unibots.in\" src=\"https://cdn.jsdelivr.net/gh/unib0ts/unibots@latest/ubPlayer/ub/logo.svg\" /></a></p>\r\n\r\n<p>Mặc d&ugrave;, n&oacute; kh&ocirc;ng c&aacute;n mốc 480 km/h như lần lập kỷ lục thực tế trước đ&oacute; m&agrave; chỉ giới hạn ở tốc độ 440 km/h nhưng chắc chắn Super Sport 300+ vẫn sẽ l&agrave;m h&agrave;i l&ograve;ng 30 chủ sở hữu may mắn bằng vẻ ngo&agrave;i tuyệt đẹp của n&oacute;.</p>\r\n\r\n<p>Được biết, tất cả 30 chiếc&nbsp;Chiron Super Sport 300+&nbsp;đều đ&atilde; được b&aacute;n hết, bất chấp mức gi&aacute; khởi điểm l&ecirc;n tới 4,1 triệu USD (hơn 93 tỷ đồng).</p>', 'n2.png', 1),
(9, 'Chính sách bảo hành', 'Description of News...', '<p>Anh Long Trần cho biết anh đặt h&agrave;ng chiếc Aventador Ultimae n&agrave;y từ đại l&yacute; ch&iacute;nh h&atilde;ng. Do đ&acirc;y c&oacute; thể l&agrave; phi&ecirc;n bản cuối c&ugrave;ng của d&ograve;ng Aventador n&ecirc;n n&oacute; mang một dấu ấn đặc biệt. &quot;T&ocirc;i th&iacute;ch kiểu d&aacute;ng của Aventador nhưng kh&ocirc;ng th&iacute;ch l&aacute;i cho lắm. T&ocirc;i mua&nbsp;Aventador Ultimae v&igrave; mẫu xe n&agrave;y được sản xuất với số lượng giới hạn - 350 chiếc cho bản Coupe v&agrave; 250 chiếc Roadster&quot;, anh chia sẻ về l&yacute; do mua xe.</p>\r\n\r\n<p>Ngo&agrave;i ra, việc được ưu ti&ecirc;n suất mua từ ch&iacute;nh h&atilde;ng cũng l&agrave; nguy&ecirc;n nh&acirc;n khiến anh chịu &quot;xuống tiền&quot;. &quot;Trong bối cảnh suất mua hiếm như hiện nay, t&ocirc;i được một suất mua ch&iacute;nh h&atilde;ng n&ecirc;n t&ocirc;i kh&ocirc;ng bỏ qua cơ hội n&agrave;y. Mua được mẫu xe hot với đ&uacute;ng gi&aacute; đề xuất n&oacute; &#39;đ&atilde;&#39; lắm&quot;, anh Long Trần chia sẻ.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"250\" id=\"google_ads_iframe_/22140546871/docbao.vn_pc_inreadbanner-1_300x250_0\" name=\"\" scrolling=\"no\" src=\"https://7ff7e4f5f57930c78ca80d4a4bba1082.safeframe.googlesyndication.com/safeframe/1-0-38/html/container.html\" title=\"3rd party ad content\" width=\"300\"></iframe></p>\r\n\r\n<p><img alt=\"Thành viên Gia Lai Team sắm siêu xe Aventador Ultimae vừa ra mắt: Giá hơn nửa triệu USD, không mua qua chợ đen để tiết kiệm tiền - 1\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/aventador-long-tran2-16324958316811600041509.jpg\" title=\"Thành viên Gia Lai Team sắm siêu xe Aventador Ultimae vừa ra mắt: Giá hơn nửa triệu USD, không mua qua chợ đen để tiết kiệm tiền - 1\" /></p>\r\n\r\n<p>Nội thất xe c&oacute; kh&aacute; nhiều option carbon. Ảnh: NVCC.</p>\r\n\r\n<p>L&agrave; phi&ecirc;n bản cuối c&ugrave;ng v&agrave; mạnh nhất của Aventador, Aventador Ultimae rất được săn đ&oacute;n. Theo anh Long Trần, việc mua được xe từ ch&iacute;nh h&atilde;ng gi&uacute;p anh tiết kiệm được đ&aacute;ng kể. &quot;Hiện nay, một suất mua xe tr&ecirc;n &#39;chợ đen&#39; c&oacute; gi&aacute; từ 20.000 USD đến 50.000 USD, t&ugrave;y theo y&ecirc;u cầu. T&ocirc;i kh&ocirc;ng thừa tiền như vậy&quot; anh t&acirc;m sự.</p>\r\n\r\n<p>Ra mắt to&agrave;n cầu tại Triển l&atilde;m Goodwood Festival of Speed hồi th&aacute;ng 7, Lamborghini Aventador Ultimae được cho l&agrave; phi&ecirc;n bản cuối c&ugrave;ng của d&ograve;ng xe trứ danh n&agrave;y, kỷ niệm 10 năm c&oacute; mặt tr&ecirc;n thị trường (2011-2021).</p>\r\n\r\n<p>Pause</p>\r\n\r\n<p>Unmute</p>\r\n\r\n<p>Remaining Time&nbsp;-5:26</p>\r\n\r\n<p><iframe height=\"225\" src=\"https://imasdk.googleapis.com/js/core/bridge3.481.0_en.html#goog_497748576\" width=\"400\"></iframe></p>\r\n\r\n<p>Close Player<a href=\"https://unibots.in/\" id=\"ubp_logo\" target=\"_blank\"><img alt=\"Unibots.in\" src=\"https://cdn.jsdelivr.net/gh/unib0ts/unibots@latest/ubPlayer/ub/logo.svg\" /></a></p>\r\n\r\n<p>Theo Lamborghini, Aventador Ultimae l&agrave; sự kết hợp giữa phong c&aacute;ch trang nh&atilde; v&agrave; sang trọng của bản Aventador S với hiệu suất h&agrave;ng đầu của phi&ecirc;n bản Aventador SVJ. Dễ d&agrave;ng nhận ra phần đầu của Aventador Ultimae kh&aacute; giống với Aventador S trong khi phần đu&ocirc;i xe ảnh hưởng đậm n&eacute;t bởi Aventador SVJ. Tuy nhi&ecirc;n, xe cũng c&oacute; đ&ocirc;i ch&uacute;t kh&aacute;c biệt khi cản trước c&oacute; th&ecirc;m c&aacute;nh chia gi&oacute; chủ động v&agrave; c&aacute;nh gi&oacute; sau cỡ lớn của SVJ kh&ocirc;ng xuất hiện tr&ecirc;n Aventador Ultimae.</p>\r\n\r\n<p><img alt=\"Thành viên Gia Lai Team sắm siêu xe Aventador Ultimae vừa ra mắt: Giá hơn nửa triệu USD, không mua qua chợ đen để tiết kiệm tiền - 2\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/long-tran-mua-aventador3-16324958317651363271208.jpeg\" title=\"Thành viên Gia Lai Team sắm siêu xe Aventador Ultimae vừa ra mắt: Giá hơn nửa triệu USD, không mua qua chợ đen để tiết kiệm tiền - 2\" /></p>\r\n\r\n<p><img alt=\"Thành viên Gia Lai Team sắm siêu xe Aventador Ultimae vừa ra mắt: Giá hơn nửa triệu USD, không mua qua chợ đen để tiết kiệm tiền - 3\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/long-tran-mua-aventador4-1632495831812140803479.jpeg\" title=\"Thành viên Gia Lai Team sắm siêu xe Aventador Ultimae vừa ra mắt: Giá hơn nửa triệu USD, không mua qua chợ đen để tiết kiệm tiền - 3\" /></p>\r\n\r\n<p><img alt=\"Thành viên Gia Lai Team sắm siêu xe Aventador Ultimae vừa ra mắt: Giá hơn nửa triệu USD, không mua qua chợ đen để tiết kiệm tiền - 4\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/long-tran-mua-aventador8-16324958322171679638301.jpeg\" title=\"Thành viên Gia Lai Team sắm siêu xe Aventador Ultimae vừa ra mắt: Giá hơn nửa triệu USD, không mua qua chợ đen để tiết kiệm tiền - 4\" /></p>\r\n\r\n<p><img alt=\"Thành viên Gia Lai Team sắm siêu xe Aventador Ultimae vừa ra mắt: Giá hơn nửa triệu USD, không mua qua chợ đen để tiết kiệm tiền - 5\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/long-tran-mua-aventador7-1632495831979529579939.jpeg\" title=\"Thành viên Gia Lai Team sắm siêu xe Aventador Ultimae vừa ra mắt: Giá hơn nửa triệu USD, không mua qua chợ đen để tiết kiệm tiền - 5\" /></p>\r\n\r\n<p>Aventador Ultimae c&oacute; thiết kế &quot;vay mượn&quot; kh&aacute; nhiều từ c&aacute;c mẫu xe anh em. Ảnh: Motor1.</p>\r\n\r\n<p>Aventador Ultimae sử dụng động cơ V12 6.5L trứ danh của Lamborghini, sản sinh c&ocirc;ng suất 780 PS (769 m&atilde; lực) v&agrave; m&ocirc;-men xoắn 720 Nm. Với hiệu suất n&agrave;y, Aventador Ultimae mạnh hơn Aventador SVJ 10 m&atilde; lực. Theo c&ocirc;ng bố của h&atilde;ng, mẫu xe n&agrave;y c&oacute; thể tăng tốc 0-100 km/h trong 2,8 gi&acirc;y (2,9 gi&acirc;y đối với bản Roadster) v&agrave; vận tốc tối đa đạt 355 km/h.</p>\r\n\r\n<p>Tại Mỹ, Aventador Ultimae c&oacute; gi&aacute; đề xuất khoảng 498.000 USD. Chiếc xe anh Long Trần đặt mua c&oacute; gi&aacute; đắt hơn đ&ocirc;i ch&uacute;t, chạm mốc 562.000 USD do c&oacute; th&ecirc;m c&aacute;c trang bị t&ugrave;y chọn. Trong đ&oacute;, option đắt gi&aacute; nhất l&agrave; m&agrave;u sơn v&agrave;ng&nbsp;Giallo Tenerife c&oacute; gi&aacute; 21.000 USD v&agrave; mui xe carbon 10.500 USD. Xe sẽ đến tay anh Long Trần sau khoảng 9 đến 12 th&aacute;ng nữa.</p>\r\n\r\n<p><img alt=\"Thành viên Gia Lai Team sắm siêu xe Aventador Ultimae vừa ra mắt: Giá hơn nửa triệu USD, không mua qua chợ đen để tiết kiệm tiền - 6\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/long-tran-mua-aventador9-16324958324182101108679.jpeg\" title=\"Thành viên Gia Lai Team sắm siêu xe Aventador Ultimae vừa ra mắt: Giá hơn nửa triệu USD, không mua qua chợ đen để tiết kiệm tiền - 6\" /></p>\r\n\r\n<p><img alt=\"Thành viên Gia Lai Team sắm siêu xe Aventador Ultimae vừa ra mắt: Giá hơn nửa triệu USD, không mua qua chợ đen để tiết kiệm tiền - 7\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/long-tran-mua-aventador10-16324958326021094574421.jpeg\" title=\"Thành viên Gia Lai Team sắm siêu xe Aventador Ultimae vừa ra mắt: Giá hơn nửa triệu USD, không mua qua chợ đen để tiết kiệm tiền - 7\" /></p>\r\n\r\n<p>L&agrave; một trong những th&agrave;nh vi&ecirc;n chủ chốt của Gia Lai Team, anh Long Trần sở hữu d&agrave;n xe gồm si&ecirc;u SUV Lamborghini Urus, BMW i8, Chevrolet Corvette C8, Range Rover. Mới nhất trong bộ sưu tập của anh l&agrave; chiếc Mercedes-Maybach S 580 đời 2021 c&oacute; gi&aacute; 280.000 USD.</p>', 'n3.png', 1),
(10, 'Bộ sưu tập mới', '<p>Description of News...</p>', '<p>Trước đ&oacute;, v&agrave;o th&aacute;ng 1/2021, khi vấn đề về thiếu hụt chip khiến c&aacute;c nh&agrave; sản xuất &ocirc; t&ocirc; phải cắt giảm sản lượng tại c&aacute;c nh&agrave; m&aacute;y, c&ocirc;ng ty c&oacute; trụ sở tại New York (Mỹ) đ&atilde; lần đầu ti&ecirc;n đưa ra dự b&aacute;o với mức doanh thu bốc hơi chỉ 60,6 tỷ USD.</p>\r\n\r\n<p>Quảng c&aacute;o</p>\r\n\r\n<p><iframe height=\"225\" src=\"https://imasdk.googleapis.com/js/core/bridge3.481.0_en.html#goog_980512214\" width=\"400\"></iframe></p>\r\n\r\n<p>Advertisement: 1:19</p>\r\n\r\n<p>Close Player<a href=\"https://unibots.in/\" id=\"ubp_logo\" target=\"_blank\"><img alt=\"Unibots.in\" src=\"https://cdn.jsdelivr.net/gh/unib0ts/unibots@latest/ubPlayer/ub/logo.svg\" /></a></p>\r\n\r\n<p>Theo Dan Hearsch, một Gi&aacute;m đốc tại AlixPartners, sắp tới, doanh số sẽ bị ảnh hưởng. Doanh số chưa bị t&aacute;c động l&agrave; v&igrave; vẫn c&ograve;n đủ h&agrave;ng tồn kho để dựa v&agrave;o.</p>\r\n\r\n<p>C&aacute;c nh&agrave; sản xuất &ocirc; t&ocirc; tr&ecirc;n to&agrave;n cầu, bao gồm Ford Motor v&agrave; General Motors, đ&atilde; cảnh b&aacute;o về việc cắt giảm thu nhập lớn trong năm nay do t&igrave;nh trạng thiếu chip. Mặc d&ugrave; vậy, một số cho biết t&aacute;c động của doanh số kh&ocirc;ng nhiều khi n&oacute; được b&ugrave; đắp bởi nhu cầu ti&ecirc;u d&ugrave;ng phục hồi v&agrave; lợi nhuận cao hơn từ gi&aacute; xe tăng cao.</p>\r\n\r\n<p>Tuần trước, h&atilde;ng ph&acirc;n t&iacute;ch IHS Markit đưa ra điều chỉnh lớn nhất đối với dự b&aacute;o sản lượng xe hơi do khủng hoảng chip to&agrave;n cầu. C&aacute;c trung t&acirc;m cung ứng lớn tại ch&acirc;u &Aacute; gặp kh&oacute; khăn khi phải đ&oacute;ng cửa nh&agrave; m&aacute;y do Covid-19.</p>\r\n\r\n<p>Hiện tại, cần tới 21 tuần để ho&agrave;n th&agrave;nh đơn h&agrave;ng b&aacute;n dẫn &ndash; kỷ lục chưa từng c&oacute;. C&aacute;c l&atilde;nh đạo ng&agrave;nh &ocirc; t&ocirc; n&oacute;i rằng khủng hoảng c&oacute; thể k&eacute;o d&agrave;i h&agrave;ng năm trời.</p>\r\n\r\n<p>Khủng hoảng chip bắt đầu từ cuối năm ngo&aacute;i khi c&aacute;c nh&agrave; sản xuất xe hơi đ&aacute;nh gi&aacute; thấp nhu cầu mua xe trong dịch Covid-19. Cuộc khủng hoảng c&agrave;ng tồi tệ hơn nhờ c&aacute;c yếu tố như thảm họa thi&ecirc;n nhi&ecirc;n, ch&aacute;y nổ v&agrave; Covid-19.</p>', 'n1.png', 1),
(11, '‘Đàn em’ Toyota Corolla Cross lộ diện: Diện mạo mới ‘san bằng’ Honda HR-V, giá cạnh tranh Kia Seltos', 'Description of News...', '<p>B&ecirc;n trong khoang cabin rộng r&atilde;i, thoải m&aacute;i với t&ocirc;ng m&agrave;u chủ đạo l&agrave; đỏ v&agrave; đen huyền b&iacute; c&ugrave;ng c&aacute;c họa tiết chữ X lạ mắt tr&ecirc;n lưng ghế v&agrave; đệm khiến Yaris trở n&ecirc;n sang trọng hơn.</p>\r\n\r\n<p><img alt=\"‘Đàn em’ Toyota Corolla Cross lộ diện: Diện mạo mới ‘san bằng’ Honda HR-V, giá cạnh tranh Kia Seltos - 1\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/o-to/xu-anh2.png\" title=\"‘Đàn em’ Toyota Corolla Cross lộ diện: Diện mạo mới ‘san bằng’ Honda HR-V, giá cạnh tranh Kia Seltos - 1\" /></p>\r\n\r\n<p>Pause</p>\r\n\r\n<p>Unmute</p>\r\n\r\n<p>Remaining Time&nbsp;-5:42</p>\r\n\r\n<p><iframe height=\"225\" src=\"https://imasdk.googleapis.com/js/core/bridge3.481.0_en.html#goog_1063554512\" width=\"400\"></iframe></p>\r\n\r\n<p>Close Player<a href=\"https://unibots.in/\" id=\"ubp_logo\" target=\"_blank\"><img alt=\"Unibots.in\" src=\"https://cdn.jsdelivr.net/gh/unib0ts/unibots@latest/ubPlayer/ub/logo.svg\" /></a></p>\r\n\r\n<p>Xe được trang bị bảng đồng hồ taplo Optitron 4.2 inch, kết hợp c&ugrave;ng m&agrave;n h&igrave;nh cảm ứng trung t&acirc;m 6.7 inch c&oacute; thể kết nối Apple Carplay v&agrave; Andoird Auto, hệ thống &acirc;m thanh phục vụ nhu cầu giải tr&iacute; của kh&aacute;ch h&agrave;ng,...</p>\r\n\r\n<p><img alt=\"‘Đàn em’ Toyota Corolla Cross lộ diện: Diện mạo mới ‘san bằng’ Honda HR-V, giá cạnh tranh Kia Seltos - 2\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/o-to/xu-anh3.jpg\" title=\"‘Đàn em’ Toyota Corolla Cross lộ diện: Diện mạo mới ‘san bằng’ Honda HR-V, giá cạnh tranh Kia Seltos - 2\" /></p>\r\n\r\n<p>Cung cấp sức mạnh cho &ldquo;đ&agrave;n em&rdquo; Toyota Corolla Cross l&agrave; khối động cơ 4 xy-lanh dung t&iacute;ch 1.2L, c&ocirc;ng suất 92 m&atilde; lực v&agrave; m&ocirc;-men xoắn 109 Nm. Sức mạnh được truyền tới cầu trước th&ocirc;ng qua hộp số v&ocirc; cấp Super CVT-i.</p>\r\n\r\n<p>Về mặt an to&agrave;n, nh&agrave; sản xuất đ&atilde; trang bị cho xe hệ thống chống b&oacute; cứng phanh ABS, hỗ trợ phanh khẩn cấp BA, ph&acirc;n bổ lực phanh EBD... Kh&aacute;ch h&agrave;ng c&oacute; 3 sự lựa chọn m&agrave;u sơn ngoại thất độc đ&aacute;o gồm đỏ Red Mica Metal, trắng Platinum White Pearl v&agrave; x&aacute;m Gray Metallic.</p>\r\n\r\n<p><img alt=\"‘Đàn em’ Toyota Corolla Cross lộ diện: Diện mạo mới ‘san bằng’ Honda HR-V, giá cạnh tranh Kia Seltos - 3\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/o-to/xu-anh4.png\" title=\"‘Đàn em’ Toyota Corolla Cross lộ diện: Diện mạo mới ‘san bằng’ Honda HR-V, giá cạnh tranh Kia Seltos - 3\" /></p>\r\n\r\n<p>Tại thị trường nước ngo&agrave;i, Toyota Yaris Sport X v&agrave; Yaris Sport Premium X c&oacute; gi&aacute; khởi điểm khoảng 18.410 USD v&agrave; 20.510 USD. B&ecirc;n cạnh đ&oacute;, người d&ugrave;ng c&oacute; thể chọn g&oacute;i n&acirc;ng cấp X-Urban của 2 biến thể tr&ecirc;n c&oacute; gi&aacute; dao động từ 19.730 USD v&agrave; 21.830 USD.</p>', 'n5.jpg', 0),
(14, 'Honda CR-V ưu đãi 200 triệu đồng tại đại lý - Cơ hội hiếm có trước mùa mua sắm cuối năm', '<p>Một số đại l&yacute; Honda ở H&agrave; Nội đang ch&agrave;o b&aacute;n d&ograve;ng xe CR-V với ưu đ&atilde;i tặng tiền mặt 140-160 triệu đồng, cộng th&ecirc;m g&oacute;i phụ kiện 50-70 triệu đồng. Như vậy, tổng mức ưu đ&atilde;i m&agrave; kh&aacute;ch h&agrave;ng nhận được l&ecirc;n tới 200 triệu đồng. Ch&iacute;nh s&aacute;ch n&agrave;y kh&ocirc;ng được &aacute;p dụng rộng r&atilde;i tr&ecirc;n cả nước do kh&aacute;c nhau về t&igrave;nh h&igrave;nh dịch bệnh. Theo một nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng, số xe giảm gi&aacute; lần n&agrave;y đều sản xuất 2021.</p>', '<p>Thực tế, Honda Việt Nam sắp giảm hỗ trợ cho d&ograve;ng xe CR-V. Số xe hưởng ch&iacute;nh s&aacute;ch giảm gi&aacute; s&acirc;u l&agrave; do H&agrave; Nội vừa &#39;nới&#39; gi&atilde;n c&aacute;ch, cho ph&eacute;p c&aacute;c đại l&yacute; &ocirc; t&ocirc; hoạt động trở lại. C&aacute;c đại l&yacute; muốn đẩy xe tồn kho để gồng g&aacute;nh c&aacute;c chi ph&iacute;. Ngo&agrave;i ra, số xe n&agrave;y đ&atilde; được đại l&yacute; nhập về từ trước, thời điểm Honda Việt Nam &aacute;p ch&iacute;nh s&aacute;ch hỗ trợ 100% lệ ph&iacute; trước bạ (tương đương mức giảm 100-110 triệu đồng), ph&iacute;a đại l&yacute; chỉ b&ugrave; th&ecirc;m v&agrave;i chục triệu đồng để c&oacute; được mức giảm s&acirc;u như hiện tại.</p>\r\n\r\n<p>Honda CR-V l&agrave; d&ograve;ng xe đ&atilde; được ưu đ&atilde;i suốt thời gian d&agrave;i, đều đặn ở mức v&agrave;i chục triệu đồng. Phi&ecirc;n bản tại Việt Nam hiện l&agrave; phi&ecirc;n bản mới nhất của d&ograve;ng xe n&agrave;y. Trong ph&acirc;n kh&uacute;c crossover cỡ trung, Honda CR-V kh&ocirc;ng phải mẫu xe duy nhất giảm s&acirc;u. Đối thủ Hyundai Tucson đang giảm gần 100 triệu đồng, c&ograve;n Mazda CX-5 v&agrave; Mitsubishi Outlander đều được ph&iacute;a h&atilde;ng hỗ trợ 50% lệ ph&iacute; trước bạ.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"250\" id=\"google_ads_iframe_/22140546871/docbao.vn_pc_inreadbanner-1_300x250_0\" name=\"\" scrolling=\"no\" src=\"https://41934041618eb24b249eebad2488b44f.safeframe.googlesyndication.com/safeframe/1-0-38/html/container.html\" title=\"3rd party ad content\" width=\"300\"></iframe></p>\r\n\r\n<p><img alt=\"Honda CR-V ưu đãi 200 triệu đồng tại đại lý - Cơ hội hiếm có trước mùa mua sắm cuối năm - 1\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/24249097321223799879210027631660626818550718n-16325450888921884822455.jpeg\" title=\"Honda CR-V ưu đãi 200 triệu đồng tại đại lý - Cơ hội hiếm có trước mùa mua sắm cuối năm - 1\" /></p>\r\n\r\n<p>Năm 2020, Honda CR-V đứng thứ hai ph&acirc;n kh&uacute;c crossover cỡ trung với doanh số 11.365 xe. Nhưng trong 8 th&aacute;ng đầu năm 2021, mẫu xe Nhật đ&atilde; tụt xuống vị tr&iacute; thứ 3 với doanh số 3.669 xe, xếp dưới&nbsp;Mazda CX-5 (5.649 xe) v&agrave; Hyundai Tucson (4.260 xe), chỉ đứng tr&ecirc;n Mitsubishi Outlander (1.413 xe). Cả 4 d&ograve;ng xe đều được lắp r&aacute;p trong nước.</p>\r\n\r\n<p><iframe height=\"225\" src=\"https://imasdk.googleapis.com/js/core/bridge3.481.0_en.html#goog_1421461006\" width=\"400\"></iframe></p>\r\n\r\n<p>Advertisement: 4:25</p>\r\n\r\n<p>Close Player<a href=\"https://unibots.in/\" id=\"ubp_logo\" target=\"_blank\"><img alt=\"Unibots.in\" src=\"https://cdn.jsdelivr.net/gh/unib0ts/unibots@latest/ubPlayer/ub/logo.svg\" /></a></p>\r\n\r\n<p>Honda CR-V phi&ecirc;n bản mới c&oacute; một ch&uacute;t thay đổi ở ngoại h&igrave;nh so với đời cũ. Động cơ xe vẫn giữ nguy&ecirc;n, loại 1.5L tăng &aacute;p, c&ocirc;ng suất 188 m&atilde; lực v&agrave; m&ocirc;-men xoắn 240 Nm, kết hợp số tự động v&ocirc; cấp v&agrave; hệ dẫn động cầu trước.</p>\r\n\r\n<p><img alt=\"Honda CR-V ưu đãi 200 triệu đồng tại đại lý - Cơ hội hiếm có trước mùa mua sắm cuối năm - 2\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/honda-cr-v-2-1596077032603337486990-1-16244063158341075458856.jpeg\" title=\"Honda CR-V ưu đãi 200 triệu đồng tại đại lý - Cơ hội hiếm có trước mùa mua sắm cuối năm - 2\" /></p>\r\n\r\n<p><img alt=\"Honda CR-V ưu đãi 200 triệu đồng tại đại lý - Cơ hội hiếm có trước mùa mua sắm cuối năm - 3\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/honda-cr-v-10-2-1596077033427133708813-crop-15960770778091666551351-1-16244063158051659890581.jpeg\" title=\"Honda CR-V ưu đãi 200 triệu đồng tại đại lý - Cơ hội hiếm có trước mùa mua sắm cuối năm - 3\" /></p>\r\n\r\n<p><img alt=\"Honda CR-V ưu đãi 200 triệu đồng tại đại lý - Cơ hội hiếm có trước mùa mua sắm cuối năm - 4\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/honda-cr-v-11-2-15960770334311728269157-crop-1596077092629422889080-1624406315779911609992.jpeg\" title=\"Honda CR-V ưu đãi 200 triệu đồng tại đại lý - Cơ hội hiếm có trước mùa mua sắm cuối năm - 4\" /></p>\r\n\r\n<p>Điểm đ&aacute;ng ch&uacute; &yacute; l&agrave; cả 3 phi&ecirc;n bản đều trang bị g&oacute;i c&ocirc;ng nghệ an to&agrave;n Honda Sensing, với c&aacute;c t&iacute;nh năng như hỗ trợ phanh tự động, ga tự động th&iacute;ch ứng khoảng c&aacute;ch, đ&egrave;n pha th&ocirc;ng minh, giảm thiểu chệch l&agrave;n v&agrave; hỗ trợ giữ l&agrave;n đường. Ngo&agrave;i ra, c&aacute;c bản G v&agrave; L c&oacute; trang bị camera ở gương phụ (LaneWatch) tương tự tr&ecirc;n Accord.</p>\r\n\r\n<p>C&ocirc;ng nghệ hiện đại gi&uacute;p cho Honda CR-V cạnh tranh s&ograve;ng phẳng với Mazda CX-5 (vốn l&agrave; mẫu xe &quot;vua c&ocirc;ng nghệ&quot; trong ph&acirc;n kh&uacute;c) v&agrave; vượt qua đối thủ Mitsubishi Outlander v&agrave; Hyundai Tucson. Tuy nhi&ecirc;n, nếu x&eacute;t về vận h&agrave;nh, CR-V đang thua thiệt so với c&aacute;c mẫu xe kh&aacute;c bởi kh&ocirc;ng c&oacute; hệ dẫn động bốn b&aacute;nh. Gi&aacute; ni&ecirc;m yết của Honda CR-V hiện cao nhất ph&acirc;n kh&uacute;c,&nbsp;3 phi&ecirc;n bản E, G v&agrave; L lần lượt l&agrave; 998 triệu đồng, 1,048 tỷ đồng v&agrave; 1,118 tỷ đồng.</p>', 'n6.jpg', 0),
(15, 'Thay vì mua iPhone X, 50 triệu đồng có thể mua được những gì?', '<p>D&ugrave; c&oacute; ưu điểm l&agrave; &iacute;t hỏng h&oacute;c vặt, bền bỉ nhưng nhưng cũng c&oacute; một số bệnh tr&ecirc;n xe m&aacute;y dầu khiến người d&ugrave;ng phải chi trả một số tiền cho việc sửa chữa. Dưới đ&acirc;y l&agrave; một số bệnh thường gặp nhất tr&ecirc;n c&aacute;c d&ograve;ng xe &ocirc; t&ocirc; m&aacute;y dầu m&agrave; người d&ugrave;ng cần biết</p>', '<p>Đầu ti&ecirc;n l&agrave; do nhi&ecirc;n liệu kh&ocirc;ng v&agrave;o được trong buồng xi-lanh v&igrave; kh&oacute;a nhi&ecirc;n liệu bị đ&oacute;ng v&igrave; vậy kh&ocirc;ng c&oacute; nhi&ecirc;n liệu trong th&ugrave;ng chứa. Van, p&iacute;t t&ocirc;ng bị kẹt, g&atilde;y cũng g&acirc;y n&ecirc;n vấn đề tương tự, khi van nhi&ecirc;n liệu bị hở sẽ khiến kh&ocirc;ng kh&iacute; đi v&agrave;o buồng đốt.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"250\" id=\"google_ads_iframe_/22140546871/docbao.vn_pc_inreadbanner-1_300x250_0\" name=\"\" scrolling=\"no\" src=\"https://a30892b593282cade85ac9aa4979721a.safeframe.googlesyndication.com/safeframe/1-0-38/html/container.html\" tabindex=\"0\" title=\"3rd party ad content\" width=\"300\"></iframe></p>\r\n\r\n<p>Bơm cao &aacute;p bị điều chỉnh sai lệch cũng khiến qu&aacute; tr&igrave;nh đốt ch&aacute;y diễn ra kh&ocirc;ng hiệu quả, hoặc kh&ocirc;ng thể diễn ra.</p>\r\n\r\n<p><img alt=\"xe máy dầu\" src=\"https://cartimes.vn/images/21/9/24/hu_hong_tren_xe_o_to_may_dau_1.jpg\" style=\"height:900px; width:1600px\" title=\"xe máy dầu\" /></p>\r\n\r\n<p>Khi đổ nhầm nhi&ecirc;n liệu cũng sẽ khiến cho động cơ kh&ocirc;ng thể hoạt động được</p>\r\n\r\n<p>Thứ hai, kim phun nhi&ecirc;n liệu bị tắc do b&aacute;m muội than. Sau một thời gian sử dụng nếu kim phun nhi&ecirc;n liệu của động cơ m&aacute;y dầu kh&ocirc;ng được vệ sinh sẽ rất dễ bị tắc, l&agrave;m cho &aacute;p suất kim phun kh&ocirc;ng ch&iacute;nh x&aacute;c, cuối c&ugrave;ng khiến kh&ocirc;ng kh&iacute; bị tr&agrave;n v&agrave;o buồng dẫn.</p>\r\n\r\n<p>Pause</p>\r\n\r\n<p>Unmute</p>\r\n\r\n<p>Remaining Time&nbsp;-5:55</p>\r\n\r\n<p>Close Player<a href=\"https://unibots.in/\" id=\"ubp_logo\" target=\"_blank\"><img alt=\"Unibots.in\" src=\"https://cdn.jsdelivr.net/gh/unib0ts/unibots@latest/ubPlayer/ub/logo.svg\" /></a></p>\r\n\r\n<p>Thứ ba, nguy&ecirc;n nh&acirc;n l&agrave; do đổ nhầm nhi&ecirc;n liệu. Khi đổ nhầm nhi&ecirc;n liệu cũng sẽ khiến cho động cơ kh&ocirc;ng thể hoạt động được, người d&ugrave;ng phải biết c&aacute;ch xử l&yacute; khi đổ nhầm nhi&ecirc;n liệu ch&iacute;nh x&aacute;c, nếu kh&ocirc;ng hậu quả sẽ rất tai hại.</p>\r\n\r\n<p>Thứ tư, ở cuối th&igrave;, nhiệt độ v&agrave; &aacute;p suất bị n&eacute;n thiếu. L&yacute; do l&agrave; bởi xu p&aacute;p của động cơ kh&ocirc;ng được k&iacute;n hoặc bị treo; xi lanh hoặc x&eacute;c măng đ&atilde; qu&aacute; cũ, m&ograve;n hoặc hư hỏng; xi lanh bị kh&ocirc; ở bề mặt.</p>\r\n\r\n<p><strong>Xe bị hụt ga</strong></p>\r\n\r\n<p>Đầu ti&ecirc;n dẫn đến hiện tượng hụt ga, hay hao hụt c&ocirc;ng suất tr&ecirc;n xe m&aacute;y dầu l&agrave; do lượng nhi&ecirc;n liệu cung cấp v&agrave;o buồng đốt kh&ocirc;ng đầy đủ. Một số nguy&ecirc;n nh&acirc;n như:</p>\r\n\r\n<p>Ống dẫn nhi&ecirc;n liệu: Đường ống sẽ gi&uacute;p đưa nhi&ecirc;n liệu từ b&igrave;nh chứa qua lọc, qua kim phun v&agrave; v&agrave;o buồng đốt. Nếu hệ thống đường ống bị trục trặc như r&ograve; rỉ sẽ ảnh hưởng lớn đến lượng nhi&ecirc;n liệu đi v&agrave;o buồng đốt.</p>\r\n\r\n<p><img alt=\"xe bị hụt ga\" src=\"https://cartimes.vn/images/21/9/24/hu_hong_tren_xe_o_to_may_dau_3.jpg\" style=\"height:900px; width:1600px\" title=\"xe bị hụt ga\" /></p>\r\n\r\n<p>Hao hụt c&ocirc;ng suất tr&ecirc;n xe m&aacute;y dầu l&agrave; do lượng nhi&ecirc;n liệu cung cấp v&agrave;o buồng đốt kh&ocirc;ng đầy đủ</p>\r\n\r\n<p>Bơm nhi&ecirc;n liệu: Khi bơm xăng (xe m&aacute;y xăng) hoặc bơm cao &aacute;p (xe m&aacute;y dầu) bị trục trặc như bơm yếu sẽ khiến lượng nhi&ecirc;n liệu bơm v&agrave;o buồng đốt kh&ocirc;ng đủ, động cơ đ&aacute;nh lửa kh&ocirc;ng đạt hiệu quả cao l&agrave;m xe hụt ga.</p>\r\n\r\n<p>Lọc nhi&ecirc;n liệu: Lọc nhi&ecirc;n liệu gi&uacute;p loại bỏ tạp chất trước khi nhi&ecirc;n liệu bơm qua kim phun đi v&agrave;o buồng đốt. Nếu kh&ocirc;ng vệ sinh sẽ rất dễ tắc nghẽn khiến nhi&ecirc;n liệu bơm v&agrave;o buồng đốt kh&ocirc;ng đủ, bơm sớm hoặc trễ l&agrave;m giảm hiệu quả qu&aacute; tr&igrave;nh đốt ch&aacute;y, dẫn đến c&aacute;c t&igrave;nh trạng như xe hụt hơi, xe nhả kh&oacute;i đen&hellip;</p>\r\n\r\n<p>Ngo&agrave;i ra, nếu nhi&ecirc;n liệu bị lẫn nước hoặc sử dụng chất lượng nhi&ecirc;n liệu qu&aacute; k&eacute;m cũng g&acirc;y n&ecirc;n vấn đề tr&ecirc;n.</p>\r\n\r\n<p><strong>Động cơ thải ra kh&oacute;i đen, kh&oacute;i x&aacute;m, kh&oacute;i xanh</strong></p>\r\n\r\n<p>Hiện tượng xe m&aacute;y dầu thải kh&oacute;i đen c&oacute; thể điểm qua một số nguy&ecirc;n nh&acirc;n thường gặp như: Nhi&ecirc;n liệu kh&ocirc;ng được đốt ch&aacute;y ho&agrave;n to&agrave;n. Nhi&ecirc;n liệu bị thừa do kh&ocirc;ng được cung cấp đều v&agrave;o c&aacute;c xi lanh. Hoặc động cơ phải hoạt động qu&aacute; tải, bơm nhi&ecirc;n liệu cao &aacute;p (BCA) điều chỉnh kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n\r\n<p>C&ograve;n khi gặp hiện tượng động cơ thải ra kh&oacute;i xanh th&igrave; chủ xe cần mang ra gara để kiểm tra ngay. Hiện tượng n&agrave;y g&acirc;y ra bởi một số nguy&ecirc;n nh&acirc;n như dầu nhớt lọt v&agrave;o buồng đốt, x&eacute;c măng bị m&ograve;n, g&atilde;y hoặc kẹt; x&eacute;c măng đầu l&aacute;p kh&ocirc;ng đ&uacute;ng. Đối với một chiếc xe tăng &aacute;p, kh&oacute;i xanh l&agrave; dấu hiệu cho thấy bơm cần được thay thế.</p>', 'n3.jpg', 0),
(16, 'Sony trình diễn loạt thiết bị công nghệ mới tại Sony Show', '<p>Chủ nh&acirc;n chiếc xe n&oacute;i tr&ecirc;n l&agrave; anh Đỗ Trung Hiếu, một người chuy&ecirc;n sưu tầm xe m&aacute;y, &ocirc; t&ocirc; biển số đẹp ở Cầu Giấy, H&agrave; Nội.</p>\r\n\r\n<p>&nbsp;</p>', '<p>&ldquo;Xe được t&ocirc;i mua lại từ chủ cũ v&agrave;o năm 2018. L&uacute;c đ&oacute;, xe mới chỉ lăn b&aacute;nh v&agrave;i trăm km. T&ocirc;i đầu tư th&ecirc;m khoảng 50 triệu đồng để độ th&ecirc;m loa, đ&egrave;n, thay lốp chống đinh,&hellip;&rdquo;, anh Hiếu cho biết.</p>\r\n\r\n<p>Sở dĩ anh Hiếu quyết định bỏ tiền mua chiếc Hyundai Grand i10 chạy lướt thay v&igrave; xe đập hộp từ đại l&yacute; sở hữu biển số 30F-26789 kh&aacute; đẹp. Theo giới chơi xe biển số đẹp, bộ số 26789 được dịch l&agrave; &ldquo;M&atilde;i san bằng tất cả&rdquo; kh&aacute; được ưa chuộng tr&ecirc;n thị trường.</p>\r\n\r\n<p>Close Player<a href=\"https://unibots.in/\" id=\"ubp_logo\" target=\"_blank\"><img alt=\"Unibots.in\" src=\"https://cdn.jsdelivr.net/gh/unib0ts/unibots@latest/ubPlayer/ub/logo.svg\" /></a></p>\r\n\r\n<p><img alt=\"Hyundai Grand i10 cũ đời 2018 đội giá 600 triệu nhờ biển đẹp - 1\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/hyundai-grand-i10-cu-doi-2018-doi-gia-600-trieu-nho-bien-dep.jpg\" title=\"Hyundai Grand i10 cũ đời 2018 đội giá 600 triệu nhờ biển đẹp - 1\" /></p>\r\n\r\n<p>Cận cảnh biển số 30F-26789 được dịch &quot;M&atilde;i san bằng tất cả&quot; của chiếc xe.&nbsp;</p>\r\n\r\n<p>Anh Hiếu cho biết, chiếc xe hiện c&oacute; gi&aacute; khoảng 600 triệu đồng. Mức gi&aacute; n&agrave;y cao gấp 2-2,5 triệu đồng so với mặt bằng chung tr&ecirc;n thị trường xe &ocirc; t&ocirc; cũ hiện nay.&nbsp;</p>\r\n\r\n<p>Khảo s&aacute;t tr&ecirc;n c&aacute;c chợ xe cũ như chotot, bonbanh..., một chiếc Grand i10 1.0 AT hatchback đời 2018 kh&ocirc;ng đ&acirc;m đụng, kh&ocirc;ng ngập nước, biển H&agrave; Nộ c&oacute; gi&aacute; rao b&aacute;n từ 260- 350 triệu đồng. Trong khi đ&oacute;, mẫu xe n&agrave;y mua mới thời điểm năm 2018 c&oacute; gi&aacute; 380 triệu đồng.</p>\r\n\r\n<p>Sau 3 năm sử dụng xe vẫn sở hữu ngoại thất m&agrave;u đỏ c&ograve;n s&aacute;ng b&oacute;ng. Hyundai Grand i10 2018 c&oacute; k&iacute;ch thước tổng thể lớn hơn với chiều d&agrave;i, rộng v&agrave; chiều cao của bản hatback l&agrave; 3765x1660x1505mm.</p>\r\n\r\n<p>Hyundai Grand i10 2018 bản hatchback động cơ 1.2 L với c&ocirc;ng suất tối đa 87 m&atilde; lực tại 6000 v&ograve;ng/ph&uacute;t với momen xoắn cực đại 120Nm tại 4000 v&ograve;ng / ph&uacute;t.&nbsp;</p>\r\n\r\n<p><img alt=\"Hyundai Grand i10 cũ đời 2018 đội giá 600 triệu nhờ biển đẹp - 2\" src=\"https://img.docbao.vn/images/uploads/2021/09/25/hyundai-grand-i10-cu-doi-2018-doi-gia-600-trieu-nho-bien-dep-2.jpg\" title=\"Hyundai Grand i10 cũ đời 2018 đội giá 600 triệu nhờ biển đẹp - 2\" /></p>\r\n\r\n<p>Hyundai Grand i10 cũ đời 2018 nhưng c&ograve;n rất mới. Xe được độ th&ecirc;m đ&egrave;n, loa v&agrave; lốp chống đinh....&nbsp;</p>\r\n\r\n<p>Hyundai Grand i10 l&agrave; một trong những mẫu xe hạng A gi&aacute; rẻ kh&aacute; phổ biến tại Việt Nam v&agrave; được nhiều kh&aacute;ch h&agrave;ng trẻ lần đầu mua xe hoặc chạy dịch vụ lựa chọn. Mẫu xe n&agrave;y cũng được đ&aacute;nh gi&aacute; kh&aacute; giữ gi&aacute; so với c&aacute;c đối thủ kh&aacute;c trong c&ugrave;ng ph&acirc;n kh&uacute;c.</p>\r\n\r\n<p>Ở thế hệ mới 2021, Hyundai Grand i10 được lắp r&aacute;p trong nước v&agrave; ph&acirc;n phối với tất cả 6 phi&ecirc;n bản. Trong đ&oacute; c&oacute; 3 phi&ecirc;n bản hatchback v&agrave; 3 phi&ecirc;n bản sedan gồm 1.2MT Ti&ecirc;u chuẩn, 1.2MT v&agrave; 1.AT c&oacute; gi&aacute; ni&ecirc;m yết dao động từ 360-455 triệu đồng.</p>\r\n\r\n<p>Thời gian gần đ&acirc;y, mẫu xe gi&aacute; rẻ của nh&agrave; Hyundai đang đi xuống so với c&aacute;c đối thủ trong c&ugrave;ng ph&acirc;n kh&uacute;c, đặc biệt l&agrave; so với mẫu xe mới Vinfast Fadil. Mới nhất, trong th&aacute;ng 8/2021, Hyundai Grand i10 chỉ đạt 394 giảm đến hơn 51% so với th&aacute;ng trước. Con số n&agrave;y giảm đến 63,7% so với c&ugrave;ng kỳ năm ngo&aacute;i. Cộng dồn 8 th&aacute;ng qua, Grand i10 c&oacute; 7.546 xe b&aacute;n ra, thấp hơn 1 nửa so với kết quả của Vinfast Fadil. Tuy nhi&ecirc;n, đ&acirc;y vẫn l&agrave; mẫu xe lu&ocirc;n nằm trong top 10 xe b&aacute;n chạy nhất của thị trường xe Việt.</p>', 'n1.jpg', 0),
(17, '1', '<p>1</p>', '<p>1</p>', '1670374701_lambor1.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderdetail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`orderdetail_id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(45, 13, 54, 2, 2814000),
(46, 14, 54, 3, 2814000),
(47, 15, 54, 3, 2814000),
(48, 16, 54, 4, 2814000),
(49, 16, 63, 1, 3192000),
(50, 17, 53, 1, 2300000),
(51, 18, 53, 1, 2300000),
(52, 18, 77, 1, 1919500),
(53, 19, 53, 1, 2300000),
(54, 19, 77, 1, 1919500);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(25) NOT NULL,
  `date` varchar(500) NOT NULL,
  `price` varchar(300) NOT NULL,
  `status` varchar(500) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `date`, `price`, `status`, `customer_id`) VALUES
(17, '2022-12-11 06:35:59', '2,300,000.00', 'Đã giao hàng', 8),
(18, '2022-12-11 06:43:46', '4,219,500.00', 'Đã giao hàng', 8),
(19, '2022-12-11 07:25:58', '4,219,500.00', 'Đang chờ xử lý', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `description` varchar(1000) NOT NULL,
  `baohanh` varchar(191) NOT NULL,
  `hot` bit(1) NOT NULL,
  `status` varchar(200) NOT NULL,
  `content` text DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `discount`, `description`, `baohanh`, `hot`, `status`, `content`, `category_id`) VALUES
(53, 'KASHMIR - 40MM CLASSIC', '2.JPG', 5000000, 54, 'Classic', '5 năm', b'0', 'Còn hàng', 'Something about product...', 1),
(54, 'MAGNOLIA', '3.JPG', 4200000, 33, 'Classic', '3 năm', b'0', 'Còn hàng', 'Something about product...', 1),
(55, 'ROBUST', '4.JPG', 2000000, 30, 'Classic', '12 tháng', b'0', 'Còn hàng', 'Something about product...', 1),
(56, 'SHARP', '5.JPG', 399000, 10, 'Classic', '12 tháng', b'1', 'Còn hàng', 'Something about product...', 1),
(57, 'GUNMETAL SANDSTONE', '6.JPG', 4999000, 5, 'Classic', '5 năm', b'1', 'Hàng sắp hết', 'Something about product...', 1),
(58, 'REFINED', '7.JPG', 1999000, 15, 'Classic', '3 năm', b'0', 'Còn Hàng', 'Something about product...', 1),
(59, 'BLACK LINK', '8.JPG', 599000, 50, 'Classic', '12 tháng', b'0', 'Còn hàng', 'Something about product...', 1),
(60, 'GOTHAM', '9.JPG', 999000, 10, 'Classic', '2 năm', b'0', 'Còn hàng', 'Something about product...', 1),
(61, 'PETITE EVERGOLD', '10.JPG', 4990000, 10, 'Luxury', '5 năm', b'1', 'Còn hàng', 'Something about product...', 2),
(62, 'GUMMer', 'gu.JPG', 399000, 5, 'Classic', '1 năm', b'0', 'Hàng sắp hết', 'Something about product...', 2),
(63, 'ICONIC MOTION RUBY', 'd7.JPG', 3990000, 20, 'ICONIC', '5 năm', b'1', 'Còn Hàng', 'Something about product...', 2),
(64, 'ICONIC LINK CERAMIC', 'd1.JPG', 2990000, 15, 'ICONIC', '3 năm', b'0', 'Còn hàng', 'Something about product...', 1),
(65, 'ICONIC MOTION', 'd2.JPG', 1500000, 30, 'ICONIC', '2 năm', b'0', 'Còn hàng', 'Something about product...', 1),
(66, 'ICONIC LINK CAPRI', 'd3.JPG', 4900000, 45, 'ICONIC', '5 năm', b'1', 'Còn hàng', 'Something about product...', 2),
(67, 'ICONIC MOTION', 'd4.JPG', 2900000, 20, 'ICONIC', '5 năm', b'0', 'Còn hàng', 'Something about product...', 2),
(68, 'PETITE LUMINE PRESSED PIANO', 'd5.JPG', 5000000, 30, 'Classic', '10 năm', b'1', 'Còn hàng', 'Something about product...', 2),
(69, 'QUADRO LUMINE PRESSED PIANO', 'd6.JPG', 4200000, 34, 'Luxury', '5 năm', b'0', 'Còn hàng', 'Something about product...', 2),
(70, 'QUADRO PRESSED ROUGE', 'd8.JPG', 5000000, 20, 'Classic', '5 năm', b'0', 'Còn hàng', 'Something about product...', 2),
(71, 'PETITE MELROSE PEARL', 'd9.JPG', 2990000, 50, 'PETITE', '4 năm', b'0', 'Còn hàng', 'Something about product...', 2),
(72, 'PETITE SUFFOLK RED', 'd10.JPG', 1500000, 10, 'PETITE', '2 năm', b'0', 'Còn hàng', 'Something about product...', 2),
(73, 'PETITE READING', 'd11.JPG', 4990000, 45, 'Classic', '5 năm', b'0', 'Còn hàng', 'Something about product...', 1),
(74, 'CLASSIC CORNWALL', 'd12.JPG', 2900000, 20, 'Classic', '3 năm', b'0', 'Còn hàng', 'Something about product...', 1),
(75, 'CLASSIC ST MAWES', 'd13.JPG', 499000, 30, 'Classic', '2 năm', b'0', 'Còn hàng', 'Something about product...', 1),
(76, 'CLASSIC CAMBRIDGE', 'd14.JPG', 2990000, 35, 'Classic', '4 năm', b'1', 'Còn hàng', 'Something about product...', 1),
(77, 'ICONIC LINK EMERALD', 'd15.JPG', 3490000, 45, 'ICONIC', '5 năm', b'1', 'Còn hàng', 'Something about product...', 1),
(78, 'ICONIC LINK AMBER', 'd16.JPG', 2990000, 100, 'Classic', '5 năm', b'1', 'Còn hàng', 'Something about product...', 1),
(79, 'ICONIC LINK ARCTIC', 'd17.JPG', 200000, 40, 'ICONIC', '3 năm', b'0', 'Còn hàng', 'Something about product...', 1),
(80, 'COGNAC LEATHER 20MM', 'p2.JPG', 290000, 15, 'Dây đeo', '6 tháng', b'0', 'Còn hàng', 'Something about product...', 3),
(81, 'MESS BAND', 'p1.JPG', 499000, 10, 'Dây đeo', '12 tháng', b'1', 'Còn hàng', 'Something about product...', 3),
(82, 'HỘP ĐỰNG ĐỒNG HỒ DRIKLUX 3WR-BRG', 'p3.JPG', 500000, 10, 'Hộp', '3 tháng', b'0', 'Còn hàng', 'Something about product...', 3),
(83, 'HỘP XOAY ĐỒNG HỒ DRIKLUX 1051BBR-F-5', 'p4.JPG', 390000, 12, 'Hộp', '6 tháng', b'0', 'Còn hàng', 'Something about product...', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn A', 'nva@gmail.com', NULL, '$2y$10$SH6psef5ILKnFHEBeeFDBuJxU3lof1Dy4AuF741GF18HBV0YRqyyy', NULL, NULL, NULL),
(2, 'Nguyễn Văn B', 'nvb@gmail.com', NULL, '$2y$10$SH6psef5ILKnFHEBeeFDBuJxU3lof1Dy4AuF741GF18HBV0YRqyyy', NULL, NULL, NULL),
(3, 'Nguyễn Văn C', 'nvc@gmail.com', NULL, '$2y$10$SH6psef5ILKnFHEBeeFDBuJxU3lof1Dy4AuF741GF18HBV0YRqyyy', NULL, NULL, NULL),
(4, 'Nguyễn Văn D', 'nvd@gmail.com', NULL, '$2y$10$SH6psef5ILKnFHEBeeFDBuJxU3lof1Dy4AuF741GF18HBV0YRqyyy', NULL, NULL, NULL),
(5, 'Nguyễn Văn E', 'nve@gmail.com', NULL, '$2y$10$SH6psef5ILKnFHEBeeFDBuJxU3lof1Dy4AuF741GF18HBV0YRqyyy', NULL, NULL, NULL),
(8, 'admin', 'admin@gmail.com', NULL, '$2y$10$q88lClVg4GbK7H4zhK4CTuZp5soySZUpfoHc.PJwhQPk5iZHr3MmW', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderdetail_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_idcat_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderdetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_idcat_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
