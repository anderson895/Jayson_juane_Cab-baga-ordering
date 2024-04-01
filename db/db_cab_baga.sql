-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 03:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cab_baga`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `checkout_id` int(255) NOT NULL,
  `checkout_name` varchar(50) NOT NULL,
  `checkout_address` varchar(250) NOT NULL,
  `checkout_product_id` int(11) NOT NULL,
  `checkout_quantity` int(11) NOT NULL,
  `checkout_img` varchar(250) NOT NULL,
  `checkout_united_id` varchar(250) NOT NULL,
  `checkout_date` date NOT NULL DEFAULT current_timestamp(),
  `checkout_status` int(11) NOT NULL,
  `checkout_mode` varchar(20) NOT NULL,
  `checkout_user_id` int(11) NOT NULL,
  `checkout_addons` varchar(20) NOT NULL,
  `checkout_time` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`checkout_id`, `checkout_name`, `checkout_address`, `checkout_product_id`, `checkout_quantity`, `checkout_img`, `checkout_united_id`, `checkout_date`, `checkout_status`, `checkout_mode`, `checkout_user_id`, `checkout_addons`, `checkout_time`) VALUES
(51, 'Andy Andersonq', 'Sta.rosa 2', 45, 1, '', '0e44242e4cc0f8d004487e1a789c416d', '2024-03-30', 0, 'COD', 44, '', '19:19:45'),
(52, 'Andy Andersonq', 'Sta.rosa 2', 46, 1, '', '0e44242e4cc0f8d004487e1a789c416d', '2024-03-30', 0, 'COD', 44, '', '19:19:45'),
(53, 'Andy Andersonq', 'Sta.rosa 2', 44, 1, '', '0e44242e4cc0f8d004487e1a789c416d', '2024-03-30', 0, 'COD', 44, '', '19:19:45'),
(54, 'Juane Jayson', 'Cabanatuan City', 60, 1, 'all_images/3aba7ffdc5367d30b090a5f933061d1de79dd102b35213f815291e0fb4bd12df.jpg', '3cf8d50cf2d8e3ce433777e53802f919', '2024-03-30', 3, 'Gcash', 45, '0', '21:17:05'),
(55, 'Juane Jayson', 'Cabanatuan City', 47, 1, 'all_images/3aba7ffdc5367d30b090a5f933061d1de79dd102b35213f815291e0fb4bd12df.jpg', '3cf8d50cf2d8e3ce433777e53802f919', '2024-03-30', 3, 'Gcash', 45, '0', '21:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(255) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(1, 'Steeve Moore', 'steeve', 'E10ADC3949BA59ABBE56E057F20F883E'),
(9, 'Liam Johnson', 'liam', 'E10ADC3949BA59ABBE56E057F20F883E'),
(10, 'Ramsey', 'ramsey', 'E10ADC3949BA59ABBE56E057F20F883E'),
(12, 'Administrator', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(255) NOT NULL,
  `food_id` int(11) NOT NULL,
  `food_quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checker` varchar(20) NOT NULL,
  `add_ons` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(255) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(12, 'Silog Meal\r\n', '', 'Yes', 'Yes'),
(13, 'Sizzling', '', 'Yes', 'Yes'),
(14, 'Sisig Meal', '', 'Yes', 'Yes'),
(15, 'Combo Meal', '', 'Yes', 'Yes'),
(16, 'Wataw Meal', '', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(255) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(255) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT 'Yes',
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`, `quantity`) VALUES
(44, 'Grilled Liempo', 'Inihaw na Liempo is known as Grilled Pork Belly in Filipino. This dish needs no introduction at all because the name of the dish already introduces itself.', 109.00, 'all_images/b0e2e5f6963037d46c1f6ad0d8166c0b18.jpg', 13, 'Yes', 'Yes', 100),
(45, 'Lechon Kawali', 'Lechon kawali, also known as lechon de carajay or litsong kawali in Tagalog, is a Filipino recipe consisting of pork belly slabs deep-fried in a pan or wok (kawali). It is seasoned beforehand, cooked then served in cubes.', 99.00, 'all_images/a1e685f0ce35f1cf04120cc7cec9a59920.jpg', 14, 'Yes', 'Yes', 100),
(46, 'Hungarian', 'It is smoked, fine in texture, with a reddish orange color named after the Hungarian City of Debrecen.', 99.00, 'all_images/01583c4c94962df1626b8029a0353a8626.jpg', 15, 'Yes', 'Yes', 100),
(47, 'T-bone steak', 'This well-marbled cut consists of two lean, tender steaks - the strip and tenderloin - connected by a telltale T-shaped bone. In a T-Bone, the tenderloin is between 1/2 and 1 1/4 inches in diameter.', 119.00, 'all_images/77f487e0c9f758149f687e60f587fa3d38.jpg', 15, 'Yes', 'Yes', 100),
(48, 'Breaded Porkchop', 'This breaded pork chop recipe uses Panko for a lighter and crunchier coating that stays crisp longer than when using regular breadcrumbs.', 99.00, 'all_images/09657249941936e52c7ff4b245779b4a39.jpg', 15, 'Yes', 'Yes', 100),
(49, 'Flavor shots', 'Out-of-this-world flavor packed into the perfect on-the-go-snack.', 99.00, 'all_images/cbcf614bedbf051621cc1655405b9ca340.jpg', 13, 'Yes', 'Yes', 100),
(50, 'Pork Steak', 'Pork Steak is a Filipino pork dish wherein pork chops are marinated and cooked in soy sauce and lemon with onions.', 99.00, 'all_images/fb2d0fde37e7aed4e3152d0b4dcc67aa21.jpg', 13, 'Yes', 'Yes', 100),
(51, 'Skinless', 'It is a combination of salt and sweet sausages as this recipe is mainly compose of garlic, sugar and seasoning spices. Sausage is usually made', 75.00, 'all_images/34a2a091ff3b06045aa9c473ad7f8f7763.jpg', 12, 'Yes', 'Yes', 100),
(52, 'Lancheon meat', 'Luncheon meat is a comminuted (fine-particle) meat product enriched with pork fat and flavoring additives.', 75.00, 'all_images/3f09b8d830db519e21081000665c9dce62.jpg', 12, 'No', 'Yes', 100),
(53, 'Tapa', 'Tapa is dried or cured beef, pork, mutton, venison or horse meat, although other meat or even fish may be used. Filipinos prepare tapa by using thin slices of meat and curing these with salt and spices as a preservation method.', 75.00, 'all_images/4259be7aa6c6b8c6a964fdebaaaffffc59.jpg', 12, 'Yes', 'Yes', 100),
(54, 'Longganisa', 'Longsilog is a hearty, savory dish with sweet longganisa sausage, fried eggs, and garlic rice. These traditional Filipino breakfast plates are easy to make at home for a satisfying way to start the day! Growing up, my Lola would make Spamsilog often. Not just for breakfast, but for lunch and dinner, too!', 75.00, 'all_images/071d8a0cc851f1977108a816c959a1b634.jpg', 12, 'Yes', 'Yes', 100),
(55, 'Porkchop', 'A pork chop, like other meat chops, is a loin cut taken perpendicular to the spine of the pig and is usually a rib or part of a vertebra. Pork chops are unprocessed and leaner than other cuts.', 75.00, 'all_images/b5d0e9405ff6fc3176a1c5714208495835.jpg', 12, 'Yes', 'Yes', 100),
(56, 'Chicken Fillet', 'Chicken fillets are a cut of chicken usually taken from the breast region of the bird. They are boneless pieces of meat that are mostly flat, although not usually of a consistent thickness through the length of the meat.', 75.00, 'all_images/1204d619c9f39dab99ddc11362472c5060.jpg', 12, 'Yes', 'Yes', 100),
(57, 'Hotdog', 'Hotsilog is a meal composed of hotdogs, garlic fried rice, and fried egg. In a Filipino household, this is commonly eaten for breakfast with a condiment of banana ketchup and some pickled shredded papaya (atchara) on the side. Red juicy hotdogs are used to make hotsilog.', 70.00, 'all_images/8829f1ef4069e0e2d013ac4c2c9fecc561.jpg', 12, 'Yes', 'Yes', 100),
(58, 'Tocino', 'Tosilog is a popular Filipino breakfast meal. The name tosilog was derived from the different components of the meal which are: Tocino (cured pork), Sinangag (Filipino garlic fried rice), and Sunny-side up egg. Tosilog is best eaten with a spicy vinegar dip', 75.00, 'all_images/593018035cff36b02df376b126b24ac858.jpg', 12, 'Yes', 'Yes', 100),
(59, 'Bacon', 'Bacon steals the spotlight in this traditional Filipino breakfast dish. The classic combination of sinangag and egg serve as the bed for these crispy, meaty  ', 75.00, 'all_images/7bb2219bc5e3ebdaa80d3874315ee05957.jpg', 12, 'Yes', 'Yes', 100),
(60, 'Bangus', 'Bangsilog is a traditional Filipino meal and a part of silog dishes that are commonly served for breakfast. The dish consists of bangus (milkfish), garlic fried rice, and fried eggs. The milkfish is marinated and pan-fried in oil. Cold cooked rice is fried with garlic in oil, and the eggs are fried sunny side up', 80.00, 'all_images/2e028833b9228a6d3362fbf032957c0c65.jpg', 12, 'Yes', 'Yes', 99);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `user` tinyint(4) NOT NULL,
  `contact_name` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `create_datetime`, `user`, `contact_name`, `contact_address`, `contact_number`) VALUES
