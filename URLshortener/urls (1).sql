-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 10 2024 г., 07:10
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `urls`
--

-- --------------------------------------------------------

--
-- Структура таблицы `url_shorten`
--

CREATE TABLE `url_shorten` (
  `id` int(11) NOT NULL,
  `url` varchar(2048) NOT NULL,
  `short_code` varchar(6) NOT NULL,
  `hits` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `url_shorten`
--

INSERT INTO `url_shorten` (`id`, `url`, `short_code`, `hits`) VALUES
(1, 'https://www.youtube.com/watch?v=OhQA4PDdp0Q', '66e295', 1),
(2, 'https://www.youtube.com/', 'd0dc92', 4),
(3, 'https://www.youtube.com/alabala', '64c94b', 1),
(4, 'https://drive.google.com/drive/', '7da623', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_at`) VALUES
(1, 'lol', '$2y$10$oqu.N4ykB5NZ6SUOQVZ0.Ox4NCvxfORMYp9EZy0y3iI4a0uiMQRBi', 'lol@gmail.com', '2024-11-09 21:15:17');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `url_shorten`
--
ALTER TABLE `url_shorten`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `short_code` (`short_code`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `url_shorten`
--
ALTER TABLE `url_shorten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
