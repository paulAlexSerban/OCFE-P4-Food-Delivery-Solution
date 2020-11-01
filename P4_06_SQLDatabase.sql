-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 30, 2020 at 01:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ExpressFood`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `Bills_Products`
-- (See below for the actual view)
--
CREATE TABLE `Bills_Products` (
`No` int(11)
,`Product` varchar(100)
,`Qty` int(11)
,`Price` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Customers_Details`
-- (See below for the actual view)
--
CREATE TABLE `Customers_Details` (
`Customer_No` int(11)
,`Name` varchar(100)
,`Phone` int(11)
,`Email` varchar(50)
,`City` varchar(50)
,`Street_Name` varchar(50)
,`Street_Number` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Customer_Total_Spent_History`
-- (See below for the actual view)
--
CREATE TABLE `Customer_Total_Spent_History` (
`Customer` varchar(100)
,`TOTAL` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Deliveries`
-- (See below for the actual view)
--
CREATE TABLE `Deliveries` (
`Order_Date` datetime
,`Delivery_No` int(11)
,`Order_No` int(11)
,`Bill_No` int(11)
,`Biker_Name` varchar(100)
,`Biker_Phone` int(11)
,`Customer_Name` varchar(100)
,`Custoimer_Phone` int(11)
,`City` varchar(50)
,`Street_Name` varchar(50)
,`Street_Number` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Orders`
-- (See below for the actual view)
--
CREATE TABLE `Orders` (
`No` int(11)
,`Date` datetime
,`Custumer_Name` varchar(100)
,`Customer_Phone` int(11)
,`Quantity` int(11)
,`Product_Name` varchar(100)
,`Price` double(19,2)
,`City` varchar(50)
,`Street_Name` varchar(50)
,`Street_Number` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Orders_Total`
-- (See below for the actual view)
--
CREATE TABLE `Orders_Total` (
`No` int(11)
,`Customer_Name` varchar(100)
,`Total` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Revenue_per_Product`
-- (See below for the actual view)
--
CREATE TABLE `Revenue_per_Product` (
`Product` varchar(100)
,`Total` double(19,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addresses`
--

CREATE TABLE `tbl_addresses` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address_city` varchar(50) NOT NULL,
  `address_street_name` varchar(50) NOT NULL,
  `address_street_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_addresses`
--

INSERT INTO `tbl_addresses` (`address_id`, `customer_id`, `address_city`, `address_street_name`, `address_street_number`) VALUES
(1, 1, 'Barcelona', 'Via Laietana', 41),
(2, 2, 'Barcelona', 'Ortigosa', 33),
(3, 3, 'Barcelona', 'Joan de Borbo', 22),
(4, 4, 'Barcelona', 'Calle de Raval', 33),
(5, 5, 'Barcelona', 'Gran Via de les Cortes Catalanes', 99),
(6, 6, 'Barcelona', 'Calle de Tibidabo', 33),
(7, 7, 'Barcelona', 'Rambala de Raval', 12),
(8, 1, 'Barcelona', 'Via Vilareal', 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bills`
--

CREATE TABLE `tbl_bills` (
  `bill_id` int(11) NOT NULL,
  `bill_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bills`
--

INSERT INTO `tbl_bills` (`bill_id`, `bill_date`) VALUES
(1, '2020-01-01'),
(2, '2020-01-01'),
(3, '2020-01-01'),
(4, '2020-01-01'),
(5, '2020-01-01'),
(6, '2020-01-01'),
(7, '2020-01-01'),
(8, '2020-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_phone` int(11) NOT NULL,
  `customer_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_phone`, `customer_email`) VALUES
(1, 'Charlie Brown', 455321098, 'charlie.brown@gmail.com'),
(2, 'Issabela Martinez', 345521342, 'issabela.Martinez@gmail.com'),
(3, 'Paul LaMattina', 455321444, 'paul.lamattina@gmail.com'),
(4, 'Edi Salami', 632555123, 'edi.salami@gmail.com'),
(5, 'Oscar LeRey', 445521435, 'oscar.lerey@gmail.com'),
(6, 'Susana Martinez', 345432333, 'susana.martinez@gmail.com'),
(7, 'Carmelo Sanchez', 233312489, 'carmelo.sanchez@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deliveries`
--

CREATE TABLE `tbl_deliveries` (
  `delivery_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `biker_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_deliveries`
--

INSERT INTO `tbl_deliveries` (`delivery_id`, `order_id`, `biker_id`, `bill_id`) VALUES
(1, 5, 1, 1),
(2, 9, 2, 2),
(3, 10, 3, 3),
(4, 11, 4, 4),
(5, 12, 1, 5),
(6, 13, 2, 6),
(7, 14, 3, 7),
(8, 15, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_delivery_biker`
--

CREATE TABLE `tbl_delivery_biker` (
  `biker_id` int(11) NOT NULL,
  `biker_name` varchar(100) NOT NULL,
  `biker_phone` int(11) NOT NULL,
  `availabale` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_delivery_biker`
--

INSERT INTO `tbl_delivery_biker` (`biker_id`, `biker_name`, `biker_phone`, `availabale`) VALUES
(1, 'Jesus Menor', 333409885, 1),
(2, 'Juan Manel', 433823489, 1),
(3, 'Albert Zist', 345523421, 1),
(4, 'Caroline Perrez', 456211262, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_historic_price`
--

CREATE TABLE `tbl_historic_price` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price` float(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_historic_price`
--

INSERT INTO `tbl_historic_price` (`product_id`, `product_name`, `order_id`, `price`) VALUES
(2, 'BBQ BACON CHEESEBURGER', 5, 24.00),
(2, 'NEW YORK CHEESECAKE', 5, 10.00),
(1, 'GRILLED NORWEGIAN SALMON', 16, 9.00),
(3, 'BURGER', 9, 27.00),
(3, 'NEW YORK CHEESECAKE', 9, 15.00),
(2, 'TUPELO CHICKEN TENDERS', 10, 12.50),
(2, 'HOT FUDGE BROWNIE', 10, 9.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu_products`
--

CREATE TABLE `tbl_menu_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_description` varchar(300) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_price` float(9,2) NOT NULL,
  `product_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_menu_products`
--

INSERT INTO `tbl_menu_products` (`product_id`, `product_name`, `product_description`, `product_category`, `product_price`, `product_date`) VALUES
(1, 'BURGER', 'The burger that started it all! 1/2-lb fresh steak burger, with smoked bacon, cheddar cheese, crispy onion ring, leaf lettuce and vine-ripened tomato, served with our signature steak sauce on the side.', 'main dish', 9.00, '2020-01-01'),
(2, 'TUPELO CHICKEN TENDERS', 'Crispy chicken tenders served with seasoned fries, honey mustard and our house-made barbecue sauce.', 'main-dish', 6.25, '2020-01-01'),
(3, 'HOT FUDGE MILKSHAKE', 'Jim Beam Bourbon, Myers’s Dark Rum, vanilla bean ice cream, dark chocolate sauce and a hint of coconut, finished with white chocolate whipped cream, a chocolate & toffee-almond rim and a fresh strawberry.', 'dessert', 3.25, '2020-01-01'),
(4, 'HOMEMADE APPLE COBBLER', 'Old-fashioned apple cobbler with warm Granny Smith apples, baked until golden brown and topped with vanilla bean ice cream, chopped walnuts and caramel sauce.', 'dessert', 4.55, '2020-01-01'),
(5, 'BBQ BACON CHEESEBURGER', '1/2-lb fresh steak burger, seasoned and seared with a signature spice blend, topped with house-made barbecue sauce, crispy shoestring onions, cheddar cheese, smoked bacon, leaf lettuce and vine-ripened tomato.', 'main-dish', 12.00, '2020-01-02'),
(6, 'GRILLED NORWEGIAN SALMON', '8 oz. cedar-wrapped grilled salmon with herb butter and house-made barbecue sauce, served with mashed potatoes and fresh vegetables.', 'main-dish', 9.00, '2020-01-02'),
(7, 'HOT FUDGE BROWNIE', 'Warm chocolate brownie topped with vanilla bean ice cream, hot fudge, chopped walnuts, chocolate sprinkles, fresh whipped cream and a cherry.', 'dessert', 4.50, '2020-01-02'),
(8, 'NEW YORK CHEESECAKE', 'Rich and creamy NY-style cheesecake served with thin layers of chocolate and caramel sauce, finished with sprinkles of toffee-almond crunch.', 'dessert', 5.00, '2020-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address_id` int(100) NOT NULL,
  `order_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`order_id`, `customer_id`, `address_id`, `order_date_time`) VALUES
(5, 1, 1, '2020-01-01 11:29:00'),
(9, 2, 2, '2020-01-01 09:34:00'),
(10, 3, 3, '2020-01-01 13:28:00'),
(11, 4, 4, '2020-01-01 18:15:00'),
(12, 5, 5, '2020-01-01 07:32:00'),
(13, 6, 6, '2020-01-01 09:37:00'),
(14, 7, 7, '2020-01-01 14:00:00'),
(15, 1, 1, '2020-01-02 12:24:41'),
(16, 1, 8, '2020-01-08 09:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_order`
--

CREATE TABLE `tbl_products_order` (
  `product_order_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_products_order`
--

INSERT INTO `tbl_products_order` (`product_order_id`, `order_id`, `product_id`, `product_qty`) VALUES
(13, 5, 5, 2),
(14, 5, 8, 2),
(15, 16, 6, 1),
(16, 9, 1, 3),
(17, 9, 8, 3),
(18, 10, 2, 2),
(19, 10, 7, 2);

--
-- Triggers `tbl_products_order`
--
DELIMITER $$
CREATE TRIGGER `trg_historic` AFTER INSERT ON `tbl_products_order` FOR EACH ROW INSERT INTO tbl_historic_price (product_id, product_name,order_id, price)
SELECT po.product_qty, mp.product_name, po.order_id,(po.product_qty*mp.product_price) AS price
FROM tbl_products_order AS po
INNER JOIN tbl_menu_products AS mp
ON po.product_id=mp.product_id
ORDER BY po.product_order_id DESC LIMIT 1
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `Total_quantity_per_Product`
-- (See below for the actual view)
--
CREATE TABLE `Total_quantity_per_Product` (
`Product` varchar(100)
,`Total_Quantity` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Total_Revenue`
-- (See below for the actual view)
--
CREATE TABLE `Total_Revenue` (
`TOTAL_Revenue` double(19,2)
);

-- --------------------------------------------------------

--
-- Structure for view `Bills_Products`
--
DROP TABLE IF EXISTS `Bills_Products`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Bills_Products`  AS  select `b`.`bill_id` AS `No`,`menu`.`product_name` AS `Product`,`prod`.`product_qty` AS `Qty`,`prod`.`product_qty` * `menu`.`product_price` AS `Price` from (((`tbl_bills` `b` join `tbl_deliveries` `Deli` on(`b`.`bill_id` = `Deli`.`bill_id`)) join `tbl_products_order` `prod` on(`Deli`.`order_id` = `prod`.`order_id`)) join `tbl_menu_products` `menu` on(`prod`.`product_id` = `menu`.`product_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `Customers_Details`
--
DROP TABLE IF EXISTS `Customers_Details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Customers_Details`  AS  select `cst`.`customer_id` AS `Customer_No`,`cst`.`customer_name` AS `Name`,`cst`.`customer_phone` AS `Phone`,`cst`.`customer_email` AS `Email`,`addr`.`address_city` AS `City`,`addr`.`address_street_name` AS `Street_Name`,`addr`.`address_street_number` AS `Street_Number` from (`tbl_customers` `cst` join `tbl_addresses` `addr` on(`cst`.`customer_id` = `addr`.`customer_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `Customer_Total_Spent_History`
--
DROP TABLE IF EXISTS `Customer_Total_Spent_History`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Customer_Total_Spent_History`  AS  select `TOTAL`.`cus` AS `Customer`,`TOTAL`.`X` AS `TOTAL` from (select `Orders`.`Custumer_Name` AS `Custumer_Name`,sum(`Orders`.`Price`) AS `X`,`Orders`.`Custumer_Name` AS `cus` from `Orders` group by `Orders`.`No`) `TOTAL` ;

-- --------------------------------------------------------

--
-- Structure for view `Deliveries`
--
DROP TABLE IF EXISTS `Deliveries`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Deliveries`  AS  select `ord`.`order_date_time` AS `Order_Date`,`dlv`.`delivery_id` AS `Delivery_No`,`dlv`.`order_id` AS `Order_No`,`bill`.`bill_id` AS `Bill_No`,`bike`.`biker_name` AS `Biker_Name`,`bike`.`biker_phone` AS `Biker_Phone`,`cs`.`customer_name` AS `Customer_Name`,`cs`.`customer_phone` AS `Custoimer_Phone`,`addr`.`address_city` AS `City`,`addr`.`address_street_name` AS `Street_Name`,`addr`.`address_street_number` AS `Street_Number` from (((((`tbl_deliveries` `dlv` join `tbl_orders` `ord` on(`dlv`.`order_id` = `ord`.`order_id`)) join `tbl_delivery_biker` `bike` on(`dlv`.`biker_id` = `bike`.`biker_id`)) join `tbl_bills` `bill` on(`dlv`.`bill_id` = `bill`.`bill_id`)) join `tbl_customers` `cs` on(`ord`.`customer_id` = `cs`.`customer_id`)) join `tbl_addresses` `addr` on(`cs`.`customer_id` = `addr`.`customer_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `Orders`
--
DROP TABLE IF EXISTS `Orders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Orders`  AS  select `ord`.`order_id` AS `No`,`ord`.`order_date_time` AS `Date`,`cs`.`customer_name` AS `Custumer_Name`,`cs`.`customer_phone` AS `Customer_Phone`,`op`.`product_qty` AS `Quantity`,`prod`.`product_name` AS `Product_Name`,`op`.`product_qty` * `prod`.`product_price` AS `Price`,`addr`.`address_city` AS `City`,`addr`.`address_street_name` AS `Street_Name`,`addr`.`address_street_number` AS `Street_Number` from ((((`tbl_orders` `ord` join `tbl_customers` `cs` on(`ord`.`customer_id` = `cs`.`customer_id`)) join `tbl_addresses` `addr` on(`addr`.`customer_id` = `cs`.`customer_id`)) join `tbl_products_order` `op` on(`ord`.`order_id` = `op`.`order_id`)) join `tbl_menu_products` `prod` on(`op`.`product_id` = `prod`.`product_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `Orders_Total`
--
DROP TABLE IF EXISTS `Orders_Total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Orders_Total`  AS  select `P`.`n` AS `No`,`P`.`c` AS `Customer_Name`,`P`.`X` AS `Total` from (select `Orders`.`Custumer_Name` AS `Custumer_Name`,sum(`Orders`.`Price`) AS `X`,`Orders`.`Custumer_Name` AS `c`,`Orders`.`No` AS `n` from `Orders` group by `Orders`.`No`) `P` ;

-- --------------------------------------------------------

--
-- Structure for view `Revenue_per_Product`
--
DROP TABLE IF EXISTS `Revenue_per_Product`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Revenue_per_Product`  AS  select `Revenue`.`product` AS `Product`,`Revenue`.`X` AS `Total` from (select `Orders`.`Product_Name` AS `Product_Name`,sum(`Orders`.`Price`) AS `X`,`Orders`.`Product_Name` AS `product` from `Orders` group by `Orders`.`Product_Name`) `Revenue` ;

-- --------------------------------------------------------

--
-- Structure for view `Total_quantity_per_Product`
--
DROP TABLE IF EXISTS `Total_quantity_per_Product`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Total_quantity_per_Product`  AS  select `Quantity`.`product` AS `Product`,`Quantity`.`X` AS `Total_Quantity` from (select `Orders`.`Product_Name` AS `Product_Name`,sum(`Orders`.`Quantity`) AS `X`,`Orders`.`Product_Name` AS `product` from `Orders` group by `Orders`.`Product_Name`) `Quantity` ;

-- --------------------------------------------------------

--
-- Structure for view `Total_Revenue`
--
DROP TABLE IF EXISTS `Total_Revenue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Total_Revenue`  AS  select `T`.`X` AS `TOTAL_Revenue` from (select `Orders_Total`.`Total` AS `Total`,sum(`Orders_Total`.`Total`) AS `X` from `Orders_Total`) `T` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_addresses`
--
ALTER TABLE `tbl_addresses`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tbl_bills`
--
ALTER TABLE `tbl_bills`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_deliveries`
--
ALTER TABLE `tbl_deliveries`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `order_id` (`order_id`,`biker_id`,`bill_id`);

--
-- Indexes for table `tbl_delivery_biker`
--
ALTER TABLE `tbl_delivery_biker`
  ADD PRIMARY KEY (`biker_id`);

--
-- Indexes for table `tbl_historic_price`
--
ALTER TABLE `tbl_historic_price`
  ADD KEY `product_id` (`product_id`,`order_id`);

--
-- Indexes for table `tbl_menu_products`
--
ALTER TABLE `tbl_menu_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `tbl_products_order`
--
ALTER TABLE `tbl_products_order`
  ADD PRIMARY KEY (`product_order_id`),
  ADD KEY `order_id` (`order_id`,`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_addresses`
--
ALTER TABLE `tbl_addresses`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_bills`
--
ALTER TABLE `tbl_bills`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_deliveries`
--
ALTER TABLE `tbl_deliveries`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_delivery_biker`
--
ALTER TABLE `tbl_delivery_biker`
  MODIFY `biker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_menu_products`
--
ALTER TABLE `tbl_menu_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_products_order`
--
ALTER TABLE `tbl_products_order`
  MODIFY `product_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