(6, 'admin', 'admin@admin', '3d955f56d9545f905231e7544e6fc6fd', '2022-10-13 05:01:55', 1, '', '', ''),
(13, 'admin@admin', 'admin@admin', 'a3175a452c7a8fea80c62a198a40f6c9', '2022-10-14 08:39:48', 1, '', '', ''),
(15, 'joshuaPadilla', 'joshua@gmail.com', 'd1133275ee2118be63a577af759fc052', '2023-01-17 11:13:19', 0, '', '', ''),
(16, 'joshua', 'joshua@gmail.com', 'd1133275ee2118be63a577af759fc052', '2023-01-17 18:30:34', 1, '', '', ''),
(34, 'tester1', 'dummy1stapador@gmail.com', '72a3dcef165d9122a45decf13ae20631', '2023-04-27 16:24:06', 0, 'Asdasdasd Asd Asd', 'Quezon Qity, Metro Manila, Philippines', '+639161457785'),
(35, 'andy', 'andersonandy@gmail.com', '36d8f6ec521e50d15985d776d1e5d61e', '2024-03-29 13:33:54', 0, 'Joshua padilla', 'sta.rosa 2 marilao bulacan', '+639454454744'),
(36, 'awdwad', 'andersonandy04@gmail.com', '90e227b57a2970a432b3bfc75af46b21', '2024-03-29 14:12:27', 0, 'Jayson Juane', 'Sta.rosa 2 Marilao Bulacan', '+639454454744'),
(38, 'padillajoshuaanderson.pdm', 'padillajoshuaanderson.pdm@gmail.com', '9d0d3152d50c6783d391ab2d788ff3ec', '2024-03-29 17:49:55', 0, 'andy anderson', 'tibagan', '+639124358785'),
(41, 'test', 'test@test.com', '20a3d7956fc76566f08670e404261c96', '2024-03-30 11:33:58', 0, 'test', 'testtest', '+639454454744'),
(44, 'andersonandy046', 'andersonandy046@gmail.com', '92b94ae33347414872af83d5a83a7654', '2024-03-30 12:15:40', 0, 'andy andersonq', 'sta.rosa 2', '+639454454744'),
(45, 'juanejayson', 'juanejayson@gmail.com', '6806579c4ecea748d32736bb2ecbdf50', '2024-03-30 14:14:53', 0, 'juane jayson', 'Cabanatuan city', '+639454454744');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`checkout_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `checker` (`checker`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `description` (`description`) USING HASH;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `checkout_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
