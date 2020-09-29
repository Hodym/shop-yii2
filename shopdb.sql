-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 29 2020 г., 18:38
-- Версия сервера: 5.6.43
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shopdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `keywords`, `description`) VALUES
(1, 0, 'Sportswear', NULL, NULL),
(2, 0, 'Mens', NULL, NULL),
(3, 0, 'Womens', NULL, NULL),
(4, 1, 'Nike', NULL, NULL),
(5, 1, 'Under Armour', 'under armour', ''),
(6, 1, 'Adidas', NULL, NULL),
(7, 1, 'Puma', NULL, NULL),
(8, 1, 'ASICS', NULL, NULL),
(9, 2, 'Fendi', NULL, NULL),
(10, 2, 'Guess', NULL, NULL),
(11, 2, 'Valentino', NULL, NULL),
(12, 2, 'Dior', '', ''),
(13, 2, 'Versace', NULL, NULL),
(14, 2, 'Armani', NULL, NULL),
(15, 2, 'Prada', NULL, NULL),
(16, 2, 'Dolce and Gabbana', NULL, NULL),
(17, 2, 'Chanel', NULL, NULL),
(18, 2, 'Gucci', NULL, NULL),
(19, 3, 'Fendi', NULL, NULL),
(20, 3, 'Guess', NULL, NULL),
(21, 3, 'Valentino', NULL, NULL),
(22, 3, 'Dior', NULL, NULL),
(23, 3, 'Versace', NULL, NULL),
(24, 0, 'Kids', NULL, NULL),
(25, 0, 'Fashion', NULL, NULL),
(26, 0, 'Households', NULL, NULL),
(27, 0, 'Interiors', NULL, NULL),
(28, 0, 'Clothing', NULL, NULL),
(29, 0, 'Bags', 'сумки ключевики...', 'сумки описание...'),
(30, 0, 'Shoes', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `reviews` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `product_id`, `username`, `email`, `created_at`, `updated_at`, `reviews`, `status`) VALUES
(5, 5, 'rgyf', 'tfhdt@egse.gdfg', 2147483647, 2147483647, 'tdehtdhdtrdr', 1),
(6, 5, 'rgyftghtr', 'tfhdt@egse.gdfgtyr', 1601055781, 1601055781, 'tdehtdhdtrdrfttttttttttttttthrt tdehtdhdtrdrfttttttttttttttthrt tdehtdhdtrdrfttttttttttttttthrt', 1),
(7, 5, 'rgyftghtrng', 'tfhdt@egse.gdfgtyrg', 1601055884, 1601055884, 'tdehtdhdtrdrfttttttttttttttthrt tdehtdhdtrdrfttttttttttttttthrt tdehtdhdtrdrfttttttttttttttthrt', 1),
(10, 5, 'rgyftghtrng', 'tfhdt@egse.gdfgtyrgk', 1601055994, 1601055994, 'tdehtdhdtrdrfttttttttttttttthrt tdehtdhdtrdrfttttttttttttttthrt tdehtdhdtrdrfttttttttttttttthrt', 0),
(11, 5, 'rgyftghtrng', 'tfhdt@egse.gdfgtyrgk', 1601056150, 1601056150, 'tdehtdhdtrdrfttttttttttttttthrt tdehtdhdtrdrfttttttttttttttthrt tdehtdhdtrdrfttttttttttttttthrt ggggfghgjfgjfgjf', 0),
(12, 10, 'Dig', 'gfn@fgh.hf', 1601056279, 1601056279, 'Сумка имеет прорезной карман на молнии, а также два небольших накладных кармана для хранения мобильного телефона, разных портативных гаджетов и мелочей. На лицевой стороне модели есть узкий прорезной карман на \"молнии\". На тыльной стороне модели есть прорезной карман на \"молнии\". Особенностью данной модели является возможность изменения ее формы при помощи дополнительной внешней застежки-молнии.', 0),
(13, 10, 'Dig', 'gfn@fgh.hf', 1601056410, 1601056410, 'Сумка имеет прорезной карман на молнии, а также два небольших накладных кармана для хранения мобильного телефона, разных портативных гаджетов и мелочей. На лицевой стороне модели есть узкий прорезной карман на \"молнии\". На тыльной стороне модели есть прорезной карман на \"молнии\". Особенностью данной модели является возможность изменения ее формы при помощи дополнительной внешней застежки-молнии.\r\nСумка имеет прорезной карман на молнии, а также два небольших накладных кармана для хранения мобильного телефона, разных портативных гаджетов и мелочей. На лицевой стороне модели есть узкий прорезной карман на \"молнии\". На тыльной стороне модели есть прорезной карман на \"молнии\". Особенностью данной модели является возможность изменения ее формы при помощи дополнительной внешней застежки-молнии.', 1),
(14, 10, 'Dig', 'gfn@fgh.hf', 1601056584, 1601056584, 'арман на \"молнии\". На тыльной стороне модели есть прорезной карман на \"молнии\". Особенностью данной модели является возможность изменения ее формы при помощи дополнительной внешней застежки-молнии.', 0),
(15, 10, 'Dig', 'gfn@fgh.hf', 1601056603, 1601056603, 'арман на \"молнии\". На тыльной стороне м\r\nодели есть прорезной карман на \"молнии\". Особенностью данной моде\r\nли является возможность изменения ее ф\r\nормы при помо\r\nщи дополнительной внешней застежки-молнии.', 0),
(16, 10, 'Dig', 'gfn@fgh.hf', 1601057180, 1601057180, 'арман на \"молнии\". На тыльной стороне м\r\nодели есть прорезной карман \r\nна \"молнии\". Особенностью данной моде\r\nли является возможность \r\nизменения ее ф\r\nормы при помо\r\nщи дополнительной внешней застежки-молнии.', 0),
(17, 10, 'Dig', 'gfn@fgh.hf', 1601057709, 1601057709, 'арман на \"молнии\". На тыльной стороне м\r\nодели есть прорезной карман \r\nна \"молнии\". Особенностью данной моде\r\nли является возможность \r\nизменения ее ф\r\nормы при помо\r\nщи дополнительной внешней застежки-молнии.', 0),
(18, 5, 'hhnhgn', 'hngh@rfgdr.gfgdg', 1601059891, 1601059891, 'Блузка Kira Plastinina 17-16-17453-SM-29 S', 0),
(19, 5, 'gdhdgfhdf', 'fhfd@gdfg.rsg', 1601062969, 1601062969, 'fdhdfh   fdddddddddddddddddddd ffffffffffffffffffffffff ffffffffffffffffffffffffffhhhhhhhhhhhhhhh hhhhhhh', 0),
(20, 2, 'hodym', 'hodimchukdmitriy@gmail.com', 1601065681, 1601065681, 'Изделие с низкой посадкой. Джинсы дополнены прорезными карманами спереди и накладными карманами сзади. Изделие декорировано эффектом потертости, вареным эффектом и необычными швами. ', 0),
(21, 2, 'hodym', 'hodimchukdmitriy@gmail.com', 1601065703, 1601065703, 'MR520 – амбициозный восточноевропейский бренд, который предлагает качественную и стильную одежду, сделанную специально для молодых людей, следящих за своим внешним видом. Женские джинсы фасона boyfriend fit (в переводе с англ. – \"джинсы моего парня\"). Модель с зауженными штанинами. Застегивается на пуговицы. Изделие с низкой посадкой. Джинсы дополнены прорезными карманами спереди и накладными карманами сзади. Изделие декорировано эффектом потертости, вареным эффектом и необычными швами. ', 1),
(22, 2, 'hodym', 'hodimchukdmitriy@gmail.com', 1601065719, 1601065719, 'MR520 – амбициозный восточноевропейский бренд, который предлагает качественную и стильную одежду, сделанную специально для молодых людей, следящих за своим внешним видом. Женские джинсы фасона boyfriend fit (в переводе с англ. – \"джинсы моего парня\").', 0),
(23, 2, 'hodym', 'hodimchukdmitriy@gmail.com', 1601065726, 1601065726, 'MR520 – амбициозный восточноевропейский бренд, который предлагает качественную и стильную одежду, сделанную специально для молодых людей, следящих за своим внешним видом. Женские джинсы фасона boyfriend fit (в переводе с англ. – \"джинсы моего парня\"). Модель с зауженными штанинами. Застегивается на пуговицы. Изделие с низкой посадкой. Джинсы дополнены прорезными карманами спереди и накладными карманами сзади. Изделие декорировано эффектом потертости, вареным эффектом и необычными швами. ', 0),
(24, 5, 'fdhfdh', 'fdb@fgdf.fdsf', 1601112272, 1601112272, 'fdddddddddddddddddddd ', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
(1, 'Products/Product7/dc231a.jpg', 7, 1, 'Product', '88e8648a33-1', ''),
(2, 'Products/Product9/d92de8.jpg', 9, 0, 'Product', '0cf62e4245-2', ''),
(3, 'Products/Product9/5d1f38.jpg', 9, 0, 'Product', '8e218b92c8-3', ''),
(4, 'Products/Product9/9ef8a1.jpg', 9, 0, 'Product', 'cacbb19985-4', ''),
(5, 'Products/Product9/fb510b.jpg', 9, 1, 'Product', '724de5d896-1', ''),
(6, 'Products/Product14/884540.jpg', 14, 0, 'Product', 'b9ac8a42fe-3', ''),
(7, 'Products/Product14/044630.jpg', 14, 0, 'Product', '5da3c2c670-2', ''),
(8, 'Products/Product14/04af8b.jpg', 14, 0, 'Product', '8bacd4b2b3-4', ''),
(9, 'Products/Product14/5ebe44.jpg', 14, 0, 'Product', 'db0500abca-5', ''),
(10, 'Products/Product14/670590.jpg', 14, 0, 'Product', '359a721899-6', ''),
(11, 'Products/Product14/26920c.jpg', 14, 0, 'Product', 'af77764f97-7', ''),
(12, 'Products/Product13/0fade0.jpg', 13, 1, 'Product', '17d0a5c4e8-1', ''),
(13, 'Products/Product13/24e195.jpg', 13, NULL, 'Product', 'a09fc9af3f-2', ''),
(14, 'Products/Product13/6e093b.jpg', 13, NULL, 'Product', 'e1642f2f97-3', ''),
(15, 'Products/Product13/6d63b4.jpg', 13, NULL, 'Product', 'ed571ab289-4', ''),
(16, 'Products/Product13/340711.jpg', 13, NULL, 'Product', '7d515ddc2a-5', ''),
(17, 'Products/Product14/709e0f.jpg', 14, 1, 'Product', 'be8dab5985-1', ''),
(18, 'Products/Product2/66213c.jpg', 2, 1, 'Product', '6a85c1c13f-1', ''),
(19, 'Products/Product2/477477.jpg', 2, NULL, 'Product', 'ee9af12db6-2', ''),
(20, 'Products/Product2/205bd1.jpg', 2, NULL, 'Product', 'c2501c7590-3', ''),
(21, 'Products/Product2/6504c2.jpg', 2, NULL, 'Product', 'eb5de9ffa1-4', ''),
(22, 'Products/Product2/cb8d49.jpg', 2, NULL, 'Product', 'c4cc6b24b1-5', '');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1597790219),
('m140622_111540_create_image_table', 1600717477),
('m140622_111545_add_name_to_image_table', 1600717477),
('m200811_130854_create_user_table', 1597790251),
('m200917_215429_create_order_table', 1600381378),
('m200917_224133_create_order_items_table', 1600382611),
('m200924_165459_create_comment_table', 1600966650),
('m200929_121425_alter_table_comment_add_column_status', 1601382148);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(10) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `created_at`, `updated_at`, `qty`, `sum`, `status`, `name`, `email`, `phone`, `address`) VALUES
(2, '2020-09-18 02:38:20', '2020-09-18 02:38:20', 6, 316, '1', 'Kola', 'kolan-tanzuet@fok.com', '555', 'Krayi'),
(3, '2020-09-18 02:52:11', '2020-09-18 02:52:11', 9, 462, '1', 'Kola', 'kolan-tanzuet@fok.com', 'kh,gjm,', '5272'),
(4, '2020-09-18 02:55:35', '2020-09-18 02:55:35', 9, 462, '0', 'Kola', 'kolan-tanzuet@fok.com', 'kh,gjm,', 'ftydjtntdy'),
(5, '2020-09-19 17:48:49', '2020-09-19 17:48:49', 6, 286, '0', 'Dima', 'testphp022@gmail.com', '48347542', 'fdngmfgn'),
(6, '2020-09-19 17:54:42', '2020-09-19 17:54:42', 6, 286, '0', 'Dima', 'testphp022@gmail.com', '48347542', 'fdngmfgn'),
(7, '2020-09-19 17:59:45', '2020-09-19 17:59:45', 6, 286, '0', 'Dima', 'testphp022@gmail.com', '48347542', 'fdngmfgn'),
(8, '2020-09-19 18:01:32', '2020-09-19 18:01:32', 8, 526, '0', 'Dmytriy', 'hodimchukdmitriy@gmail.com', '5465625', 'hfgjftgfg'),
(9, '2020-09-26 12:22:45', '2020-09-26 12:22:45', 5, 490, '0', 'Игор', 'khodimchukigor@gmail.com', 'віпавпва', 'аіпаравр');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `price`, `qty_item`, `sum_item`) VALUES
(1, 2, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(2, 2, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 2, 200),
(3, 2, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 3, 60),
(4, 3, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 2, 112),
(5, 3, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 2, 200),
(6, 3, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 4, 80),
(7, 3, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(8, 4, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 2, 112),
(9, 4, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 2, 200),
(10, 4, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 4, 80),
(11, 4, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(12, 5, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(13, 5, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(14, 5, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 3, 60),
(15, 5, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
(16, 6, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(17, 6, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(18, 6, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 3, 60),
(19, 6, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
(20, 7, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(21, 7, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(22, 7, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 3, 60),
(23, 7, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
(24, 8, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(25, 8, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(26, 8, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
(27, 8, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 5, 350),
(28, 9, 13, 'Сумка Michael Kors Bedford Красная', 89, 1, 89),
(29, 9, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(30, 9, 3, 'Блуза Mango 53005681-05 M Бежевая', 205, 1, 205),
(31, 9, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 2, 140);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `content`, `price`, `keywords`, `description`, `img`, `hit`, `new`, `sale`) VALUES
(1, 4, 'Джинсы Garcia 244/32/856 28-32 р Серо-синие', 'Великолепные джинсы винтажно-голубого цвета. Настоящая находка для любителей качественного денима.\n\nОсобенности:\n\n    Зауженные к низу\n    Пять карманов\n    Высококачественный деним\n    Высокая посадка (high fit)\n    Выгодно подчеркивают фигуру', 10, NULL, NULL, 'product1.jpg', '0', '0', '0'),
(2, 5, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', '<p>MR520 &ndash; амбициозный восточноевропейский бренд, который предлагает качественную и стильную одежду, сделанную специально для молодых людей, следящих за своим внешним видом. Женские джинсы фасона boyfriend fit (в переводе с англ. &ndash; &quot;джинсы моего парня&quot;). Модель с зауженными штанинами. Застегивается на пуговицы. Изделие с низкой посадкой. Джинсы дополнены прорезными карманами спереди и накладными карманами сзади. Изделие декорировано эффектом потертости, вареным эффектом и необычными швами.</p>\r\n', 56, '', '', 'product2.jpg', '1', '0', '1'),
(3, 9, 'Блуза Mango 53005681-05 M Бежевая', 'Испанский бренд модной одежды \"Mango\" родился в 1984 году в Барселоне, где и по сей день находится штаб-квартира компании. В том же городе появился и первый магазин — на улице Пасео де Грасия (Paseo de Gracia). Компания, основанная братьями Исааком и Нахманом Андиком (Isaac & Nahman Andic), очень быстро набрала популярность — всего лишь годом позднее был открыт магазин в другом городе, на этот раз в Валенсии. Одежда \"Mango\" отличается высоким качеством, приемлемой ценой, современным дизайном и неповторимым стилем.', 205, '', '', 'product3.jpg', '1', '1', '0'),
(4, 21, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', '\r\n\r\nTom Tailor Group — один из ведущих и быстро развивающихся Fashion холдингов германии и европы, продукция которого ориентирована на целевую аудиторию в возрасте от 0 до 60 лет.\r\n\r\nTom Tailor известен на рынке текстиля с 1962 года и до сих пор сохраняет стандарты немецкого качества. Tom Tailor предлагает повседневную одежду и аксессуары высокого качества для женщин, мужчин и детей.\r\n\r\nОдежда от Tom Tailor поможет создать активный повседневный образ с нотками элегантности.', 70, NULL, NULL, 'product4.jpg', '1', '0', '1'),
(5, 25, 'Блузка Kira Plastinina 17-16-17453-SM-29 S', NULL, 0, NULL, NULL, 'product5.jpg', '1', '0', '0'),
(6, 28, 'Кардиган Levi\'s Icy Grey Heather M', NULL, 100, NULL, NULL, 'product6.jpg', '1', '0', '0'),
(7, 28, 'Кардиган ONLY ON 15102048 M Black Tan/Partridg', '<p>Casual марка молодежной женской одежды ONLY является частью датской компании Bestseller AS. Изначально Bestseller занимался производством детской одежды, а в 1995 году появилась на свет марка ONLY. Популярность этой марки возрастала быстрыми темпами и теперь ONLY владеет 770 магазинами в более чем 40 странах мира. ONLY &mdash; бренд стильной молодежной одежды. Это бренд для тех, кто любит добиваться успеха и быть не таким, как все. Демократичные цены, модные модели, экологически чистые ткани делают одежду от ONLY сверхпопулярной.</p>\r\n', 0, '', '', 'no-image.png', '1', '1', '0'),
(8, 26, 'Брюки SK House 2211-1972кор L Коричневые', '<h1><strong><img alt=\"\" src=\"/upload/global/photo-1.jpg\" style=\"float:left; height:133px; margin:5px 10px; width:200px\" />SK House</strong></h1>\r\n\r\n<p><strong>Компания SK House</strong> &mdash; это украинский производитель модной женской одежды с безупречной репутацией и тысячами поклонников по всему СНГ. SK House изготавливает качественный и долговечный товар, созданный из высококачественных тканей. Компания использует современные методы пошива и, изучая текущие мировые тенденции и локальные требования покупателей, создает модели, которые не задерживаются на полках длительное время и быстро раскупаются во всех странах.</p>\r\n', 199, '', '', 'no-image.png', '0', '1', '1'),
(9, 26, 'Брюки Kira Plastinina 17-07-17418-FL-58 L', '', 49, '', '', 'product1.jpg', '0', '0', '0'),
(10, 29, 'Сумка GUSSACI TUGUS13A060-3-10', 'Простота, инновационный стиль бренда, высококачественные требования к продукции, благодаря этому GUSSACI Italy пользуется высокой репутацией во многих странах Европы. Превосходное качество, отличный дизайн, соответствующие цены делают \"Гуссачи\" модным и популярным!\r\n\r\nОсобенности:\r\n\r\nКоличество основных отделений: 1. Сумка имеет прорезной карман на молнии, а также два небольших накладных кармана для хранения мобильного телефона, разных портативных гаджетов и мелочей. На лицевой стороне модели есть узкий прорезной карман на \"молнии\". На тыльной стороне модели есть прорезной карман на \"молнии\". Особенностью данной модели является возможность изменения ее формы при помощи дополнительной внешней застежки-молнии. Сумка имеет 2 ручки для переноса на локте или в руке. Их длина не регулируется и составляет 45 см, а высота от крайней точки ручки до сумки — 16 см. В комплект к изделию прилагается съемный плечевой ремень. Его длина может регулироваться при помощи металлической пряжки от 78 до 137.5 см. Сумка закрывается при помощи застежки-молнии.\r\n\r\nМатериал подкладки: плотная ткань.\r\nМатериал сумки: кожезаменитель.\r\nЦвет фурнитуры: золото.\r\nРазмеры сумки: 26 х 25 х 10.5 см', 15, 'Сумка', 'Сумка описание', 'product3.jpg', '0', '1', '0'),
(11, 29, 'Сумка Michael Kors Jet Set Travel Нежно-розовая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 200, NULL, NULL, 'no-image.png', '0', '0', '1'),
(12, 29, 'Сумка Michael Kors Selma Золотистая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 205, NULL, NULL, 'product5.jpg', '0', '0', '0'),
(13, 29, 'Сумка Michael Kors Bedford Красная', '<p><img alt=\"\" src=\"/upload/global/Steve.jpg\" style=\"float:right; height:98px; margin:5px; width:200px\" />Особенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом. Модели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.</p>\r\n', 89, '', '', 'no-image.png', '0', '1', '1'),
(14, 29, 'Сумка Michael Kors JS Travel Светло-розовая', '<p>Особенность стиля <strong>Michael Kors</strong> заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают <sup>общий</sup> стиль человека с безупречным вкусом. Модели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.</p>\r\n', 139, '', '', 'no-image.png', '1', '0', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(2, 'hodym', 'RO-uUYuD7aVW4YHsiKh1papybObD_Teq', '$2y$13$BtQagP1Gm5ZLOY0pEOtGWu1GVofCdaewXWegnRN2VrhprcsY1oN96', NULL, 'hodimchukdmitriy@gmail.com', 10, 1597790497, 1597790510, '6ytAlb-d6YhJQ6pXxBqoYZTgXDh76yvn_1597790497'),
(3, 'hgjfgfjg', 'TriMvUu9dvX087VRfuAvZbX90BJENogQ', '$2y$13$vkgHuFf.iWVqUlO6/02FRegbnPaU8qKil/wAn5QZmA7vXecw1t7ki', NULL, 'fghfgh@fdf.gfb', 10, 1600944288, 1600944597, 'ogXeQEuRuVbQsEx2c7pSBxZG__FHbkfW_1600944288');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
