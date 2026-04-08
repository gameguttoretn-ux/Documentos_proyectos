-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-04-2026 a las 15:33:42
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chekinpro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add association', 6, 'add_association'),
(22, 'Can change association', 6, 'change_association'),
(23, 'Can delete association', 6, 'delete_association'),
(24, 'Can view association', 6, 'view_association'),
(25, 'Can add code', 7, 'add_code'),
(26, 'Can change code', 7, 'change_code'),
(27, 'Can delete code', 7, 'delete_code'),
(28, 'Can view code', 7, 'view_code'),
(29, 'Can add nonce', 8, 'add_nonce'),
(30, 'Can change nonce', 8, 'change_nonce'),
(31, 'Can delete nonce', 8, 'delete_nonce'),
(32, 'Can view nonce', 8, 'view_nonce'),
(33, 'Can add user social auth', 9, 'add_usersocialauth'),
(34, 'Can change user social auth', 9, 'change_usersocialauth'),
(35, 'Can delete user social auth', 9, 'delete_usersocialauth'),
(36, 'Can view user social auth', 9, 'view_usersocialauth'),
(37, 'Can add partial', 10, 'add_partial'),
(38, 'Can change partial', 10, 'change_partial'),
(39, 'Can delete partial', 10, 'delete_partial'),
(40, 'Can view partial', 10, 'view_partial'),
(41, 'Can add user', 11, 'add_usuario'),
(42, 'Can change user', 11, 'change_usuario'),
(43, 'Can delete user', 11, 'delete_usuario'),
(44, 'Can view user', 11, 'view_usuario'),
(45, 'Can add hotel', 12, 'add_hotel'),
(46, 'Can change hotel', 12, 'change_hotel'),
(47, 'Can delete hotel', 12, 'delete_hotel'),
(48, 'Can view hotel', 12, 'view_hotel'),
(49, 'Can add habitacion', 13, 'add_habitacion'),
(50, 'Can change habitacion', 13, 'change_habitacion'),
(51, 'Can delete habitacion', 13, 'delete_habitacion'),
(52, 'Can view habitacion', 13, 'view_habitacion'),
(53, 'Can add huesped', 14, 'add_huesped'),
(54, 'Can change huesped', 14, 'change_huesped'),
(55, 'Can delete huesped', 14, 'delete_huesped'),
(56, 'Can view huesped', 14, 'view_huesped'),
(57, 'Can add Acompañante', 15, 'add_acompanante'),
(58, 'Can change Acompañante', 15, 'change_acompanante'),
(59, 'Can delete Acompañante', 15, 'delete_acompanante'),
(60, 'Can view Acompañante', 15, 'view_acompanante'),
(61, 'Can add reserva', 16, 'add_reserva'),
(62, 'Can change reserva', 16, 'change_reserva'),
(63, 'Can delete reserva', 16, 'delete_reserva'),
(64, 'Can view reserva', 16, 'view_reserva'),
(65, 'Can add acompanante', 17, 'add_acompanante'),
(66, 'Can change acompanante', 17, 'change_acompanante'),
(67, 'Can delete acompanante', 17, 'delete_acompanante'),
(68, 'Can view acompanante', 17, 'view_acompanante'),
(69, 'Can add notificacion', 18, 'add_notificacion'),
(70, 'Can change notificacion', 18, 'change_notificacion'),
(71, 'Can delete notificacion', 18, 'delete_notificacion'),
(72, 'Can view notificacion', 18, 'view_notificacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(13, 'habitaciones', 'habitacion'),
(12, 'hotel', 'hotel'),
(15, 'huespedes', 'acompanante'),
(14, 'huespedes', 'huesped'),
(18, 'notificaciones', 'notificacion'),
(17, 'reservas', 'acompanante'),
(16, 'reservas', 'reserva'),
(5, 'sessions', 'session'),
(6, 'social_django', 'association'),
(7, 'social_django', 'code'),
(8, 'social_django', 'nonce'),
(10, 'social_django', 'partial'),
(9, 'social_django', 'usersocialauth'),
(11, 'usuarios', 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-03-01 21:34:51.361494'),
(2, 'contenttypes', '0002_remove_content_type_name', '2026-03-01 21:34:51.460636'),
(3, 'auth', '0001_initial', '2026-03-01 21:34:51.711152'),
(4, 'auth', '0002_alter_permission_name_max_length', '2026-03-01 21:34:51.765839'),
(5, 'auth', '0003_alter_user_email_max_length', '2026-03-01 21:34:51.776054'),
(6, 'auth', '0004_alter_user_username_opts', '2026-03-01 21:34:51.781466'),
(7, 'auth', '0005_alter_user_last_login_null', '2026-03-01 21:34:51.787067'),
(8, 'auth', '0006_require_contenttypes_0002', '2026-03-01 21:34:51.789817'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2026-03-01 21:34:51.797358'),
(10, 'auth', '0008_alter_user_username_max_length', '2026-03-01 21:34:51.803955'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2026-03-01 21:34:51.810445'),
(12, 'auth', '0010_alter_group_name_max_length', '2026-03-01 21:34:51.827741'),
(13, 'auth', '0011_update_proxy_permissions', '2026-03-01 21:34:51.836021'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2026-03-01 21:34:51.844214'),
(15, 'usuarios', '0001_initial', '2026-03-01 21:34:52.140847'),
(16, 'admin', '0001_initial', '2026-03-01 21:34:52.294642'),
(17, 'admin', '0002_logentry_remove_auto_add', '2026-03-01 21:34:52.303902'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2026-03-01 21:34:52.313843'),
(19, 'hotel', '0001_initial', '2026-03-01 21:34:52.331943'),
(20, 'habitaciones', '0001_initial', '2026-03-01 21:34:52.349622'),
(21, 'habitaciones', '0002_initial', '2026-03-01 21:34:52.426205'),
(22, 'hotel', '0002_initial', '2026-03-01 21:34:52.495987'),
(23, 'huespedes', '0001_initial', '2026-03-01 21:34:52.665437'),
(24, 'notificaciones', '0001_initial', '2026-03-01 21:34:52.743388'),
(25, 'notificaciones', '0002_initial', '2026-03-01 21:34:52.812520'),
(26, 'reservas', '0001_initial', '2026-03-01 21:34:53.013583'),
(27, 'sessions', '0001_initial', '2026-03-01 21:34:53.048518'),
(28, 'default', '0001_initial', '2026-03-01 21:34:53.240617'),
(29, 'social_auth', '0001_initial', '2026-03-01 21:34:53.242662'),
(30, 'default', '0002_add_related_name', '2026-03-01 21:34:53.257566'),
(31, 'social_auth', '0002_add_related_name', '2026-03-01 21:34:53.260254'),
(32, 'default', '0003_alter_email_max_length', '2026-03-01 21:34:53.274121'),
(33, 'social_auth', '0003_alter_email_max_length', '2026-03-01 21:34:53.276929'),
(34, 'default', '0004_auto_20160423_0400', '2026-03-01 21:34:53.288001'),
(35, 'social_auth', '0004_auto_20160423_0400', '2026-03-01 21:34:53.290699'),
(36, 'social_auth', '0005_auto_20160727_2333', '2026-03-01 21:34:53.309828'),
(37, 'social_django', '0006_partial', '2026-03-01 21:34:53.355841'),
(38, 'social_django', '0007_code_timestamp', '2026-03-01 21:34:53.392835'),
(39, 'social_django', '0008_partial_timestamp', '2026-03-01 21:34:53.426575'),
(40, 'social_django', '0009_auto_20191118_0520', '2026-03-01 21:34:53.518326'),
(41, 'social_django', '0010_uid_db_index', '2026-03-01 21:34:53.546602'),
(42, 'social_django', '0011_alter_id_fields', '2026-03-01 21:34:53.824542'),
(43, 'social_django', '0012_usersocialauth_extra_data_new', '2026-03-01 21:34:53.940381'),
(44, 'social_django', '0013_migrate_extra_data', '2026-03-01 21:34:53.960145'),
(45, 'social_django', '0014_remove_usersocialauth_extra_data', '2026-03-01 21:34:54.003617'),
(46, 'social_django', '0015_rename_extra_data_new_usersocialauth_extra_data', '2026-03-01 21:34:54.041654'),
(47, 'social_django', '0016_alter_usersocialauth_extra_data', '2026-03-01 21:34:54.054041'),
(48, 'social_django', '0017_usersocialauth_user_social_auth_uid_required', '2026-03-01 21:34:54.127491'),
(49, 'social_django', '0004_auto_20160423_0400', '2026-03-01 21:34:54.131213'),
(50, 'social_django', '0005_auto_20160727_2333', '2026-03-01 21:34:54.133614'),
(51, 'social_django', '0002_add_related_name', '2026-03-01 21:34:54.135545'),
(52, 'social_django', '0003_alter_email_max_length', '2026-03-01 21:34:54.138101'),
(53, 'social_django', '0001_initial', '2026-03-01 21:34:54.140188'),
(54, 'usuarios', '0002_usuario_profile_picture', '2026-04-02 12:23:32.257961'),
(55, 'usuarios', '0003_usuario_is_suspended', '2026-04-02 22:55:47.652174'),
(56, 'notificaciones', '0003_alter_notificacion_tipo_alter_notificacion_usuario', '2026-04-04 00:12:02.458890');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2zl414ccu4x0sshx0y5svzo3rkvtusqu', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiRjRZU2dmVE9KUEFwdHFyRDZReko1RVdreW5zU1ZQTWwiLCJmYWNlYm9va19zdGF0ZSI6InhsS0ljeGRHODd4MkRERzkwRDdGaUx5UVc2azRsUk9aIn0:1vwoVf:k3R8RxERo_kGzhwf_A1-y9fPzxeQA04b9uPDGw5y4j8', '2026-03-15 21:39:31.270338'),
('6dg7utzdqd2zzauixr3fqkwmnaops3sb', '.eJxVjEEOwiAQRe_C2pBhigVcuu8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnERgxan3zFQfKS6E75TvTUZW12XOchdkQftcmqcntfD_Tso1Mu3BjSDZiDmrCxYMIguOGc1jqNSQ0aHiY2iEJmM1ngOVrkcGEzWgBnE-wPgXDc8:1w9RAY:Qb1fhf0qTzUI_fLIn8qTIjuPB5LPb8kmbTy2DJSr9yo', '2026-04-19 17:21:54.456237'),
('6yay850f6wgpa1u72gunuorjjqc1dvbm', '.eJxVjMsOwiAQRf-FtSE8C7h07zeQYQakaiAp7cr479qkC93ec859sQjbWuM28hJnYmdmBDv9jgnwkdtO6A7t1jn2ti5z4rvCDzr4tVN-Xg7376DCqN9aByDpJiNkSOAFEupUJAUEnZOFoNBbj05TEkUrAjBKEwgr0EzOFmTvDxtVOKs:1w9VJF:NMeDCZ1J9iSAsF12_S7uw716RkEfMfkytCe87HHUey8', '2026-04-19 21:47:09.285751'),
('9ws2k60ewk9snt9eihin50f94jry8ckb', '.eJxVjMsOgjAURP-la9PQB6V16Z5vILf3IaihCYWV8d-FhIUuZ86ZeasBtnUctsrLMJG6KtOoy2-ZAZ88H4QeMN-LxjKvy5T1oeiTVt0X4tftdP8ORqjjvra5NRgkYZM8IbXe2sRpj5J8FAR24AXFxpYoBwM5d-woiBMjwLFTny8kTDlk:1vxQ65:drO5Mi_Gbpge0NEpa60_yTxAYKzRkpqJpeuozQ60bRk', '2026-03-17 13:47:37.806054'),
('mx03gtgzn88rq8prv46m6jzif69s48bf', '.eJxVjEEOwiAQRe_C2pBhigVcuu8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnERgxan3zFQfKS6E75TvTUZW12XOchdkQftcmqcntfD_Tso1Mu3BjSDZiDmrCxYMIguOGc1jqNSQ0aHiY2iEJmM1ngOVrkcGEzWgBnE-wPgXDc8:1wAHA3:1pE40q8jw9FGslmFo67_DStkJ3vNyZVPiAiimdOA-9E', '2026-04-22 00:52:51.614462'),
('ns8k6x738z2q3b3tkzjk2zwtbmei9my4', '.eJxVjsEOwiAQRP-FsyFA3QIevfsNZGG3Um1KUujJ-O-2pgc9zsybybxEwLXlsFZewkjiIowSp18zYnryvCf0wPleZCpzW8Yod0QeaZW3QjxdD_ZvIGPNe9to6DuyLg5WqfOmnNOOUvTW2H5gZ5mQDSvjPSN3FAE6z8QA3vUI22gujafvS63fHyPTPEk:1vyWai:Kmk47j2Yd3VmZQRmHx8ctWye0aTsSPIKqUF0Qm2p_Tw', '2026-03-20 14:55:48.864686'),
('sb65xscpd8yfgmi8f38j2sxmpvc9clko', '.eJxVjEEOwiAQRe_C2pBhigVcuu8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnERgxan3zFQfKS6E75TvTUZW12XOchdkQftcmqcntfD_Tso1Mu3BjSDZiDmrCxYMIguOGc1jqNSQ0aHiY2iEJmM1ngOVrkcGEzWgBnE-wPgXDc8:1w98e0:pGUJItexP0zO4BwuhJIMWpnzdmQonH3QPeJhlO9xhCs', '2026-04-18 21:35:04.699120'),
('yvie5g6he7g2yfxi7bdlu6zsvochywpg', '.eJxVjsEOgjAQRP-lZ9O0WxYaj979hmbbXSxKaALlRPx3wXDQ67w3k9lUoLXmsC4yh4HVVTlUl98wUnrJdBB-0vQoOpWpzkPUh6JPuuh7YRlvp_s3kGnJezt14p3tAUG4FwLnW_aYepcMI7GxLbcYm9RZhwTIZtfQW8NNZDAI-2guVcbvS4vvD1MZPKs:1w9qTS:pe77v-8kn0MoPIT_VYlSoWa3BUGpigwuuig1o4kkmJ0', '2026-04-20 20:23:06.874511');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones_habitacion`
--

CREATE TABLE `habitaciones_habitacion` (
  `id` bigint NOT NULL,
  `numero` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `hotel_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitaciones_habitacion`
--

INSERT INTO `habitaciones_habitacion` (`id`, `numero`, `tipo`, `estado`, `hotel_id`) VALUES
(39, 'A41', 'Individual', 'ocupada', 14),
(42, 'A006', 'Familiar', 'mantenimiento', 15),
(43, 'A003', 'Individual', 'ocupada', 15),
(44, 'A004', 'Suite', 'libre', 15),
(45, 'A41', 'Doble', 'libre', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel_hotel`
--

CREATE TABLE `hotel_hotel` (
  `id` bigint NOT NULL,
  `nombre` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tiene_parqueadero` tinyint(1) NOT NULL,
  `direccion` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `usuario_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hotel_hotel`
--

INSERT INTO `hotel_hotel` (`id`, `nombre`, `logo`, `tiene_parqueadero`, `direccion`, `telefono`, `email`, `fecha_creacion`, `usuario_id`) VALUES
(14, 'Samoco', 'logos/hotel_4ZYPIr3.png', 1, 'manzana-A casa-1', '3046347364', 'usop46117@gmail.com', '2026-04-03 00:30:18.170708', 32),
(15, 'Hotel tocarema', 'logos/hotel_SeXNIK4.png', 1, 'Carrera 5 No. 19-41, Girardot 252431', '36558748', 'valorant7785eee@gmail.com', '2026-04-04 21:20:54.488924', 34),
(16, 'Los Angeles', 'logos/hotel_xc12CtI.jpg', 1, 'Carrera 5 No. 19-41, santa marta', '32258794', 'hotel@gmai.com', '2026-04-05 21:20:04.723257', 36),
(17, 'Los Angeles', 'logos/hotel1_xCFQuip.jpg', 1, 'Carrera 5 No. 19-41,BOGOTA', '32258794', 'Alvarez@gmail.com', '2026-04-05 21:49:47.049287', 34),
(18, 'nicaragua', 'logos/hotel2_wfA8Uhw.jpg', 1, 'Carrera 5 No. 19-41,Santa marta', '33488488', 'suarezrodriguezjuannicolas412@gmail.com', '2026-04-06 13:16:35.883736', 42),
(19, 'Hotel Zamba', 'logos/zamba.jpg', 1, 'Carrera 12 #19-24, 252431 Girardot, Colombia', '3225447877', 'estela@gmail.com', '2026-04-07 19:30:40.700082', 34),
(20, 'hotel macarena', 'logos/hotel1_ZbsvZXb.jpg', 1, 'Calle 4 4-16', '3133034316', 'hallangclaude@gmail.com', '2026-04-08 00:45:53.370117', 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `huespedes_acompanante`
--

CREATE TABLE `huespedes_acompanante` (
  `id` bigint NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `documento` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `huesped_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `huespedes_acompanante`
--

INSERT INTO `huespedes_acompanante` (`id`, `nombre`, `documento`, `huesped_id`) VALUES
(17, 'henry portela', '1006625494', 22),
(18, 'Duvan', '23151668', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `huespedes_huesped`
--

CREATE TABLE `huespedes_huesped` (
  `id` bigint NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `documento` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tiene_vehiculo` tinyint(1) NOT NULL,
  `placa` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `acompanantes` int NOT NULL,
  `hotel_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `huespedes_huesped`
--

INSERT INTO `huespedes_huesped` (`id`, `nombre`, `documento`, `correo`, `telefono`, `tiene_vehiculo`, `placa`, `acompanantes`, `hotel_id`) VALUES
(21, 'Duvan', '541871534', 'Holahh@gmail.com', '6514876184', 1, 'NONE', 0, 14),
(22, 'Edgar cruz españa', '1024487855', 'ercruz64@gmail.com', '6514876184', 0, '', 0, 15),
(23, 'Duvan Alvarez', '148748641', 'Duvan@gmail.com', '322545578', 1, 'ADS1457', 0, 15),
(24, 'duvan alvarez', '2345564864', 'duvan@gmail.com', '3564864768', 1, '564JGG', 0, 15),
(25, 'sofia Alvarez', '10425025455', 'sifua@gmail.com', '456343483', 1, '564JGG', 0, 15),
(26, 'davis martinez', '10425025455', 'hola@gmail.com', '3254574454', 1, 'DSW458', 0, 14),
(27, 'daniela landivar', '1114379835', 'daniela@gmail.com', '3134562343', 1, '564JGG', 0, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones_notificacion`
--

CREATE TABLE `notificaciones_notificacion` (
  `id` bigint NOT NULL,
  `tipo` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `mensaje` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `leida` tinyint(1) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `hotel_id` bigint NOT NULL,
  `usuario_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notificaciones_notificacion`
--

INSERT INTO `notificaciones_notificacion` (`id`, `tipo`, `mensaje`, `leida`, `fecha`, `hotel_id`, `usuario_id`) VALUES
(93, 'reserva', '🏨 El recepcionista recep_14_kwqv creó la habitación A41 (Individual)', 1, '2026-04-03 00:31:15.940907', 14, 32),
(94, 'reserva', '📅 El recepcionista recep_14_kwqv creó una reserva para Duvan en habitación A41', 1, '2026-04-03 00:31:55.360412', 14, 32),
(95, 'checkout', '✅ Check-out realizado: Duvan - Hab A41 por recep_14_kwqv', 1, '2026-04-03 00:32:13.476355', 14, 32),
(96, 'reserva', '🔧 El recepcionista recep_14_kwqv puso en mantenimiento la habitación A41', 1, '2026-04-04 00:14:42.047165', 14, 32),
(97, 'reserva', '🏨 El recepcionista recep_15_cvus creó la habitación A41 (Individual)', 1, '2026-04-04 21:26:04.377317', 15, 34),
(98, 'reserva', '🏨 El recepcionista recep_15_cvus creó la habitación A001 (Matrimonial)', 1, '2026-04-04 21:26:15.926913', 15, 34),
(99, 'reserva', '🏨 El recepcionista recep_15_cvus creó la habitación A002 (Familiar)', 1, '2026-04-04 21:26:24.165709', 15, 34),
(100, 'reserva', '🏨 El recepcionista recep_15_cvus creó la habitación A003 (Individual)', 1, '2026-04-04 21:26:31.456053', 15, 34),
(101, 'reserva', '🏨 El recepcionista recep_15_cvus creó la habitación A004 (Suite)', 1, '2026-04-04 21:26:38.501618', 15, 34),
(102, 'reserva', '🔧 El recepcionista recep_15_cvus puso en mantenimiento la habitación A001', 1, '2026-04-04 21:26:41.849693', 15, 34),
(103, 'reserva', '✅ El recepcionista recep_15_cvus quitó el mantenimiento de la habitación A001', 1, '2026-04-04 21:27:11.794101', 15, 34),
(104, 'reserva', '🗑️ El recepcionista recep_15_cvus eliminó la habitación A001', 1, '2026-04-04 21:27:14.952352', 15, 34),
(105, 'reserva', '📅 El recepcionista recep_15_cvus creó una reserva para Edgar cruz españa en habitación A002', 1, '2026-04-04 21:28:10.775714', 15, 34),
(106, 'reserva', '📅 El recepcionista recep_15_cvus creó una reserva para Duvan Alvarez en habitación A004', 1, '2026-04-04 21:29:52.440506', 15, 34),
(107, 'checkout', '✅ Check-out realizado: Duvan Alvarez - Hab A004 por recep_15_cvus', 1, '2026-04-04 21:30:43.762844', 15, 34),
(108, 'reserva', '📅 El recepcionista recep_15_cvus creó una reserva para duvan alvarez en habitación A003', 1, '2026-04-04 23:34:00.489647', 15, 34),
(109, 'reserva', '📅 El recepcionista recep_15_cvus creó una reserva para sofia en habitación A004', 1, '2026-04-05 01:19:11.290441', 15, 34),
(110, 'reserva', '🔧 El recepcionista recep_15_cvus puso en mantenimiento la habitación A41', 1, '2026-04-05 21:25:45.271881', 15, 34),
(111, 'reserva', '✅ El recepcionista recep_15_cvus quitó el mantenimiento de la habitación A41', 1, '2026-04-05 21:26:13.575163', 15, 34),
(112, 'checkout', '✅ Check-out realizado: Edgar cruz españa - Hab A002 por recep_15_cvus', 1, '2026-04-05 21:37:35.073455', 15, 34),
(113, 'reserva', '🗑️ El recepcionista recep_15_cvus eliminó la habitación A41', 1, '2026-04-05 21:52:51.071470', 15, 34),
(114, 'reserva', '🔧 El recepcionista recep_15_cvus puso en mantenimiento la habitación A002', 1, '2026-04-05 21:52:53.421196', 15, 34),
(115, 'checkout', '✅ Check-out realizado: duvan alvarez - Hab A003 por recep_15_cvus', 1, '2026-04-05 21:53:11.722959', 15, 34),
(116, 'reserva', '🏨 El recepcionista recep_15_cvus creó la habitación A41 (Doble)', 1, '2026-04-05 21:54:14.407361', 15, 34),
(117, 'reserva', '✅ El recepcionista recep_14_kwqv quitó el mantenimiento de la habitación A41', 0, '2026-04-06 14:05:14.647897', 14, 32),
(118, 'reserva', '📅 El recepcionista recep_14_kwqv creó una reserva para davis martinez en habitación A41', 0, '2026-04-06 14:05:58.328233', 14, 32),
(119, 'reserva', '🏨 El recepcionista recep_15_cvus creó la habitación A005 (Suite)', 1, '2026-04-08 00:48:21.916517', 15, 34),
(120, 'reserva', '✅ El recepcionista recep_15_cvus quitó el mantenimiento de la habitación A002', 1, '2026-04-08 00:48:27.987288', 15, 34),
(121, 'reserva', '🔧 El recepcionista recep_15_cvus puso en mantenimiento la habitación A002', 1, '2026-04-08 00:48:33.176801', 15, 34),
(122, 'reserva', '🗑️ El recepcionista recep_15_cvus eliminó la habitación A005', 1, '2026-04-08 00:48:47.331377', 15, 34),
(123, 'reserva', '📅 El recepcionista recep_15_cvus creó una reserva para daniela landivar en habitación A003', 1, '2026-04-08 00:50:42.637235', 15, 34),
(124, 'checkout', '✅ Check-out realizado: sofia Alvarez - Hab A004 por recep_15_cvus', 1, '2026-04-08 00:51:52.102209', 15, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_acompanante`
--

CREATE TABLE `reservas_acompanante` (
  `id` bigint NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `documento` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reserva_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas_acompanante`
--

INSERT INTO `reservas_acompanante` (`id`, `nombre`, `documento`, `telefono`, `reserva_id`) VALUES
(1, 'Sofia', '1024487855', NULL, 29),
(3, 'Duvan Alvarez', '23151668', NULL, 30),
(4, 'Duvan', '23151668', NULL, 29),
(5, 'daniel', '214774577', NULL, 31),
(6, 'davis martinez', '10425025455', NULL, 31),
(7, 'felipe rojas', '102458678', NULL, 32),
(8, 'jose enoc', '1247858745', NULL, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_reserva`
--

CREATE TABLE `reservas_reserva` (
  `id` bigint NOT NULL,
  `fecha_entrada` datetime(6) NOT NULL,
  `fecha_salida` datetime(6) NOT NULL,
  `placa` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tipo_vehiculo` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `activa` tinyint(1) NOT NULL,
  `creada` datetime(6) NOT NULL,
  `habitacion_id` bigint NOT NULL,
  `huesped_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas_reserva`
--

INSERT INTO `reservas_reserva` (`id`, `fecha_entrada`, `fecha_salida`, `placa`, `tipo_vehiculo`, `activa`, `creada`, `habitacion_id`, `huesped_id`) VALUES
(26, '2026-04-08 05:00:00.000000', '2026-04-15 05:00:00.000000', NULL, NULL, 0, '2026-04-03 00:31:55.354339', 39, 21),
(27, '2026-04-07 05:00:00.000000', '2026-04-14 05:00:00.000000', '', '', 0, '2026-04-04 21:28:10.731528', 42, 22),
(28, '2026-04-08 05:00:00.000000', '2026-04-16 05:00:00.000000', '1244DES', 'moto', 0, '2026-04-04 21:29:52.427827', 44, 23),
(29, '2026-04-07 05:00:00.000000', '2026-04-14 05:00:00.000000', '564JGG', '', 0, '2026-04-04 23:34:00.480973', 43, 24),
(30, '2026-04-05 05:00:00.000000', '2026-04-06 05:00:00.000000', '564JGG', '', 0, '2026-04-05 01:19:11.278380', 44, 25),
(31, '2026-04-07 05:00:00.000000', '2026-04-08 05:00:00.000000', 'DSW458', '', 1, '2026-04-06 14:05:58.312999', 39, 26),
(32, '2026-04-08 05:00:00.000000', '2026-04-16 05:00:00.000000', '564JGG', 'moto', 1, '2026-04-08 00:50:42.624579', 43, 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` bigint NOT NULL,
  `server_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `issued` int NOT NULL,
  `lifetime` int NOT NULL,
  `assoc_type` varchar(64) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` bigint NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` bigint NOT NULL,
  `server_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` int NOT NULL,
  `salt` varchar(65) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` bigint NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `next_step` smallint UNSIGNED NOT NULL,
  `backend` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `data` json NOT NULL DEFAULT (_utf8mb4'{}')
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` bigint NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `extra_data` json NOT NULL DEFAULT (_utf8mb4'{}')
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_usuario`
--

CREATE TABLE `usuarios_usuario` (
  `id` bigint NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `rol` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `creado` datetime(6) NOT NULL,
  `profile_picture` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_usuario`
--

INSERT INTO `usuarios_usuario` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `rol`, `telefono`, `creado`, `profile_picture`, `is_suspended`) VALUES
(32, 'pbkdf2_sha256$1000000$Muqq1ji86uUViEdR4N9uEN$ouXX7PTDQ07A6AvMA+LCC0lyhLLS2FrU7lkG6tOKmFI=', '2026-04-05 17:25:43.588306', 0, 'carlos', 'Carlos ', 'Lopez', 'net54pe+987s98ret@zohomail.com', 0, 1, '2026-04-03 00:29:51.942687', 'admin', '322274157', '2026-04-03 00:29:53.174341', 'perfiles/profile_F9SPgBm.jpg', 0),
(33, 'pbkdf2_sha256$1000000$bNfzsd6nD0xyLuLL6pr4zg$42ym5eTSyxYIwqrz+SdsXAYUEyLlLuM4YO/Xwp179pI=', '2026-04-06 14:04:11.698200', 0, 'recep_14_kwqv', 'Duvan', 'Álvarez Caro', 'usop46117@gmail.com', 0, 1, '2026-04-03 00:30:18.174315', 'recep', '3046347364', '2026-04-03 00:30:18.174579', 'perfiles/profile_zEB4YGV.jpg', 0),
(34, 'pbkdf2_sha256$1000000$z2wp7wiPjeZZ2vWt0t69b2$tzc1mVMQ1tj7uVoP1kvJTsPafknWtoiNPIqtyghckw0=', '2026-04-08 00:56:15.779865', 0, 'Andres Alvarez', 'Duvan', 'Álvarez Caro', 'duvanalvarezprivado2022@gmail.com', 0, 1, '2026-04-04 21:19:09.201825', 'admin', '3046347364', '2026-04-04 21:19:10.449029', 'perfiles/profile_z5ovBjp.jpg', 1),
(35, 'pbkdf2_sha256$1000000$9JOHUpzZnQRr3L7O1HY3yk$1c5iW6i5OPwTPqgt2h7raHgNsSp3TWW+uTTOBYUFBe0=', '2026-04-08 00:47:36.897696', 0, 'recep_15_cvus', 'David', 'Paez', 'valorant7785eee@gmail.com', 0, 0, '2026-04-04 21:20:54.492668', 'recep', '3022072998', '2026-04-04 21:20:54.492927', 'perfiles/profile_AOzXQdb.jpg', 0),
(36, 'pbkdf2_sha256$1000000$194mpJd0zlfX8FOi0o3yzK$sSEkMIPD0pdl3YviFp6HcmSU8FeI2t+dBlY80olrY70=', '2026-04-05 21:19:06.945074', 0, 'david23', 'David', 'Peres', 'Gbot44@outlook.com', 0, 1, '2026-04-05 21:18:51.597488', 'admin', '3022072998', '2026-04-05 21:18:53.187648', 'perfiles/profile_f0ip2zx.jpg', 0),
(37, 'pbkdf2_sha256$1000000$fRctkGHqj8cctIca2R1zY1$sh11I5nK88a44FKNDq3Ncqr4YgLPU/r/9iG6Lytmg3Y=', NULL, 0, 'recep_16_hgvk', 'Recepcionista Los Angeles', '', 'hotel@gmai.com', 0, 1, '2026-04-05 21:20:04.731285', 'recep', NULL, '2026-04-05 21:20:04.731540', '', 0),
(38, 'pbkdf2_sha256$1000000$MNPfOd8rXXd2vf3t9876KM$8ywZqBu8oISHOHVFe3ptWDQdOMpxYgMzQqsgPIoX650=', '2026-04-05 21:30:45.859633', 0, 'Mdf1344', '', '', 'juan@gmail.com', 0, 1, '2026-04-05 21:30:25.174730', 'admin', NULL, '2026-04-05 21:30:26.480799', '', 0),
(39, 'pbkdf2_sha256$1000000$eC2ZDfDwi6AJuYPwfLrlCZ$P7N0m80ef7bjh/rOaXxkpR6Ox4HTWIPs5GY5QYrRqF4=', NULL, 0, 'recep_15_rbae', 'Duvan', '', 'pruebaschekinpro@gmail.com', 0, 1, '2026-04-05 21:33:47.784713', 'recep', NULL, '2026-04-05 21:33:49.278780', '', 0),
(40, 'pbkdf2_sha256$1000000$hL7n39P2q4TGcUMKUmdviX$DCr8Yfmk+iO8Dzo3HyP4ruOyGdZpFU6V0d53vub9Pwk=', '2026-04-05 22:38:55.866635', 0, 'usop23', '', '', 'usop@gmail.com', 0, 1, '2026-04-05 21:44:38.930917', 'admin', NULL, '2026-04-05 21:44:40.280476', '', 0),
(41, 'pbkdf2_sha256$1000000$idsxGvUtw5lqqkyQRZbS91$YN4CQK84w3g5GGs0sUApsTsx4XtYoalHJD9a4cT+zlI=', NULL, 0, 'recep_17_mzom', 'Recepcionista Los Angeles', '', 'Alvarez@gmail.com', 0, 1, '2026-04-05 21:49:47.052558', 'recep', NULL, '2026-04-05 21:49:47.052946', '', 0),
(42, 'pbkdf2_sha256$1000000$q7vluFr6QilWbvcnUhtH0a$t3X0hYQVOUkvSZBoWNQEP817lF0Djg8tGfxojQMmgz0=', '2026-04-07 19:21:53.359348', 0, 'nicolas123', 'David', 'Rojas', 'nicolas@gmail.com', 0, 1, '2026-04-06 13:15:04.942669', 'admin', '3022072998', '2026-04-06 13:15:06.102699', 'perfiles/profile_AqL3D2M.jpg', 0),
(43, 'pbkdf2_sha256$1000000$xd0GYMZddx2jj7lk6Hc6B8$c9/8Fk6w6LGUj2/Px63jLRImFSQvU7UWkzmJIPs/a+c=', '2026-04-06 13:21:36.548358', 0, 'recep_18_oxsu', 'David', 'Álvarez Caro', 'suarezrodriguezjuannicolas412@gmail.com', 0, 1, '2026-04-06 13:16:35.887795', 'recep', '3046347364', '2026-04-06 13:16:35.888009', 'perfiles/profile_NDdjz5r.jpg', 0),
(44, 'pbkdf2_sha256$1000000$br8IspfNggDuVMyFckrlEV$+adqxx8zVc1KcKyWOS6Pvc9KSvMaJmOO7laiAqZomM8=', NULL, 0, 'recep_19_olgk', 'Recepcionista Hotel Zamba', '', 'estela@gmail.com', 0, 1, '2026-04-07 19:30:40.703350', 'recep', NULL, '2026-04-07 19:30:40.703712', '', 0),
(45, 'pbkdf2_sha256$1000000$lCN5d4CDc2L5S6qK126MhO$QM7dJukHvhDzvQ+qHQsztnQ6nWFKVzJJkmXyAGjhVfI=', '2026-04-08 00:44:40.668422', 0, 'Hallang russ', '', '', 'Hallangruss988@gmail.com', 0, 1, '2026-04-08 00:44:25.714668', 'admin', NULL, '2026-04-08 00:44:26.871731', '', 0),
(46, 'pbkdf2_sha256$1000000$uMQx3qPU6OAIQpybUNQ8LX$l2SJFYlfZ4C2KyCUdbSD1AaUyDYEO9h35aSQyMagfJc=', NULL, 0, 'recep_20_mdyn', 'Recepcionista hotel macarena', '', 'hallangclaude@gmail.com', 0, 1, '2026-04-08 00:45:53.374939', 'recep', NULL, '2026-04-08 00:45:53.375138', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_usuario_groups`
--

CREATE TABLE `usuarios_usuario_groups` (
  `id` bigint NOT NULL,
  `usuario_id` bigint NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_usuario_user_permissions`
--

CREATE TABLE `usuarios_usuario_user_permissions` (
  `id` bigint NOT NULL,
  `usuario_id` bigint NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_usuarios_usuario_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `habitaciones_habitacion`
--
ALTER TABLE `habitaciones_habitacion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `habitaciones_habitacion_hotel_id_numero_ce64e4a9_uniq` (`hotel_id`,`numero`);

--
-- Indices de la tabla `hotel_hotel`
--
ALTER TABLE `hotel_hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_hotel_usuario_id_825096e3_fk_usuarios_usuario_id` (`usuario_id`);

--
-- Indices de la tabla `huespedes_acompanante`
--
ALTER TABLE `huespedes_acompanante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `huespedes_acompanant_huesped_id_da8a9e23_fk_huespedes` (`huesped_id`);

--
-- Indices de la tabla `huespedes_huesped`
--
ALTER TABLE `huespedes_huesped`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `huespedes_huesped_hotel_id_documento_f407516a_uniq` (`hotel_id`,`documento`);

--
-- Indices de la tabla `notificaciones_notificacion`
--
ALTER TABLE `notificaciones_notificacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notificaciones_notificacion_hotel_id_06e8e627_fk_hotel_hotel_id` (`hotel_id`),
  ADD KEY `notificaciones_notif_usuario_id_4bc090a3_fk_usuarios_` (`usuario_id`);

--
-- Indices de la tabla `reservas_acompanante`
--
ALTER TABLE `reservas_acompanante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservas_acompanante_reserva_id_49b0b8bf_fk_reservas_reserva_id` (`reserva_id`);

--
-- Indices de la tabla `reservas_reserva`
--
ALTER TABLE `reservas_reserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservas_reserva_habitacion_id_cedf2016_fk_habitacio` (`habitacion_id`),
  ADD KEY `reservas_reserva_huesped_id_36549baa_fk_huespedes_huesped_id` (`huesped_id`);

--
-- Indices de la tabla `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indices de la tabla `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Indices de la tabla `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indices de la tabla `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Indices de la tabla `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersoci_user_id_17d28448_fk_usuarios_` (`user_id`),
  ADD KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`);

--
-- Indices de la tabla `usuarios_usuario`
--
ALTER TABLE `usuarios_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `usuarios_usuario_groups`
--
ALTER TABLE `usuarios_usuario_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_usuario_groups_usuario_id_group_id_4ed5b09e_uniq` (`usuario_id`,`group_id`),
  ADD KEY `usuarios_usuario_groups_group_id_e77f6dcf_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `usuarios_usuario_user_permissions`
--
ALTER TABLE `usuarios_usuario_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_usuario_user_pe_usuario_id_permission_id_217cadcd_uniq` (`usuario_id`,`permission_id`),
  ADD KEY `usuarios_usuario_use_permission_id_4e5c0f2f_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `habitaciones_habitacion`
--
ALTER TABLE `habitaciones_habitacion`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `hotel_hotel`
--
ALTER TABLE `hotel_hotel`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `huespedes_acompanante`
--
ALTER TABLE `huespedes_acompanante`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `huespedes_huesped`
--
ALTER TABLE `huespedes_huesped`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `notificaciones_notificacion`
--
ALTER TABLE `notificaciones_notificacion`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de la tabla `reservas_acompanante`
--
ALTER TABLE `reservas_acompanante`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `reservas_reserva`
--
ALTER TABLE `reservas_reserva`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_usuario`
--
ALTER TABLE `usuarios_usuario`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `usuarios_usuario_groups`
--
ALTER TABLE `usuarios_usuario_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_usuario_user_permissions`
--
ALTER TABLE `usuarios_usuario_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_usuarios_usuario_id` FOREIGN KEY (`user_id`) REFERENCES `usuarios_usuario` (`id`);

--
-- Filtros para la tabla `habitaciones_habitacion`
--
ALTER TABLE `habitaciones_habitacion`
  ADD CONSTRAINT `habitaciones_habitacion_hotel_id_a7098ee8_fk_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_hotel` (`id`);

--
-- Filtros para la tabla `hotel_hotel`
--
ALTER TABLE `hotel_hotel`
  ADD CONSTRAINT `hotel_hotel_usuario_id_825096e3_fk_usuarios_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios_usuario` (`id`);

--
-- Filtros para la tabla `huespedes_acompanante`
--
ALTER TABLE `huespedes_acompanante`
  ADD CONSTRAINT `huespedes_acompanant_huesped_id_da8a9e23_fk_huespedes` FOREIGN KEY (`huesped_id`) REFERENCES `huespedes_huesped` (`id`);

--
-- Filtros para la tabla `huespedes_huesped`
--
ALTER TABLE `huespedes_huesped`
  ADD CONSTRAINT `huespedes_huesped_hotel_id_a49476fd_fk_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_hotel` (`id`);

--
-- Filtros para la tabla `notificaciones_notificacion`
--
ALTER TABLE `notificaciones_notificacion`
  ADD CONSTRAINT `notificaciones_notif_usuario_id_4bc090a3_fk_usuarios_` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios_usuario` (`id`),
  ADD CONSTRAINT `notificaciones_notificacion_hotel_id_06e8e627_fk_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_hotel` (`id`);

--
-- Filtros para la tabla `reservas_acompanante`
--
ALTER TABLE `reservas_acompanante`
  ADD CONSTRAINT `reservas_acompanante_reserva_id_49b0b8bf_fk_reservas_reserva_id` FOREIGN KEY (`reserva_id`) REFERENCES `reservas_reserva` (`id`);

--
-- Filtros para la tabla `reservas_reserva`
--
ALTER TABLE `reservas_reserva`
  ADD CONSTRAINT `reservas_reserva_habitacion_id_cedf2016_fk_habitacio` FOREIGN KEY (`habitacion_id`) REFERENCES `habitaciones_habitacion` (`id`),
  ADD CONSTRAINT `reservas_reserva_huesped_id_36549baa_fk_huespedes_huesped_id` FOREIGN KEY (`huesped_id`) REFERENCES `huespedes_huesped` (`id`);

--
-- Filtros para la tabla `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersoci_user_id_17d28448_fk_usuarios_` FOREIGN KEY (`user_id`) REFERENCES `usuarios_usuario` (`id`);

--
-- Filtros para la tabla `usuarios_usuario_groups`
--
ALTER TABLE `usuarios_usuario_groups`
  ADD CONSTRAINT `usuarios_usuario_gro_usuario_id_7a34077f_fk_usuarios_` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios_usuario` (`id`),
  ADD CONSTRAINT `usuarios_usuario_groups_group_id_e77f6dcf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `usuarios_usuario_user_permissions`
--
ALTER TABLE `usuarios_usuario_user_permissions`
  ADD CONSTRAINT `usuarios_usuario_use_permission_id_4e5c0f2f_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `usuarios_usuario_use_usuario_id_60aeea80_fk_usuarios_` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios_usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
