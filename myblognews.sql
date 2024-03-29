-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Окт 09 2019 г., 08:39
-- Версия сервера: 5.7.27-cll-lve
-- Версия PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `myblognews`
--

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(8, 'stripslashes', 'stripslashes — Удаляет экранирование символов\r\n\r\nОписание ¶\r\n<b>stripslashes ( string $str ) : string</b> \r\nУдаляет экранирующие символы.\r\n\r\nЗамечание:\r\n\r\nЕсли включена директива magic_quotes_sybase, вместо обратных слешей будут удаляться двойные одинарные кавычки.', '2019-10-07 17:10:21', '2019-10-08 14:57:05'),
(9, 'stripos', 'stripos — Возвращает позицию первого вхождения подстроки без учета регистра\r\n\r\nОписание ¶\r\n<b>stripos ( string $haystack , mixed $needle [, int $offset = 0 ] ) : int</b> \r\nИщет позицию первого вхождения подстроки needle в строке haystack.\r\n\r\nВ отличие от strpos(), эта функция не учитывает регистр символов.', '2019-10-07 17:10:21', '2019-10-08 14:55:34'),
(10, 'stripcslashes', 'stripcslashes — Удаляет экранирование символов, произведенное функцией addcslashes()\r\n\r\nОписание ¶\r\n<b>stripcslashes ( string $str ) : string</b> \r\nУдаляет экранирующие обратные слеши. Распознает экранирование в стиле C (\\n, \\r ..., восьмеричное и шестнадцатеричное представление).', '2019-10-07 17:10:09', '2019-10-08 14:53:38'),
(11, 'strip_tags', 'strip_tags — Удаляет теги HTML и PHP из строки\r\n\r\nОписание ¶\r\n<b>strip_tags ( string $str [, string $allowable_tags ] ) : string</b> \r\nЭта функция пытается возвратить строку, из которой удалены все NULL-байты, HTML- и PHP-теги. Для удаления тегов используется тот же механизм, что и в функции fgetss().', '2019-10-07 17:10:21', '2019-10-08 14:51:33'),
(12, 'strcspn', 'strcspn — Возвращает длину участка в начале строки, не соответствующего маске\r\n\r\nОписание ¶\r\n<b>strcspn ( string $subject , string $mask [, int $start [, int $length ]] ) : int</b> \r\nВозвращает длину участка в начале строки subject, который не содержит ни одного символа из строки mask.\r\n\r\nЕсли параметры start и length не указаны, то все содержимое subject будет исследовано. Если же эти параметры указаны, то эффект будет таким же, как при вызове strcspn(substr($subject, $start, $length), $mask) (см. substr для дополнительной информации).', '2019-10-07 17:10:53', '2019-10-08 14:45:54'),
(13, 'strcasecmp', 'strcasecmp — Бинарно-безопасное сравнение строк без учета регистра\r\n\r\nОписание ¶\r\n<b>strcasecmp ( string $str1 , string $str2 ) : int</b> \r\nБинарно-безопасное сравнение строк без учета регистра.', '2019-10-07 17:10:54', '2019-10-08 14:39:47'),
(14, 'str_word_count', 'str_word_count — Возвращает информацию о словах, входящих в строку\r\n\r\nОписание ¶\r\n<b>str_word_count ( string $string [, int $format = 0 [, string $charlist ]] ) : mixed</b> \r\nПодсчитывает количество слов, входящих в строку string. Если необязательный аргумент format не передан, возвращается целое число, равное количеству слов. В случае, если указан аргумент format, возвращается массив, содержимое которого зависит от значения format. Ниже описаны допустимые значения аргумента format и соответствующие им возвращаемые значения.', '2019-10-07 18:10:07', '2019-10-08 14:36:41'),
(15, 'str_split ', 'str_split — Преобразует строку в массив\r\n\r\nОписание ¶\r\n<b>str_split ( string $string [, int $split_length = 1 ] ) : array</b>  \r\nПреобразует строку в массив.', '2019-10-07 18:10:58', '2019-10-08 14:35:51'),
(19, 'str_shuffle', 'str_shuffle — Переставляет символы в строке случайным образом\r\n\r\nОписание ¶\r\n<b>str_shuffle ( string $str ) : string</b>  \r\nstr_shuffle() перемешивает символы в строке. Выбирается одна возможная перестановка из всех возможных.\r\n\r\nПредостережение\r\nДанная функция не генерирует криптографически безопасные значения и не должна использоваться в криптографических целях. Если вам требуется криптографически безопасное значение, подумайте об использовании функций random_int(), random_bytes() или openssl_random_pseudo_bytes() вместо данной.', '2019-10-08 07:10:34', '2019-10-08 14:31:57'),
(20, 'str_repeat', 'str_repeat — Возвращает повторяющуюся строку\r\n\r\nОписание ¶\r\n<b>str_repeat ( string $input , int $multiplier ) : string</b> \r\nВозвращает строку input, повторенную multiplier раз.', '2019-10-08 07:10:34', '2019-10-08 14:29:25'),
(21, 'str_pad', 'str_pad — Дополняет строку другой строкой до заданной длины\r\n\r\nОписание ¶\r\n<b>str_pad ( string $input , int $pad_length [, string $pad_string = \" \" [, int $pad_type = STR_PAD_RIGHT ]] ) : string</b> \r\nЭта функция возвращает строку input, дополненную слева, справа или с обеих сторон до заданной длины. Если необязательный аргумент pad_string не передан, то input будет дополнен пробелами, иначе он будет дополнен символами из pad_string до нужной длины.', '2019-10-08 07:10:34', '2019-10-08 14:26:41'),
(22, 'date_format', 'date_format — Псевдоним DateTime::format()\r\n\r\nОписание ¶\r\nЭта функция является псевдонимом: DateTime::format()', '2019-10-07 17:10:54', '2019-10-08 14:21:36'),
(23, 'getdate', 'getdate — Возвращает информацию о дате/времени. <b>getdate ([ int $timestamp = time() ] ) : array</b>\r\nВозвращает ассоциативный массив (array), содержащий информацию о дате, представленной меткой времени timestamp или текущим системным временем, если timestamp не был передан.', '2019-10-07 17:10:54', '2019-10-08 07:10:22'),
(24, 'str_replace', 'str_replace — Заменяет все вхождения строки поиска на строку замены\r\n\r\nОписание ¶\r\n<b>str_replace ( mixed $search , mixed $replace , mixed $subject [, int &$count ] ) : mixed</b> \r\nЭта функция возвращает строку или массив, в котором все вхождения search в subject заменены на replace.\r\n\r\nЕсли не нужны сложные правила поиска/замены (например, регулярные выражения), использование этой функции предпочтительнее preg_replace().', '2019-10-07 17:10:54', '2019-10-08 14:30:32'),
(29, 'Функции для работы со строками', 'sdfdsfget_html_translation_table — Возвращает таблицу преобразований, используемую функциями htmlspecialchars() и htmlentities()\r\nЗамечание:\r\n\r\nСпециальные символы могут быть закодированы разными способами. Например, \" может быть закодирован как &quot;, &#34; или &#x22. get_html_translation_table() возвращает только формы, используемые функциями htmlspecialchars() и htmlentities().\r\n', '2019-10-08 09:10:48', '2019-10-08 10:10:21'),
(30, 'convert_cyr_string', 'convert_cyr_string — Преобразует строку из одной кириллической кодировки в другую\r\nconvert_cyr_string ( string $str , string $from , string $to ) : string\r\nПреобразует строку из одной кириллической кодировки в другую.', '2019-10-08 09:10:48', '2019-10-08 10:10:04'),
(31, 'convert_uudecode', 'convert_uudecode — Декодирует строку из формата uuencode в обычный вид <b>convert_uudecode ( string $data ) : string</b> \r\nЗамечание: convert_uudecode() не принимает ни начальной (begin), ни конечной (end) строки, которая является частью файлов (files) uuencoded', '2019-10-08 09:10:48', '2019-10-08 10:10:24'),
(32, 'convert_uuencode', 'convert_uuencode — Кодирует строку в формат uuencode <b>convert_uuencode ( string $data ) : string</b>\r\nКодирование uuencode переводит строки (включая бинарные символы) в последовательности печатных (7-битных) ASCII-символов, что позволяет безопасно обмениваться данными через сеть. <i>Закодированные данные примерно на 35% больше оригинала.</i>', '2019-10-08 09:10:48', '2019-10-08 14:23:47'),
(33, 'count_chars', 'count_chars — Возвращает информацию о символах, входящих в строку <b>ount_chars ( string $string [, int $mode = 0 ] ) : mixed</b> \r\nПодсчитывает количество вхождений каждого из символов с ASCII-кодами в диапазоне (0..255) в строке string и возвращает эту информацию в различных форматах.', '2019-10-08 09:10:48', '2019-10-08 10:10:15'),
(34, 'echo', 'echo — Выводит одну или более строк <b>echo ( string $arg1 [, string $... ] ) : void</b> \r\nНа самом деле, echo - это не функция (это языковая конструкция), поэтому заключать аргументы в скобки необязательно. echo (в отличие от других языковых конструкций) не ведет себя как функция, поэтому не всегда может быть использована в контексте функции. Вдобавок, если вы хотите передать более одного аргумента в echo, эти аргументы нельзя заключать в скобки.', '2019-10-08 09:10:48', '2019-10-08 10:10:42'),
(35, 'explode', 'explode — Разбивает строку с помощью разделителя <b>explode ( string $delimiter , string $string [, int $limit = PHP_INT_MAX ] ) : array</b>\r\n Возвращает массив строк, полученных разбиением строки string с использованием delimiter в качестве разделителя.', '2019-10-08 09:10:48', '2019-10-08 10:10:00'),
(36, 'html_entity_decode', 'html_entity_decode — Преобразует HTML-сущности в соответствующие им символы <b>html_entity_decode ( string $string [, int $flags = ENT_COMPAT | ENT_HTML401 [, string $encoding = ini_get(\"default_charset\") ]] ) : string</b> Если быть точнее, то эта функция преобразует все сущности (в том числе все числовые сущности), которые а) обязательно верны для выбранного типа документа - то есть, для XML эта функция не преобразует именованные сущности, которые могут быть определены в каком-нибудь DTD - и б) их символы находятся в кодировке, соответствующей выбранной и разрешены в выбранном типе документа. Все другие сущности остаются без изменений.', '2019-10-08 09:10:48', '2019-10-08 10:10:46'),
(37, 'htmlentities', 'htmlentities — Преобразует все возможные символы в соответствующие HTML-сущности. <b>htmlentities ( string $string [, int $flags = ENT_COMPAT | ENT_HTML401 [, string $encoding = ini_get(\"default_charset\") [, bool $double_encode = TRUE ]]] ) : string</b> Эта функция идентична htmlspecialchars() за исключением того, что htmlentities() преобразует все символы в соответствующие HTML-сущности (для тех символов, для которых HTML-сущности существуют).\r\n\r\nЕсли же вы хотите раскодировать строку (наоборот), используйте html_entity_decode().', '2019-10-08 09:10:48', '2019-10-08 11:10:04'),
(38, 'implode', 'implode — Объединяет элементы массива в строку. <b>implode ( string $glue , array $pieces ) : string  implode ( array $pieces ) : string</b>\r\n<b>Замечание:</b>\r\n\r\nПо историческим причинам функции implode() можно передавать аргументы в любом порядке, однако для согласованности с функцией explode() следует использовать документированный порядок аргументов.', '2019-10-08 09:10:48', '2019-10-08 15:09:43'),
(39, 'levenshtein', 'levenshtein — Вычисляет расстояние Левенштейна между двумя строками.<b>levenshtein ( string $str1 , string $str2 ) : int\r\nlevenshtein ( string $str1 , string $str2 , int $cost_ins , int $cost_rep , int $cost_del ) : int</b>Расстояние Левенштейна - это минимальное количество вставок, замен и удалений символов, необходимое для преобразования str1 в str2. Сложность алгоритма равна O(m*n), где n и m - длины строк str1 и str2 (неплохо по сравнению с similar_text(), имеющей сложность O(max(n,m)**3), но все же довольно много).', '2019-10-08 09:10:48', '2019-10-08 11:10:28'),
(40, 'localeconv', 'localeconv — Возвращает информацию о форматировании чисел.<b>localeconv ( void ) : array</b>\r\nВозвращает ассоциативный массив с информацией о числовых и денежных форматах в текущей локали.localeconv() возвращает данные, основанные на текущей локали, установленной функцией setlocale(). Возвращаемый массив содержит следующие элементы:', '2019-10-07 17:10:54', '2019-10-08 11:10:39'),
(41, 'ltrim', 'ltrim — Удаляет пробелы (или другие символы) из начала строки\r\n\r\nОписание ¶\r\n<b>ltrim ( string $str [, string $character_mask ] ) : string</b>', '2019-10-07 17:10:54', '2019-10-08 11:10:58'),
(42, 'Функции для работы со строками 3', 'sdfdsfget_html_translation_table — Возвращает таблицу преобразований, используемую функциями htmlspecialchars() и htmlentities()\r\nЗамечание:\r\n\r\nСпециальные символы могут быть закодированы разными способами. Например, \" может быть закодирован как \", \" или \". get_html_translation_table() возвращает только формы, используемые функциями htmlspecialchars() и htmlentities().\r\n', '2019-10-08 09:10:48', '2019-10-08 11:10:14'),
(46, 'stristr', 'stristr — Регистронезависимый вариант функции strstr()\r\n\r\nОписание ¶\r\n<b>stristr ( string $haystack , mixed $needle [, bool $before_needle = FALSE ] ) : string</b> \r\nВозвращает всю строку haystack начиная с первого вхождения needle включительно.', '2019-10-08 15:01:04', '2019-10-08 15:01:04'),
(47, 'strlen', 'strlen — Возвращает длину строки\r\n\r\nОписание ¶\r\n<b>strlen ( string $string ) : int</b> \r\nВозвращает длину строки string.', '2019-10-08 15:02:12', '2019-10-08 15:04:45'),
(48, 'strnatcasecmp', 'strnatcasecmp — Сравнение строк без учета регистра с использованием алгоритма \"natural order\"\r\n\r\nОписание ¶\r\n<b>strnatcasecmp ( string $str1 , string $str2 ) : int</b> \r\nЭта функция реализует алгоритм сравнения, упорядочивающий алфавитно-цифровые строки подобно тому, как это сделал бы человек. Эта функция подобна strnatcmp(), за исключением того, что сравнение происходит без учета регистра символов. Для получения дополнительной информации см. » Natural Order String Comparison.', '2019-10-08 15:03:22', '2019-10-08 15:03:22'),
(49, 'strnatcmp', 'strnatcmp — Сравнение строк с использованием алгоритма \"natural order\"\r\n\r\nОписание ¶\r\n<b>strnatcmp ( string $str1 , string $str2 ) : int</b> \r\nЭта функция реализует алгоритм сравнения, упорядочивающий алфавитно-цифровые строки подобно тому, как это сделал бы человек, такой алгоритм называется \"natural ordering\". Сравнение происходит с учетом регистра.', '2019-10-08 15:05:30', '2019-10-08 15:05:30'),
(57, 'ltrim', 'ltrim — Удаляет пробелы (или другие символы) из начала строки\r\n\r\nОписание ¶\r\n<b>ltrim ( string $str [, string $character_mask ] ) : string</b>', '2019-10-07 17:10:54', '2019-10-08 20:10:58'),
(64, 'strnatcmp', 'strnatcmp — Сравнение строк с использованием алгоритма \"natural order\"\r\n\r\nОписание ¶\r\n<b>strnatcmp ( string $str1 , string $str2 ) : int</b> \r\nЭта функция реализует алгоритм сравнения, упорядочивающий алфавитно-цифровые строки подобно тому, как это сделал бы человек, такой алгоритм называется \"natural ordering\". Сравнение происходит с учетом регистра.', '2019-10-08 15:05:30', '2019-10-09 04:53:55');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
