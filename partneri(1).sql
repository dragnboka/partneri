-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2018 at 07:15 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `partneri`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `practice` tinyint(1) DEFAULT NULL,
  `job` tinyint(1) DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `company_id`, `name`, `description`, `practice`, `job`, `file`, `created_at`, `updated_at`) VALUES
(1, 1, 'Quae exercitationem libero sint labore', 'Distinctio voluptatem animi dolor sunt. Iusto eaque eum sint rerum debitis possimus. Error iste excepturi impedit ut ut.', 1, 1, NULL, '2018-05-28 10:09:27', '2018-05-28 10:09:27'),
(2, 1, 'Quis dolores consectetur cupiditate reprehenderit', 'Dolor laudantium totam dolorem qui. Ut fuga sint accusamus est qui non.', 0, 0, NULL, '2018-05-28 10:09:27', '2018-05-28 10:09:27'),
(3, 7, 'Eum ut occaecati qui dolores facilis est accusamus', 'Doloribus vero facilis ut rerum amet at magnam. Provident fuga est occaecati illum omnis iusto est. Necessitatibus qui vero ipsam sed. Nisi dolores facere reprehenderit qui et commodi repellendus.', 1, 1, NULL, '2018-05-28 10:09:28', '2018-05-28 10:09:28'),
(4, 10, 'Molestiae perferendis molestiae doloribus id labore fuga hic', 'Quia voluptatem debitis commodi nostrum voluptas. Non libero architecto enim eos. Consectetur qui et optio alias nobis molestiae ut. Aspernatur provident quis omnis recusandae.', 0, 0, NULL, '2018-05-28 10:09:28', '2018-05-28 10:09:28'),
(5, 7, 'Sit veritatis sed quae quis', 'Et voluptatum non ut fugiat natus. Vel minus sequi assumenda. Et ut saepe quam est ut eveniet. Neque esse suscipit vitae officiis dignissimos modi.', 0, 0, NULL, '2018-05-28 10:09:28', '2018-05-28 10:09:28'),
(6, 8, 'Aut quis sed rerum', 'Voluptas et quos voluptates vero adipisci. Rem ullam sit sapiente aut velit.', 0, 0, NULL, '2018-05-28 10:09:28', '2018-05-28 10:09:28'),
(7, 3, 'Qui earum sint ut', 'Sit sint ipsa qui dolores quaerat. Itaque voluptates rerum voluptatem in aliquam. Similique perferendis molestias dolores tempora beatae et eum. Minus impedit ratione voluptatum non culpa.', 1, 1, NULL, '2018-05-28 10:09:28', '2018-05-28 10:09:28'),
(8, 10, 'Quis dicta fuga vel dolor rerum', 'Necessitatibus animi enim sit autem et magnam est. Molestiae inventore in qui in.', 0, 1, NULL, '2018-05-28 10:09:28', '2018-05-28 10:09:28'),
(9, 9, 'Dolorum reprehenderit quia placeat voluptatem', 'Blanditiis consequatur eaque velit qui. Doloribus inventore et esse. Ut architecto et non. Quia eos aliquam voluptatibus debitis enim impedit.', 1, 1, NULL, '2018-05-28 10:09:28', '2018-05-28 10:09:28'),
(10, 4, 'Voluptatem dignissimos possimus non voluptatum', 'Dolor consequatur ut nobis ea ea occaecati itaque ea. Sunt rerum itaque consectetur praesentium. Enim reiciendis nam exercitationem nam voluptate et molestiae.', 1, 0, NULL, '2018-05-28 10:09:28', '2018-05-28 10:09:28'),
(11, 8, 'Eum voluptatem deleniti accusamus dolorem', 'Rem repellat qui quas sed et itaque vero. Quia libero fugiat harum voluptas. Repellat ex iure consequuntur dolores. Ducimus modi earum consequatur dicta.', 1, 0, NULL, '2018-05-28 10:09:28', '2018-05-28 10:09:28'),
(12, 9, 'Quia laborum consectetur cupiditate qui deleniti aut dolorem', 'Accusantium eum ullam qui quod est. Facilis ea expedita molestiae. Aliquid ut minus maxime nesciunt. Quis iure vitae in nisi.', 0, 0, NULL, '2018-05-28 10:09:28', '2018-05-28 10:09:28'),
(13, 7, 'Corrupti recusandae amet id est expedita magni', 'Sunt voluptate labore autem dignissimos. Sit voluptatem qui dolorum corporis qui tempore iusto. Magnam esse occaecati iusto tenetur veniam magni similique. Qui sit tempora unde est.', 1, 0, NULL, '2018-05-28 10:09:28', '2018-05-28 10:09:28'),
(14, 10, 'Enim soluta aliquam facere reiciendis eum qui et', 'Minus a totam aut exercitationem inventore ut. Sunt nisi labore deleniti asperiores praesentium beatae. Possimus et saepe blanditiis aliquid vero quo.', 1, 0, NULL, '2018-05-28 10:09:28', '2018-05-28 10:09:28'),
(15, 4, 'Sunt quos illo natus nemo', 'Eius doloremque quo voluptas modi. Cum dolor soluta nobis delectus mollitia.', 0, 1, NULL, '2018-05-28 10:09:28', '2018-05-28 10:09:28'),
(16, 3, 'Ducimus quia et modi et nostrum nam', 'Aut eum sequi neque sint omnis reprehenderit eligendi. Commodi recusandae vitae et repellendus dolorum aspernatur. Facere aut corrupti natus consequuntur illo accusantium.', 1, 0, NULL, '2018-05-28 10:09:28', '2018-05-28 10:09:28'),
(17, 4, 'Voluptatem commodi aut et velit eos', 'Consequatur vitae ullam laboriosam recusandae ipsam. Totam ullam aut porro ducimus rerum consequuntur. Quae ipsum neque non qui rem. Laboriosam ab ullam ut quas sunt.', 0, 0, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(18, 10, 'Fugiat quia sit nostrum eaque quasi dolorum', 'Quis autem iusto et maxime. Enim est omnis minima quasi provident. Ut esse qui accusantium cum. Placeat voluptatum vitae tempora pariatur praesentium.', 0, 0, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(19, 6, 'Cupiditate nisi aut veritatis omnis eaque totam asperiores', 'Temporibus exercitationem qui alias est sit. Natus cupiditate perferendis et voluptatem. Nemo quidem aut repudiandae ad quis non.', 0, 1, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(20, 6, 'Fugit beatae minus quia vel ipsa et', 'Est dolor libero alias dolor omnis voluptates. Voluptatem rem nostrum dignissimos aperiam sed laboriosam. Asperiores sit inventore voluptatem repellendus.', 1, 0, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(21, 10, 'Ab repudiandae labore reiciendis quia amet delectus', 'Cumque nam magnam veniam ut explicabo. Perferendis exercitationem laudantium et repellendus. Quidem ipsam praesentium debitis et voluptatibus blanditiis.', 0, 0, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(22, 1, 'Et fugiat qui velit adipisci in ut nobis sint', 'Eligendi quos consectetur expedita praesentium et. Maiores sequi molestiae voluptate aliquam repellendus id. Consequatur nostrum veritatis et cupiditate.', 1, 1, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(23, 1, 'Quo et fuga officiis', 'Eos perferendis provident vel aut id esse. Ducimus ut quia dolorum reprehenderit tempora. Maiores tempore dicta dolorem. Culpa dignissimos aut in perferendis.', 0, 0, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(24, 8, 'Ut temporibus ut molestiae iure qui', 'Quas sit est voluptatum sed exercitationem. Ex tempore earum deleniti. Odit labore temporibus doloribus illum quod. Sed accusamus suscipit aspernatur tempore eveniet quis mollitia.', 0, 0, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(25, 5, 'Voluptatem dignissimos est minima nesciunt est dolorem autem', 'Quia est sint fugiat accusantium et vel sint. At quo impedit in velit. Doloribus quia inventore et voluptatem. Velit aut atque rerum quasi dolorem.', 1, 0, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(26, 4, 'Ipsum est sunt cupiditate ut voluptas ab', 'Vel in autem esse nulla nesciunt ut. Quia maiores velit possimus unde omnis harum. Et dolore ut ut illo quis.', 0, 1, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(27, 10, 'Voluptatem recusandae quam accusamus consectetur rem reiciendis illum', 'Delectus dolor aspernatur ea inventore incidunt. Voluptatum tenetur accusamus dolor optio quis delectus. Fugit mollitia labore voluptates nam iure et.', 0, 1, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(28, 9, 'Accusantium eum libero voluptas ullam ab qui', 'Eum consequuntur aliquam et optio provident. Quam ut labore cum in.', 1, 1, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(29, 3, 'Repellendus tempore aut dolores non deleniti est', 'Dolor molestiae esse possimus aut culpa dolorem mollitia. Facilis aut sunt cupiditate esse iusto officiis. Ea non sequi et qui in temporibus aut. Quia est ipsa accusantium fugiat voluptatem delectus cum magni.', 1, 1, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(30, 5, 'Fugiat rerum recusandae porro ut voluptatem', 'Aut occaecati ipsa qui voluptatem voluptate in distinctio repellat. Blanditiis sit aut consequatur sit velit. Corporis eum illo quod est.', 1, 0, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(31, 2, 'Aspernatur eos quia architecto voluptas officia', 'Ullam voluptas tempora distinctio quibusdam et fuga molestias est. Ut natus dolore ad ut consequatur dolorem. Sit et accusantium voluptatum iusto. Voluptas assumenda quibusdam nihil dolorum rem.', 1, 1, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(32, 3, 'Nisi quod fugit quis molestiae minima dolorum nisi', 'Dolores laborum rerum sed sit occaecati occaecati omnis. Quia veritatis vel in doloremque dolor. Quis debitis ea eaque et similique. Labore nobis autem dolor excepturi impedit quasi sunt.', 0, 0, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(33, 8, 'At ea sint cumque velit fugit fugit neque', 'Quam exercitationem in adipisci culpa. Non itaque odio qui ut. Quas excepturi quisquam delectus sit qui optio. Adipisci quis esse iste soluta laudantium cupiditate. Consequatur fugit ad saepe harum nisi.', 1, 0, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(34, 2, 'Temporibus repudiandae quaerat commodi numquam soluta molestias', 'Natus neque ea consequatur eum amet nihil similique. Dolores ab ea totam quis totam. Maiores rem atque exercitationem nemo. Dolorem quod omnis aut modi nobis quidem.', 0, 0, NULL, '2018-05-28 10:09:29', '2018-05-28 10:09:29'),
(35, 3, 'Facere ut nisi voluptatum ad', 'Sed nam voluptatem impedit. Accusantium libero aut dolores reiciendis quia. Provident fuga quia distinctio in autem quidem. Repellendus sequi rerum iste rerum minus autem cum.', 0, 0, NULL, '2018-05-28 10:09:30', '2018-05-28 10:09:30'),
(36, 1, 'Sequi aut ad ab numquam repudiandae quos repellendus quos', 'Dolorem soluta et qui et sunt perferendis. Suscipit non ad nihil necessitatibus reprehenderit recusandae dolorum. Dolore corrupti ea aut porro occaecati sed. Expedita et soluta dolore in perferendis.', 0, 1, NULL, '2018-05-28 10:09:30', '2018-05-28 10:09:30'),
(37, 7, 'Distinctio et doloremque voluptas dolorem esse ea', 'Omnis ullam velit qui et aut quaerat. Qui neque repellendus aspernatur eum quis et non. Reiciendis nulla voluptatum fuga alias. Commodi iste voluptatem sint maiores.', 0, 1, NULL, '2018-05-28 10:09:30', '2018-05-28 10:09:30'),
(38, 5, 'Omnis excepturi nemo sunt dolorum', 'Et facere qui ut eos natus ea. Aut odit dicta expedita consequatur. Deleniti officiis quae labore dolorem sint sed cupiditate consequatur. Earum dignissimos eveniet quo libero reiciendis commodi quis.', 1, 1, NULL, '2018-05-28 10:09:30', '2018-05-28 10:09:30'),
(39, 9, 'Quidem blanditiis rem qui dolores', 'Eaque fuga blanditiis aut eum est. Neque nisi nesciunt id autem.', 1, 0, NULL, '2018-05-28 10:09:30', '2018-05-28 10:09:30'),
(40, 4, 'Ducimus ut alias modi et', 'Necessitatibus suscipit qui totam quia. Adipisci aperiam impedit ducimus fuga. Consequatur quasi est perspiciatis quidem ad molestias aliquam molestiae. Libero ab consequatur dolorem aliquid eum repellat in placeat.', 1, 0, NULL, '2018-05-28 10:09:30', '2018-05-28 10:09:30'),
(41, 5, 'Dolor debitis id et architecto illo in', 'Animi ut ipsa atque ut ut enim ex. Quas accusantium debitis nihil accusantium ut veniam. Quia dolor cumque dolorem maiores veritatis.', 0, 0, NULL, '2018-05-28 10:09:30', '2018-05-28 10:09:30'),
(42, 6, 'Eaque rerum id omnis dolor voluptatum quae', 'Deleniti aperiam est nam natus consectetur. Alias vero ut debitis error consequatur earum consequatur. Esse a quo dolorum est possimus temporibus voluptatem quia. Quod aut reprehenderit alias debitis est nihil inventore.', 0, 0, NULL, '2018-05-28 10:09:30', '2018-05-28 10:09:30'),
(43, 10, 'Beatae temporibus sint similique impedit', 'Voluptates velit harum dolor sunt quam qui voluptas. Id natus dolorum et et. Inventore reiciendis quis vel dolore earum quo.', 1, 0, NULL, '2018-05-28 10:09:30', '2018-05-28 10:09:30'),
(44, 10, 'Quibusdam occaecati deserunt laudantium error et veritatis repellat architecto', 'Earum perspiciatis nesciunt autem natus. Cupiditate atque quis atque eum ipsa in incidunt. Non explicabo enim iusto neque libero. Nihil non expedita dolor molestiae. Reiciendis aliquam et provident eaque laboriosam.', 0, 0, NULL, '2018-05-28 10:09:30', '2018-05-28 10:09:30'),
(45, 4, 'Temporibus quia consequuntur voluptates cum qui tempora', 'Expedita omnis sed alias ducimus quia. Dolorum est numquam sint dolor vitae. Voluptatem beatae aut vitae laudantium. Fugit quia natus possimus non ut sapiente.', 0, 0, NULL, '2018-05-28 10:09:30', '2018-05-28 10:09:30'),
(46, 5, 'Dolorem et esse id provident beatae dolorem', 'Sed voluptates et rerum adipisci quisquam quo. Autem quasi consequatur aperiam quasi. Ipsam sequi ut aut quia.', 1, 0, NULL, '2018-05-28 10:09:30', '2018-05-28 10:09:30'),
(47, 1, 'Quibusdam dignissimos veniam reiciendis natus', 'Dolorem labore aut dolore qui soluta. Aut ut consequuntur vel id perferendis aspernatur. Fugiat eius quibusdam hic hic totam. Saepe et sapiente accusantium neque suscipit et quidem.', 0, 0, NULL, '2018-05-28 10:09:30', '2018-05-28 10:09:30'),
(48, 8, 'Distinctio vel vitae qui aspernatur dolores qui consequatur', 'Unde sint aperiam rerum autem optio aut. Cum amet natus velit cum. Magnam nam est nostrum.', 1, 1, NULL, '2018-05-28 10:09:30', '2018-05-28 10:09:30'),
(49, 7, 'Veniam pariatur maxime ea quos aut', 'Sunt eveniet et rerum assumenda voluptas. Rem enim molestiae porro et et ratione. Laborum porro perspiciatis illo at qui tenetur. Sint exercitationem rerum vero praesentium.', 0, 0, NULL, '2018-05-28 10:09:30', '2018-05-28 10:09:30'),
(50, 2, 'Nihil numquam et dolor voluptatem minima ab', 'Nihil totam ut sed consequuntur. Placeat ea in nulla voluptas ut. Reiciendis voluptas nam dicta quis. Animi in reiciendis voluptate nulla nesciunt. Consequatur necessitatibus dolores ad quos sit vitae.', 0, 0, NULL, '2018-05-28 10:09:31', '2018-05-28 10:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_account` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pib` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `address`, `city`, `postal_code`, `country`, `bank_account`, `pib`, `phone`, `email`, `description`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Schoen, Weber and Turner', '3027 Hilda Forest Suite 3111', 'Madonnabury', '02508-8901', 'Tokelau', '2415485885900413', '6011462534228495', '368.904.89431', 'jboyle@example.com', '\r\n\r\nЕлектропривреда Србије (ЕПС) је једно од највећих јавних предузећа у Републици Србији чији је превасходна делатност у области енергетике: производња, дистрибуција и снабдевање електричном енергијом, као и производња угља.\r\n\r\nМисија Електропривреде Србије је сигурно снабдевање купаца електричном енергијом, под тржишно најповолјнијим условима, уз стално подизање квалитета услуга, унапређење бриге о животној средини и увећање добробити заједнице.\r\n\r\nВизија Електропривреде Србије је да буде друштвено одговорна, тржишно оријентисана и профитабилна компанија, конкурентна на европском тржишту и са значајним утицајем у региону, препозната као поуздан партнер домаћим и међународним компанијама.\r\n\r\nВећ годинама уназад, ЕПС подржава и помаже рад најважнијих државних установа, институција и удружења у области науке и образовања: Универзитета у Београду и факултета који образују стручњаке потребне електропривреди, Српске академије наука и уметности, Института Никола Тесла, Института Михајло Пупин, Савеза инжењера и техничара. ЕПС подржава и најважније струковне скупове и сајмове: CIGRE, CIRED, Енергетика, Рударство, Воде и Сајам енергетике. А кроз различите манифестације које су тематски окренуте науци, као што су Фестивал науке, Тесла дани и Ноћ истраживача, ЕПС даје свој допринос афирмисању науке. Такође, ЕПС подржава научне и едукативне кампове за најмлађе - Дечији камп „Виминацијум“ и Еко камп „Тара“.\r\n', 'https://lorempixel.com/150/80/?31076', '2018-05-28 10:09:31', '2018-05-29 13:21:45'),
(2, 'Barton-Romaguera', '6057 Hudson Curve Apt. 881', 'Mervinburgh', '22238', 'Greece', '377831986640863', '371299190301621', '1-289-941-0235 x8054', 'muhammad.dare@example.org', 'АББ (www.abb.com) је водећа светска компанија у области енергетике и индустријске аутоматизације која својим технологијама помаже корисницима из јавног сектора, индустрије, области инфраструктуре и транспорта у унапређењу њихове продуктивности уз смањење штетног утицаја на животну средину. АББ Група послује у око 100 земаља и запошљава око 135.000 људи.', 'https://lorempixel.com/150/80/?64916', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(3, 'Christiansen, Blick and Osinski', '1901 Hegmann Rest', 'North Wilhelmineside', '48218-7221', 'Falkland Islands (Malvinas)', '2221856183087356', '4916612815731', '1-282-935-2848', 'kari18@example.com', '\r\n\r\nНордеус је независна компанија за развој видео игара и творац игре “Top Eleven”, једне од најпопуларнијих спортских онлајн игара, коју игра преко 140 милиона играча широм света. Компанија је основана 2010. године у Београду од стране три електроинжењера Електротехничког факултета у Београду, који су напустили своје корпоративне каријере у иностранству и вратили се у Србију са заједничком визијом игре коју желе да праве. Не само да су били одлучни да игром изграде глобални успех у индустрији игара, већ су се обавезали да ће својим радом увек правити позитивне промене за своје играче, запослене и друштво у коме живе. То је и данас једна од главних вредности компаније Нордеус.\r\n\r\nНордеус чини тим од преко 160 креативних професионалаца у Београду, Лондону и Даблину. Компанија изузетно много пажње поклања условима за рад, програмима за усавршавање и свеукупној добробити својих запослених, због чега је више пута била награђивана као најбољи послодавац у региону. Нордеус је у сталној потрази за глобалним стручњацима и младим талентима који желе да постану део индустрије игара.\r\n', 'https://lorempixel.com/150/80/?59899', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(4, 'Rogahn, Reinger and Macejkovic', '32584 Johnnie Cliff Apt. 764', 'Paucekmouth', '61887-8269', 'Honduras', '4485649055976', '5527545031679415', '+1.265.823.3333', 'garrison75@example.net', 'Комтрејд је основан 1991. годинe у Београду, као дистрибутер рачунарске опреме; данас првенствено извози знање клијентима у Америци, западној Европи, Азији и Аустралији. Од преко 2000 запослених, већина развија пословни софтвер за најуспешније светске фирме. Стратешки партнери Комтрејда су ИKT гиганти Microsoft, HP, Citrix, Oracle, F5, EMC и Nutanix, а међу клијентима су и највећа европска авио компанија Ryanair, комуникацијска платформа Viber и CERN, Европски институт за нуклеарна истраживања.\r\n\r\nЗа младе стручњаке жељне доказивања у свету ИКТ-а, Комтрејд је право место за наставак професионалног развоја по завршетку студија, из више разлога:\r\n\r\n    Имамо 16 компанија у 12 земаља на 3 континента – и сталну размену знања, култура и енергије\r\n    Имамо више од 1000 софтверских инжењера, што је огромна база актуелног знања\r\n    Наша партнерства са преко 30 водећих технолошких компанија у свету су дугогодишња\r\n    У свакодневном послу користимо најновије методологије – Аgile, Scrum, PMI, Quality Assurance\r\n    Правимо пословне софтвере и пружамо ИКТ услуге и консалтинг водећим компанијама у свету\r\n    Наши клијенти долазе из разних индустрија: из финансија, енергетике, здравства, телекомуникација и многих других\r\n    Нудимо интезивне програме обука и усавршавања\r\n    Готово 1/4 студената који заврше Комтрејдову летњу школу програмирања ЕДИТ постају наше колеге, са пуним ангажовањем на пројектима широм света\r\n', 'https://lorempixel.com/150/80/?85483', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(5, 'Hermiston, Christiansen and Williamson', '748 Kacie Avenue', 'East Althea', '69587', 'Slovenia', '5566445011672955', '4716623099683', '+1-492-547-8294', 'gritchie@example.org', 'HDL Design House се бави пружањем услуга у области пројектовања и верификације SoC интегрисаних кола, као и развојем IP cores и симулационих модела који се користе у „System/Product Level“ симулацијама, послујући у складу са међународно признатим стандардима квалитета ISO 9001:2008 управљања квалитетом и ISO 27001:2013 управљања безбедношћу информација. Предузеће је основано 2001. године, и тренутно запошљава 120 инжењера који раде у развојним центрима у Београду и Ћуприји. Од свог оснивања, HDL DH изузетно успешно учествује на R&D пројектима са компанијама као што су: NXP, Fujitsu, AMD, Infineon, CEVA, Cadence, Honeywell, Broadcom, Texas Instruments, Sensirion, uBlox, Siemens, Ericsson, Intel, и друге.', 'https://lorempixel.com/150/80/?42357', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(6, 'Mertz-Hermann', '7978 Araceli Causeway', 'New Antone', '11982-9530', 'Uruguay', '5551159405970795', '2221769491284385', '434.409.6542', 'ayla.dicki@example.com', 'ELSYS Eastern Europe је једна од водећих компанија на европском тржишту која се бави развојем комплексних интегрисаних кола и електронских система. Наши инжењери располажу експертизама из различитих области која су потребна за развој дигиталних, аналогних и mixed-signal интегрисаних кола. Такође, развој системских решења, као и embedded софтвера је део нашег портфолиа. Наши клијенти су базирани у САД, Француској, Немачкој, Швајцарској, Израелу, Јапан… ELSYS је део интернационалне ADVANS групе која је, са својих више од 1000 инжењера, специјализована у изради комплексних пројеката у области апликативног софтвера, електронских система и механике. Имамо два своја развојна центра у Београду и Новом Саду.', 'https://lorempixel.com/150/80/?93978', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(7, 'Schimmel-Renner', '483 Cassidy Ports', 'West Mafaldaburgh', '66620-3255', 'Gambia', '5355248440963838', '5589251673043342', '1-380-867-3974 x9015', 'irowe@example.org', 'Енел је инжењеринг фирма која се бави индустријском аутоматиком. Наше услуге пројектовања, производње и програмирања система аутоматског управљања користе бројни произвођачи машина као и фирме из различитих сектора индустрије које имају сопствену производњу. Поред тога развили смо линију машина високих перформанси за флексо штампу коју производимо под брендом Vallis, www.vallis-technologies.com. Као фирма која се константно развија и посебну пажњу посвећује технолошком унапређењу својих производа и услуга Енел младим инжењерима аутоматике пружа идеалне услове за напредовање у струци и рад на најсавременијим технологијама тренутно заступљеним у индустријској аутоматици.', 'https://lorempixel.com/150/80/?26292', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(8, 'Boyle, Marvin and Stanton', '2283 Ebert Cape Apt. 281', 'Port Rowan', '72074', 'Saint Barthelemy', '371717556836823', '4532540124627245', '784.547.3758 x9060', 'renner.caroline@example.net', 'Microsoft Development Center Serbia - MDCS, отворен је 2005. год. као четврти по реду развојни центар компаније Мајкрософт у свету. Тим MDCS-а чини више од 200 перспективних младих људи, врхунских стручњака из области компјутерских наука и примењене математике. MDCS настао је са идејом да ангажовањем талената из Србије и региона, узме активно учешће и допринесе развоју нових Мајкрософт технологија.', 'https://lorempixel.com/150/80/?91249', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(9, 'Kshlerin, Barton and Gulgowski', '65105 Jerald Valley Apt. 888', 'Mylenemouth', '77380', 'Martinique', '5521458585236937', '4280015910528', '1-918-519-8904 x495', 'federico.treutel@example.net', 'Siemens AG, глобални технолошки лидер, 170 година препознатљив је по техничким унапређењима, иновацијама, квалитету и поузданости производа и услуга. Са више од 348.000 запослених послујући у преко 190 земаља, фокусира се на области електрификације, аутоматизације и дигитализације. Siemens у Србији послује 130 година, са циљем да непосредним деловањем допринесе развоју привреде и инфраструктуре. У Србији ради око 1.900 запослених, у свим областима у којима је активна и матична кућа.', 'https://lorempixel.com/150/80/?68843', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(10, 'Stanton Ltd', '8353 Deonte Park Apt. 163', 'Ronnyland', '15766-3329', 'Vanuatu', '4024007186881', '4916370348784', '710.902.0408 x458', 'garth.huel@example.org', 'Компанија LOGО, један од лидера у области интегрисаних решења и инжењеринга у ИКТ, основана је 1990. године у Београду, а 2003. године прва је отворила фабрику за производни програм за асемблажу оптичких каблова. Са око 70 запослених експерата, од којих чак 20 инжењера са стручним лиценцама и сертификатима, своја ИКТ решења са успехом реализује широм Србије, Балканског региона, ЕУ и Русије.', 'https://lorempixel.com/150/80/?42523', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(11, 'Metz PLC', '4524 Santina Station Apt. 389', 'Port Tatyanaview', '10805-2396', 'Afghanistan', '4532009828623', '4539474348692855', '208-738-8221', 'dereck.hagenes@example.com', NULL, 'https://lorempixel.com/150/80/?76886', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(12, 'Harris, Grady and Balistreri', '24378 Grady Stream Apt. 957', 'New Alanatown', '15026-0219', 'Guinea', '5534731323391841', '370711846676827', '218.471.8578 x5036', 'ydamore@example.net', NULL, 'https://lorempixel.com/150/80/?64628', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(13, 'Lemke Ltd', '1423 Beatty Island', 'East Delilahville', '24793-2095', 'Trinidad and Tobago', '6011559681731369', '4077925779591', '1-435-299-4920 x97483', 'joannie56@example.net', NULL, 'https://lorempixel.com/150/80/?28828', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(14, 'Walter, Brown and Blick', '106 Sam Station Apt. 171', 'Pollichshire', '80207-6521', 'Indonesia', '4485803422143738', '5593733675396400', '915-962-4426 x36982', 'esmeralda41@example.org', NULL, 'https://lorempixel.com/150/80/?59944', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(15, 'D\'Amore, Will and Weimann', '9001 O\'Hara Causeway', 'New Rosella', '90525-6103', 'Saint Pierre and Miquelon', '345019906594282', '4556135012825372', '240.449.6271', 'terry.emerson@example.com', NULL, 'https://lorempixel.com/150/80/?13984', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(16, 'Zboncak, Cummings and Wyman', '2513 Fadel View', 'Sierraborough', '44205-3586', 'Singapore', '2680663019145752', '4754298980663793', '812.847.0873 x3101', 'beier.matilde@example.com', NULL, 'https://lorempixel.com/150/80/?11822', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(17, 'Mann-Littel', '3494 Streich Key Suite 417', 'Reyesview', '77639-7701', 'Guatemala', '343511288238787', '4532571638152', '292.553.5799 x8276', 'addie38@example.net', NULL, 'https://lorempixel.com/150/80/?15743', '2018-05-28 10:09:31', '2018-05-28 10:09:31'),
(18, 'Kris Ltd', '51702 Morissette Hill Suite 832', 'West Shawn', '76061-1728', 'Saint Lucia', '373841772178246', '4916594892641', '956-616-2503', 'nwyman@example.org', NULL, 'https://lorempixel.com/150/80/?39497', '2018-05-28 10:09:32', '2018-05-28 10:09:32'),
(19, 'Mosciski, Reilly and Ebert', '756 Elmira Track', 'Port Torranceport', '48110-1387', 'Greece', '4539224220379', '4929219996143521', '456-595-8281', 'gfriesen@example.net', 'Vast.com је водећи вертикални претраживач и лидер у развоју Big Data технологија на тржиштима продаје возила, некретнина и путовања, са преко 30 милиона корисника месечно. Компанија развија производе за \"Fortune 500\" компаније, а неки од њихових клијената су AOL, Yahoo, CarFax, HomeCircle,... Седиште ове глобалне компаније је у Остину, Тексас, а развојни центри налазе се у Београду и Кијеву. Београдска канцеларија запошљава 140 људи.', 'https://lorempixel.com/150/80/?38349', '2018-05-28 10:09:32', '2018-05-28 10:09:32'),
(20, 'Farrell, Thompson and Stamm', '5251 Dexter Streets', 'Zoilastad', '93245', 'Sweden', '4539555174065255', '5442350195048503', '+1.724.879.0074', 'kunze.matilda@example.org', NULL, 'https://lorempixel.com/150/80/?72883', '2018-05-28 10:09:32', '2018-05-28 10:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `company_contacts`
--

CREATE TABLE `company_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_contacts`
--

INSERT INTO `company_contacts` (`id`, `company_id`, `first_name`, `last_name`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 10, 'milan', 'bokan', '123456', 'muilan@gmail.com', NULL, NULL),
(2, 9, 'dragan', 'bokan', '456789', 'dragan@gmail.com', NULL, NULL),
(3, 1, 'dragana', 'bokana', '4567891', 'dragana@gmail.com', NULL, '2018-05-29 13:21:45'),
(4, 2, 'dragan', 'bokan', '456789', 'dragan@gmail.com', NULL, NULL),
(5, 3, 'dragan', 'bokan', '456789', 'dragan@gmail.com', NULL, NULL),
(6, 4, 'dragan', 'bokan', '456789', 'dragan@gmail.com', NULL, NULL),
(7, 5, 'dragan', 'bokan', '456789', 'dragan@gmail.com', NULL, NULL),
(8, 6, 'dragan', 'bokan', '456789', 'dragan@gmail.com', NULL, NULL),
(9, 7, 'dragan', 'bokan', '456789', 'dragan@gmail.com', NULL, NULL),
(10, 8, 'dragan', 'bokan', '456789', 'dragan@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_user`
--

CREATE TABLE `company_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_user`
--

INSERT INTO `company_user` (`id`, `company_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contract_statuses`
--

CREATE TABLE `contract_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contract_statuses`
--

INSERT INTO `contract_statuses` (`id`, `description`) VALUES
(1, 'припремљен'),
(2, 'послат компанији'),
(3, 'потписан од стране Факултета'),
(4, 'потписан од стране компаније'),
(5, 'потписан са обе стране'),
(6, 'предат архиви Факултета');

-- --------------------------------------------------------

--
-- Table structure for table `donating_contract`
--

CREATE TABLE `donating_contract` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `packet_id` int(10) UNSIGNED NOT NULL,
  `start_of_contract` date NOT NULL,
  `end_of_contract` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `status` smallint(6) NOT NULL,
  `date_of_delivery` date NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donating_contract`
--

INSERT INTO `donating_contract` (`id`, `company_id`, `packet_id`, `start_of_contract`, `end_of_contract`, `description`, `amount`, `active`, `status`, `date_of_delivery`, `comment`, `created_at`, `updated_at`) VALUES
(1, 19, 1, '2018-05-28', '2020-05-28', 'kompijuteri', 10, 1, 6, '2018-05-29', 'ds', '2018-05-28 10:59:48', '2018-05-28 10:59:48'),
(2, 20, 4, '2018-05-30', '2020-05-30', 'kompijuteri', 10, 1, 6, '2018-05-29', 'ds', '2018-05-28 10:59:48', '2018-05-28 10:59:48'),
(3, 18, 4, '2018-05-30', '2020-05-30', 'kompijuteri', 10, 1, 6, '2018-05-29', 'ds', '2018-05-28 10:59:48', '2018-05-28 10:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'банер компаније на званичном сајту факултета, на насловној страни', NULL, NULL),
(2, 'банер компаније на званичном сајту факултета, на страни партнери', NULL, NULL),
(3, 'кратак опис компаније на званичном сајту факултета, на страни партнери', NULL, NULL),
(4, 'банер компаније на званичном сајту катедре', NULL, NULL),
(5, 'лого компаније на рекламном паноу партнера факултета', NULL, NULL),
(6, 'лого компаније на брошури дана факултета', NULL, NULL),
(7, 'лого компаније на званичној годишњој презентацији ЕТФ-а', NULL, NULL),
(8, 'сарадња у области дефинисања и израде тема пројектних, дипломских и мастер радова', NULL, NULL),
(9, 'могућност сарадње на осавремењивању и унапређењу наставних планова и програма', NULL, NULL),
(10, 'помоћ при избору кандидата за стручну праксу и посао', NULL, NULL),
(11, 'могућност оглашавања понуда за израду пројектних радова, стручних пракси и запослења на рекламном паноу партнера факултета, интернет страници факултета, листама електронске поште и друштвеним мрежама', NULL, NULL),
(12, 'могућност оглашавања догађаја, такмичења и скупова компаније на рекламном паноу парнтера факултета, интернет страници факултета, листама електронске поште и друштвеним мрежама', NULL, NULL),
(13, 'могућност организације стручних предавања за представнике компанија', NULL, NULL),
(14, 'могућност представљања и презентације компаније студентима факултета највише једном у години', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `classroom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `company_id`, `name`, `description`, `classroom`, `date`, `time`, `first_name`, `last_name`, `cv`, `file`, `picture`, `created_at`, `updated_at`) VALUES
(1, 1, 'Од инжењера до независног пословног консултанта', 'Припремајући се да дипломирате, сигурно проводите доста времена размишљајући шта ћете да радите после дипломирања. Вероватно ћете почети да радите, наставите студије, путујете, правите личне/породичне планове, а можда размишљате и да покренете свој бизнис.\r\nСви ови планови су остварљиви, али захтевају доста припрема, рада и спремности да преузмете известан ризик.\r\nНаше савремено окружење пружа невероватне могућности, али и глобалну конкуренцију, сложеност производа и захтева тржишта, ограничен приступ финансијама, ризик од неефикасног управљања ресурсима, лошег доношења стратешких одлука.\r\nОд почетка до краја ваше каријере, очекујте да ћете вероватно променити неколико компанија и индустрија, да ћете стално морати да учите нове ствари и да ћете морати да будете флексибилни и заинтересовани да усвојите нове идеје, начине пословања и нове професионалне могућности.\r\nУ току овог предавања, разговараћемо о професионалном развоју од инжењера-почетника, преко искусног инжењера који, или ради у великој организацији, или у својој фирми, до успешног менаџера или консултанта у некој технолошкој области.', 'Амфитеатар 65, ЕТФ', '2018-06-02', '12:00:00', 'Јелена', 'Вучетић', 'Др. Јелена Вучетић је оснивач консултантске фиме Alpha Mission, Inc. са седиштем у Александрији (Вирџинија, САД). Фокус ове фирме је у области телекомуникација, рачунара, технологије, апликација и образовања преко Интернета, укључујући инжењеринг, стратешко планирање, патенте, маркетинг, продају, операције и производњу.\r\nПре Alpha Mission, Inc, Др. Вучетић је основала фирму за развој и произвођу опреме и софтвера за бежичне телекомуникације - DTI. Фирма је успешно продата у 2003. години.\r\nДр. Вучетић је дипломирала, магистрирала и докторирала на ЕТФ-у у Београду, а такође је магистрирала и бизнис у САД (University of Phoenix).\r\nАутор је књиге \"Постати успешан техно-предузимач\", четири интернационална патента и многобројних публикација. Допринела је и развоју неколико стандарда у области бежичних телекомуникација.\r\nДр. Вучетић предаје на пост-дипломским студијама (бизнис и технологија) и ради као ментор докторским и МБА кандидатима. До сада је успешно менторисала више од 60 доктора наука.', NULL, 'https://lorempixel.com/150/80/?76568', '2018-05-25 08:57:28', '2018-05-25 08:54:28'),
(2, 2, 'Tailoring Computer Systems for Big Data and Tiny Technology Nodes', 'The unprecedented rate of data collection and the wide use of machine learning techniques have created a need for efficient processing, movement, and storage of vast amounts of data. Unfortunately, the capabilities of today’s computer systems to meet such needs are being challenged by the end of the conventional technology scaling (a.k.a. the death of Moore\'s law). Moreover, the end of technology scaling and the emergence of new and radically different technologies threaten to disrupt the half a century old balance of system resources in unpredictable ways, rendering traditional designs of systems and applications suboptimal and obsolete. In this talk I will show how computation, communication, and storage in datacenters can be specialized to provide significant efficiency gains, and how the proposed specialization of individual system components  affects the balance of the entire system. I will then present my vision of a framework for optimal designs of systems and applications in the rapidly changing technology space.', 'Сала 61', '2018-05-29', '12:00:00', 'Ђорђе', 'Јевђић', 'Ђорђе Јевђић је завршио Електротехнички факултет у Београду као студент генерације на Катедри за Рачунарску технику и информатику. Потом је завршио докторске студије на EPFL-у, у Швајцарској, где је радио на специјализованим архитектурама рачунара и меморијским системима за сервере, као и\r\nпост-докторске студије на Универзитету у Вашингтону у Сијетлу, где је радио на концепту апроксимативног чувања података. Након тога је провео годину дана као истраживач у компанији Microsoft Research у Редмонду, где је радио на архивирању података у синтетички ДНК. Тренутно је доцент на Рачунарском Факултету Националног Универзитета у Сингапуру. Добитник је више признања, укључујући награду за најбољи рад на конференцији ASPLOS, IEEE Micro Top Picks, Intel Doctoral Student Honor Fellowship, и стипендије за постдокторске студије Швајцарског Националног Фонда за Науку.', NULL, NULL, '2018-05-25 08:55:28', '2018-05-25 08:55:28'),
(3, 3, 'Financing Renewable Energy Projects', 'Renewable energy projects, especially in developing countries, face numerous challenges from the institutional, policy and regulatory level to the market and project level which can hamper the development and uptake of renewable energy. Eessentially, all projects go through four distinct phases: development,financing, implementation and operation. Strong equity sponsors supported by debt is a key driver through the first two phases. However, lack of market transparency,lack of financing and experience in project development, and lack of relevant information on regulations, markets and resource availability is something that could deraill development and financing and could  led to a lack of bankable projects.', 'Сала 56', '2018-05-16', '18:00:00', 'Marijan', 'Rančić', NULL, NULL, NULL, '2018-05-25 08:54:42', '2018-05-25 08:56:42'),
(4, 1, 'Шта све треба да знате о програмирању, а не научите на факултету?', 'Да ли бисте запослили музичара који не зна да свира клавир или математичара који не зна да реши квадратну једначину? На овом предавању ћемо проћи кроз најчешће пропусте у знању на које наилазимо када нам на интервју дођу студенти ЕТФ-а.\r\n\r\n \r\n\r\nПроћи ћемо прво кроз елементарне алгоритме и структуре података, да би на томе саградили композабилне програмерске интерфејсе (API-је) и bottom-upприступ дизајну софтвера. После тога ћемо објаснити важности враћања на ‘прве принципе’ и приступању решавања проблема на начин на који то раде физичари, усупут показујући да пар терабајта података најчешће није ‘Big Data’.', 'учионица 308', '2018-05-10', '11:15:00', 'Дејан', 'Јеловић', 'Дејан Јеловић је програмер који је са тимом сјајних програмера направио бројне програме за људе који тргују финансијским инструментима и енергентима. Њихови програми су добитници многобројних EnergyRisk награда.', NULL, NULL, '2018-05-24 14:14:55', '2018-05-28 14:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_01_27_114505_create_permissions_table', 1),
(4, '2017_01_27_114510_create_roles_table', 1),
(5, '2017_01_27_114705_create_users_permissions_table', 1),
(6, '2017_01_27_114910_create_users_roles_table', 1),
(7, '2017_01_27_115010_create_roles_permissions_table', 1),
(8, '2018_05_21_222051_create_companies_table', 1),
(9, '2018_05_21_223842_create_company_contacts_table', 1),
(10, '2018_05_22_090513_create_company_user_table', 1),
(11, '2018_05_22_093737_create_ads_table', 1),
(12, '2018_05_22_124826_create_packets_table', 1),
(13, '2018_05_22_195714_create_packet_items_table', 1),
(14, '2018_05_22_220247_create_lectures_table', 1),
(15, '2018_05_23_124937_create_money_contract_table', 1),
(16, '2018_05_23_134944_create_contract_statuses_table', 1),
(17, '2018_05_24_092404_create_packet_item_table', 1),
(18, '2018_05_26_145419_create_donating_contract_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `money_contract`
--

CREATE TABLE `money_contract` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `packet_id` int(10) UNSIGNED NOT NULL,
  `start_of_contract` date NOT NULL,
  `end_of_contract` date NOT NULL,
  `active` tinyint(1) NOT NULL,
  `status` smallint(6) NOT NULL,
  `facture_send` tinyint(1) DEFAULT NULL,
  `payment_done` tinyint(1) DEFAULT NULL,
  `date_of_payment` date NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `money_contract`
--

INSERT INTO `money_contract` (`id`, `company_id`, `packet_id`, `start_of_contract`, `end_of_contract`, `active`, `status`, `facture_send`, `payment_done`, `date_of_payment`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-05-25', '2020-05-25', 1, 6, 1, 1, '2018-05-25', NULL, '2018-05-25 09:28:29', '2018-05-25 09:28:29'),
(2, 2, 1, '2018-05-26', '2020-05-26', 1, 6, 1, 1, '2018-05-26', NULL, '2018-05-25 09:31:56', '2018-05-25 09:31:56'),
(3, 3, 1, '2018-06-04', '2020-05-27', 1, 6, 1, 1, '2018-05-27', NULL, '2018-05-25 09:31:56', '2018-05-25 09:31:56'),
(4, 4, 2, '2018-05-28', '2020-05-28', 1, 6, 1, 1, '2018-05-28', NULL, '2018-05-25 09:33:01', '2018-05-25 09:33:01'),
(5, 5, 2, '2018-05-29', '2020-05-29', 1, 6, 1, 1, '2018-05-29', NULL, '2018-05-25 09:33:01', '2018-05-25 09:33:01'),
(6, 6, 2, '2018-05-30', '2020-05-30', 1, 5, 1, NULL, '2018-05-30', NULL, '2018-05-25 09:33:01', '2018-05-25 09:33:01'),
(7, 7, 2, '2018-05-31', '2020-05-31', 1, 5, 1, NULL, '2018-05-31', NULL, '2018-05-25 09:33:01', '2018-05-25 09:33:01'),
(8, 8, 2, '2018-06-01', '2020-06-01', 1, 5, 1, NULL, '2018-06-01', NULL, '2018-05-25 09:33:01', '2018-05-25 09:33:01'),
(9, 9, 3, '2017-05-02', '2018-05-02', 1, 4, 1, NULL, '2018-06-02', NULL, '2018-05-25 09:37:04', '2018-05-25 09:37:04'),
(10, 10, 3, '2017-06-03', '2018-07-03', 1, 4, 1, NULL, '2018-06-03', NULL, '2018-05-25 09:37:04', '2018-05-25 09:37:04'),
(11, 11, 4, '2017-06-03', '2018-08-03', 1, 6, 1, NULL, '2018-06-03', NULL, '2018-05-25 09:37:04', '2018-05-25 09:37:04'),
(12, 12, 5, '2017-06-03', '2018-09-03', 1, 6, 1, NULL, '2018-06-03', NULL, '2018-05-25 09:37:04', '2018-05-25 09:37:04'),
(13, 13, 3, '2018-05-31', '2019-05-31', 1, 6, 1, 1, '2018-05-31', 'd', '2018-05-29 14:25:45', '2018-05-29 14:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `packets`
--

CREATE TABLE `packets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `number_of_partners` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packets`
--

INSERT INTO `packets` (`id`, `name`, `value`, `duration`, `number_of_partners`, `created_at`, `updated_at`) VALUES
(1, 'zlatni', 15000, 24, 3, NULL, NULL),
(2, 'srebrni', 7500, 24, 5, NULL, NULL),
(3, 'veliki', 3000, 12, 10, NULL, NULL),
(4, 'partner', 1500, 12, 20, NULL, NULL),
(5, 'Партнер катедре', 1000, 12, 30, NULL, NULL),
(6, 'Оглашавање', 500, 12, 50, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packet_item`
--

CREATE TABLE `packet_item` (
  `packet_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packet_item`
--

INSERT INTO `packet_item` (`packet_id`, `item_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(2, 2),
(2, 3),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 2),
(3, 3),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 14),
(4, 2),
(4, 5),
(4, 6),
(4, 7),
(4, 11),
(4, 14),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 11),
(5, 14),
(6, 11),
(6, 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'clan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `phone`, `dob`, `email`, `password`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'milan', 'milan', 'pantovic', '123456', '2018-05-10', 'milan@gmail.com', '$2y$10$mugXydtCe9xSxVlpABTMye2PFbfx6fliC8I9egps0p1FztvbdSZSC', 1, 'rbnI4eVer8xqLLXNZUK1RoFB6ikdkPOEZPn8SfsY9RfkatC6P7yFCLsjdVAr', '2018-05-28 10:07:11', '2018-05-28 10:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `users_permissions`
--

CREATE TABLE `users_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_contacts`
--
ALTER TABLE `company_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_user`
--
ALTER TABLE `company_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_statuses`
--
ALTER TABLE `contract_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donating_contract`
--
ALTER TABLE `donating_contract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_contract`
--
ALTER TABLE `money_contract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packets`
--
ALTER TABLE `packets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packet_item`
--
ALTER TABLE `packet_item`
  ADD PRIMARY KEY (`packet_id`,`item_id`),
  ADD KEY `packet_item_item_id_foreign` (`item_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `roles_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `users_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `users_roles_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `company_contacts`
--
ALTER TABLE `company_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `company_user`
--
ALTER TABLE `company_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contract_statuses`
--
ALTER TABLE `contract_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donating_contract`
--
ALTER TABLE `donating_contract`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `money_contract`
--
ALTER TABLE `money_contract`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `packets`
--
ALTER TABLE `packets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `packet_item`
--
ALTER TABLE `packet_item`
  ADD CONSTRAINT `packet_item_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `packet_item_packet_id_foreign` FOREIGN KEY (`packet_id`) REFERENCES `packets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `roles_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD CONSTRAINT `users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
