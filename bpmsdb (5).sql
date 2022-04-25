-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 27 2021 г., 11:31
-- Версия сервера: 10.4.8-MariaDB
-- Версия PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) CHARACTER SET utf8 DEFAULT NULL,
  `UserName` char(50) CHARACTER SET utf8 DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Password` varchar(200) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`) VALUES
(1, 'GulmiaKurmanyaz', 'admin', 87754453006, 'gulmiramua@gmail.com', 'f925916e2754e5e03f75dd58a5733251');

-- --------------------------------------------------------

--
-- Структура таблицы `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` int(80) DEFAULT NULL,
  `Name` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `AptTime` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `Services` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Status` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`) VALUES
(1, 261064124, 'Аружан', 'bluejaysaru@gmail.com', 87474563232, '7/27/2020', '4:00pm', 'Ежедневный мэйкап', '2019-07-26 04:48:25', 'Accepted', '1'),
(2, 985645887, 'мадина Т', 'kalmanov@gmail.com', 87028046636, '7/29/2020', '4:30pm', 'Услуги визажиста на выезд', '2019-07-26 05:04:38', 'Rejected', '2'),
(9, 988771671, 'Алия Майдиева', 'aidana553@gmail.com', 8775747569, '11/30/2020', '1:00am', 'Свадебный мэйкап ', '2020-11-29 16:05:53', 'нехватка времени', '2'),
(12, 294486026, 'Асель', 'Darasel@gmail.com', 7754485656, '12/8/2020', '1:00am', 'Гримм', '2020-12-05 19:06:37', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male') CHARACTER SET utf8 DEFAULT NULL,
  `Details` mediumtext CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`) VALUES
(6, 'Акбота Алпамыссова', 'aqeoubeota@gmail.com', 7028045865, 'Female', 'Клиент с абонементом'),
(7, 'Акнур Сарсенова', 'sarsenov@gmail.com', 7027474006, 'Female', 'Частый клиент'),
(8, 'Темиркызы Дильназ', 'temirkyzy03@gmail.com', 7754453009, 'Female', 'по четвергам на специальный мэйкап');

-- --------------------------------------------------------

--
-- Структура таблицы `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`) VALUES
(1, 2, 2, 1156502),
(2, 1, 4, 1156503),
(20, 6, 3, 248584389),
(21, 6, 4, 248584389);

-- --------------------------------------------------------

--
-- Структура таблицы `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `PageTitle` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `PageDescription` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`) VALUES
(1, 'aboutus', 'О нас', 'Нашим главным приоритетом является соответсвие качества и цены услуг. Мы обеспечим лучшие услуги визажиста в городе и лучший результат. Так же мы предалагем разнообразие услуг..', NULL, NULL),
(2, 'contactus', 'связаться с нами', 'Абулхайрхана 97 ', 'gulmiramua@gmail.com', 7754453006);

-- --------------------------------------------------------

--
-- Структура таблицы `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Cost` varchar(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`) VALUES
(1, 'Ежедневный мэйкап', '4000 тг'),
(2, 'Свадебный мэйкап ', '7000 тг'),
(3, 'Гримм', '5000 тг'),
(4, 'Услуги визажисты на выезд', '8000 тг'),
(5, 'Свадебный мэйкап на двоих', '13000 тг');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
