-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 04 2022 г., 12:27
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `devezier`
--

-- --------------------------------------------------------

--
-- Структура таблицы `arts`
--

CREATE TABLE `arts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `popularity` int(11) DEFAULT NULL,
  `episodes` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `arts`
--

INSERT INTO `arts` (`id`, `name`, `type`, `description`, `path`, `genre`, `date`, `rating`, `popularity`, `episodes`, `createdAt`, `updatedAt`) VALUES
(1, 'Ведьмак', 'series', 'Сериал рассказывает предысторию Йеннифэр, отсутствующую в книгах: этот персонаж изображён как горбунья, оказавшаяся на обучении в чародейской школе в Аретузе и изменившая свою внешность благодаря чарам. Параллельно разворачивается сюжетная линия Цириллы, спасающейся после взятия Цинтры армией Нильфгаарда.\r\n', 'witcher.jpg', 'Фэнтези', 2021, 1, 449, 24, '2022-01-03 14:18:00', '2022-01-03 14:18:00'),
(2, 'Команда мечты', 'anime', 'Неспортивный, полноватый, однако крайне мотивированный Сора Куруматани поступает в старшую школу Кудзурю не просто так. У него есть цель. Он жаждет исполнить обещание, данное матери, и победить в баскетбольном турнире.\r\n\r\nОднако на деле оказывается, что школьный клуб — пристанище для хулиганов, которым на баскетбол глубоко начхать. Единственные выжившие члены клубы — Момохару Ханадзоно, искусный защитник, но совершенный профан в бросках, и его брат-близнец Тиаки, талантливый разыгрывающий защитник, — оба утратили весь запал и готовы сдаться.\r\n\r\nВсего одна игра, полная адреналина, скорости и азарта, а ещё заразительная любовь Соры к баскетболу — вот и всё, что нужно, чтобы разжечь в юных сердцах соревновательный дух и желание играть.', 'dreamteam.jpg', 'Сёнэн', 2019, 6, 194, 24, '2022-01-03 14:18:00', '2022-01-03 14:18:00'),
(3, 'Человек Паук ', 'movie', 'Герой американских комиксов Marvel Comics, обладающий сверхспособностями: силой, ловкостью, легкостью передвижения во всех направлениях при помощи «паутины». Человек-паук / Spider-Man был создан Стэном Ли / Stan Lee и художником Стивом Дитко / Steve Ditko. Первый комикс с Человеком-пауком вышел в свет в 1962 году.\r\n', 'spiderman.jpg', 'Фантастика', 2002, 0, 36, 24, '2022-01-03 14:18:00', '2022-01-03 14:18:00'),
(4, 'Перси Джексон и похититель молний', 'book', 'Перси Джексон, двенадцатилетний американский школьник, едва не становится жертвой учительницы по математике. Хорошо, что ручка, которую дал ему мистер Браннер, учитель латинского языка, превращается в настоящий меч и поражает обезумевшую математичку. Но на этом беды Перси Джексона не кончаются.\r\n', 'perci.jpg', 'Фэнтези', 1234, 0, 497, 24, '2022-01-03 14:18:00', '2022-01-03 14:18:00'),
(5, 'Люцифер', 'series', '«Люцифе́р» — американский телесериал, созданный по мотивам серии комиксов «Люцифер» Нила Геймана и Сэма Кейта издательством Vertigo, импринтом DC Comics. Премьера шоу состоялась 25 января 2016 года. 7 апреля 2016 года сериал был продлён на второй сезон. 13 февраля 2017 года сериал был продлён на третий сезон.', 'lucifer.jpg', 'Фэнтези', 2016, 6, 802, 24, '2022-01-03 16:23:57', '2022-01-03 16:23:57'),
(6, 'Атака Титанов', 'anime', 'Закат человеческой эры пришёл с возникновением особой расы Титанов. Люди за столетие так и не нашли способов их полного уничтожения, как и не смогли узнать о происхождении этих колоссов. Остатки человеческой цивилизации создали государство, надежно защищенное тремя стенами, построенными по системе круговых колец, с именами: «Мария», «Роза», «Шина». Стены надежно укрывают и обеспечивают тихую жизнь потомкам тех, кто их строил. Но есть и обратная сторона: стены помимо защитной функции не дают возможности покинуть эти земли.\r\n\r\nМечта увидеть внешний МИР не оставляет главного героя Эрена…\r\n\r\nСпокойная жизнь не вечна, как и детство, и в один из солнечных дней 845 года Титан невероятных размеров и мощи пробивает брешь в крепостной стене Шиганшины, родного города Эрена. Этот день станет последним для тысяч людей не только этого города, так как вслед за ним под натиском Титанов падёт и внешняя стена «Мария». Друзьям Эрену, Микасе и Армину удается уцелеть. Человечество оказывается под угрозой полного уничтожения. Треть всей земли потеряна, количество жертв достигает невероятных размеров. Эрен собирается вступить в «Легион разведки», чтобы уничтожать Титанов. Месть – тоже стимул для того, чтобы жить, ведь «этот мир жесток и беспощаден»...', 'attackontitan.jpg', 'Сёнэн', 2019, 5, 532, 24, '2022-01-03 16:34:13', '2022-01-03 16:34:13'),
(7, 'Код Гиасс: Восстание Лелуша R2', 'anime', 'Уже прошел один год после событий Черного Восстания и предполагаемой смерти Зеро. Британия присвоила Зоне 11 статус исправительной колонии, где Одиннадцатых унижали с помощью грубой силы и выбивали все мысли о мятежах и попытках нового восстания.\r\n\r\nНичего не подозревающий Лелуш, студент высшей школы, ничего не знает о его прошлом в облике Зеро, и \"случайно\" натыкается на таинственную девушку, известную как С.С, которая возвращает ему память и его истинную личность. Лелуш вновь объявляет всему миру о возвращении Зеро, намереваясь закончить то, что он начал.', 'lelush.jpg', 'Драма', 2008, 5, 506, 24, '2022-01-04 19:23:09', '2022-01-04 19:23:09'),
(8, 'Город, в котором меня нет', 'anime', 'Фужинума Сатору — целеустремленный мангака, страдающий от того, что не может выразить себя в своих работах. Именно из-за этого недостатка большинство его работ отклоняются редакторами. Кроме этого, Фуджинума обладает сверхъестественным даром замечать мелочи, что заставляет его помогать людям…', 'city.jpg', 'Сёнэн', 2016, 9, 108, 24, '2022-01-04 19:23:09', '2022-01-04 19:23:09'),
(9, 'Крутой учитель Онидзука', 'anime', 'Эйкити Онидзука – это ужас на колесах, мотоциклист, которого ужасаются все горожане. Он любит представлять себя так: «22 года, холост». Онидзука решает переквалифицироваться в учителя, так как в учебных заведениях очень много красивых старшеклассниц в коротких юбочках. \r\n\r\nУчитель школы, который уже успел примерить на себе роль ужасающего хулигана, на месте работы пытается поменять все на свой манер. Постепенно ему удается одерживать победы над безразличием, отсталостью, лицемерием и показухой, которые царят в учебном заведении.', 'teacher.jpg', 'Сёнэн', 1999, 10, 327, 24, '2022-01-04 19:23:09', '2022-01-04 19:23:09'),
(10, 'Хантер Х Хантер\r\n', 'anime', 'В мире Hunter x Hunter существует класс людей называемых Охотниками, которые используя психические силы и обученные всевозможным видам борьбы, исследуют дикие уголки в основном цивилизованного мира. Главный герой, юноша по имени Гон (Гун), сын самого великого Охотника. Его отец таинственно исчез много лет назад, и теперь, повзрослев, Гон (Гун) решает пойти по его стопам. По пути он находит несколько компаньонов: Леорио, честолюбивый доктор медицинских наук, чья цель - обогащение. Курапика - единственный выживший из своего клана, чья цель - месть. Киллуа - наследник семьи наемных убийц, чья цель - тренировка. Вместе они добиваются цели и становятся Охотниками, но это только первая ступенька на их долгом пути… А впереди история Килуллы и его семьи, история мести Курапики и конечно же обучение, новые задания и приключения! Сериал был остановлен на мести Курапики… Что же ждет нас дальше спустя столько лет?\r\n\r\n', 'hunter.jpg', 'Сёнэн', 2011, 2, 801, 24, '2022-01-04 19:23:09', '2022-01-04 19:23:09'),
(11, 'Гуррен-Лаганн\r\n', 'anime', 'Более тысячи лет люди живут в пещерах под землей, постоянно опасаясь землетрясений и обвалов. Они постоянно бурят и таким образом живут. Симон, один из лучших бурильщиков, и его неординарный друг Камина жили в такой пещерной деревне. Камина был убежден, что существует другой, намного лучший, мир. И этот мир находится наверху. Но его надежды пока оставались без ответа. Однажды Симон находит \"ключ\" и небольшого робота. На следующий день после землетрясения потолок пещеры обрушился... Так начались удивительные приключения Камины и Симона в мире под открытым небом.\r\n\r\n', 'gurren.jpg', 'Сёнэн', 2007, 3, 990, 24, '2022-01-04 19:25:27', '2022-01-04 19:25:27'),
(12, 'Сага о винланде', 'anime', 'Сага о винланде', 'vinland.jpg', 'история', 2019, 7, 10, 12, '2022-02-02 14:06:15', '2022-02-02 14:06:15'),
(16, 'Клинок, рассекающий демонов: Квартал красных фонарей', 'anime', 'Продолжение приключений Тандзиро и его неизменных спутников: сестры-демона Нэдзуко, вечно ноющего Дзэницу и сорвиголовы Иносукэ. На этот раз «столп звука» Тэнгэн Удзуи берёт их с собой на задание в Квартал красных фонарей, где в последнее время стали пропадать люди. Причиной этого скорее всего служат демоны. Так кто же стоит за всеми исчезновениями, и смогут ли наши герои с ним справиться?', '1626270885.jpg', 'Сёнэн', 2022, 6, 234, 12, '2022-02-03 11:34:11', '2022-02-03 11:34:11'),
(17, 'Берсерк ТВ-1', 'anime', 'Таинственный воин, называющий себя Черным мечником, жаждет заполучить голову короля страны под названием Midland. Когда он борется с приспешниками короля, их крики и боль, заставляют вспоминать о прошлом таинственного воина, о той жизни, которая привела его к мести и охоте за головами. И вот когда он остается один в лесу, в его глазах проносится вся жизнь, от того момента когда он был еще мальчишкой и учился управляться с мечом. До того как он вступил в Банду Ястреба, под предводительством классного мечника Гриффита, и как он добившись успеха и получив дворянский титул, потерял всех друзей, свою возлюбленную, но не веру в самого себя.', '1583707503.jpg', 'Сэйнэн', 1997, NULL, NULL, 25, '2022-02-03 11:38:44', '2022-02-03 11:38:44'),
(18, 'Тетрадь Смерти', 'anime', 'Уставший от ухудшающегося мира и от немногословных собратьев, синигами Рюук отправляет на Землю Тетрадь Смерти, наблюдая за тем, что же интересное из этого получится. Его план начинает исполняться, когда Тетрадь Смерти поднимает гениальный ученик старшей школы Лайт Ягами, которому так же наскучил окружающий его мир. Изначально Лайт рассматривал рукопись как чью-то неудавшуюся шутку, но вскоре, экспериментальным путем Лайт открывает правду, написанную в Тетради Смерти. Нужно всего лишь создать изображение человека у себя в уме в тот момент, когда он пишет его имя в Тетради Смерти, и тогда, этот человек умрет через 40 секунд от сердечного приступа. Вооружившись такой невиданной силой, Лайт становится неуловимым убийцей, и он решает сделать этот мир лучше, истребляя криминальных авторитетов и преступников с помощью Тетради Смерти. Вскоре, в интернете и СМИ появляются новости о таинственном \"Кира\", который пытается играть в бога.\n\nЗа расследование серии странных убийств, берется загадочный детектив L, который сделает все чтобы остановить Киру. Лайт старается сделать все, что от него зависит, ради того чтобы люди не раскрыли его личность, даже если это будет означать убийство невинных, которые могут помочь расследованию. ', '1564936827.jpg', 'Сёнэн', 2006, NULL, NULL, 37, '2022-02-03 14:18:22', '2022-02-03 14:18:22'),
(20, 'Обещанный Неверленд', 'anime', 'В сиротском приюте «Благодатный дом» под чутким взором «Матери» живут трое подростков — Эмма, Норман и Рэй. Окружённые младшими братьями и сёстрами они не знают бед и невзгод. Но в одну ночь их идиллия оборачивается кошмаром. Они считали приют раем. Но теперь, когда они знают правду, у них остался один выход: сбежать или... умереть!', '1545582374.jpg', ' Сёнэн', 2019, NULL, NULL, 12, '2022-02-04 10:41:37', '2022-02-04 10:41:37'),
(21, 'Стальной Алхимик: Братство', 'anime', 'За то, что братья Элрики, обладавшие талантом, нарушили главный запрет Алхимии и попытались воскресить маму, им пришлось заплатить высокую цену: Альфонс – младший брат, потерял тело, а его душа прикрепилась к стальным доспехам, а Эдвард – старший брат, остался без ноги и руки, поэтому он пользуется протезами (автоброня). Эду за проявленные способности было присвоено звание государственного алхимика, в результате этого он стал частью военной государственной машины. Теперь у него появился шанс вернуть своего брату Алу тело. Впереди его ожидает много приключений и странствий, разгадок страшных тайн и бесконечные сражения…\n\nЕсли сравнивать «Стального Алхимика» и первую экранизацию, то разница существенна. Во втором сезоне изменился даже дизайн персонажей, став, таким образом, более «взрослым». В целом произведение отличается большой динамичностью. Начиная с первой серии, герои оказываются в самой гуще событий: резня в Ишваре, отступники борются с Армией и фюрером Брэдли, постоянные «намеки» и гомункулы на дальнейшее развитие истории.\n\nВо втором сезоне сохранился ансамбль сэйю, характеры героев также остались прежними, но состав эпизодов отличается, они играют главную роль для формирования образов и дают понять суть происходящего вокруг. Так же как и в первой экранизации, вторая часть включает в себя юмористические вставки, которые разряжают серьезную атмосферу, но моменты счастливой светлой жизни сократили, поэтому сериал приобрел более мрачный оттенок. Большое внимание уделяется второстепенным и третьестепенным персонажам, а военным особенно. Если говорить о сюжете, то основные его темы не изменились: поиск Философского камня, расплата за совершенные поступки, коварные планы и политика загадочных врагов.', '1585340369.jpg', 'Сёнэн', 2009, NULL, NULL, 64, '2022-02-04 10:44:18', '2022-02-04 10:44:18');

-- --------------------------------------------------------

--
-- Структура таблицы `art_types`
--

CREATE TABLE `art_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `art_types`
--

