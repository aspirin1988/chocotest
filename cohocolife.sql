-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 09 2016 г., 12:50
-- Версия сервера: 5.7.13-0ubuntu0.16.04.2
-- Версия PHP: 7.0.8-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cohocolife`
--

-- --------------------------------------------------------

--
-- Структура таблицы `data`
--

CREATE TABLE `data` (
  `id` int(10) UNSIGNED NOT NULL,
  `id-aktsii` int(11) NOT NULL,
  `data-nachala-aktsii` int(11) NOT NULL,
  `data-okonchaniya` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nazvanie-aktsii` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `data`
--

INSERT INTO `data` (`id`, `id-aktsii`, `data-nachala-aktsii`, `data-okonchaniya`, `nazvanie-aktsii`, `status`) VALUES
(1, 17, 1303516800, '29-04-2011', 'skidka-60%-na-firmenniy-kofe-i-desert-crepe-suzette-v-kofeyne-black-berry', 1),
(2, 18, 1303171200, '24-04-2011', 'sdelay-shag-vpered---nastoyashchiy-tantsevalniy-battl-v-trekh-metrakh-ot-tebya', 0),
(3, 19, 1304121600, '03-05-2011', 'idealniy-manikyur-na-3-nedeli-bez-korrektsii', 0),
(4, 22, 1304985600, '13-05-2011', 'meksikanskiy-uzhin-na-medeo-s-60%-skidkoy', 1),
(5, 23, 1304380800, '06-05-2011', 'polirovka-kuzova-+-khimchistka-salona-so-skidkoy-60%', 1),
(6, 24, 1304121600, '30-05-2011', 'v-otpusk-k-moryu-nalegke', 0),
(7, 1, 1304121600, '30-05-2011', 'byt-zvezdoy---eto-professiya!', 0),
(8, 26, 1304294400, '16-05-2011', 'zhivi-v-garmonii-i-radosti', 1),
(9, 28, 1304640000, '10-05-2011', 'laminirovanie-volos-so-skidkoy-60%-v-salone-krasoty-gaziza', 0),
(10, 31, 1305072000, '11-06-2011', 'ochen-vkusnoe-predlozhenie', 0),
(11, 17, 1303516800, '29-04-2011', 'skidka-60%-na-firmenniy-kofe-i-desert-crepe-suzette-v-kofeyne-black-berry', 1),
(12, 18, 1303171200, '24-04-2011', 'sdelay-shag-vpered-nastoyashchiy-tantsevalniy-battl-v-trekh-metrakh-ot-tebya', 0),
(13, 19, 1304121600, '03-05-2011', 'idealniy-manikyur-na-3-nedeli-bez-korrektsii', 0),
(14, 22, 1304985600, '13-05-2011', 'meksikanskiy-uzhin-na-medeo-s-60%-skidkoy', 1),
(15, 23, 1304380800, '06-05-2011', 'polirovka-kuzova-+-khimchistka-salona-so-skidkoy-60%', 1),
(16, 24, 1304121600, '30-05-2011', 'v-otpusk-k-moryu-nalegke', 0),
(17, 25, 1304121600, '30-05-2011', 'byt-zvezdoy-eto-professiya!', 0),
(18, 26, 1304294400, '16-05-2011', 'zhivi-v-garmonii-i-radosti', 1),
(19, 28, 1304640000, '10-05-2011', 'laminirovanie-volos-so-skidkoy-60%-v-salone-krasoty-gaziza', 0),
(20, 31, 1305072000, '11-06-2011', 'ochen-vkusnoe-predlozhenie', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `data1`
--

CREATE TABLE `data1` (
  `id` int(10) UNSIGNED NOT NULL,
  `id-aktsii` int(11) NOT NULL,
  `data-nachala-aktsii` int(11) NOT NULL,
  `data-okonchaniya` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nazvanie-aktsii` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `data1`
--

INSERT INTO `data1` (`id`, `id-aktsii`, `data-nachala-aktsii`, `data-okonchaniya`, `nazvanie-aktsii`, `status`) VALUES
(1, 17, 1303516800, '29-04-2011', 'skidka-60%-na-firmenniy-kofe-i-desert-crepe-suzette-v-kofeyne-black-berry', 1),
(2, 18, 1303171200, '24-04-2011', 'sdelay-shag-vpered-nastoyashchiy-tantsevalniy-battl-v-trekh-metrakh-ot-tebya', 0),
(3, 19, 1304121600, '03-05-2011', 'idealniy-manikyur-na-3-nedeli-bez-korrektsii', 0),
(4, 22, 1304985600, '13-05-2011', 'meksikanskiy-uzhin-na-medeo-s-60%-skidkoy', 1),
(5, 23, 1304380800, '06-05-2011', 'polirovka-kuzova-+-khimchistka-salona-so-skidkoy-60%', 1),
(6, 24, 1304121600, '30-05-2011', 'v-otpusk-k-moryu-nalegke', 0),
(7, 25, 1304121600, '30-05-2011', 'byt-zvezdoy-eto-professiya!', 0),
(8, 26, 1304294400, '16-05-2011', 'zhivi-v-garmonii-i-radosti', 1),
(9, 28, 1304640000, '10-05-2011', 'laminirovanie-volos-so-skidkoy-60%-v-salone-krasoty-gaziza', 0),
(10, 31, 1305072000, '11-06-2011', 'ochen-vkusnoe-predlozhenie', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `data2`
--

CREATE TABLE `data2` (
  `id` int(10) UNSIGNED NOT NULL,
  `id-aktsii` int(11) NOT NULL,
  `data-nachala-aktsii` int(11) NOT NULL,
  `data-okonchaniya` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nazvanie-aktsii` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `data2`
--

INSERT INTO `data2` (`id`, `id-aktsii`, `data-nachala-aktsii`, `data-okonchaniya`, `nazvanie-aktsii`, `status`) VALUES
(1, 17, 1303516800, '29-04-2011', 'skidka-60%-na-firmenniy-kofe-i-desert-crepe-suzette-v-kofeyne-black-berry', 1),
(2, 18, 1303171200, '24-04-2011', 'sdelay-shag-vpered-nastoyashchiy-tantsevalniy-battl-v-trekh-metrakh-ot-tebya', 0),
(3, 19, 1304121600, '03-05-2011', 'idealniy-manikyur-na-3-nedeli-bez-korrektsii', 0),
(4, 22, 1304985600, '13-05-2011', 'meksikanskiy-uzhin-na-medeo-s-60%-skidkoy', 1),
(5, 23, 1304380800, '06-05-2011', 'polirovka-kuzova-+-khimchistka-salona-so-skidkoy-60%', 1),
(6, 24, 1304121600, '30-05-2011', 'v-otpusk-k-moryu-nalegke', 0),
(7, 25, 1304121600, '30-05-2011', 'byt-zvezdoy-eto-professiya!', 0),
(8, 26, 1304294400, '16-05-2011', 'zhivi-v-garmonii-i-radosti', 1),
(9, 28, 1304640000, '10-05-2011', 'laminirovanie-volos-so-skidkoy-60%-v-salone-krasoty-gaziza', 0),
(10, 31, 1305072000, '11-06-2011', 'ochen-vkusnoe-predlozhenie', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `data3`
--

CREATE TABLE `data3` (
  `id` int(10) UNSIGNED NOT NULL,
  `id-aktsii` int(11) NOT NULL,
  `data-nachala-aktsii` int(11) NOT NULL,
  `data-okonchaniya` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nazvanie-aktsii` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `data3`
--

INSERT INTO `data3` (`id`, `id-aktsii`, `data-nachala-aktsii`, `data-okonchaniya`, `nazvanie-aktsii`, `status`) VALUES
(1, 17, 1303516800, '29-04-2011', 'skidka-60%-na-firmenniy-kofe-i-desert-crepe-suzette-v-kofeyne-black-berry"', 1),
(2, 18, 1303171200, '24-04-2011', 'sdelay-shag-vpered-nastoyashchiy-tantsevalniy-battl-v-trekh-metrakh-ot-tebya"', 0),
(3, 19, 1304121600, '03-05-2011', 'idealniy-manikyur-na-3-nedeli-bez-korrektsii"', 0),
(4, 22, 1304985600, '13-05-2011', 'meksikanskiy-uzhin-na-medeo-s-60%-skidkoy"', 1),
(5, 23, 1304380800, '06-05-2011', 'polirovka-kuzova-+-khimchistka-salona-so-skidkoy-60%"', 1),
(6, 24, 1304121600, '30-05-2011', 'v-otpusk-k-moryu-nalegke"', 0),
(7, 25, 1304121600, '30-05-2011', 'byt-zvezdoy-eto-professiya!"', 0),
(8, 26, 1304294400, '16-05-2011', 'zhivi-v-garmonii-i-radosti"', 1),
(9, 28, 1304640000, '10-05-2011', 'laminirovanie-volos-so-skidkoy-60%-v-salone-krasoty-gaziza"', 0),
(10, 31, 1305072000, '11-06-2011', 'ochen-vkusnoe-predlozhenie"', 0),
(11, 17, 1303516800, '29-04-2011', 'skidka-60%-na-firmenniy-kofe-i-desert-crepe-suzette-v-kofeyne-black-berry', 1),
(12, 18, 1303171200, '24-04-2011', 'sdelay-shag-vpered-nastoyashchiy-tantsevalniy-battl-v-trekh-metrakh-ot-tebya', 0),
(13, 19, 1304121600, '03-05-2011', 'idealniy-manikyur-na-3-nedeli-bez-korrektsii', 0),
(14, 22, 1304985600, '13-05-2011', 'meksikanskiy-uzhin-na-medeo-s-60%-skidkoy', 1),
(15, 23, 1304380800, '06-05-2011', 'polirovka-kuzova-+-khimchistka-salona-so-skidkoy-60%', 1),
(16, 24, 1304121600, '30-05-2011', 'v-otpusk-k-moryu-nalegke', 0),
(17, 25, 1304121600, '30-05-2011', 'byt-zvezdoy-eto-professiya!', 0),
(18, 26, 1304294400, '16-05-2011', 'zhivi-v-garmonii-i-radosti', 1),
(19, 28, 1304640000, '10-05-2011', 'laminirovanie-volos-so-skidkoy-60%-v-salone-krasoty-gaziza', 0),
(20, 31, 1305072000, '11-06-2011', 'ochen-vkusnoe-predlozhenie', 0),
(21, 17, 1303516800, '29-04-2011', 'skidka-60%-na-firmenniy-kofe-i-desert-crepe-suzette-v-kofeyne-black-berry', 1),
(22, 18, 1303171200, '24-04-2011', 'sdelay-shag-vpered-nastoyashchiy-tantsevalniy-battl-v-trekh-metrakh-ot-tebya', 0),
(23, 19, 1304121600, '03-05-2011', 'idealniy-manikyur-na-3-nedeli-bez-korrektsii', 0),
(24, 22, 1304985600, '13-05-2011', 'meksikanskiy-uzhin-na-medeo-s-60%-skidkoy', 1),
(25, 23, 1304380800, '06-05-2011', 'polirovka-kuzova-+-khimchistka-salona-so-skidkoy-60%', 1),
(26, 24, 1304121600, '30-05-2011', 'v-otpusk-k-moryu-nalegke', 0),
(27, 25, 1304121600, '30-05-2011', 'byt-zvezdoy-eto-professiya!', 0),
(28, 26, 1304294400, '16-05-2011', 'zhivi-v-garmonii-i-radosti', 1),
(29, 28, 1304640000, '10-05-2011', 'laminirovanie-volos-so-skidkoy-60%-v-salone-krasoty-gaziza', 0),
(30, 31, 1305072000, '11-06-2011', 'ochen-vkusnoe-predlozhenie', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Демидов Сергей', 'aspirin_1988@mail.ru', '$2y$10$1eBpDmHTdudFbQ4ELe/KwuryvE0sz9UlX957QFRxztCOyi4pDv6bS', NULL, '2016-09-09 03:56:53', '2016-09-09 03:56:53');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data1`
--
ALTER TABLE `data1`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data2`
--
ALTER TABLE `data2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data3`
--
ALTER TABLE `data3`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `data`
--
ALTER TABLE `data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `data1`
--
ALTER TABLE `data1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `data2`
--
ALTER TABLE `data2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `data3`
--
ALTER TABLE `data3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
