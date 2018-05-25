-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2018 at 07:18 PM
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
(1, 1, 'Dolorem molestias dolor accusantium sed provident ea', 'Aut sint similique neque et quis explicabo. Quos et rem est asperiores labore. Tempora id qui accusamus accusantium ex.', 0, 1, NULL, '2018-05-24 14:43:14', '2018-05-24 14:43:14'),
(2, 4, 'Et ut aliquam voluptas officiis cumque aliquid qui', 'Molestias eos quia commodi mollitia mollitia in ea. Modi dicta velit quae eum. Quam labore veritatis error eligendi assumenda consequuntur. Aut adipisci et esse.', 1, 0, NULL, '2018-05-24 14:43:14', '2018-05-24 14:43:14'),
(3, 5, 'Et deserunt delectus tempora distinctio', 'Aliquam nihil eius quia sit fugit. Iure a corporis atque quia doloremque totam animi. Ea perspiciatis repellendus et ab officia.', 1, 0, NULL, '2018-05-24 14:43:14', '2018-05-24 14:43:14'),
(4, 3, 'Explicabo dignissimos velit officia aut et et', 'Quam tempore iure qui sit vel ea. Aut voluptatem occaecati optio aut fugiat repellendus.', 0, 0, NULL, '2018-05-24 14:43:14', '2018-05-24 14:43:14'),
(5, 5, 'Ut a temporibus ut ut', 'Inventore voluptatem magnam ipsam porro accusantium. Dolores dignissimos voluptatibus dolor corporis odit veniam.', 1, 1, NULL, '2018-05-24 14:43:14', '2018-05-24 14:43:14'),
(6, 10, 'Molestiae accusamus et qui labore ad', 'Reprehenderit ipsum dolorum et voluptatem in. Qui ut porro in debitis eligendi. Temporibus distinctio sed dignissimos vitae. Laboriosam ratione saepe omnis fugit et fugiat.', 0, 1, NULL, '2018-05-24 14:43:14', '2018-05-24 14:43:14'),
(7, 6, 'Aspernatur ipsa velit placeat rerum eos', 'A laborum delectus ratione sequi enim voluptate reiciendis. Quia quas ut libero molestiae ipsum voluptates molestiae et. Architecto cumque ea quibusdam perferendis dolor inventore.', 1, 1, NULL, '2018-05-24 14:43:14', '2018-05-24 14:43:14'),
(8, 3, 'Nobis fugiat sunt saepe incidunt dolor', 'Ipsa sint illum unde doloremque ullam. Distinctio tempora aliquid quisquam id deleniti dolore nulla. Ratione rerum a aut sequi maiores quo. Harum odit non ipsam fugit voluptatem ut et.', 1, 0, NULL, '2018-05-24 14:43:14', '2018-05-24 14:43:14'),
(9, 4, 'Architecto aut similique optio laborum labore recusandae ut quo', 'Non cum officiis et vero et illum. Optio qui numquam molestiae et ipsa. Ratione tempore ducimus enim cum soluta.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(10, 2, 'In omnis cumque dignissimos sunt animi alias', 'Vel provident asperiores libero voluptatem nihil dicta. Sit ipsum eos quisquam fugiat temporibus eius excepturi dolore. Accusamus beatae quaerat minus nulla id maiores. Quis et repellat rerum ratione quas necessitatibus aperiam facilis. Aut repudiandae vel sint corporis quidem voluptatem.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(11, 9, 'Eos optio eligendi qui ut', 'Fugiat ex optio delectus id quia. Et odit consequatur maiores et. Laboriosam occaecati consequatur ut quod possimus quasi.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(12, 7, 'Asperiores quas ipsam explicabo itaque ut magni iste', 'Eaque in vel molestiae quod natus molestias nam. Aut aut odit cupiditate veritatis ipsam. Enim asperiores nam rerum perferendis. Sunt ea aliquam porro iste officiis sed libero qui.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(13, 1, 'Dolores voluptatem a esse qui est optio accusamus', 'Ab rerum maxime ut est quidem repellendus dolor. Ex eveniet deserunt voluptates ut. Harum earum vel et omnis ut voluptas mollitia.', 1, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(14, 1, 'Consequuntur perspiciatis ab ut rem ipsum', 'Fuga labore voluptatem ut quaerat. Dolor consequatur vitae expedita deleniti voluptate animi. Fuga accusamus nisi dolorum voluptatum magni voluptates error in. Labore modi modi numquam veritatis molestias.', 0, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(15, 6, 'Rerum sint consequatur eveniet tempore et dignissimos et molestias', 'Eos aperiam amet maxime ipsam. Dolore eos repudiandae architecto aliquam cupiditate autem. Ab ea ipsa molestiae hic illo.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(16, 9, 'Animi hic deserunt ea eum exercitationem qui totam', 'Consequatur doloremque rem consequatur ea. Ratione qui rem ut doloribus at quo. Qui autem dignissimos laudantium reiciendis quo vel occaecati non. Et quia ad corporis minima deleniti velit et.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(17, 8, 'Qui expedita et voluptatibus quos et est', 'Itaque porro beatae illum quasi nesciunt dolor eius. Veritatis quibusdam provident inventore officia quidem. Qui autem necessitatibus dolores aperiam.', 0, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(18, 3, 'Iste nesciunt ipsam veniam voluptate', 'Molestias cupiditate quo excepturi quia. Et et numquam perferendis. Possimus laboriosam quod maxime impedit. Nam distinctio fuga alias officiis sit molestiae deleniti.', 0, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(19, 4, 'Iure et omnis rerum', 'Fugit voluptate fuga qui consequatur rerum ut. Adipisci facere ea hic quae. Odio reprehenderit culpa nobis.', 1, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(20, 6, 'Corrupti dolor praesentium voluptatem consequatur ut', 'Et non quaerat nulla quae est. Molestias aut blanditiis et laudantium nihil omnis illo. Explicabo sunt quam voluptas qui vel. Cupiditate sit minus aut accusamus assumenda hic.', 0, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(21, 4, 'Nihil non neque at voluptates', 'Ad aut velit et totam corporis cupiditate odio ullam. Non perferendis dolor minima veniam. Sunt et ut pariatur officia. Accusamus atque voluptate consectetur consequuntur.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(22, 3, 'Assumenda atque nobis eum voluptas amet', 'Esse dolorum et enim provident odit. Omnis voluptates dicta non totam rerum consequatur illum. Ea illum veritatis ut accusamus sint. Necessitatibus laudantium rem praesentium maxime ratione ex quia.', 0, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(23, 5, 'Est quibusdam neque debitis', 'Praesentium quas labore est sit blanditiis nesciunt itaque. Quia tempore quae omnis aut. Provident tempora nulla reprehenderit eum blanditiis.', 0, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(24, 4, 'Quasi beatae voluptate voluptatem voluptatem', 'Magni quia laudantium quisquam non nobis. Et explicabo minima libero. Cum dolor quisquam vero quo reprehenderit minima. Velit eum autem facilis voluptas dolores placeat inventore itaque.', 1, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(25, 9, 'Reprehenderit qui dolore in facere dolores temporibus', 'Id natus vel est soluta dolorem. Enim libero repellendus voluptas laborum. Similique voluptas et occaecati tempora suscipit corrupti. Corporis dolor incidunt at in aut.', 1, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(26, 5, 'Et sed tempora esse voluptatem ipsam qui', 'Voluptatem qui porro saepe dolores distinctio dolorem. In eum quasi consequatur pariatur tempora facere voluptatem. Voluptatem quisquam consectetur ratione tenetur.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(27, 8, 'Eius incidunt assumenda suscipit veniam', 'Eaque ex incidunt praesentium autem praesentium eum et. Quae distinctio dolor quia reiciendis voluptate aspernatur. Perspiciatis vel porro ratione rerum et consectetur corporis.', 1, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(28, 3, 'Dolore assumenda fugit odit ut non est', 'Ea autem perferendis quidem. Repudiandae distinctio sequi eius. Unde praesentium quo similique. Libero nihil sequi voluptate recusandae aut vel.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(29, 2, 'Aut nihil ducimus quia temporibus totam voluptatibus', 'Voluptates saepe et occaecati dicta veritatis deleniti molestiae. Eaque totam voluptatem ut quae facere et voluptatem suscipit. Tempora nam aspernatur quibusdam earum tempore. Est est sit minima ut quis culpa explicabo.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(30, 8, 'Quia iste nesciunt repellendus numquam', 'Ducimus et ex voluptatibus fuga error tempora ut sit. Eum totam ullam alias expedita omnis ex voluptatem. Deleniti eaque aliquid dolor quo iure.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(31, 2, 'Dolor eos consequatur esse eius voluptatum', 'Eveniet aut quo et enim. Error nobis saepe sit quisquam rerum libero et. Eligendi molestiae praesentium velit sit soluta. Enim necessitatibus voluptatibus sint nobis non facilis.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(32, 2, 'Architecto sunt nobis alias eaque voluptatibus omnis', 'Fuga qui impedit nemo optio nam. Voluptas facilis mollitia eaque voluptas officiis atque quisquam. Impedit et inventore occaecati sapiente.', 1, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(33, 10, 'Voluptatum molestiae et unde aut odit', 'A quibusdam veritatis et. Inventore temporibus impedit et. Maxime est id ut.', 1, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(34, 6, 'Laudantium fugit quae nihil aut voluptate porro', 'Error omnis non tempora blanditiis quidem perspiciatis et. Asperiores fuga voluptatibus architecto laudantium qui. Sapiente et ab a voluptatem sed autem.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(35, 8, 'Aut enim ipsum et', 'Quidem alias optio iure corporis distinctio commodi. Quidem maxime vero harum et iste iure deleniti. Laudantium aut ut officia quo soluta omnis rerum. Soluta ex soluta itaque. Veniam dolores ex totam et ut est labore.', 0, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(36, 8, 'Ex qui ratione ut voluptas est est', 'Tenetur non ea atque alias consequatur quis quam laboriosam. Laborum veniam a vel. Ut cumque atque voluptatum ut.', 1, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(37, 7, 'Quam iure quibusdam fugit voluptas quod', 'Sapiente aut doloribus aspernatur facere. Est reprehenderit iure alias assumenda cum. Ratione nisi velit aspernatur sunt molestiae nihil. Laborum temporibus distinctio accusamus corrupti voluptatem quasi delectus.', 1, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(38, 7, 'Dolorem et facere rerum magnam vero', 'Itaque facere placeat aspernatur sit ut blanditiis sapiente. Optio qui architecto dolorem aliquam ex voluptas sint ullam. Aperiam qui aut reiciendis voluptas iusto est. Aut explicabo dicta consectetur. Eum eos hic laboriosam soluta.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(39, 7, 'Vero quam soluta animi a', 'Est quisquam in qui temporibus et. Sed voluptatum voluptatem repellat est ullam nulla voluptas. Consequatur praesentium perferendis voluptates eveniet dolores id impedit. Numquam aut deleniti nostrum dolorem tempore. Quo sed molestiae saepe reiciendis rerum et.', 0, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(40, 7, 'Non magnam ut cupiditate', 'Accusantium qui explicabo quisquam ipsam. Sint architecto quam labore ea. Quidem temporibus natus rem odit. Voluptates nihil officiis sunt et optio.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(41, 3, 'Eligendi ea quia officiis sint ut quia', 'Architecto quasi libero nemo id. Quia dolor nam a repellat occaecati recusandae consectetur atque. Laudantium placeat autem id rerum voluptatum voluptas.', 0, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(42, 10, 'Vitae officiis voluptatum laborum voluptatem', 'Qui sed omnis minus. Soluta non quo qui labore qui aut rem. Et ex qui debitis perferendis consequatur et natus.', 0, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(43, 4, 'Est consequatur dignissimos quos architecto', 'Fuga earum ipsum dicta voluptatum. Incidunt cupiditate cupiditate et necessitatibus dolorem recusandae consequatur.', 1, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(44, 1, 'Possimus eos autem aut neque a voluptatem est et', 'Enim doloremque omnis vel in nulla. Quis sapiente ipsum impedit culpa occaecati voluptatibus.', 1, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(45, 8, 'Quaerat occaecati illo temporibus dolor quas architecto', 'Veritatis non et eius eum velit est blanditiis. Architecto iusto sed voluptatum sed eaque velit perferendis ullam. Voluptate qui at officia aut cupiditate nihil. Repellendus magnam incidunt est adipisci sed.', 1, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(46, 4, 'Eligendi eum voluptatem vero quia vel doloremque', 'Quia vitae eligendi sint doloribus quis. Voluptas aspernatur veritatis in molestias qui veniam. Pariatur quisquam cumque sed qui soluta rerum qui.', 1, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(47, 6, 'Voluptatibus soluta labore facilis natus aut', 'Rem quam libero quisquam aut quaerat nesciunt. Accusantium fugit mollitia ut deleniti consequuntur culpa consequatur. Quaerat sequi vel adipisci ut in nihil quia. Impedit delectus consectetur voluptatibus perspiciatis quae voluptatum.', 0, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(48, 3, 'Debitis et velit architecto velit excepturi', 'Officia sunt eaque ratione adipisci doloribus aut in. Nobis doloribus illum et qui ab fuga. Unde animi aperiam odio natus asperiores asperiores non.', 0, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(49, 6, 'Quis incidunt ea perferendis harum rerum eius possimus', 'Sit et ratione eligendi. Qui officia et ab similique quisquam.', 0, 1, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15'),
(50, 9, 'Sed ut quidem et quisquam dolorem est minima nemo', 'Eius est quaerat nihil et sit eum ratione. Beatae ut recusandae voluptatem dicta pariatur suscipit. Sapiente quo dolorum ea architecto quia.', 0, 0, NULL, '2018-05-24 14:43:15', '2018-05-24 14:43:15');

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
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `address`, `city`, `postal_code`, `country`, `bank_account`, `pib`, `phone`, `email`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Sauer PLC', '7529 Skye Circle', 'Port Kennedyton', '99047-5163', 'Turkey', '4916776701396', '5559840489739451', '1-718-361-9301 x86047', 'althea76@example.com', 'https://lorempixel.com/150/80/?76568', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(2, 'Carter Inc', '796 Johnston Alley', 'Darylview', '58735', 'British Indian Ocean Territory (Chagos Archipelago)', '4138219084104', '4929629297793', '+1-426-851-2972', 'alan22@example.org', 'https://lorempixel.com/150/80/?25654', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(3, 'Bode-Okuneva', '466 Nitzsche Key Suite 688', 'East Noeliaview', '34363', 'Saint Kitts and Nevis', '2221080851800772', '4485340685040681', '(596) 257-6692', 'ubergstrom@example.net', 'https://lorempixel.com/150/80/?53906', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(4, 'Rath Group', '66315 Bogisich Manors', 'New Eladiobury', '27460', 'Hong Kong', '5297268201330457', '4485919857101', '710.765.1636 x51141', 'ruby24@example.net', 'https://lorempixel.com/150/80/?92917', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(5, 'Harris, Feil and Wiza', '7658 Schinner Dam Suite 983', 'East Sybleport', '50174-0995', 'Canada', '4130614317874', '5385779934700728', '+1 (746) 292-8880', 'miller.mike@example.org', 'https://lorempixel.com/150/80/?70923', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(6, 'Wintheiser PLC', '6382 Lori Spring Suite 893', 'Port Elvisland', '37780', 'Hong Kong', '4503462767211820', '371537095813541', '883.664.0421', 'sedrick50@example.org', 'https://lorempixel.com/150/80/?87872', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(7, 'Frami-Miller', '997 Lauretta Hills', 'Schummton', '18266', 'Belarus', '5488746182704328', '4556363743987', '(475) 415-5047 x6336', 'brigitte.boyer@example.net', 'https://lorempixel.com/150/80/?91404', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(8, 'Rodriguez Ltd', '153 Durgan Light', 'Lake Kiana', '57289', 'Kiribati', '4539530749459', '343364051820161', '(826) 497-2416 x03300', 'deon.altenwerth@example.com', 'https://lorempixel.com/150/80/?22563', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(9, 'Labadie, Balistreri and Kozey', '66030 Coralie Knoll Apt. 706', 'Daughertymouth', '01637', 'Burkina Faso', '6011325851642863', '2720713592098399', '634-538-8259 x58257', 'schinner.roscoe@example.com', 'https://lorempixel.com/150/80/?65584', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(10, 'Balistreri LLC', '7219 Susie Walks', 'Lake Osvaldofurt', '64991', 'Saint Vincent and the Grenadines', '4096984357737339', '5148430563970517', '283.688.5141', 'schuppe.reba@example.com', 'https://lorempixel.com/150/80/?58487', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(11, 'Flatley LLC', '65086 Schneider Isle Suite 555', 'New Lavonnemouth', '54620', 'Maldives', '379222331096647', '4532870272232', '+1-837-419-6326', 'asha.flatley@example.net', 'https://lorempixel.com/150/80/?63498', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(12, 'Greenfelder Inc', '672 Hodkiewicz Oval Suite 184', 'Kuhicfurt', '14959-8438', 'Malta', '345121403290289', '5445857544521508', '(809) 809-3086 x03001', 'murray.littel@example.org', 'https://lorempixel.com/150/80/?23972', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(13, 'Swaniawski, Murphy and Bradtke', '7805 Quigley Shore Apt. 330', 'East Mortimer', '33792-7355', 'Macedonia', '5123786533544073', '4539707394022', '503-488-1806 x896', 'tressa.weissnat@example.net', 'https://lorempixel.com/150/80/?34549', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(14, 'Moen-Boehm', '9516 Graham Curve Suite 594', 'Leatown', '94236', 'Monaco', '2681530908576968', '2542311235129964', '964-680-5155 x03732', 'olin31@example.net', 'https://lorempixel.com/150/80/?48097', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(15, 'Adams, Batz and Bednar', '36689 Gillian Alley', 'West Maya', '00729-1010', 'Chile', '5520153459285117', '2588835835657896', '+13473428342', 'nikolaus.emmalee@example.net', 'https://lorempixel.com/150/80/?24467', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(16, 'Pfeffer and Sons', '3457 Kadin Dale', 'Port Devin', '47671', 'Afghanistan', '2594751356113007', '4532989890849436', '+1-998-444-1343', 'bernhard.clement@example.com', 'https://lorempixel.com/150/80/?29440', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(17, 'Dach PLC', '50966 Swift Run Apt. 625', 'Port Taraland', '08734-8375', 'Anguilla', '2720512543503337', '2335914959709233', '+1 (628) 620-3868', 'robb52@example.org', 'https://lorempixel.com/150/80/?79160', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(18, 'Rogahn Inc', '7727 Katelyn Loop Apt. 947', 'West Elenorfurt', '47501', 'Turkey', '2500989088094334', '2429705537266168', '759.414.4628 x135', 'freddie.bruen@example.net', 'https://lorempixel.com/150/80/?65344', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(19, 'Sipes-Barrows', '1278 Raoul Circles', 'West Lontown', '20806', 'Iraq', '370087134151991', '6011993481676849', '(919) 468-8819 x47958', 'hilpert.ana@example.org', 'https://lorempixel.com/150/80/?32867', '2018-05-24 14:43:16', '2018-05-24 14:43:16'),
(20, 'Lemke, Gaylord and Jaskolski', '62845 Grimes Stravenue', 'Schusterstad', '72331-6860', 'Cote d\'Ivoire', '4556570322492', '4485744959411', '840-963-4859 x4210', 'nichole26@example.org', 'https://lorempixel.com/150/80/?91258', '2018-05-24 14:43:16', '2018-05-24 14:43:16');

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
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 9, 2, NULL, NULL);

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
(1, 1, 'Од инжењера до независног пословног консултанта', 'Припремајући се да дипломирате, сигурно проводите доста времена размишљајући шта ћете да радите после дипломирања. Вероватно ћете почети да радите, наставите студије, путујете, правите личне/породичне планове, а можда размишљате и да покренете свој бизнис.\r\nСви ови планови су остварљиви, али захтевају доста припрема, рада и спремности да преузмете известан ризик.\r\nНаше савремено окружење пружа невероватне могућности, али и глобалну конкуренцију, сложеност производа и захтева тржишта, ограничен приступ финансијама, ризик од неефикасног управљања ресурсима, лошег доношења стратешких одлука.\r\nОд почетка до краја ваше каријере, очекујте да ћете вероватно променити неколико компанија и индустрија, да ћете стално морати да учите нове ствари и да ћете морати да будете флексибилни и заинтересовани да усвојите нове идеје, начине пословања и нове професионалне могућности.\r\nУ току овог предавања, разговараћемо о професионалном развоју од инжењера-почетника, преко искусног инжењера који, или ради у великој организацији, или у својој фирми, до успешног менаџера или консултанта у некој технолошкој области.', 'Амфитеатар 65, ЕТФ', '2018-06-02', '12:00:00', 'Јелена', 'Вучетић', 'Др. Јелена Вучетић је оснивач консултантске фиме Alpha Mission, Inc. са седиштем у Александрији (Вирџинија, САД). Фокус ове фирме је у области телекомуникација, рачунара, технологије, апликација и образовања преко Интернета, укључујући инжењеринг, стратешко планирање, патенте, маркетинг, продају, операције и производњу.\r\nПре Alpha Mission, Inc, Др. Вучетић је основала фирму за развој и произвођу опреме и софтвера за бежичне телекомуникације - DTI. Фирма је успешно продата у 2003. години.\r\nДр. Вучетић је дипломирала, магистрирала и докторирала на ЕТФ-у у Београду, а такође је магистрирала и бизнис у САД (University of Phoenix).\r\nАутор је књиге \"Постати успешан техно-предузимач\", четири интернационална патента и многобројних публикација. Допринела је и развоју неколико стандарда у области бежичних телекомуникација.\r\nДр. Вучетић предаје на пост-дипломским студијама (бизнис и технологија) и ради као ментор докторским и МБА кандидатима. До сада је успешно менторисала више од 60 доктора наука.', NULL, 'https://lorempixel.com/150/80/?76568', '2018-05-25 10:57:28', '2018-05-25 10:54:28'),
(2, 2, 'Tailoring Computer Systems for Big Data and Tiny Technology Nodes', 'The unprecedented rate of data collection and the wide use of machine learning techniques have created a need for efficient processing, movement, and storage of vast amounts of data. Unfortunately, the capabilities of today’s computer systems to meet such needs are being challenged by the end of the conventional technology scaling (a.k.a. the death of Moore\'s law). Moreover, the end of technology scaling and the emergence of new and radically different technologies threaten to disrupt the half a century old balance of system resources in unpredictable ways, rendering traditional designs of systems and applications suboptimal and obsolete. In this talk I will show how computation, communication, and storage in datacenters can be specialized to provide significant efficiency gains, and how the proposed specialization of individual system components  affects the balance of the entire system. I will then present my vision of a framework for optimal designs of systems and applications in the rapidly changing technology space.', 'Сала 61', '2018-05-29', '12:00:00', 'Ђорђе', 'Јевђић', 'Ђорђе Јевђић је завршио Електротехнички факултет у Београду као студент генерације на Катедри за Рачунарску технику и информатику. Потом је завршио докторске студије на EPFL-у, у Швајцарској, где је радио на специјализованим архитектурама рачунара и меморијским системима за сервере, као и\r\nпост-докторске студије на Универзитету у Вашингтону у Сијетлу, где је радио на концепту апроксимативног чувања података. Након тога је провео годину дана као истраживач у компанији Microsoft Research у Редмонду, где је радио на архивирању података у синтетички ДНК. Тренутно је доцент на Рачунарском Факултету Националног Универзитета у Сингапуру. Добитник је више признања, укључујући награду за најбољи рад на конференцији ASPLOS, IEEE Micro Top Picks, Intel Doctoral Student Honor Fellowship, и стипендије за постдокторске студије Швајцарског Националног Фонда за Науку.', NULL, NULL, '2018-05-25 10:55:28', '2018-05-25 10:55:28'),
(3, 3, 'Financing Renewable Energy Projects', 'Renewable energy projects, especially in developing countries, face numerous challenges from the institutional, policy and regulatory level to the market and project level which can hamper the development and uptake of renewable energy. Eessentially, all projects go through four distinct phases: development,financing, implementation and operation. Strong equity sponsors supported by debt is a key driver through the first two phases. However, lack of market transparency,lack of financing and experience in project development, and lack of relevant information on regulations, markets and resource availability is something that could deraill development and financing and could  led to a lack of bankable projects.', 'Сала 56', '2018-05-16', '18:00:00', 'Marijan', 'Rančić', NULL, NULL, NULL, '2018-05-25 10:54:42', '2018-05-25 10:56:42');

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
(15, '2018_05_23_124937_create_money_contracts_table', 1),
(16, '2018_05_23_134944_create_contract_statuses_table', 1),
(17, '2018_05_24_092404_create_packet_item_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `money_contracts`
--

CREATE TABLE `money_contracts` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `packet_id` int(10) UNSIGNED NOT NULL,
  `start_of_contract` date NOT NULL,
  `end_of_contract` date NOT NULL,
  `status` smallint(6) NOT NULL,
  `facture_send` tinyint(1) DEFAULT NULL,
  `payment_done` tinyint(1) DEFAULT NULL,
  `date_of_payment` date NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `money_contracts`
--

INSERT INTO `money_contracts` (`id`, `company_id`, `packet_id`, `start_of_contract`, `end_of_contract`, `status`, `facture_send`, `payment_done`, `date_of_payment`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-05-25', '2020-05-25', 6, 1, 1, '2018-05-25', NULL, '2018-05-25 11:28:29', '2018-05-25 11:28:29'),
(2, 2, 1, '2018-05-26', '2020-05-26', 6, 1, 1, '2018-05-26', NULL, '2018-05-25 11:31:56', '2018-05-25 11:31:56'),
(3, 3, 1, '2018-06-04', '2020-05-27', 6, 1, 1, '2018-05-27', NULL, '2018-05-25 11:31:56', '2018-05-25 11:31:56'),
(4, 4, 2, '2018-05-28', '2020-05-28', 6, 1, 1, '2018-05-28', NULL, '2018-05-25 11:33:01', '2018-05-25 11:33:01'),
(5, 5, 2, '2018-05-29', '2020-05-29', 6, 1, 1, '2018-05-29', NULL, '2018-05-25 11:33:01', '2018-05-25 11:33:01'),
(6, 6, 2, '2018-05-30', '2020-05-30', 5, 1, NULL, '2018-05-30', NULL, '2018-05-25 11:33:01', '2018-05-25 11:33:01'),
(7, 7, 2, '2018-05-31', '2020-05-31', 5, 1, NULL, '2018-05-31', NULL, '2018-05-25 11:33:01', '2018-05-25 11:33:01'),
(8, 8, 2, '2018-06-01', '2020-06-01', 5, 1, NULL, '2018-06-01', NULL, '2018-05-25 11:33:01', '2018-05-25 11:33:01'),
(9, 9, 3, '2018-06-02', '2019-06-02', 4, 1, NULL, '2018-06-02', NULL, '2018-05-25 11:37:04', '2018-05-25 11:37:04'),
(10, 10, 3, '2018-06-03', '2019-06-03', 4, 1, NULL, '2018-06-03', NULL, '2018-05-25 11:37:04', '2018-05-25 11:37:04');

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
(1, 'Златни партнер', 15000, 24, 3, NULL, NULL),
(2, 'Сребрни партнер', 7500, 24, 5, NULL, NULL),
(3, 'Велики  партнер', 3000, 12, 10, NULL, NULL),
(4, 'Партнер', 1500, 12, 20, NULL, NULL),
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
(1, 'admin', NULL, NULL);

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
(1, 'milan', 'milan', 'pantovic', '111111', '2018-05-03', 'milan@gmail.com', '$2y$10$NfSG6R0J5fDjx.CYhTGiV.uaNvMd.tYFHVJKrpULobAQ6myMFPcGi', 1, '3rCi2A0AyEnQq5fELVVZkCA3MuQTi4rcarO3Ry3OBfLqALdZTPwk0zswWD6h', '2018-05-24 14:41:19', '2018-05-24 14:41:19'),
(2, 'dragan', 'dragan', 'bokan', '712', '2018-05-23', 'dragan@gmail.com', '$2y$10$LG1smXVGCcIryz8KNI0tPutBEhPzByE92Tb2vQFNE4kTFLRWuaRcu', 1, 'pyyXREWqPt11H7edkdX6XBrmXnzkk0qin7BKQxXBOyv347b7074mbiUu4RKu', '2018-05-25 12:06:35', '2018-05-25 12:06:35');

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
-- Indexes for table `money_contracts`
--
ALTER TABLE `money_contracts`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_user`
--
ALTER TABLE `company_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contract_statuses`
--
ALTER TABLE `contract_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `money_contracts`
--
ALTER TABLE `money_contracts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