INSERT INTO `art_types` (`id`, `name`, `type`, `createdAt`, `updatedAt`) VALUES
(1, 'Аниме', 'anime', '2022-02-03 13:40:39', '2022-02-03 13:40:39'),
(2, 'Сериал', 'series', '2022-02-03 13:40:39', '2022-02-03 13:40:39'),
(3, 'Книга', 'book', '2022-02-03 13:40:39', '2022-02-03 13:40:39'),
(4, 'Фильм', 'movie', '2022-02-03 13:40:39', '2022-02-03 13:40:39');

-- --------------------------------------------------------

--
-- Структура таблицы `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `refreshToken` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tokens`
--

INSERT INTO `tokens` (`id`, `refreshToken`, `createdAt`, `updatedAt`, `userId`) VALUES
(40, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoidXNlciIsImVtYWlsIjoidUB1LnJ1IiwiaWQiOjEsImlzQWN0aXZhdGVkIjpmYWxzZSwicm9sZXMiOiJ1c2VyLCBhZG1pbiIsImF2YXRhciI6ImRlZmF1bHQuanBnIiwiaWF0IjoxNjQzOTcxNDY0LCJleHAiOjE2NDY1NjM0NjR9.X3caQ_IDMTsLXyUvZWnFKJtoj8sbXK1uEWCVT7z7nhI', '2022-02-03 09:29:16', '2022-02-04 10:44:24', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `isActivated` tinyint(1) DEFAULT NULL,
  `activationLink` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT 'user',
  `avatar` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `isActivated`, `activationLink`, `password`, `roles`, `avatar`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'u@u.ru', 0, 'ced2f3fa-ebf9-4c13-acbf-d025cb7ebc97', '$2b$10$3gOQ7F4eXFxTGyTsWgQ2ae/FjiAZq9yBvX25h/DdY1.OB8MQEtQFm', 'user, admin', 'default.jpg', '2022-01-28 11:13:56', '2022-02-02 11:27:10'),
