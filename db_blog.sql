-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Okt 2021 pada 06.26
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Design', 'web-design', '2021-10-10 23:13:09', '2021-10-10 23:13:09'),
(2, 'Programing', 'programing', '2021-10-10 23:13:10', '2021-10-10 23:13:10'),
(3, 'Personal', 'personal', '2021-10-10 23:13:10', '2021-10-10 23:13:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_22_091217_create_posts_table', 1),
(5, '2021_10_07_032838_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `publish_at`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 'Et sunt reiciendis cum enim.', 'aut-deleniti-nemo-et-esse-inventore', 'Hic aut rerum laboriosam doloribus iste et. Doloribus rerum natus quam explicabo vel. Modi repudiandae ducimus officia et nesciunt atque qui quam. Quas eos commodi voluptate inventore nihil.', '<p>Consequatur placeat qui enim cumque. Nihil sunt aut voluptatem sit accusantium in molestiae tempore. Minus id ex dolores.</p><p>Eos dolorem aut fugit et. Soluta in molestiae sed occaecati explicabo. Nihil molestiae id veniam iure.</p><p>Facere ipsum similique explicabo aut. Eaque a amet quam et omnis ut. Sed consequuntur error tempora quo quibusdam et et. Illum voluptatem maxime facere doloribus ipsa.</p><p>Impedit fuga consequuntur quasi et placeat. Voluptates ratione ut consequatur sed ut. Atque quo eos nam cumque neque quo.</p><p>Reiciendis et qui odio quos. Totam dolorem quia nesciunt voluptates. Error nobis voluptas et dolorem dolore. Dolorem dolores porro non voluptas sint.</p><p>Et et omnis a ut ad cum numquam. Nam fuga blanditiis sequi reprehenderit minus sunt qui. Quos sed assumenda voluptas.</p><p>Ut excepturi quidem ex voluptas. Nihil nesciunt quia quo optio hic itaque. Dolore ullam quia autem numquam quo eveniet est facilis.</p><p>Esse ullam nihil et sed harum odit. Cumque officia eaque rem optio accusamus sapiente. Doloribus quis ut voluptate consequatur dignissimos nam. Doloribus expedita adipisci omnis. Et et et atque voluptas.</p><p>Fugit sapiente nihil nisi velit soluta expedita molestias. Aut veniam corrupti cum voluptas qui aperiam repellat. Id officiis ut magni eius ullam ut omnis.</p><p>Repellat provident ea cum est. Ea adipisci sunt corrupti voluptate ut. Est quidem tempore corporis odit aut molestiae. Debitis id ut molestias minus et earum.</p>', NULL, '2021-10-10 23:13:10', '2021-10-10 23:13:10'),
(2, 2, 3, 'Sed omnis qui nemo.', 'rerum-commodi-consectetur-cupiditate-et-nihil-eius', 'Omnis vel voluptatem odio est et at officiis. Qui temporibus neque quisquam. Nesciunt assumenda facere rerum autem occaecati pariatur. Eligendi tempora porro animi alias.', '<p>Esse quisquam eos ipsa occaecati consequatur possimus odit. Possimus laboriosam ut dolor quam. Quo quis maiores dolor ut delectus. Qui sed fugiat ut.</p><p>Et neque quidem odit repellat ut ea. Cum odit qui aut. Perferendis nulla est perspiciatis et voluptatem. Nam aspernatur maiores ut et odio id ducimus.</p><p>At ut consequuntur quam voluptas. Repellat quia nesciunt aut laborum doloremque ut fugiat. Aut illum qui aspernatur quis veniam sed. Et dolorum veniam fuga quia ut nobis.</p><p>Reprehenderit autem sunt rem sit laboriosam et ea. Est nemo excepturi sed pariatur vitae labore sit. Nihil dolores aspernatur sequi fugiat porro mollitia incidunt. In est odit alias doloribus.</p><p>Odit nobis aut voluptatem vero quia non. Nihil aut fuga velit quo dignissimos porro. Et sint id debitis nemo. Consequuntur modi facilis quia dolore eveniet exercitationem.</p><p>Voluptate quo aut aspernatur commodi. Optio sint hic consequatur error dolor. Dolorem et sed et qui.</p><p>Rerum dolores modi consectetur reprehenderit. Consequatur ad consectetur occaecati explicabo quasi impedit. Consectetur culpa aut nemo et sit et ipsam.</p><p>Quia omnis asperiores nemo et molestiae est. Officiis asperiores earum sit voluptas. Unde expedita tenetur odit qui quia et atque consequatur. Similique eveniet rerum rerum reprehenderit est et a. Explicabo pariatur necessitatibus facere quos similique est enim.</p><p>Et distinctio omnis autem quidem aut rerum dolore. Est commodi quidem vero consequatur. Asperiores maxime illo non ducimus sunt neque. Dignissimos molestias ex est similique repellat molestias molestiae.</p><p>Ratione omnis qui laboriosam quia eos mollitia vel. Adipisci nihil itaque excepturi perferendis accusantium in. Nisi id minima in quam culpa enim perspiciatis. Est voluptatem eaque nemo qui delectus facilis adipisci. Velit cum aperiam alias molestiae unde et modi.</p>', NULL, '2021-10-10 23:13:10', '2021-10-10 23:13:10'),
(3, 3, 1, 'Consectetur molestias explicabo repudiandae facere.', 'architecto-inventore-in-ipsum', 'Et id sit reiciendis in nesciunt nam inventore. Et non sed sint magni illum delectus et. Similique dolorum ut ipsam incidunt. Qui adipisci voluptatem cum corrupti et ut vel.', '<p>Id placeat qui aliquid nisi excepturi qui. Cupiditate est sed qui dolorem perspiciatis. Exercitationem hic aperiam omnis aspernatur labore assumenda saepe. Tenetur corporis sed deleniti cumque dolores et.</p><p>Quo quis facere veritatis modi rerum sed est quaerat. Eligendi nemo ipsam ut quasi ut numquam dolores expedita. Soluta animi tempora quae omnis voluptas excepturi. Distinctio veniam maiores quidem ipsa dolorem ad.</p><p>Autem aliquam voluptas voluptatibus aut. Rerum illum aliquid corrupti minus vel. Quisquam nam dolorum at et ducimus.</p><p>Delectus facere vero harum ipsum sapiente deleniti culpa. Sit quia aut quas qui. Reiciendis vitae est numquam similique.</p><p>Aut excepturi quia rerum. Quis occaecati illum voluptatem laborum et quo error. Ea inventore asperiores quos ea est dolor. Repellat labore ut officiis dolorem.</p><p>Laudantium reiciendis ipsa illum sit perferendis animi. Rerum temporibus architecto adipisci soluta. Laboriosam facilis quas consectetur eius voluptas dicta esse. Vel nisi itaque et ut eos commodi.</p><p>At quia fugiat autem nihil. Eum est sed officiis qui perspiciatis cumque voluptate. Inventore rerum eius in dignissimos ducimus non architecto. Occaecati cupiditate nulla dolorem asperiores aspernatur nihil minus.</p>', NULL, '2021-10-10 23:13:10', '2021-10-10 23:13:10'),
(4, 1, 3, 'Enim sit sint ea nemo corrupti.', 'a-ut-sunt-dolorem-id-dolore-maxime', 'Et sunt unde sunt quisquam. Officia ducimus recusandae dignissimos. Quis sed deleniti saepe.', '<p>Libero est nostrum culpa atque. Dolores enim doloremque iste est fugiat accusamus. Earum provident voluptas nulla.</p><p>Maxime accusantium qui alias dignissimos qui. Esse natus quia et in consequatur est modi.</p><p>Mollitia totam nobis natus expedita officiis. Quo rerum id adipisci sequi in. Error vel ab dicta non vel facilis eum cupiditate. Laborum amet et quo voluptate vel quia.</p><p>Harum id natus aliquid ad. Quia consequatur soluta atque deserunt reiciendis. Laborum aut perspiciatis et consectetur. Nam porro vel beatae aut ullam facilis.</p><p>Voluptas qui sint alias qui molestias. Qui id fugit deserunt minus. Soluta sed ex vel repudiandae dolorum voluptatibus. Sint est quae voluptatem odio.</p><p>Nemo sit ut qui non. Aliquam magnam est eum autem non optio. Deleniti sit possimus repellat debitis numquam blanditiis consequatur quaerat.</p>', NULL, '2021-10-10 23:13:10', '2021-10-10 23:13:10'),
(5, 3, 2, 'Recusandae assumenda id perspiciatis.', 'nulla-quia-perspiciatis-omnis-quo-repudiandae', 'Laboriosam error eos laborum consectetur fugiat. Nobis eos rerum eveniet quisquam et. Consequatur cupiditate reiciendis quae perspiciatis qui nostrum. Aliquam quis saepe eligendi dolor esse.', '<p>Fugiat officiis quas quis deserunt occaecati. Quia ut esse officia repellendus placeat molestiae necessitatibus.</p><p>Ipsum ipsam qui qui voluptas ut dolorem. Rerum animi consequatur reiciendis est culpa eaque. Quis deleniti accusantium et autem libero incidunt.</p><p>Itaque quos earum alias sed unde recusandae maxime tempore. Voluptates qui ea neque.</p><p>Id quod odit quas incidunt aut. Deserunt iste totam nisi nam. Asperiores rerum fugit rerum.</p><p>Sapiente eos perspiciatis aliquid quis provident alias. Ipsam architecto recusandae natus consequuntur iure pariatur ea. Natus nihil qui dolor.</p>', NULL, '2021-10-10 23:13:10', '2021-10-10 23:13:10'),
(6, 2, 2, 'Cupiditate vero sunt fugit ut et eos rerum nihil molestias.', 'fugit-qui-sint-ex-repudiandae-quibusdam-eos-aut', 'Ab dolorem accusamus quia et necessitatibus. Pariatur non est distinctio. Sunt necessitatibus aliquam nemo.', '<p>Ut nihil quaerat neque qui consequuntur ex magnam. Sint et vel vero fugiat et id. Ipsam assumenda repudiandae animi sit qui. Aut distinctio velit praesentium incidunt animi ea nisi. Exercitationem ex id culpa eos est et accusantium.</p><p>Eligendi repudiandae iusto eum. Aut deleniti omnis perferendis deleniti sunt consectetur.</p><p>Qui consequatur sunt eius nam quas non. Qui eaque occaecati minima tempore aut cum laborum non. Accusantium fuga natus eligendi quaerat.</p><p>Eos beatae illo quidem assumenda. Maiores dignissimos dolore voluptatem vel eligendi totam voluptatem. A nihil nihil nulla facere optio.</p><p>Deserunt unde commodi repudiandae. Molestias esse nisi magnam recusandae dolores rerum et ut. Nulla culpa laboriosam id explicabo voluptatem voluptas expedita. Rerum tempore consequuntur unde.</p>', NULL, '2021-10-10 23:13:10', '2021-10-10 23:13:10'),
(7, 2, 1, 'Distinctio id et.', 'labore-et-voluptas-qui-quos-sapiente', 'Pariatur assumenda culpa reprehenderit est voluptatem repudiandae quos cupiditate. Illum qui reiciendis beatae qui ipsum aut quod odio.', '<p>Cumque quos omnis sed facere excepturi veritatis. Cupiditate cupiditate laborum aliquam qui id. Qui qui omnis officia repellendus dicta et laudantium.</p><p>Possimus nam dolores perspiciatis odit. Quasi a consequatur quia fuga ipsa voluptatem consequatur. Qui consequatur provident consequatur alias sed reiciendis explicabo. Sit possimus dicta numquam et.</p><p>Non adipisci consequuntur voluptas aut esse et harum. Ut eos quam provident nihil voluptas nostrum dicta. Et aut magnam placeat qui nobis et. Nam tempora voluptatem fugit dolorem qui natus et fugiat. Eius quae voluptates dignissimos asperiores vel.</p><p>In aliquid voluptas nostrum fuga architecto iste a et. Est adipisci aliquid ipsum. Quisquam et explicabo nihil qui esse ratione. Non dolores vel reiciendis veniam dicta temporibus voluptatum totam.</p><p>Eaque commodi et aut ut ipsa quia. Aut nihil repudiandae vel optio. Quae vel aut molestiae consequatur iste nemo possimus. Et quos sit sunt voluptatem aliquid.</p><p>Laborum perspiciatis nemo non. Sapiente fuga sit quo. Iure optio aperiam nemo et. Eligendi voluptatem quasi laudantium doloremque placeat quibusdam. Aut nemo quidem sed et in tempora fugiat.</p><p>At eos repudiandae est ut ex hic. Placeat fugit aspernatur fugit quia reiciendis porro fugiat. Et doloremque praesentium temporibus saepe harum labore. Enim dolorem aliquam ad sunt et molestias non et.</p><p>Ducimus dolorem debitis necessitatibus nihil molestiae aut facere et. Officiis cupiditate voluptas voluptas ullam. Tempore porro nemo vel odit.</p>', NULL, '2021-10-10 23:13:10', '2021-10-10 23:13:10'),
(8, 3, 2, 'Aut doloribus numquam tempora accusamus quasi.', 'in-magnam-voluptatibus-ea-a', 'Consequuntur qui eum nostrum explicabo ipsa adipisci suscipit. Modi temporibus eveniet qui molestiae.', '<p>Perferendis recusandae id blanditiis quidem. Non quam quam fugit velit facere accusantium quaerat ut. Similique aut aut modi laborum. Illo exercitationem voluptate quis reprehenderit ea qui.</p><p>Odit ratione quaerat sequi rerum quibusdam. Quia non aut qui ullam occaecati. Sit est libero repellendus incidunt ducimus amet eveniet. Et id deserunt et culpa quis culpa incidunt omnis.</p><p>Possimus et rerum minima recusandae. Et aut molestiae ea aut.</p><p>Quia nobis blanditiis cumque. Sit error neque est ullam sed. Est eos ex quo vel. Beatae at fugiat tempora nihil.</p><p>Pariatur rerum fugit quia nihil et. Iusto libero qui temporibus et voluptatibus. Rerum qui earum totam dolores et laboriosam. Natus magnam accusamus quia illo. Ratione hic tenetur vitae.</p><p>Natus rerum voluptatem adipisci. Incidunt rerum non iusto ut laborum fugiat. Velit eos repellat modi facilis id aspernatur perspiciatis.</p><p>Voluptas est libero nulla dolor. Recusandae corporis a eligendi vel illo reprehenderit fugit. Perferendis id voluptas est ut nesciunt omnis et.</p><p>Est quis porro omnis iste. Perspiciatis fuga ducimus odit corrupti. Animi animi rem nihil magni. Exercitationem explicabo magnam aliquam fugiat natus distinctio. Expedita maxime minima voluptatem possimus beatae.</p><p>Ex consectetur nobis in distinctio. Vitae ut illo hic vel aut qui. Quibusdam atque voluptas et sint soluta. Blanditiis accusamus neque aut laboriosam est voluptatem nam.</p><p>Adipisci inventore harum qui expedita facilis architecto. Placeat culpa nulla temporibus explicabo quibusdam maxime. Accusamus voluptas voluptatem consequatur magni. In facere minima similique.</p>', NULL, '2021-10-10 23:13:10', '2021-10-10 23:13:10'),
(9, 3, 3, 'Nulla officiis harum.', 'id-sint-ducimus-eveniet-temporibus', 'Ratione odit aliquid corrupti temporibus excepturi dolorem. Ea voluptas beatae expedita doloremque impedit. Ut cumque est sed. Praesentium illum vero impedit sit quod eum excepturi.', '<p>Excepturi voluptatibus qui totam quasi vel aut iusto optio. Eaque asperiores architecto animi.</p><p>Non quia deserunt sed omnis. In fugiat ut qui neque dolorum non cupiditate temporibus. Debitis atque voluptatem sint quis autem consequatur quia. Earum iure saepe quasi sed.</p><p>Quasi culpa similique omnis quo id. Et assumenda sit aspernatur error. Nulla voluptas qui omnis nemo. Vel nihil recusandae ipsum.</p><p>Vitae nihil cumque numquam voluptate. Explicabo et dolorum qui corrupti. Corrupti nisi sunt in consequuntur non molestiae et. Qui voluptatem et dolorem sint.</p><p>Odio id recusandae eveniet doloribus. Ab repellat cumque deserunt iste maxime ad. Voluptatum accusantium nihil est. Non quia soluta qui et.</p><p>Et vitae non quia. Quis ratione unde mollitia nemo nesciunt. Voluptate laboriosam voluptatibus laborum deleniti nostrum voluptatem vel. Totam omnis non quod veniam sed. Aperiam qui harum aut harum perspiciatis vel qui.</p>', NULL, '2021-10-10 23:13:10', '2021-10-10 23:13:10'),
(10, 3, 3, 'Consequatur et neque fuga aut et.', 'id-esse-facere-aut-qui', 'Laudantium et ab soluta sunt molestias reiciendis quod. Voluptates sequi praesentium est eum quis quis architecto. Pariatur sit sed aliquam ea aliquid voluptatem nesciunt.', '<p>Laborum deserunt quaerat fugit. Sed laborum nihil est placeat. Rerum reiciendis vel similique odio est possimus animi.</p><p>Repudiandae consequatur aut tenetur aut et minus perspiciatis. Quam voluptatum at doloribus repudiandae accusantium exercitationem. Rerum a et nesciunt voluptate. Beatae eos possimus temporibus culpa pariatur.</p><p>Sed nemo non cupiditate unde et laboriosam. Quas in dolorem deleniti ducimus vero quam sunt dolorum. Et nesciunt exercitationem explicabo eum atque quisquam. Fuga et pariatur minus necessitatibus sed. Omnis molestiae eligendi eos et suscipit quis maxime.</p><p>Nam neque animi autem. Molestias labore voluptates repellat debitis mollitia. Iure commodi similique praesentium.</p><p>At quod quae ea in et magni aliquid. Numquam non quis ex minima odit. Deleniti et delectus voluptatem.</p>', NULL, '2021-10-10 23:13:10', '2021-10-10 23:13:10'),
(11, 1, 3, 'Dolor sapiente sit dolor.', 'reiciendis-iste-quis-est-molestiae-suscipit-ducimus-sint', 'Nesciunt animi natus nisi voluptate iste tenetur qui. Ab voluptatem repudiandae consequuntur temporibus deleniti itaque velit. Consequatur nulla non voluptatibus minus aperiam omnis saepe.', '<p>Sit sint voluptatem tenetur dolor ut ducimus porro amet. Vel ut sit inventore temporibus. Autem vel et molestiae quam ut pariatur praesentium eos. Magni et quo repellendus expedita.</p><p>Pariatur itaque ut amet iusto placeat quaerat. Nihil maxime harum et voluptates aut. Voluptates tempore omnis eaque.</p><p>Labore sit est eos et reiciendis. Sint ut voluptatum velit accusantium. Perspiciatis molestiae veritatis qui ea asperiores enim ea.</p><p>Rerum sit assumenda voluptas ipsam ut et. Suscipit sed et eius. Qui aspernatur qui corrupti dolores. Ut animi suscipit reiciendis omnis qui asperiores odio non.</p><p>Ratione hic commodi sed officiis. Corrupti velit et est dolores nihil. Quo voluptatibus odio quam porro. Vel nisi eum itaque molestiae eum eos. Et sit ipsam saepe et ut iste ullam.</p><p>Quaerat consequatur libero fugiat impedit ut. Culpa maxime placeat perspiciatis veritatis rem nostrum eos. Totam autem sit et et cupiditate alias eos aut. Voluptas eos id et modi aut dolor.</p><p>Et qui architecto eum sed saepe. Nobis iste omnis rerum est minus vel. Qui in voluptatem cum nisi distinctio nemo dolorem.</p><p>Et distinctio consequatur earum quo. Nesciunt voluptatem vero illo eligendi distinctio laborum. Qui omnis qui et.</p><p>A amet similique voluptatem. Modi maxime commodi nesciunt et quos odio. Et ut asperiores consequuntur cumque sint adipisci ut. Laboriosam est sit perspiciatis.</p><p>Nihil debitis omnis beatae molestiae quia. Tenetur modi nobis nihil. Architecto optio maxime ad deleniti voluptates. Ipsum quod vel cupiditate perspiciatis maxime voluptas ex.</p>', NULL, '2021-10-10 23:13:10', '2021-10-10 23:13:10'),
(12, 2, 3, 'Ut beatae omnis voluptatem deserunt veniam praesentium qui similique.', 'voluptas-temporibus-illum-aperiam-qui-excepturi', 'Et saepe sed autem quia. Perspiciatis veritatis doloremque praesentium non praesentium sit fuga deserunt. Maxime error ut minima beatae nobis nisi et. Est ut corporis voluptatem sit.', '<p>Eum et cumque quia officiis. Eos necessitatibus praesentium pariatur cum tenetur dolor aut aliquam. Excepturi molestias ex perferendis et at neque.</p><p>Minus iure tenetur odit. Magnam a nostrum tenetur voluptas. Non aliquam eos et rerum ut officiis dicta. Placeat accusantium molestias qui et.</p><p>Sunt numquam voluptatem voluptatibus est facilis. Ut earum molestias modi eveniet. Vel quia cupiditate itaque et rerum est laudantium.</p><p>Voluptas amet inventore eligendi cumque cumque dolorem. Vitae facere quis quo hic facilis. Eos est blanditiis ipsum vel iusto id. Aut ipsum laborum architecto qui in itaque doloribus.</p><p>Vel cupiditate perferendis blanditiis quasi sint est aut. Porro officia voluptates id doloremque. Voluptas iste beatae amet. Error reprehenderit recusandae odio saepe incidunt.</p><p>Laboriosam voluptatibus quis iusto maxime quo. Voluptatibus repellat provident fugit numquam sunt aut. Ratione est aut aut eaque sed.</p><p>Mollitia delectus commodi voluptatem consequuntur. Quia et harum distinctio est quod cum laboriosam nemo. Consectetur fugit et iusto quis magnam est est qui. Autem nisi velit asperiores autem aut enim. Dolorem eos dolorem ut.</p><p>Repudiandae rem eius dolores in vitae sit. Fugit non quae nobis nisi non. Rem corrupti totam quos voluptas et.</p><p>Nesciunt mollitia consequatur occaecati quia reprehenderit quae. Eum error eveniet aspernatur expedita.</p>', NULL, '2021-10-10 23:13:11', '2021-10-10 23:13:11'),
(13, 1, 2, 'Deleniti aliquid qui et deleniti tempore fugiat pariatur hic.', 'non-et-in-hic-sed-tempora-quaerat-quis', 'Culpa blanditiis in quia quis minus id. Dignissimos est velit maxime quidem odit natus. Laborum voluptatem dicta iusto autem non et nisi adipisci. Sed dolorum et a voluptate.', '<p>Nam qui recusandae voluptatem dolores sunt aspernatur. Nobis aut similique minima iusto aut dolorum excepturi. Culpa totam quisquam dolorem qui.</p><p>Ipsa facere est dicta qui est minima. Ad ipsa labore dolorem provident animi dolore officia. Et enim nostrum ex dolorem odit. Ea recusandae vitae eos perspiciatis aut reprehenderit non voluptatem.</p><p>Nostrum sed omnis voluptatibus natus aut asperiores. Cum iste ab cum dolores. Non harum facilis unde nam nostrum unde.</p><p>Aperiam animi minus aut error rerum optio qui. Minima delectus consequuntur molestias error eveniet excepturi maxime.</p><p>Voluptas possimus sed aut et aut ipsum est. Dolores aliquam natus aut. Impedit quo et corporis tempore vero quaerat non.</p><p>Eveniet explicabo harum nulla et et vel quia. Voluptas in quam ipsa sed perspiciatis non consequatur. Aspernatur deleniti dolor non harum. Sed aut id et aut eos.</p><p>Modi est maiores vero numquam sequi ut aut. Quaerat provident et in officia molestiae perferendis dolores. Quod ut sint fugit quos aperiam.</p><p>Quos necessitatibus voluptatibus tempore autem perferendis et. Itaque fugit sapiente enim fuga. Et placeat vel labore sit ducimus. Autem molestiae tempore nihil dolore quia dignissimos quas.</p>', NULL, '2021-10-10 23:13:11', '2021-10-10 23:13:11'),
(14, 2, 1, 'Delectus sed et necessitatibus.', 'alias-quas-beatae-perspiciatis-sequi', 'Et porro quaerat soluta eligendi sapiente. Sed magnam eveniet eum eveniet aut rem non.', '<p>Reiciendis autem molestias dignissimos quis. Id sed aut ratione magni odit. Dicta possimus doloremque quae nemo. Et aut quidem voluptatem sed necessitatibus quia earum.</p><p>Molestias ipsa corrupti et error. Id at perferendis nulla vel sit laborum et. Officiis qui sunt reiciendis vel placeat. Reiciendis architecto id hic unde ut et.</p><p>Possimus eligendi accusantium mollitia soluta minima cum quam aut. Dolorem cum laudantium sint saepe numquam mollitia id. Aut quis in nesciunt ipsa. Sequi molestiae commodi velit ad laudantium.</p><p>Doloremque ipsam dicta doloremque et explicabo. Et est ab nostrum soluta. Soluta beatae eaque reprehenderit vel consectetur officia magnam.</p><p>Labore expedita quia omnis repellat. Eum est rerum officia qui in sed fugiat. Ipsa ut reprehenderit quo illum amet ut voluptas.</p><p>Commodi quidem exercitationem sed. Vitae magni et optio tempore a. Et recusandae temporibus quia beatae. Dolorem rem labore nemo voluptas.</p>', NULL, '2021-10-10 23:13:11', '2021-10-10 23:13:11'),
(15, 3, 1, 'Ea et omnis qui mollitia consequatur.', 'vitae-praesentium-nobis-ut-animi-iusto', 'Atque incidunt et alias et. Accusantium sit doloribus repudiandae voluptatibus ex nobis. Natus amet ea illo inventore. Qui assumenda delectus consequatur corporis corporis sunt nostrum iusto.', '<p>Esse qui recusandae molestias enim. Eum delectus culpa deserunt doloremque et. Ipsam rerum delectus quaerat. Ea quidem sint nisi non sed ut.</p><p>Facere fugiat aut saepe voluptates. Et eius et aut cumque repellendus. Ipsam sint vero quidem. Adipisci optio nulla facilis ipsam.</p><p>Rerum laborum ducimus et et. Et aut similique sed perspiciatis.</p><p>Qui maxime nostrum est repellendus repellendus. Nemo excepturi est est et quisquam. Minus odio aut alias et. Magni odit culpa aut quisquam ipsam.</p><p>Sapiente consectetur exercitationem qui commodi consequatur consequuntur ut perferendis. Aliquam ut ab inventore dicta.</p><p>Id labore et et cumque doloribus vel aspernatur vero. Sapiente fugiat et alias et quas fugit neque. Molestiae amet accusamus labore est animi.</p><p>Dolor nisi id et eaque. Ut vel necessitatibus veniam in. Molestiae ratione asperiores fugit voluptas voluptatem perspiciatis iste. Corrupti animi optio at consequatur ab ut dolorum atque.</p><p>Sed asperiores omnis consequatur laboriosam odit corporis corporis ut. Ea culpa reiciendis eius rem eveniet quis quisquam non. Occaecati dignissimos qui ullam qui aperiam quidem.</p>', NULL, '2021-10-10 23:13:11', '2021-10-10 23:13:11'),
(16, 3, 1, 'Dolores neque facere.', 'repudiandae-nobis-optio-quam-possimus-eum-dicta', 'Pariatur dolor mollitia laudantium est dignissimos deserunt sit. Est sit odit quae. Voluptatem est ut nihil et accusamus doloribus.', '<p>Optio itaque ab molestiae sint illum fugiat cum. Iure et molestiae adipisci sequi doloremque. Omnis adipisci ad pariatur dolorem occaecati ipsam ex. Architecto sit dolorem non quia.</p><p>Nulla blanditiis velit ex est. Consequatur cum ut facere deleniti. Nemo saepe nisi ea deleniti expedita fugiat eos. Atque nostrum est fuga et non qui.</p><p>Dolorem molestias sit eos voluptatem voluptates nam. Dicta voluptas corrupti maiores nam perferendis. Eos consequuntur est rerum non veritatis.</p><p>Dignissimos et est magnam. Ex cumque accusantium et impedit aperiam quod.</p><p>Aspernatur qui recusandae nihil minima perspiciatis dolores praesentium. Omnis saepe fugiat voluptate et quia vitae blanditiis. Enim perspiciatis totam consequatur deleniti vel. Qui corporis repudiandae rerum eius in.</p><p>Aut porro nobis facilis quia aperiam dolor beatae magnam. Tempora accusamus facilis voluptatem aut occaecati autem natus repudiandae. Est veniam dolores in maxime labore non. Atque asperiores eum dolorem deserunt.</p><p>Perspiciatis asperiores maxime rerum nihil ullam. Minima est ut voluptatem fuga molestiae rerum assumenda. Molestiae sunt aperiam nihil. Sint asperiores voluptatem non sed excepturi.</p>', NULL, '2021-10-10 23:13:11', '2021-10-10 23:13:11'),
(17, 2, 1, 'Voluptatibus nulla qui dolores adipisci aspernatur ea deleniti velit sunt similique.', 'eaque-cumque-autem-est-temporibus-suscipit', 'Id eius architecto unde cum dignissimos. Vitae voluptatem nesciunt nemo maiores. Voluptatem cum neque alias corporis corporis consequatur nemo sit.', '<p>Qui fuga ipsam consectetur cupiditate velit repellat quas. Omnis nobis inventore deleniti quis. Quisquam architecto enim sit expedita beatae.</p><p>Deleniti quasi ut earum rerum quidem repudiandae. Perspiciatis vel optio eos est.</p><p>Est corrupti est modi ut id. Vel quibusdam qui iure vitae repudiandae accusantium. Aperiam recusandae nam sit rerum sequi. Nisi autem voluptatem repellendus praesentium sit provident et eum.</p><p>Et ratione error quaerat quis sed quae. Sit fugit quod sint quaerat. Aliquid nihil sit ipsum aperiam velit eveniet perspiciatis corrupti. Voluptatem rerum laborum asperiores fugit a.</p><p>Quam optio qui tempore voluptas officiis quisquam dolorem. Et molestiae fuga dicta est. Eligendi corrupti corrupti rerum quis tempora eum doloremque id. Cupiditate et sunt dolor et beatae ut. Necessitatibus at ea voluptatum omnis animi.</p><p>Sit voluptas sed quo esse tempore vitae qui. Quam nihil voluptas facere magni et aut. Laborum exercitationem numquam nam quia ut asperiores repellendus.</p><p>Enim incidunt dignissimos aliquid sed ea. Sapiente sed architecto debitis laborum. Sint officia animi saepe ex sequi.</p>', NULL, '2021-10-10 23:13:11', '2021-10-10 23:13:11'),
(18, 2, 1, 'Voluptas quia cupiditate enim itaque et rerum accusantium ut.', 'ipsam-id-ipsum-possimus-commodi', 'Delectus perferendis repudiandae harum laudantium ut natus. Libero hic qui qui doloribus quisquam voluptatum. Itaque eos necessitatibus similique architecto porro atque ipsa.', '<p>Culpa quidem ea ullam dignissimos. Qui alias dignissimos optio dolorem quas. Quae sint dolorum omnis tempore non non sapiente. Suscipit consequatur consequatur et unde odit. Quidem exercitationem et rem et sint aut.</p><p>Vel blanditiis et amet vero ullam magnam. Qui deleniti rerum vel facilis nisi repudiandae perferendis est. Ab rerum odit eius non. At et architecto autem tempore fugit modi.</p><p>Esse quos recusandae dolorem voluptatem iste. Officia rerum inventore sunt. Asperiores ut repudiandae id iure. Error optio animi sed consectetur. Animi animi facere et.</p><p>Ea corporis sequi est nulla. Quasi magni at odio non voluptas. Sint sed est laudantium minima delectus.</p><p>Quasi fugiat voluptatibus vero consequuntur quidem sint veniam. Est similique est eum enim rem error voluptas. Quibusdam itaque provident minus minima ut et voluptatibus. Natus animi qui ratione consequatur ipsum sunt et quas.</p><p>Tempora fuga molestias velit minima sunt. Maiores magni eveniet et eaque dolores. Rerum accusamus a rerum accusamus incidunt laborum in.</p><p>Ipsum quia ut et libero. Illum quaerat repellendus et fugit. Et hic sed voluptatibus. Inventore maxime blanditiis sed sapiente.</p><p>Vel recusandae nihil hic modi delectus. Enim hic dignissimos earum voluptate iure reiciendis ut. Nobis et maiores et eligendi.</p><p>Repellat sit est aut. Quo repellat labore sint.</p>', NULL, '2021-10-10 23:13:11', '2021-10-10 23:13:11'),
(19, 2, 2, 'Incidunt voluptatibus quos.', 'et-esse-et-rerum-illum', 'Animi pariatur aliquid enim nisi. Laborum natus sed repudiandae quod laborum. Aliquam ut sit blanditiis distinctio dolor illo a. Totam ut tempore possimus enim fuga et porro.', '<p>Autem ut magnam illo quo facilis. Molestias delectus officiis qui totam non dolores sunt et. Consequatur fugiat sed saepe fugiat pariatur facilis maiores. Et dolores totam deleniti voluptas alias eveniet.</p><p>Nemo sint minus nemo. Est corporis voluptates a magni eveniet. Qui facere accusamus consectetur quia. Nostrum debitis neque voluptatem harum voluptatem natus.</p><p>Doloribus corrupti rerum porro officiis odit. Adipisci ipsa dignissimos mollitia placeat. Neque nisi adipisci soluta ullam nam consequatur incidunt iusto.</p><p>Quae quidem aut vel optio sed distinctio. Tempora aut velit nihil voluptas perferendis non sint vel. Suscipit sunt ipsa molestiae quod.</p><p>Laudantium deserunt placeat molestiae. Laboriosam placeat voluptatem aut nihil. Quos dolor voluptatem qui et ut et.</p><p>Harum dolor est impedit. Sunt dolore qui commodi autem. Eaque dolorum rem praesentium aliquam. Expedita esse dolor rerum consequatur dolores maxime fugit laborum.</p><p>Voluptatum et accusantium aut quae rerum mollitia. Repellendus cum corrupti vel et saepe omnis dolores voluptas.</p><p>Occaecati est et et sequi. Soluta assumenda et vitae animi est suscipit neque. Dicta consequuntur voluptatum similique sequi pariatur.</p>', NULL, '2021-10-10 23:13:11', '2021-10-10 23:13:11'),
(20, 1, 1, 'Voluptatem voluptatem architecto aut qui eum accusantium.', 'provident-eaque-facere-sed-iure', 'Voluptas voluptates consequatur maiores eius impedit nobis. Ipsam culpa soluta voluptatibus. Alias nulla et quibusdam doloribus minima et natus. Doloribus cum dolorem dolore atque voluptatem voluptas doloremque. Corrupti tempore soluta qui illo molestiae.', '<p>Optio laborum est provident. Voluptatem sapiente quisquam dolore provident. Iure eum vel magnam asperiores quam voluptatibus ut illo. Debitis reprehenderit quia libero et a deserunt. Occaecati consequatur labore quod facere necessitatibus qui voluptate.</p><p>Suscipit omnis ad natus vitae et ad. Amet expedita ut sit est velit ut. Libero qui est voluptatem numquam necessitatibus molestias et.</p><p>Quo nihil nobis laudantium ut ipsam. Enim vel blanditiis eos fugiat.</p><p>Perspiciatis porro dolore praesentium omnis labore dolore id. Fugiat magni minima atque animi. Facilis porro inventore placeat alias.</p><p>Nostrum nam dolores nihil. Aspernatur quia in et eligendi. Rerum accusantium veniam fuga architecto sunt. Similique amet sit earum nobis aut.</p><p>Ipsum veritatis aut similique sunt. Error asperiores eaque numquam voluptatem sequi ipsum magnam. Deleniti qui pariatur unde. Reiciendis fugiat molestiae sed ut aut.</p><p>Optio dolorem consequatur ipsum repellendus in. Reiciendis aspernatur eveniet vel reiciendis veniam ullam aut ut. Ut reprehenderit adipisci voluptatem vel est ut. Molestiae eaque eum qui dignissimos repudiandae reprehenderit nemo dicta.</p>', NULL, '2021-10-10 23:13:11', '2021-10-10 23:13:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vicky Lestari', 'ardianto.novi', 'raihan.budiman@example.org', '2021-10-10 23:13:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Anl5ODSrV9', '2021-10-10 23:13:09', '2021-10-10 23:13:09'),
(2, 'Ivan Cakrajiya Prasetyo', 'diah96', 'spratiwi@example.net', '2021-10-10 23:13:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'flMX0GX4bu', '2021-10-10 23:13:09', '2021-10-10 23:13:09'),
(3, 'Rangga Mangunsong', 'belinda34', 'edward16@gmail.com', '2021-10-10 23:13:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5xvTVMn6NU1saofXvkgrfKg1Lr5M5vpcdxjJmG5HJ17skdtZePiH6g04IdZ7', '2021-10-10 23:13:09', '2021-10-10 23:13:09'),
(4, 'gandi robet', 'gandiro', 'gandirobet@gmail.com', NULL, '$2y$10$Hpumdn/nCVy.uoq566Sj6OfPuZzf1TulnNu8pgU2nVPLYIs62DzDu', NULL, '2021-10-11 09:25:44', '2021-10-11 09:25:44');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
