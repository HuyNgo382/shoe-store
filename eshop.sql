-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 22, 2023 lúc 05:20 AM
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
-- Cơ sở dữ liệu: `eshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `image` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`) VALUES
(13, 'GIÀY ADIDAS', 'https://tse3.mm.bing.net/th?id=OIP.ZZrX2qfPczQGcCb4c44X6wHaET&pid=Api&P=0'),
(15, 'GIÀY NIKE', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/ff7ddb45-ab8a-47a3-b56f-5572f7b82cc3/dunk-low-retro-shoes-RqjhPl.png'),
(16, 'GIÀY NIKE AIR JORDAN ', 'https://myshoes.vn/image/cache/catalog/2023/nike/nk3/giay-nike-air-jordan-1-mid-se-nam-trang-nau-01-800x800.jpg'),
(17, 'NEW BALANCE ', 'https://myshoes.vn/image/cache/catalog/2022/newbalance/16.5/giay-new-balance-viaza-nam-xanh-lam-01-800x800.jpg'),
(18, 'GIAY PUMA', 'https://myshoes.vn/image/cache/catalog/2022/puma/121/giay-puma-smash-cat-l-nam-trang-do-01-800x800.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `status`, `user_id`, `created_at`) VALUES
(2, '2', 'finish', 1, '2023-05-19 15:24:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 2, 2, 1, 1900000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `image` varchar(2028) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `quantity`, `view`, `category_id`) VALUES
(1, 'Giày Thể Thao Nam Adidas Runfalcon F36201 Màu Xanh Đậm Size 42.5', 'Giày chính hãng ', 'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/12/giay-the-thao-nam-adidas-runfalcon-f36201-mau-xanh-dam-size-42-5-638847d4ae3d4-01122022132108.jpg', 0, 0, 0, 13),
(2, 'Giày Tennis Adidas Courtjam Control GW2554 Màu Đen Size 45.5', 'Giày chính hãng', 'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2023/02/giay-tennis-adidas-courtjam-control-gw2554-mau-den-size-39-63e210a0c3b85-07022023154936.jpg', 0, 0, 0, 13),
(3, 'Giày Thể Thao Adidas Galaxy 6 Shoes GW4139 Màu Xanh Dương Size 42', 'Giày chính hãng', 'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2023/05/giay-the-thao-adidas-galaxy-6-shoes-gw4139-mau-xanh-duong-size-42-6454b5f52a5ff-05052023145325.jpg', 0, 0, 0, 13),
(5, 'Giày Thể Thao Nữ Adidas WMNS Ultraboost 22 \'White Gradient\' GV8830 Màu Trắng Hồng Size 42', 'Giày chính hãng', 'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2023/05/giay-the-thao-nu-adidas-wmns-ultraboost-22-white-gradient-gv8830-mau-trang-hong-size-42-6453814b02434-04052023165627.jpg', 2.99, 1, 1, 13),
(6, 'GIÀY NIKE SB ALLEYOOP NAM - TRẮNG ĐEN', 'Giày Nike SB Alleyoop là dòng giày sneaker có thiết kế đơn giản nhưng đẹp mắt, được rất nhiều người yêu thích. Một mẫu giày bạn có thể tự tin sử dụng trong mọi hoàn cảnh mà không sợ lỗi mốt.\r\nPhần upper của giày được làm từ chất liệu da lộn cao cấp kết hợp', 'https://myshoes.vn/image/cache/catalog/2023/nike/nk06/giay-nikesb-alleyoop-nam-trang-den-01-800x800.jpg', 1900000, 1, 1, 15),
(7, 'GIÀY NIKE SB CHRON 2 NAM - ĐEN TRẮNG', 'Giày Nike SB Chron 2 là dòng giày sneaker có thiết kế đơn giản nhưng đẹp mắt, được rất nhiều người yêu thích. Một mẫu giày bạn có thể tự tin sử dụng trong mọi hoàn cảnh mà không sợ lỗi mốt.\r\nPhần upper của giày được từ vải Canvas chắc chắn chịu va chạm mài', 'https://myshoes.vn/image/cache/catalog/2023/nike/nk7/giay-nike-sb-chron-2-nam-den-trang-01-800x800.jpg', 2900000, 1, 1, 15),
(8, 'GIÀY NIKE DUNK HI RETRO NAM - NÂU TRẮNG', 'Giày Nike Dunk Hi Retro là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt không bao giờ lỗi mốt, Nike Dunk Hi Retro chắc chắn là đôi giày không thể thiếu với các tín đồ sneaker.\nPhần upper của giày đư', 'https://myshoes.vn/image/cache/catalog/2023/nike/nk3/giay-nike-dunk-hi-retro-nam-nau-trang-01-800x800.jpg', 270000, 1, 1, 15),
(9, 'GIÀY NIKE KD TREY 5 IX EP NAM - ĐEN TRẮNG', 'Giày Nike KD Trey 5 IX EP một mẫu giày sneaker Nike kết hợp với siêu sao bóng rổ Kevin Durant, với những chất liệu cao cấp và công nghệ đỉnh cao Nike KD Trey 5 IX EP sẽ là một lựa chọn khó có thể bỏ qua của các tín đồ sneaker.', 'https://myshoes.vn/image/cache/catalog/2022/nike/122/giay-nike-kd-trey-5-ix-ep-nam-den-trang-01-800x800.jpg', 3900000, 1, 1, 15),
(10, 'GIÀY NEW BALANCE M FLASH NAM - ĐEN ĐỎ', 'Giày New Balance M Flash mẫu giày thể thao được thiết kế rất đẹp, chất liệu cực nhẹ và êm giúp bạn vận động đi lại cả ngày mà không mỏi mệt.\r\n\r\nNew Balance M Flash có phần upper được làm từ chất liệu vải mesh thoáng khí, đế giữa với công nghệ DYNASOFT độc ', 'https://myshoes.vn/image/cache/catalog/2022/newbalance/16.5/giay-New-Balance-M-Flash-nam-den-do-01-800x800.jpg', 2800000, 1, 1, 17),
(11, 'GIÀY NEW BALANCE M411 NAM - ĐEN TRẮNG', 'Giày New Balance M411 mẫu giày thể thao được thiết kế đơn giản nhưng rất đẹp, chất liệu cực nhẹ và êm giúp bạn di chuyển cả ngày mà không mỏi mệt. Ngoài ra New Balance M411 có mức giá cực kỳ hợp lý rất đáng để bạn lựa chọn.\r\n\r\nGiày New Balance M411 có phần', 'https://myshoes.vn/image/cache/catalog/2022/newbalance/6.5/giay-new-balance-m411-nam-xanh-den-trang-01-800x800.jpg', 1390000, 1, 1, 17),
(12, 'GIÀY NEW BALANCE VIAZA NAM - XANH LAM', 'Giày New Balance Viaza mẫu giày thể thao được thiết kế rất đẹp, với công nghệ đế FRESH FOAM độc quyền của New Balance giúp cho đôi giày trở lên cực kỳ êm và nhẹ nhàng khi di chuyển.\r\n\r\nNew Balance Viaza có phần upper được làm từ chất liệu vải mesh thoáng k', 'https://myshoes.vn/image/cache/catalog/2022/newbalance/16.5/giay-new-balance-viaza-nam-xanh-lam-01-800x800.jpg', 8000000, 1, 1, 17),
(13, 'GIÀY NEW BALANCE M411 NAM - XANH NAVY', 'Giày New Balance M411 mẫu giày thể thao được thiết kế đơn giản nhưng rất đẹp, chất liệu cực nhẹ và êm giúp bạn di chuyển cả ngày mà không mỏi mệt. Ngoài ra New Balance M411 có mức giá cực kỳ hợp lý rất đáng để bạn lựa chọn.\r\n\r\nGiày New Balance M411 có phần', 'https://myshoes.vn/image/cache/catalog/2022/newbalance/6.5/giay-new-balance-m411-nam-xanh-navy-01-800x800.jpg', 1900000, 1, 1, 17),
(14, 'GIÀY PUMA SMASH CAT L NAM NỮ - TRẮNG ĐỎ', 'Giày Puma Smash Cat L mẫu giày có thiết kế đơn giản mà đẹp mắt. Logo hình con báo đặc trưng của Puma được thêu tỉ mỉ trên thân giày tạo nét nổi bật khó cưỡng lại.\r\n\r\nChất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tí', 'https://myshoes.vn/image/cache/catalog/2022/puma/121/giay-puma-smash-cat-l-nam-trang-do-01-800x800.jpg', 4000000, 1, 1, 18),
(15, 'GIÀY PUMA SMASH CAT L NAM NỮ - TRẮNG XANH', 'Giày Puma Smash Cat L mẫu giày có thiết kế đơn giản mà đẹp mắt. Logo hình con báo đặc trưng của Puma được thêu tỉ mỉ trên thân giày tạo nét nổi bật khó cưỡng lại.\r\n\r\nChất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tí', 'https://myshoes.vn/image/cache/catalog/2022/puma/121/giay-puma-smash-cat-l-nam-nu-trang-xanh-01-800x800.jpg', 6000000, 1, 1, 18),
(16, 'GIÀY PUMA SMASH CAT L NAM - TRẮNG NAVY', 'Giày Puma Smash Cat L mẫu giày có thiết kế đơn giản mà đẹp mắt. Logo hình con báo đặc trưng của Puma được thêu tỉ mỉ trên thân giày tạo nét nổi bật khó cưỡng lại.\r\n\r\nChất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tí', 'https://myshoes.vn/image/cache/catalog/2022/puma/28.7.2/giay-puma-smash-cat-l-nam-trang-navy-01-800x800.jpg', 3000000, 1, 1, 18),
(17, 'GIÀY PUMA SOFTRIDE CRUISE NAM - TRẮNG', 'Giày Puma Smash Cat L mẫu giày có thiết kế đơn giản mà đẹp mắt. Logo hình con báo đặc trưng của Puma được thêu tỉ mỉ trên thân giày tạo nét nổi bật khó cưỡng lại.\r\n\r\nChất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tí', 'https://myshoes.vn/image/cache/catalog/2022/puma/17.9/giay-puma-softride-cruise-nam-trang-01-800x800.jpg', 2000000, 1, 1, 18),
(24, 'GIÀY ADIDASS 3334 5', 'shop bán xu TDS và TTC giá rẻ ', 'https://tse3.mm.bing.net/th?id=OIP.8lErkkaC-x1c7U5sTS2UggHaHa&pid=Api&P=0', 33333, 1, 1, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`) VALUES
(1, 'huy@gmail.com', '6512092', 'admin'),
(2, 'huy333@gmail.com', '6512092', 'admin'),
(8, 'namha953323@gmail.com', '6512092', 'user'),
(9, 'huybap300@gmail.com', '6512092', 'user'),
(10, '', '', ''),
(11, 'huybap3812@gmail.com', '6512092', 'user');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_users1` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_details_orders1` (`order_id`),
  ADD KEY `fk_order_details_products1` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_categories` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_order_details_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_order_details_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