(2, 'userr', 'uu@u.ru', 0, 'd4c29f8b-d984-428c-9f7d-44d4c4c08667', '$2b$10$kySc2OEFOea3cOI2CBgSn.Bpb23sXSbYEoOPcWL7YvIffBWm0fmI6', 'user', 'default.jpg', '2022-02-02 12:03:13', '2022-02-02 12:03:13');

-- --------------------------------------------------------

--
-- Структура таблицы `user_ratings`
--

CREATE TABLE `user_ratings` (
  `id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `episodes_watched` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `artId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `user_ratings`
--

INSERT INTO `user_ratings` (`id`, `status`, `episodes_watched`, `rating`, `createdAt`, `updatedAt`, `userId`, `artId`) VALUES
(74, 'planed', 4, 4, '2022-02-01 12:32:03', '2022-02-01 13:10:16', 1, 10),
(77, 'watched', 4, 4, '2022-02-01 12:33:45', '2022-02-01 12:33:45', 1, 1),
(94, 'planed', 4, 4, '2022-02-01 14:54:07', '2022-02-01 14:54:07', 1, 7),
(97, 'droped', 3, 2, '2022-02-03 14:49:33', '2022-02-03 14:59:32', 1, 18);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `arts`
--
ALTER TABLE `arts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `art_types`
--
ALTER TABLE `art_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `user_ratings`
--
ALTER TABLE `user_ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_ratings_artId_userId_unique` (`userId`,`artId`),
  ADD KEY `artId` (`artId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `arts`
--
ALTER TABLE `arts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `art_types`
--
ALTER TABLE `art_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user_ratings`
--
ALTER TABLE `user_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_ratings`
--
ALTER TABLE `user_ratings`
  ADD CONSTRAINT `user_ratings_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ratings_ibfk_2` FOREIGN KEY (`artId`) REFERENCES `arts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;