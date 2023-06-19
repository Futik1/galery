-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 18 2023 г., 11:04
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `photos`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `Id` int(11) NOT NULL,
  `Pid` int(11) NOT NULL,
  `Uid` int(11) NOT NULL,
  `Text` text NOT NULL,
  `Post_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`Id`, `Pid`, `Uid`, `Text`, `Post_date`) VALUES
(1, 1, 1, 'АОАОАОАОАО', '2023-04-05'),
(2, 2, 2, 'Дивьять нит дисьять', '2023-04-03'),
(3, 3, 1, 'Каво', '2023-04-04'),
(4, 4, 2, 'Шо', '2023-04-06'),
(5, 5, 1, 'Круто', '2023-04-07'),
(6, 14, 1, 'Тест', '2023-04-25'),
(7, 14, 1, '123', '2023-04-25'),
(9, 14, 1, 'test', '2023-04-25'),
(10, 14, 1, 'test 2', '2023-04-25'),
(11, 14, 1, 'test 3', '2023-04-25'),
(12, 14, 1, 'test 4', '2023-04-25'),
(13, 14, 1, 'АОАОАОАОАОАОАОАОАО', '2023-04-25'),
(14, 12, 1, 'sdfsdf', '2023-04-25'),
(15, 12, 1, 'sdfsdfsdf', '2023-04-25'),
(16, 12, 1, 'asdffdghasdffgdhasdfgqret', '2023-04-25'),
(17, 14, 1, 'dfgh', '2023-04-25'),
(18, 16, 23, 'привет', '2023-05-14');

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE `photos` (
  `Id` int(11) NOT NULL,
  `Uid` int(11) NOT NULL,
  `Image` text NOT NULL,
  `Text` text NOT NULL,
  `Tags` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`Id`, `Uid`, `Image`, `Text`, `Tags`) VALUES
(1, 1, 'images/1.png', 'Что-то невероятное', 'Огород'),
(2, 2, 'images/2.png', 'Что-то невероятное', 'Картошка'),
(3, 1, 'images/3.png', 'Что-то невероятное', 'Огурец'),
(4, 2, 'images/4.png', 'Что-то невероятное', 'Помидор'),
(5, 1, 'images/5.png', 'Что-то невероятное', 'Восход'),
(6, 2, 'images/6.png', 'Что-то невероятное', 'Шиндовс'),
(7, 1, 'images/7.png', 'Что-то невероятное', 'Утро'),
(8, 2, 'images/8.png', 'Что-то невероятное', 'День'),
(9, 1, 'images/9.png', 'Что-то невероятное', 'Вечер'),
(10, 2, 'images/10.png', 'Что-то невероятное', 'Ночь'),
(11, 1, 'https://fastly.picsum.photos/id/166/1920/1080.jpg?hmac=jxymCPYDSY6wglfW8ri3zwn-OgzKS9Kj5XdTHcbpnCk', 'Тест', ''),
(12, 1, 'https://fastly.picsum.photos/id/571/1920/1080.jpg?hmac=msf0nny5Mxd5MPrd_K6BjtAizD6md7Lzsh-jScX-_VQ', 'Тест 2', ''),
(13, 8, 'https://fastly.picsum.photos/id/209/1920/1080.jpg?hmac=WuixpiAbIjOoxQUnWG7OiUXPJRu9XTIq6J5ocFRV20E', '1', ''),
(14, 22, 'https://fastly.picsum.photos/id/365/1920/1080.jpg?hmac=zrSgapRP3QLjKtN1LEuOdTLlGG1lMaCK3N-rN6H_NZo', 'Фото от Пети', ''),
(16, 23, 'https://fastly.picsum.photos/id/166/1920/1080.jpg?hmac=jxymCPYDSY6wglfW8ri3zwn-OgzKS9Kj5XdTHcbpnCk', '123', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Password` text NOT NULL,
  `Email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`Id`, `Name`, `Password`, `Email`) VALUES
(1, 'Толя', 'qwerty123321', 'tolya@mail.ru'),
(2, 'Ваня', 'qwerty321123', 'vanya@mail.ru'),
(8, 'Анатолий', '123', 'anatoly@mail.ru'),
(22, 'Петя', '123', 'PetyaKiller'),
(23, 'Иван', '123', 'ivan');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `comments_ibfk_1` (`Uid`);

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `photos_ibfk_1` (`Uid`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `users` (`Id`);

--
-- Ограничения внешнего ключа таблицы `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `users` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
