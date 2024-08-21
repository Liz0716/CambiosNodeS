-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-08-2024 a las 04:41:36
-- Versión del servidor: 9.0.0
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_restaurant`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `idcategory` char(36) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`idcategory`, `name`) VALUES
('15882cd9-822e-4f09-99cc-1a1d2a80e648', 'Aderezos'),
('39769cbc-0018-4e46-8ca6-8e588f4f14f1', 'Carnes'),
('4716bb4e-0793-4c76-9b48-3dd8e7a9ba9a', 'Snacks'),
('624deee2-880a-4038-b854-8bb915698fe2', 'Verduras'),
('64afaea8-be6c-49ae-8e99-32132dd89630', 'Alitas'),
('75474887-e53a-4102-9e7d-e6ae0dbc0a90', 'Salsas'),
('899a14ca-d2bc-41c0-87f9-119b3a3492ce', 'Bebidas'),
('c8d2abf8-6441-4ee5-9e1f-0ce644c25ec5', 'Pan'),
('da99cc44-03a0-457a-8711-4660c3b5b45b', 'Hamburguesas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredients`
--

CREATE TABLE `ingredients` (
  `idingredients` char(36) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `extra` tinyint(1) DEFAULT NULL COMMENT '0 NO\n1 SI',
  `cost` int DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL COMMENT '0 NO\n1 SI',
  `active` tinyint(1) DEFAULT '1' COMMENT '0 NO\n1 SI',
  `category_idcategory` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `ingredients`
--

INSERT INTO `ingredients` (`idingredients`, `name`, `stock`, `extra`, `cost`, `required`, `active`, `category_idcategory`) VALUES
('01998a5c-fb07-4530-a4f8-a768b4a6148a', 'Mostaza', NULL, 1, 5, 0, 1, '15882cd9-822e-4f09-99cc-1a1d2a80e648'),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', 'Tocino', NULL, 1, 15, 0, 1, '39769cbc-0018-4e46-8ca6-8e588f4f14f1'),
('2bf644d5-764d-4089-b61d-3286e2b77935', 'Aguacate', NULL, 1, 5, 0, 1, '624deee2-880a-4038-b854-8bb915698fe2'),
('2dae0398-1cb4-4ce4-ba32-6591093abc79', 'Bufalo', NULL, 0, 0, 1, 1, '75474887-e53a-4102-9e7d-e6ae0dbc0a90'),
('39816725-cd03-46c0-9bbc-c60d6cd57674', 'BBQ', NULL, 0, 0, 1, 1, '75474887-e53a-4102-9e7d-e6ae0dbc0a90'),
('45a530b6-7b25-4810-b1f7-0333ba27e2c1', 'Piña', NULL, 1, 5, 1, 1, '624deee2-880a-4038-b854-8bb915698fe2'),
('47cbe5e6-e25d-423f-a3b1-c549efd46048', 'Mayonesa', NULL, 1, 5, 0, 1, '15882cd9-822e-4f09-99cc-1a1d2a80e648'),
('4c7a5984-2d45-49a8-8585-c26e9d1b179b', 'Alitas', NULL, 1, 10, 0, 1, '64afaea8-be6c-49ae-8e99-32132dd89630'),
('51bebb5c-905f-4da7-a230-53a20e3ecb47', 'Catsup', NULL, 1, 5, 0, 1, '15882cd9-822e-4f09-99cc-1a1d2a80e648'),
('5a5f27ec-e323-42c0-9732-319c321245d7', 'Queso', NULL, 1, 10, 0, 1, '39769cbc-0018-4e46-8ca6-8e588f4f14f1'),
('5cda80f5-805e-4597-af7f-b10b083c34f9', 'Mango Habanero', NULL, 0, 0, 1, 1, '75474887-e53a-4102-9e7d-e6ae0dbc0a90'),
('66493266-63a6-4615-aee5-609a38b277f4', 'Carne', NULL, 1, 20, 1, 1, '39769cbc-0018-4e46-8ca6-8e588f4f14f1'),
('6712a556-efb0-4b57-890f-af425f0e7291', 'Tamarindo Chipotle', NULL, 0, 0, 1, 1, '75474887-e53a-4102-9e7d-e6ae0dbc0a90'),
('7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', 'Cebolla', NULL, 1, 5, 0, 1, '624deee2-880a-4038-b854-8bb915698fe2'),
('97ee5474-8475-4669-9151-1670322b43a9', 'Pan', NULL, 0, 0, 1, 1, 'c8d2abf8-6441-4ee5-9e1f-0ce644c25ec5'),
('a67ea817-5488-41fa-af15-b4053bce174b', 'Lechuga', NULL, 1, 5, 0, 1, '624deee2-880a-4038-b854-8bb915698fe2'),
('c1159dea-bbcc-4476-8f3a-aa1064bde790', 'Jamon', NULL, 1, 15, 0, 1, '39769cbc-0018-4e46-8ca6-8e588f4f14f1'),
('d6ae448f-a918-47b5-8a06-fb782cd5b1de', 'Chimichurri', NULL, 0, 0, 1, 1, '75474887-e53a-4102-9e7d-e6ae0dbc0a90'),
('e3a161e8-85e6-45bb-8241-8e14ddf3cbe4', 'Mango Chipotle', NULL, 0, 0, 1, 1, '75474887-e53a-4102-9e7d-e6ae0dbc0a90'),
('ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', 'Jitomate', NULL, 1, 5, 0, 1, '624deee2-880a-4038-b854-8bb915698fe2'),
('f913001f-4e89-49be-aa05-d602d4829764', 'Agridulce', NULL, 0, 0, 1, 1, '75474887-e53a-4102-9e7d-e6ae0dbc0a90'),
('feb5737d-b33c-43c2-b5f8-de9b56f50777', 'BBQ Habanero', NULL, 0, 0, 1, 1, '75474887-e53a-4102-9e7d-e6ae0dbc0a90');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `not_ingredient`
--

CREATE TABLE `not_ingredient` (
  `ingredients_idingredients` char(36) NOT NULL,
  `order_details_idorderdetail` char(36) NOT NULL,
  `type` tinyint(1) DEFAULT NULL COMMENT '0 SIN\n1 EXTRA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `not_ingredient`
--

INSERT INTO `not_ingredient` (`ingredients_idingredients`, `order_details_idorderdetail`, `type`) VALUES
('01998a5c-fb07-4530-a4f8-a768b4a6148a', '03b6c5bf-97e8-4deb-bd4f-fe67f7372690', 0),
('01998a5c-fb07-4530-a4f8-a768b4a6148a', '2435799a-28a7-43c0-b8ae-7097bb6c6942', 0),
('01998a5c-fb07-4530-a4f8-a768b4a6148a', '3096b248-abd6-4a96-b897-f79d2ec5270b', 0),
('01998a5c-fb07-4530-a4f8-a768b4a6148a', '6523e0c8-366a-4ea3-a740-b21be3e5d42a', 0),
('01998a5c-fb07-4530-a4f8-a768b4a6148a', '7e42f625-ba0f-4592-8c8b-9623cd07884a', 0),
('01998a5c-fb07-4530-a4f8-a768b4a6148a', '85d18ed9-1612-4354-aa69-e850e23a7ece', 0),
('01998a5c-fb07-4530-a4f8-a768b4a6148a', '9e5b3262-c91a-4cbd-9b24-0884e0fbfade', 0),
('01998a5c-fb07-4530-a4f8-a768b4a6148a', 'd1f19eb1-7e67-4461-b682-4bc3fcd08ab4', 0),
('01998a5c-fb07-4530-a4f8-a768b4a6148a', 'd84c141b-ef91-4604-9f6a-8db9c36efddd', 0),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', '02126e10-9d0f-4f1b-9d47-dcc2235db68d', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', '06736290-fe0c-41f4-ac35-64ab921a027d', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', '145acd3e-2b81-4d79-9974-dd6806393d62', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', '2435799a-28a7-43c0-b8ae-7097bb6c6942', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', '3096b248-abd6-4a96-b897-f79d2ec5270b', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', '31a093ad-b3bb-4f33-8cda-2aeb4368c385', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', '4ccda14f-0d0f-469a-a459-a6bc82ec9092', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', '4e77c328-971c-41d0-8fa2-174bf8075638', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', '5b22ec21-f784-4a40-bc39-1015fb6d6d23', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', '6523e0c8-366a-4ea3-a740-b21be3e5d42a', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', '7e42f625-ba0f-4592-8c8b-9623cd07884a', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', '81ecc1d5-50dd-4184-8452-1f0e2f597eec', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', '85d18ed9-1612-4354-aa69-e850e23a7ece', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', '8ed25683-c879-4432-8a94-40c2b490b66e', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', 'ab5866d4-a168-4e26-8694-606abfb13bc3', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', 'b64513f2-f28a-40f4-8aa9-be31514ea20c', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', 'e0a33fa2-cd0b-4ce9-966e-be8becd756f5', 1),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', 'e47f2f03-b5ce-4019-910c-088aa937e493', 0),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', 'eb4ccc3d-e29b-494f-be65-3a26cf2cea7f', 0),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', 'fbc5fe5f-de1b-4ba5-9beb-b34be7b6425e', 0),
('043fd498-aa67-4b0f-8776-46f58a53fb2c', 'fe5de939-f7af-4c1a-9219-363c177fc6b9', 1),
('2bf644d5-764d-4089-b61d-3286e2b77935', '02126e10-9d0f-4f1b-9d47-dcc2235db68d', 0),
('45a530b6-7b25-4810-b1f7-0333ba27e2c1', 'd3b6a130-8fa5-4de8-9155-c8b31e1199ef', 1),
('47cbe5e6-e25d-423f-a3b1-c549efd46048', '02126e10-9d0f-4f1b-9d47-dcc2235db68d', 0),
('47cbe5e6-e25d-423f-a3b1-c549efd46048', '4e77c328-971c-41d0-8fa2-174bf8075638', 0),
('47cbe5e6-e25d-423f-a3b1-c549efd46048', 'c8b95cd0-f84f-4f6e-8965-daa98a84eb6a', 0),
('4c7a5984-2d45-49a8-8585-c26e9d1b179b', '525eff2a-d23e-4d83-a5fd-5a8893574146', 1),
('5a5f27ec-e323-42c0-9732-319c321245d7', '4ccda14f-0d0f-469a-a459-a6bc82ec9092', 0),
('66493266-63a6-4615-aee5-609a38b277f4', '95c729b9-7b74-422e-bbb5-45a02342673b', 1),
('66493266-63a6-4615-aee5-609a38b277f4', '9e5b3262-c91a-4cbd-9b24-0884e0fbfade', 1),
('66493266-63a6-4615-aee5-609a38b277f4', 'ce42f396-70a0-4b13-9262-74c213c59174', 1),
('66493266-63a6-4615-aee5-609a38b277f4', 'e8d63ecc-7433-4b67-bf04-85bd3766f408', 1),
('7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '03b6c5bf-97e8-4deb-bd4f-fe67f7372690', 0),
('7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2435799a-28a7-43c0-b8ae-7097bb6c6942', 0),
('7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '3096b248-abd6-4a96-b897-f79d2ec5270b', 0),
('7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '4ccda14f-0d0f-469a-a459-a6bc82ec9092', 0),
('7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '4e77c328-971c-41d0-8fa2-174bf8075638', 0),
('7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '6523e0c8-366a-4ea3-a740-b21be3e5d42a', 0),
('7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '7e42f625-ba0f-4592-8c8b-9623cd07884a', 0),
('7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '85d18ed9-1612-4354-aa69-e850e23a7ece', 0),
('7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '95c729b9-7b74-422e-bbb5-45a02342673b', 0),
('7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '9e5b3262-c91a-4cbd-9b24-0884e0fbfade', 0),
('7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', 'c8b95cd0-f84f-4f6e-8965-daa98a84eb6a', 0),
('7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', 'd1f19eb1-7e67-4461-b682-4bc3fcd08ab4', 0),
('7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', 'd84c141b-ef91-4604-9f6a-8db9c36efddd', 0),
('c1159dea-bbcc-4476-8f3a-aa1064bde790', '03b6c5bf-97e8-4deb-bd4f-fe67f7372690', 1),
('ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', 'ce42f396-70a0-4b13-9262-74c213c59174', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order`
--

CREATE TABLE `order` (
  `idorder` char(36) NOT NULL,
  `client` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 ACTIVA\n1 EN PROCESO\n2 ORDEN LISTA\n3 COMPLETADO\n4 CANCELADO',
  `origin` tinyint(1) DEFAULT '2' COMMENT '0 LLAMADA\n1 MENSAJE\n2 PRESENCIAL',
  `comments` text,
  `start_order` datetime DEFAULT NULL,
  `finish_order` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1' COMMENT '0 no\n1 si',
  `users_idusers` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `order`
--

INSERT INTO `order` (`idorder`, `client`, `date`, `total`, `status`, `origin`, `comments`, `start_order`, `finish_order`, `active`, `users_idusers`) VALUES
('052a9c48-e2c9-4986-addb-06cad60dffd9', 'Luz', '2024-08-20 16:39:20', 70, 3, NULL, NULL, '2024-08-20 16:39:23', '2024-08-20 16:39:23', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('0be43613-5490-431d-9373-39dbae06906a', 'Pancho', '2024-07-03 13:49:59', 140, 3, NULL, NULL, '2024-07-10 13:46:02', '2024-07-10 13:46:03', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('0c961866-4571-4818-9d88-fa762b52fa96', 'Abril', '2024-08-20 17:04:08', 70, 3, NULL, NULL, '2024-08-20 17:04:10', '2024-08-20 17:04:11', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('0cc8c199-fe32-452f-9f0a-3cb6b18d4199', 'Abril', '2024-08-15 14:25:41', 130, 4, NULL, NULL, NULL, NULL, 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('0d2e4d89-a837-4f25-8cec-f05108cc25d6', 'Romantico', '2024-08-15 14:26:44', 145, 3, NULL, NULL, '2024-08-15 14:26:56', '2024-08-15 14:27:16', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('0d7aae2c-78a8-4231-a645-0156316f0bf9', 'Pancho', '2024-07-03 13:57:06', 85, 3, NULL, NULL, '2024-07-10 13:46:08', '2024-07-10 13:46:09', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('0eb92859-2e0c-44cf-ab45-bd970deacc91', 'Luz', '2024-08-20 19:03:36', 45, 3, NULL, NULL, '2024-08-20 19:03:54', '2024-08-20 19:04:03', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('184d5b94-df99-4529-898e-e0f91f4cf883', 'Esteban', '2024-05-15 16:38:07', 225, 3, NULL, NULL, '2024-07-04 10:38:54', '2024-07-04 10:39:04', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('184f9fb1-b327-441d-af0b-e7e7a9e12fc6', 'Rebeca', '2024-08-20 19:25:04', 70, 4, NULL, NULL, NULL, NULL, 1, '35a08a29-5bc7-429c-a7f4-9c64e2a712c0'),
('1ba206db-5b5c-40f2-966c-31e31c4be80b', 'Luis', '2024-08-20 16:32:54', 70, 3, NULL, NULL, '2024-08-20 16:32:55', '2024-08-20 16:32:56', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('23b29b31-f92d-49f7-b81d-88697da6632b', 'Pancho', '2024-07-03 13:49:34', 150, 3, NULL, NULL, '2024-07-10 13:38:51', '2024-07-10 13:38:52', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('254f1d20-e106-4866-af6c-f8a46b2f68a9', 'Tomas', '2024-07-03 13:25:40', 145, 3, NULL, NULL, '2024-07-05 13:33:43', '2024-07-05 13:34:52', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('25646339-a176-4a99-be09-9ffe4d61bb34', 'Abril', '2024-08-20 16:27:58', 70, 3, NULL, NULL, '2024-08-20 16:27:59', '2024-08-20 16:28:00', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('26276f5a-feb6-42e6-b390-e66543f0cf89', 'Rosa', '2024-07-11 11:33:35', 95, 3, NULL, NULL, '2024-07-11 11:33:42', '2024-07-11 11:33:47', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('2c71cd66-fb65-4f88-82e4-8a64a6c62e79', 'Raul', '2024-07-03 14:01:51', 90, 3, NULL, NULL, '2024-07-10 14:56:00', '2024-07-10 14:58:10', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('2d73e78a-a301-421e-9e8b-d8d9f3e97de5', 'Luis', '2024-08-20 16:16:44', 65, 3, NULL, NULL, '2024-08-20 16:16:47', '2024-08-20 16:16:48', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('2ddee238-3dbb-4988-a7b6-d041e8c76756', 'Pancho', '2024-05-15 16:38:21', 65, 3, NULL, NULL, '2024-06-17 11:20:03', '2024-06-17 11:22:28', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('2dfb1d46-998e-439b-ba64-f8e52d395bc2', 'Ruperto', '2024-08-20 15:23:02', 160, 3, NULL, NULL, '2024-08-20 15:23:55', '2024-08-20 15:24:04', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('3087d2a6-3749-4ba6-923c-da90613ca724', 'Luz', '2024-08-20 18:59:03', 70, 3, NULL, NULL, '2024-08-20 18:59:49', '2024-08-20 18:59:57', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('311a19ba-0077-4caa-af9c-c3b66e20684b', 'Abril', '2024-08-20 16:25:26', 70, 3, NULL, NULL, '2024-08-20 16:25:28', '2024-08-20 16:25:29', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('35ef32ad-178a-4c75-b813-eaeeac870739', 'Abril', '2024-08-11 22:54:17', 155, 3, NULL, NULL, '2024-08-11 23:07:58', '2024-08-11 23:16:30', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('38e7e13a-5841-43f7-9812-951948ed7f00', 'Juan', '2024-08-20 16:30:15', 70, 3, NULL, NULL, '2024-08-20 16:30:18', '2024-08-20 16:30:19', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('3cb09b1f-0270-4392-bc8d-1db2ea7e0b70', 'Ramon', '2024-08-19 10:08:31', 160, 4, NULL, NULL, NULL, NULL, 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('3f7350ac-7388-4591-808b-db6afd5f3d3f', 'Pancho', '2024-07-04 10:38:44', 225, 3, NULL, NULL, '2024-07-11 10:30:38', '2024-07-11 10:30:41', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('43fa1d26-6632-4059-aa31-5ad93c3fc041', 'Charlisin', '2024-07-11 10:37:52', 70, 3, NULL, NULL, '2024-07-11 10:38:01', '2024-07-11 10:38:04', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('442c317e-e5d9-44d5-bf7b-3093ac419ee0', 'Abril', '2024-08-20 16:27:00', 75, 3, NULL, NULL, '2024-08-20 16:27:02', '2024-08-20 16:27:03', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('445667cd-f830-414c-988a-d0e7566ea2a8', 'Luz', '2024-08-20 17:01:13', 70, 3, NULL, NULL, '2024-08-20 17:01:15', '2024-08-20 17:01:16', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('45ff9bba-545f-4c6e-a6a1-ebeaa4c863e1', 'Jaziel', '2024-08-20 16:12:15', 210, 4, NULL, NULL, NULL, NULL, 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('46a2c2e9-9398-466b-8cfb-c6e8ddce90f2', 'Juan', '2024-08-20 16:35:00', 70, 3, NULL, NULL, '2024-08-20 16:35:02', '2024-08-20 16:35:03', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('472581c3-dfc3-4e4b-a817-4b6bde9b9a36', 'Luis', '2024-07-11 11:31:25', 205, 3, NULL, NULL, '2024-07-11 16:33:45', '2024-07-11 16:34:36', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('4c0f149c-fe83-4148-8d9a-d0a0ddfc8d33', 'Jacinto', '2024-07-03 13:23:10', 160, 3, NULL, NULL, '2024-07-05 13:25:54', '2024-07-05 13:26:57', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('4d88f608-a463-4dbe-801b-71e938cbabff', 'Juan', '2024-07-11 16:35:41', 70, 3, NULL, NULL, '2024-07-11 16:35:47', '2024-07-11 16:35:53', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('50e94b28-d056-436c-8998-9bd5ccb0498c', 'Raul', '2024-07-03 13:58:13', 165, 3, NULL, NULL, '2024-07-10 13:55:29', '2024-07-10 13:55:32', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('58c9ed72-04f0-4865-b917-73dda2ac98d1', 'Luisa', '2024-08-20 16:41:14', 70, 3, NULL, NULL, '2024-08-20 16:41:15', '2024-08-20 16:41:16', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('5accebd0-6a61-4345-a56b-ca0963922d8e', 'Esteban', '2024-07-03 13:40:52', 145, 3, NULL, NULL, '2024-07-10 13:35:38', '2024-07-10 13:35:42', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('5fb9fa38-b555-46ec-bfc2-12c9321780d2', 'Luis', '2024-08-20 16:19:27', 70, 3, NULL, NULL, '2024-08-20 16:19:29', '2024-08-20 16:19:30', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('640ccc25-62ec-40c0-90dc-f54270635b56', 'Esteban', '2024-07-03 13:37:02', 140, 3, NULL, NULL, '2024-07-10 13:18:48', '2024-07-10 13:18:51', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('67578d6e-f585-42de-977a-e9c251f1fb5f', 'Luis', '2024-08-11 22:55:06', 160, 3, NULL, NULL, '2024-08-11 23:18:49', '2024-08-11 23:19:17', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('67c53400-e311-4d95-b6c5-e0acd883262e', 'Pancho', '2024-07-04 11:12:00', 230, 3, NULL, NULL, '2024-07-11 10:36:09', '2024-07-11 10:36:12', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('685b5d0f-39a2-402d-9d60-ccfe425c5c7e', 'uhbu', '2024-07-03 13:47:07', 85, 3, NULL, NULL, '2024-07-10 13:38:44', '2024-07-10 13:38:46', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('68a0b4a4-e67c-4dee-8611-ec2681aec55f', 'Raul', '2024-07-03 13:44:56', 140, 3, NULL, NULL, '2024-07-10 13:37:38', '2024-07-10 13:37:39', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('69b2302f-7044-498d-be8e-34f69b86900f', 'Pancho', '2024-08-20 16:11:56', 275, 3, NULL, NULL, '2024-08-20 16:12:40', '2024-08-20 16:13:02', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('6bef0eb0-b5d3-4926-9403-0b0826871032', 'Pancho', '2024-07-03 13:43:21', 150, 3, NULL, NULL, '2024-07-10 13:36:47', '2024-07-10 13:36:48', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('6c7a18b2-6138-49c3-9f68-78c77e45eb9e', 'Ruperto', '2024-08-20 16:13:59', 75, 3, NULL, NULL, '2024-08-20 16:14:03', '2024-08-20 16:14:04', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('74fa6d91-a60e-4b6d-9308-9045fe8b0c0c', 'Charlisin', '2024-08-20 16:25:55', 75, 3, NULL, NULL, '2024-08-20 16:25:58', '2024-08-20 16:25:59', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('75494e78-1cc9-4654-80ee-c44483813c04', 'Pancho', '2024-07-03 13:28:52', 145, 3, NULL, NULL, '2024-07-10 13:09:25', '2024-07-10 13:09:39', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('7639caf0-d6f1-4f7d-a77a-d3065bcc7b63', 'luz', '2024-08-20 17:01:53', 70, 3, NULL, NULL, '2024-08-20 17:01:59', '2024-08-20 17:02:00', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('766dc575-6749-485a-a8c9-0e2ad3508a79', 'Pancho', '2024-05-12 16:34:39', 260, 3, NULL, NULL, '2024-06-17 11:18:18', '2024-06-17 11:19:17', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('78c8e974-1310-43c4-a49f-d6cc53af10c1', 'Pancho', '2024-06-12 16:19:20', 155, 3, NULL, NULL, '2024-06-17 11:17:22', '2024-06-17 11:18:12', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('7e106ca0-7605-4964-a94d-a964dc4836ce', 'Tomas', '2024-08-20 19:24:15', 260, 3, NULL, NULL, '2024-08-20 19:24:22', '2024-08-20 19:24:39', 1, '35a08a29-5bc7-429c-a7f4-9c64e2a712c0'),
('7e896434-82ce-4c93-bd4f-1a51620c632c', 'Esteban', '2024-06-12 16:37:39', 130, 3, NULL, NULL, '2024-06-17 11:30:12', '2024-06-17 11:32:01', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('8625e867-8950-4dae-bfc0-b17684d15cec', 'Luis', '2024-07-11 16:53:38', 145, 3, NULL, NULL, '2024-07-11 16:53:46', '2024-07-11 16:53:52', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('86c094c6-8804-4b67-83a7-56693904c1cc', 'Luisa', '2024-08-20 17:15:31', 70, 3, NULL, NULL, '2024-08-20 17:15:39', '2024-08-20 17:15:43', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('8734ad00-afc1-4300-9e64-510ae9acbc24', 'Pancho', '2024-07-03 13:33:47', 140, 3, NULL, NULL, '2024-07-10 13:15:33', '2024-07-10 13:15:35', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('88e5b792-f49f-44c6-805b-571191a61f6e', 'Pancho', '2024-07-03 13:42:24', 150, 3, NULL, NULL, '2024-07-10 13:25:32', '2024-07-10 13:25:35', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('8e883ed0-fc58-4778-8f4b-e4377db252d0', 'Esteban', '2024-08-11 20:46:11', 160, 3, NULL, NULL, '2024-08-11 23:04:19', '2024-08-11 23:07:17', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('996edeae-205c-4493-9cfe-283533fa6dd6', 'Luz', '2024-08-20 17:07:17', 75, 3, NULL, NULL, '2024-08-20 17:07:19', '2024-08-20 17:07:20', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('99a5aef9-7549-4733-b6df-e5f636157f16', 'Luz', '2024-08-20 16:53:27', 70, 3, NULL, NULL, '2024-08-20 16:53:28', '2024-08-20 16:53:29', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('9f04faea-8c10-4f1c-9f62-73ac5eb93c46', 'Luis', '2024-08-20 17:05:24', 45, 4, NULL, NULL, NULL, NULL, 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('a8e1db7f-61dc-4753-91a9-eca31f216249', 'Pancho', '2024-07-04 11:10:27', 230, 3, NULL, NULL, '2024-07-11 10:33:41', '2024-07-11 10:33:50', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('b05feab2-411a-4a16-ac65-794327ed5dae', 'Raul', '2024-07-03 13:47:35', 140, 3, NULL, NULL, '2024-07-10 13:38:48', '2024-07-10 13:38:49', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('b44cd8f1-9362-4659-b6fe-2dcba90715d0', 'Juan', '2024-08-20 19:06:29', 40, 3, NULL, NULL, '2024-08-20 19:07:18', '2024-08-20 19:15:42', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('bd177875-64eb-481f-a8e2-72ebcfb0e969', 'Luis', '2024-08-20 17:05:22', 45, 3, NULL, NULL, '2024-08-20 17:05:27', '2024-08-20 17:05:29', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('bebc5681-68b0-4371-a251-6bf9212cfbcf', 'luz', '2024-08-20 17:09:18', 70, 3, NULL, NULL, '2024-08-20 17:10:08', '2024-08-20 17:15:10', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('c1fe1d48-f6bf-4085-a32f-843516e58e80', 'Juan', '2024-08-20 16:17:39', 75, 3, NULL, NULL, '2024-08-20 16:17:41', '2024-08-20 16:17:43', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('ccc96622-1ee8-440f-8a63-c48af900196f', 'Esteban', '2024-08-20 20:12:05', 160, 0, NULL, NULL, NULL, NULL, 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('d7921447-7bd3-40e1-b853-99602e479fec', 'Jose', '2024-08-20 16:29:45', 70, 3, NULL, NULL, '2024-08-20 16:29:47', '2024-08-20 16:29:48', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('d8bd5f0e-1e0b-4a99-996a-29ecc25ff312', 'Raul', '2024-07-03 13:21:24', 190, 3, NULL, NULL, '2024-07-05 13:22:23', '2024-07-05 13:25:17', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('dd944037-6a5e-436a-a878-8375db015e62', 'Luis', '2024-08-20 16:18:37', 75, 3, NULL, NULL, '2024-08-20 16:18:40', '2024-08-20 16:18:41', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('decff81a-5ea7-41a8-a3fe-4ff884880248', 'Pancho', '2024-07-03 13:53:45', 115, 3, NULL, NULL, '2024-07-10 13:46:05', '2024-07-10 13:46:06', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('e46dc62f-8fc1-496b-8a8c-9c5ce7f66318', 'Esteban', '2024-08-11 20:46:45', 160, 3, NULL, NULL, NULL, '2024-08-11 21:29:15', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('e64a5759-d935-43f6-b37e-ef7f687b3923', 'Abril', '2024-08-20 16:49:36', 70, 3, NULL, NULL, '2024-08-20 16:49:37', '2024-08-20 16:49:38', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('e6e7ecff-8d10-4bd1-ac50-1a1e9bc25a65', 'Luisa', '2024-08-20 16:41:59', 70, 3, NULL, NULL, '2024-08-20 16:42:01', '2024-08-20 16:42:04', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('ea873ee4-e733-463e-ab14-fea3ff2a6c16', 'Tomas', '2024-08-20 16:14:33', 80, 3, NULL, NULL, '2024-08-20 16:14:39', '2024-08-20 16:14:41', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('f3304b0f-592f-4f80-8c6c-3ccb1ea0ee97', 'Juan', '2024-08-20 16:28:51', 70, 3, NULL, NULL, '2024-08-20 16:28:52', '2024-08-20 16:28:53', 1, 'bb8453c7-03cc-42ec-8151-ef190cebbcc9'),
('f34d2e8f-6d6a-4207-ad43-128d92e1dd5d', 'Daniel', '2024-06-12 16:35:05', 260, 3, NULL, NULL, '2024-07-04 10:39:08', '2024-07-04 10:39:40', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('f68b08b8-0e91-45c6-970a-0a5330662202', 'Jacinto', '2024-07-03 13:26:41', 140, 3, NULL, NULL, '2024-07-05 13:38:08', '2024-07-05 13:38:15', 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea'),
('fb811f48-0fe1-4e3f-92a2-386042a8a2cd', 'Pancho', '2024-07-03 13:30:27', 150, 4, NULL, NULL, NULL, NULL, 1, 'e24fb125-8db1-4a09-bf1e-355672f47eea');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_details`
--

CREATE TABLE `order_details` (
  `idorderdetail` char(36) NOT NULL,
  `unit_price` int DEFAULT NULL,
  `order_type` tinyint(1) DEFAULT NULL COMMENT '0 LLEVAR\n1 COMER AHI',
  `comments` text,
  `order_idorder` char(36) NOT NULL,
  `products_idproducts` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `order_details`
--

INSERT INTO `order_details` (`idorderdetail`, `unit_price`, `order_type`, `comments`, `order_idorder`, `products_idproducts`) VALUES
('02126e10-9d0f-4f1b-9d47-dcc2235db68d', 75, 1, NULL, '2dfb1d46-998e-439b-ba64-f8e52d395bc2', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('03b6c5bf-97e8-4deb-bd4f-fe67f7372690', 70, 0, NULL, '69b2302f-7044-498d-be8e-34f69b86900f', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('06225f3b-56fd-481f-bd98-ed04c698d6f8', 70, 1, NULL, '1ba206db-5b5c-40f2-966c-31e31c4be80b', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('06736290-fe0c-41f4-ac35-64ab921a027d', 75, 0, NULL, '4c0f149c-fe83-4148-8d9a-d0a0ddfc8d33', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('0a459b6c-0fc5-4c09-b1f3-8295e7849400', 75, 1, NULL, '88e5b792-f49f-44c6-805b-571191a61f6e', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('0b434f7a-1605-4701-8693-631a298919a1', 70, 1, NULL, 'f34d2e8f-6d6a-4207-ad43-128d92e1dd5d', '3e60be9c-7737-4a07-a308-c7bf643cf076'),
('138743a6-b5b5-484c-ab54-0537c3fc60a3', 75, 1, NULL, '50e94b28-d056-436c-8998-9bd5ccb0498c', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('145acd3e-2b81-4d79-9974-dd6806393d62', 70, 0, NULL, 'a8e1db7f-61dc-4753-91a9-eca31f216249', '7be59284-8ada-4fd2-a4e8-a1690c732ac0'),
('158edffb-885a-468e-90a8-4bef36bbd09c', 70, 0, NULL, '766dc575-6749-485a-a8c9-0e2ad3508a79', '3e60be9c-7737-4a07-a308-c7bf643cf076'),
('1c26761a-e446-4a5d-8c15-c53e5ce04052', 75, 1, NULL, '442c317e-e5d9-44d5-bf7b-3093ac419ee0', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('1c8da508-3b86-498d-af72-3637567da800', 70, 0, NULL, '766dc575-6749-485a-a8c9-0e2ad3508a79', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('1c9c2687-a195-401d-b616-4e177a7fc12c', 70, 1, NULL, 'e64a5759-d935-43f6-b37e-ef7f687b3923', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('1fd96550-56f5-4c93-a4e2-bd3a45cfb135', 40, 0, NULL, 'b44cd8f1-9362-4659-b6fe-2dcba90715d0', '7c05a440-8bfd-4796-9f67-0542dc9c77d9'),
('2435799a-28a7-43c0-b8ae-7097bb6c6942', 70, 1, NULL, 'ccc96622-1ee8-440f-8a63-c48af900196f', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('250fa19c-70b1-4bc8-ad74-0ea2acd321fb', 75, 1, NULL, '45ff9bba-545f-4c6e-a6a1-ebeaa4c863e1', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('2bd19bb3-d3d8-483a-b194-2b58c4b195d8', 70, 0, NULL, '5accebd0-6a61-4345-a56b-ca0963922d8e', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('2ec49150-1824-4b72-8443-22bb3df542b4', 75, 1, NULL, 'f34d2e8f-6d6a-4207-ad43-128d92e1dd5d', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8'),
('3096b248-abd6-4a96-b897-f79d2ec5270b', 70, 0, NULL, '67578d6e-f585-42de-977a-e9c251f1fb5f', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('31a093ad-b3bb-4f33-8cda-2aeb4368c385', 70, 0, NULL, '67c53400-e311-4d95-b6c5-e0acd883262e', '7be59284-8ada-4fd2-a4e8-a1690c732ac0'),
('322b868a-5f96-40ee-906a-3ffadf3dc8b9', 70, 0, NULL, 'e6e7ecff-8d10-4bd1-ac50-1a1e9bc25a65', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('32531a19-37a8-4c78-8d05-e523d176bb43', 75, 1, NULL, '74fa6d91-a60e-4b6d-9308-9045fe8b0c0c', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('342d3847-90ac-4f44-b053-2e4c13ac64d3', 70, 0, NULL, '43fa1d26-6632-4059-aa31-5ad93c3fc041', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('3c04564e-3bd0-4ba6-b118-e7f24b6f5fea', 75, 0, NULL, '6bef0eb0-b5d3-4926-9403-0b0826871032', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('3c21d865-a664-4428-a39a-2450c5594e68', 45, 1, NULL, '184d5b94-df99-4529-898e-e0f91f4cf883', '26747e4c-6593-455a-ac02-c291e92e08b5'),
('3c934bdb-7169-4882-9bbc-05bc6ef6cebb', 75, 1, NULL, 'dd944037-6a5e-436a-a878-8375db015e62', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('3df6d530-862a-4619-8677-862abf1b0efa', 70, 1, NULL, '75494e78-1cc9-4654-80ee-c44483813c04', '35875241-8e28-4847-a7ad-b38d8c9b2bf8'),
('3fc117da-df48-4970-8bd6-2ebf35fe5363', 70, 1, NULL, '99a5aef9-7549-4733-b6df-e5f636157f16', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('4495d5e1-09ec-4bc2-be86-94e16c02c068', 70, 1, NULL, 'd8bd5f0e-1e0b-4a99-996a-29ecc25ff312', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7'),
('44ff2c2d-4cb5-458f-92e3-b113601e2f91', 75, 0, NULL, '5accebd0-6a61-4345-a56b-ca0963922d8e', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('457090cd-cbcd-4e5f-9ff0-4d9c5ebc248c', 70, 0, NULL, '8734ad00-afc1-4300-9e64-510ae9acbc24', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('47259134-fe4a-4d70-b8f0-750c94bc0473', 45, 0, NULL, '7e896434-82ce-4c93-bd4f-1a51620c632c', '4f87cfe2-7646-4066-b94f-dba801ceef96'),
('482a4acd-95f6-4173-a649-d51b7dfde889', 70, 1, NULL, 'f34d2e8f-6d6a-4207-ad43-128d92e1dd5d', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('489f45aa-cdea-45a6-b610-f56b6bae8e72', 70, 1, NULL, 'd8bd5f0e-1e0b-4a99-996a-29ecc25ff312', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('492545c5-1020-479c-81e5-f5fb80d6ba40', 70, 1, NULL, '184f9fb1-b327-441d-af0b-e7e7a9e12fc6', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('495d90c7-5d40-4231-a41b-1280d35bcff0', 70, 1, NULL, '86c094c6-8804-4b67-83a7-56693904c1cc', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('4adaf1cb-d09c-49ee-a5cd-2e5623bb68a7', 70, 1, NULL, '311a19ba-0077-4caa-af9c-c3b66e20684b', '35875241-8e28-4847-a7ad-b38d8c9b2bf8'),
('4ccda14f-0d0f-469a-a459-a6bc82ec9092', 70, 0, NULL, '0cc8c199-fe32-452f-9f0a-3cb6b18d4199', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('4e77c328-971c-41d0-8fa2-174bf8075638', 70, 0, NULL, '7e106ca0-7605-4964-a94d-a964dc4836ce', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('4e9770cc-3fa0-434a-83c1-dfcc6d5a14f9', 65, 0, NULL, '2ddee238-3dbb-4988-a7b6-d041e8c76756', 'd841bf3f-4e12-4796-86e9-cff48cc94435'),
('5185478e-aa5a-4219-b3cc-2257b6ed9919', 75, 0, NULL, '8625e867-8950-4dae-bfc0-b17684d15cec', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('525eff2a-d23e-4d83-a5fd-5a8893574146', 45, 1, NULL, '69b2302f-7044-498d-be8e-34f69b86900f', '6290761b-bd2d-43a2-bb40-6bd2db678951'),
('5420a583-fecf-4ce4-9f07-948864e7fdff', 75, 1, NULL, 'c1fe1d48-f6bf-4085-a32f-843516e58e80', '8e3ac39d-70f6-4163-ab22-336325e63773'),
('55b70a17-d971-403d-ab88-9a21e9a1623c', 45, 1, NULL, 'f34d2e8f-6d6a-4207-ad43-128d92e1dd5d', '25cad8af-3666-4edf-b42d-a9b731f342f5'),
('59d6dad4-9ea3-4128-94a7-8538326e4a41', 70, 1, NULL, '7639caf0-d6f1-4f7d-a77a-d3065bcc7b63', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('5a05dbfc-0a3d-4d6d-9ec0-2e99eed4b06a', 70, 1, NULL, '0c961866-4571-4818-9d88-fa762b52fa96', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('5b22ec21-f784-4a40-bc39-1015fb6d6d23', 70, 0, 'http://localhost:4200/assets/Tocino.png', '685b5d0f-39a2-402d-9d60-ccfe425c5c7e', '7be59284-8ada-4fd2-a4e8-a1690c732ac0'),
('5b3f2211-584a-42ce-ab38-f215811656e7', 70, 0, NULL, '4d88f608-a463-4dbe-801b-71e938cbabff', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('5db82b57-ccc4-4768-8f76-42d0cc307fc0', 50, 1, NULL, 'd8bd5f0e-1e0b-4a99-996a-29ecc25ff312', '2c350834-1d5d-486a-8977-af35d49d64d9'),
('623c1cc0-3cbd-42af-aa9d-697440171bf1', 45, 1, NULL, 'decff81a-5ea7-41a8-a3fe-4ff884880248', '25cad8af-3666-4edf-b42d-a9b731f342f5'),
('6523e0c8-366a-4ea3-a740-b21be3e5d42a', 70, 1, NULL, '8e883ed0-fc58-4778-8f4b-e4377db252d0', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('65529a96-5c40-4d8b-8711-8c2925072da1', 70, 0, NULL, '640ccc25-62ec-40c0-90dc-f54270635b56', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('6ac5b1a0-092b-4db4-b220-d21aa0356ca0', 70, 1, NULL, '0be43613-5490-431d-9373-39dbae06906a', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('6b94b9d0-d8cc-4758-8b4e-dcd4e8a991e1', 75, 1, NULL, '88e5b792-f49f-44c6-805b-571191a61f6e', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('6c6427f4-6a34-43fb-aca0-1dff2a9e4acf', 70, 0, NULL, '3087d2a6-3749-4ba6-923c-da90613ca724', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('710473c8-5ec1-4c86-b8fd-ceac4133c9d1', 45, 1, NULL, '184d5b94-df99-4529-898e-e0f91f4cf883', '26747e4c-6593-455a-ac02-c291e92e08b5'),
('7586e381-d0ab-4b78-a22b-da4938d6dd57', 40, 1, 'Papas doradas', '7e106ca0-7605-4964-a94d-a964dc4836ce', '7c05a440-8bfd-4796-9f67-0542dc9c77d9'),
('787f1c3f-b844-48ac-9bb0-6e03621f2eca', 70, 1, NULL, '052a9c48-e2c9-4986-addb-06cad60dffd9', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('7d249840-9278-4e7d-8f26-efe2dfcbb2e8', 70, 0, NULL, '68a0b4a4-e67c-4dee-8611-ec2681aec55f', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('7e42f625-ba0f-4592-8c8b-9623cd07884a', 70, 1, NULL, 'e46dc62f-8fc1-496b-8a8c-9c5ce7f66318', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('7e52ea55-c48e-40d3-99a2-c63ec39a4dbf', 70, 0, NULL, '4c0f149c-fe83-4148-8d9a-d0a0ddfc8d33', 'd8c04332-7c37-4368-9372-93300d6be4d4'),
('81ecc1d5-50dd-4184-8452-1f0e2f597eec', 75, 1, NULL, '50e94b28-d056-436c-8998-9bd5ccb0498c', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('85967f1f-333f-41fe-86ac-a428aa02fb9c', 45, 0, NULL, '472581c3-dfc3-4e4b-a817-4b6bde9b9a36', '25cad8af-3666-4edf-b42d-a9b731f342f5'),
('85d18ed9-1612-4354-aa69-e850e23a7ece', 70, 0, NULL, '35ef32ad-178a-4c75-b813-eaeeac870739', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('85e4f931-1356-48f5-ae81-57d54584299a', 45, 0, NULL, '766dc575-6749-485a-a8c9-0e2ad3508a79', '25cad8af-3666-4edf-b42d-a9b731f342f5'),
('8a4ab085-9712-41b5-b9c3-862491b231c6', 70, 0, NULL, '68a0b4a4-e67c-4dee-8611-ec2681aec55f', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('8bde6602-27b2-46df-8f51-80d5aefc65af', 70, 0, NULL, '3f7350ac-7388-4591-808b-db6afd5f3d3f', '7be59284-8ada-4fd2-a4e8-a1690c732ac0'),
('8bf6b1ca-8316-472b-87c1-421281a57227', 70, 1, NULL, 'f68b08b8-0e91-45c6-970a-0a5330662202', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7'),
('8ed25683-c879-4432-8a94-40c2b490b66e', 70, 1, NULL, '0d7aae2c-78a8-4231-a645-0156316f0bf9', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('8fa28e60-974e-4586-9c4e-157c6f2969a1', 70, 1, NULL, 'f68b08b8-0e91-45c6-970a-0a5330662202', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('90f27b6d-bbee-4d52-8c51-60fb0fe3adbe', 70, 0, NULL, '472581c3-dfc3-4e4b-a817-4b6bde9b9a36', '35875241-8e28-4847-a7ad-b38d8c9b2bf8'),
('9359d95a-01ef-4765-9c5d-c77b6475a0c1', 70, 0, NULL, '254f1d20-e106-4866-af6c-f8a46b2f68a9', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('95c729b9-7b74-422e-bbb5-45a02342673b', 75, 0, NULL, '69b2302f-7044-498d-be8e-34f69b86900f', '8e3ac39d-70f6-4163-ab22-336325e63773'),
('97a94995-652a-444a-92e5-bfc2a7c6b915', 75, 1, NULL, '996edeae-205c-4493-9cfe-283533fa6dd6', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('9a855c2e-a90d-4f8e-acf7-0c10c70f09a6', 70, 1, NULL, 'f3304b0f-592f-4f80-8c6c-3ccb1ea0ee97', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('9a8f5f7b-597e-4156-a488-a57ac58ef36f', 75, 1, NULL, '6c7a18b2-6138-49c3-9f68-78c77e45eb9e', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('9b3c8636-f974-4449-be02-73724e6be40d', 70, 1, NULL, '0be43613-5490-431d-9373-39dbae06906a', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('9c87d309-9e7f-46b8-b01e-fa63f4eb70eb', 75, 1, NULL, '75494e78-1cc9-4654-80ee-c44483813c04', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('9e5b3262-c91a-4cbd-9b24-0884e0fbfade', 75, 0, NULL, '26276f5a-feb6-42e6-b390-e66543f0cf89', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8'),
('a5ff7e20-32c0-4de0-9302-970e12035653', 75, 1, NULL, 'ccc96622-1ee8-440f-8a63-c48af900196f', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('a624fc46-ae19-456e-98fd-beec59ee8dd1', 40, 0, 'Bien doradas', '69b2302f-7044-498d-be8e-34f69b86900f', '7c05a440-8bfd-4796-9f67-0542dc9c77d9'),
('a741bb66-b153-4600-99d2-42dceb729850', 75, 1, NULL, '8e883ed0-fc58-4778-8f4b-e4377db252d0', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('a74e32f2-1ee5-4c8d-b2c1-849136a54a30', 75, 0, NULL, '0d2e4d89-a837-4f25-8cec-f05108cc25d6', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('a75fbeb9-dc16-4f41-878d-0a3cb937bb52', 45, 1, NULL, '184d5b94-df99-4529-898e-e0f91f4cf883', '26747e4c-6593-455a-ac02-c291e92e08b5'),
('a87bef7a-8bbc-4d38-82d1-046683484752', 70, 1, NULL, '38e7e13a-5841-43f7-9812-951948ed7f00', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('ab5866d4-a168-4e26-8694-606abfb13bc3', 70, 0, NULL, '3f7350ac-7388-4591-808b-db6afd5f3d3f', 'd8c04332-7c37-4368-9372-93300d6be4d4'),
('abfdd7f4-86ec-4129-ad33-08f8ab42ba97', 70, 0, NULL, '3cb09b1f-0270-4392-bc8d-1db2ea7e0b70', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7'),
('ac301b4d-0fcf-4ae5-b624-c580c5fa976f', 70, 1, NULL, '445667cd-f830-414c-988a-d0e7566ea2a8', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('ae935bb8-ff6d-4702-88a2-1a6c318a14ff', 65, 1, NULL, '45ff9bba-545f-4c6e-a6a1-ebeaa4c863e1', 'd841bf3f-4e12-4796-86e9-cff48cc94435'),
('b208dd5b-699f-403e-9521-c3b1449e6db1', 45, 1, NULL, '0cc8c199-fe32-452f-9f0a-3cb6b18d4199', '6bc56ac9-5c9b-4b91-9f1a-d9ea016b7da5'),
('b427564e-8869-4226-a452-04d72d03ea2c', 75, 1, NULL, '23b29b31-f92d-49f7-b81d-88697da6632b', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('b492f5f9-979f-47d9-8c56-cc6ecf836e62', 70, 0, NULL, '35ef32ad-178a-4c75-b813-eaeeac870739', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('b64513f2-f28a-40f4-8aa9-be31514ea20c', 75, 1, NULL, '2c71cd66-fb65-4f88-82e4-8a64a6c62e79', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('b71fc05f-8ce0-4649-beab-8e5e41853d18', 70, 1, NULL, 'bebc5681-68b0-4371-a251-6bf9212cfbcf', '7be59284-8ada-4fd2-a4e8-a1690c732ac0'),
('b81bb9da-0868-49c2-9a09-aa36fc4e2443', 40, 0, NULL, '7e896434-82ce-4c93-bd4f-1a51620c632c', '7c05a440-8bfd-4796-9f67-0542dc9c77d9'),
('b96693b9-ae06-4adf-82b6-81f114913dd4', 70, 0, NULL, '0d2e4d89-a837-4f25-8cec-f05108cc25d6', '7be59284-8ada-4fd2-a4e8-a1690c732ac0'),
('bc4f2075-00c4-431d-9fc4-d651a0c2dee7', 70, 1, NULL, '46a2c2e9-9398-466b-8cfb-c6e8ddce90f2', '35875241-8e28-4847-a7ad-b38d8c9b2bf8'),
('be21fb6c-ff61-4609-b5a3-be4fed9df658', 70, 0, NULL, '8734ad00-afc1-4300-9e64-510ae9acbc24', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('c03bb888-0d64-4fc9-90f2-70ee5edf86ce', 70, 1, NULL, '25646339-a176-4a99-be09-9ffe4d61bb34', '7be59284-8ada-4fd2-a4e8-a1690c732ac0'),
('c05e18a1-35b6-435f-84fd-537d063fb9fc', 70, 0, NULL, 'b05feab2-411a-4a16-ac65-794327ed5dae', '7be59284-8ada-4fd2-a4e8-a1690c732ac0'),
('c171fdc8-5b3d-495c-b710-fe0586909c22', 75, 0, NULL, '6bef0eb0-b5d3-4926-9403-0b0826871032', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('c244acff-2336-473a-9935-14434bd569ba', 45, 1, NULL, '184d5b94-df99-4529-898e-e0f91f4cf883', '26747e4c-6593-455a-ac02-c291e92e08b5'),
('c252ec10-6139-4436-a751-e39f74ab4197', 75, 1, NULL, 'fb811f48-0fe1-4e3f-92a2-386042a8a2cd', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('c302357c-34a6-4b17-a87b-8c9e3465dea4', 70, 0, NULL, '3f7350ac-7388-4591-808b-db6afd5f3d3f', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('c3896f35-867f-451f-91ef-35a2284b99ab', 75, 0, NULL, '67578d6e-f585-42de-977a-e9c251f1fb5f', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('c6966bc0-4897-4db6-9227-1186820efb60', 75, 0, NULL, '766dc575-6749-485a-a8c9-0e2ad3508a79', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8'),
('c78d0595-39ff-4c20-a20c-8f53abbbcf98', 70, 1, NULL, '58c9ed72-04f0-4865-b917-73dda2ac98d1', '35875241-8e28-4847-a7ad-b38d8c9b2bf8'),
('c791ce68-667d-419a-8401-19eb3aa829b8', 70, 0, NULL, '640ccc25-62ec-40c0-90dc-f54270635b56', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('c8b95cd0-f84f-4f6e-8965-daa98a84eb6a', 70, 1, NULL, '2dfb1d46-998e-439b-ba64-f8e52d395bc2', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('c96a9de7-4ba3-4baa-b1ad-c291f9bf5fa5', 70, 1, NULL, '5fb9fa38-b555-46ec-bfc2-12c9321780d2', '35875241-8e28-4847-a7ad-b38d8c9b2bf8'),
('cb6f7ba2-0ffe-48f7-8d47-276c8debbe66', 70, 1, NULL, 'd7921447-7bd3-40e1-b853-99602e479fec', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('cc2dce56-3bb9-4f68-94ec-5a2297e75fc6', 45, 1, NULL, '184d5b94-df99-4529-898e-e0f91f4cf883', '26747e4c-6593-455a-ac02-c291e92e08b5'),
('ce42f396-70a0-4b13-9262-74c213c59174', 70, 1, 'Carne bien cocida', '7e106ca0-7605-4964-a94d-a964dc4836ce', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7'),
('cecd738c-f24b-4e13-bd8c-2c9ecde5d412', 75, 1, NULL, 'fb811f48-0fe1-4e3f-92a2-386042a8a2cd', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('d1a238b6-96fa-41dd-b320-b5c8e2372c46', 45, 1, NULL, '9f04faea-8c10-4f1c-9f62-73ac5eb93c46', '521f7794-35f7-4d5c-b60e-3d6e7020231d'),
('d1f19eb1-7e67-4461-b682-4bc3fcd08ab4', 70, 1, NULL, 'a8e1db7f-61dc-4753-91a9-eca31f216249', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('d3b6a130-8fa5-4de8-9155-c8b31e1199ef', 75, 1, NULL, 'ea873ee4-e733-463e-ab14-fea3ff2a6c16', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('d84c141b-ef91-4604-9f6a-8db9c36efddd', 70, 1, NULL, '67c53400-e311-4d95-b6c5-e0acd883262e', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('dbdecb16-97c4-4242-84e7-3df42e20c763', 65, 1, NULL, '2d73e78a-a301-421e-9e8b-d8d9f3e97de5', 'd841bf3f-4e12-4796-86e9-cff48cc94435'),
('df1d6a88-b2fb-4450-b4a4-d68563649775', 45, 0, NULL, '7e896434-82ce-4c93-bd4f-1a51620c632c', '5a652e8b-1059-420d-a8f5-5e79670cbd30'),
('e0a33fa2-cd0b-4ce9-966e-be8becd756f5', 70, 1, NULL, '78c8e974-1310-43c4-a49f-d6cc53af10c1', '7be59284-8ada-4fd2-a4e8-a1690c732ac0'),
('e0b4056a-04d7-497f-8361-253d3359ccdc', 45, 1, NULL, 'bd177875-64eb-481f-a8e2-72ebcfb0e969', '521f7794-35f7-4d5c-b60e-3d6e7020231d'),
('e1c9ce62-6c90-4b46-bd97-2e2426c58fe8', 70, 1, NULL, '45ff9bba-545f-4c6e-a6a1-ebeaa4c863e1', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('e47f2f03-b5ce-4019-910c-088aa937e493', 75, 1, NULL, 'a8e1db7f-61dc-4753-91a9-eca31f216249', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('e4b77373-6ff9-4c9b-851a-3e578fa44b1d', 70, 1, NULL, 'decff81a-5ea7-41a8-a3fe-4ff884880248', 'a4b5dc37-b8a7-47ce-b41f-2e8b2b98daf6'),
('e8d63ecc-7433-4b67-bf04-85bd3766f408', 70, 0, NULL, '3cb09b1f-0270-4392-bc8d-1db2ea7e0b70', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('eb4ccc3d-e29b-494f-be65-3a26cf2cea7f', 70, 1, NULL, '78c8e974-1310-43c4-a49f-d6cc53af10c1', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('ef52ba97-98be-4d84-bfcc-a8828d070c2a', 70, 0, NULL, '8625e867-8950-4dae-bfc0-b17684d15cec', 'cf808890-4bbb-49d5-8f87-567f0f457711'),
('f1049e7c-490a-44c3-9cb5-70d533adc53a', 75, 0, NULL, '254f1d20-e106-4866-af6c-f8a46b2f68a9', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('f43bf90b-31a0-448f-88cc-6144f8a2c114', 70, 0, NULL, 'b05feab2-411a-4a16-ac65-794327ed5dae', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c'),
('f532a87b-81f7-4ca2-b3dd-33997514a108', 45, 1, NULL, '7e106ca0-7605-4964-a94d-a964dc4836ce', 'ccab03ed-c004-440a-afc5-097aa058c537'),
('f64a5426-982d-4687-aa3c-ace0e8c18931', 75, 1, NULL, 'e46dc62f-8fc1-496b-8a8c-9c5ce7f66318', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('fa877f24-8947-44a2-9f52-b063a475b6e6', 45, 0, NULL, '0eb92859-2e0c-44cf-ab45-bd970deacc91', '4f87cfe2-7646-4066-b94f-dba801ceef96'),
('fbc5fe5f-de1b-4ba5-9beb-b34be7b6425e', 75, 1, NULL, '67c53400-e311-4d95-b6c5-e0acd883262e', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('fe5de939-f7af-4c1a-9219-363c177fc6b9', 75, 0, NULL, '472581c3-dfc3-4e4b-a817-4b6bde9b9a36', 'c622e5b5-01d3-438e-8913-2b6e99f866af'),
('ff5ec25e-9a06-42d2-8787-6f2d38cceb2e', 75, 1, NULL, '23b29b31-f92d-49f7-b81d-88697da6632b', 'c622e5b5-01d3-438e-8913-2b6e99f866af');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `idproducts` char(36) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1' COMMENT '0 NO\n1 SI',
  `category_idcategory` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`idproducts`, `name`, `price`, `description`, `active`, `category_idcategory`) VALUES
('2091cbfd-8361-4a01-9a75-0c9f73be7d4d', 'Agridulce', 45, 'Con salsa agridulce', 1, '64afaea8-be6c-49ae-8e99-32132dd89630'),
('21e68070-b579-43db-9f4c-ab0d903bbbd9', 'Hawii', 75, 'Con salsa mango habanero y piña', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b'),
('25cad8af-3666-4edf-b42d-a9b731f342f5', 'BBQ', 45, 'Con salsa BBQ', 1, '64afaea8-be6c-49ae-8e99-32132dd89630'),
('26747e4c-6593-455a-ac02-c291e92e08b5', 'Orden de salchichas', 45, NULL, 1, '4716bb4e-0793-4c76-9b48-3dd8e7a9ba9a'),
('2c350834-1d5d-486a-8977-af35d49d64d9', 'Hot dog', 50, NULL, 1, '4716bb4e-0793-4c76-9b48-3dd8e7a9ba9a'),
('35875241-8e28-4847-a7ad-b38d8c9b2bf8', 'Búfalo', 70, 'Con salsa búfalo', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b'),
('3e60be9c-7737-4a07-a308-c7bf643cf076', 'Mango Chipotle', 70, 'Con salsa mango chipotle', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b'),
('420b9d0d-8e21-44a3-bc1f-3b466eced0f7', 'Chimichurri', 70, 'Con salsa chimichurri', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b'),
('4f87cfe2-7646-4066-b94f-dba801ceef96', 'Tamarindo chipotle', 45, 'Con salsa tamarindo chipotle', 1, '64afaea8-be6c-49ae-8e99-32132dd89630'),
('521f7794-35f7-4d5c-b60e-3d6e7020231d', 'Chimichurri', 45, 'Con salsa chimichurri', 1, '64afaea8-be6c-49ae-8e99-32132dd89630'),
('596b4f18-02dd-48bf-86fc-bd7fe699e05b', 'Honolulu picante', 75, 'Con salsa BBQ habanero y piña', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b'),
('5a652e8b-1059-420d-a8f5-5e79670cbd30', 'Mango chipotle', 45, 'Con salsa mango chipotle', 1, '64afaea8-be6c-49ae-8e99-32132dd89630'),
('5e687ada-dd98-42cf-abc2-599ba3d4352e', 'Orden de salchipapas', 45, NULL, 1, '4716bb4e-0793-4c76-9b48-3dd8e7a9ba9a'),
('6290761b-bd2d-43a2-bb40-6bd2db678951', 'Mango habanero', 45, 'Con salsa mango habanero', 1, '64afaea8-be6c-49ae-8e99-32132dd89630'),
('6bc56ac9-5c9b-4b91-9f1a-d9ea016b7da5', 'BBQ Habanero', 45, 'Con salsa BBQ Habanero', 1, '64afaea8-be6c-49ae-8e99-32132dd89630'),
('720d261b-67dd-400f-b2d0-2a09c5a0c0ef', 'Nuggets de pollo', 45, 'Acompañado de ensalada y papas', 1, '4716bb4e-0793-4c76-9b48-3dd8e7a9ba9a'),
('7be59284-8ada-4fd2-a4e8-a1690c732ac0', 'BBQ Habanero', 70, 'Con salsa BBQ habanero', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b'),
('7c05a440-8bfd-4796-9f67-0542dc9c77d9', 'Orden de papas', 40, NULL, 1, '4716bb4e-0793-4c76-9b48-3dd8e7a9ba9a'),
('8e3ac39d-70f6-4163-ab22-336325e63773', 'Honolulu', 75, 'Con salsa BBQ y piña', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b'),
('a4b5dc37-b8a7-47ce-b41f-2e8b2b98daf6', 'Mango Habanero', 70, 'Con salsa mango habanero', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b'),
('a5adf9dd-87d9-4bab-8bca-9db9469941bb', 'Ohana', 75, 'Con salsa tamarindo chipotle y piña', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b'),
('c622e5b5-01d3-438e-8913-2b6e99f866af', 'Aloha', 75, 'Con salsa agridulce y piña', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b'),
('ccab03ed-c004-440a-afc5-097aa058c537', 'Banderilla', 45, 'Acompañado con mayonesa, mostaza, catsup y pa', 1, '4716bb4e-0793-4c76-9b48-3dd8e7a9ba9a'),
('cf808890-4bbb-49d5-8f87-567f0f457711', 'BBQ', 70, 'Con salsa BBQ', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b'),
('cfc61e37-4fc5-4422-a19e-eefdc04d29c8', 'Hawii Chipotle', 75, 'Con salsa mango chipotle y piña', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b'),
('d841bf3f-4e12-4796-86e9-cff48cc94435', 'Clásica', 65, 'Con salsa catsup', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b'),
('d85a638d-24bc-4146-b412-a87af30564e8', 'Tamarindo Chipotle', 70, 'Con salsa tamarindo chipotle', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b'),
('d8c04332-7c37-4368-9372-93300d6be4d4', 'Hawaina', 70, 'Con salsa catsup y piña', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b'),
('f51806e7-22e1-4b2e-a0a2-92ecd701653c', 'Agridulce', 70, 'Con salsa agridulce', 1, 'da99cc44-03a0-457a-8711-4660c3b5b45b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_ingredients`
--

CREATE TABLE `products_ingredients` (
  `id` char(36) NOT NULL,
  `products_idProducts` char(36) NOT NULL,
  `ingredients_idingredients` char(36) NOT NULL,
  `date_insert` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `products_ingredients`
--

INSERT INTO `products_ingredients` (`id`, `products_idProducts`, `ingredients_idingredients`, `date_insert`) VALUES
('00c06a3c-aeaa-4391-ae2e-11da10792ba5', 'd85a638d-24bc-4146-b412-a87af30564e8', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('0152a4e8-f1ce-4c77-96fd-d3bfc8519e3e', 'a5adf9dd-87d9-4bab-8bca-9db9469941bb', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15'),
('03c18bef-3e4d-4e12-9522-73578bd80cc7', '7be59284-8ada-4fd2-a4e8-a1690c732ac0', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('0472d84f-7dc5-4cd0-8b25-42aa627270df', 'a4b5dc37-b8a7-47ce-b41f-2e8b2b98daf6', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('05476c85-748d-4207-b307-bdf8c5a78eb8', 'd841bf3f-4e12-4796-86e9-cff48cc94435', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('079a77d0-c9e6-4db6-a2d1-f29bbce14fe1', 'c622e5b5-01d3-438e-8913-2b6e99f866af', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('07dcf0a5-eeb5-4991-904e-fa9ef196d69a', 'a4b5dc37-b8a7-47ce-b41f-2e8b2b98daf6', '5cda80f5-805e-4597-af7f-b10b083c34f9', '2024-06-10 15:46:15'),
('07e8464e-b220-4b1f-b0fa-e7dca5d639ea', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('0808121b-188c-4100-9de1-4777510e5f32', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15'),
('0907c05a-d7fc-4f6a-9716-8fa924292e74', 'd8c04332-7c37-4368-9372-93300d6be4d4', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('0a64a578-250d-4010-8ff5-6cd4b3351dd0', '7be59284-8ada-4fd2-a4e8-a1690c732ac0', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('0c2431d6-ab06-4c4d-a08d-9b93236a309d', 'd841bf3f-4e12-4796-86e9-cff48cc94435', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('0d47c770-272e-4c50-b0fb-19f522076461', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('0e54d1a4-a01b-4a63-8655-9096afd20238', '596b4f18-02dd-48bf-86fc-bd7fe699e05b', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('10af104d-cf91-4854-87e7-7212adedda83', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('10c3e189-f79f-461d-91e6-59ea576efb10', 'a5adf9dd-87d9-4bab-8bca-9db9469941bb', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('11920a4c-fcaf-4a1f-bbb4-b1c88ce6b3f6', '596b4f18-02dd-48bf-86fc-bd7fe699e05b', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15'),
('121699d1-7a90-412e-9633-0677aae50c7b', '6290761b-bd2d-43a2-bb40-6bd2db678951', '4c7a5984-2d45-49a8-8585-c26e9d1b179b', '2024-06-10 15:46:15'),
('1309304c-4ae6-4f3e-ac33-7c510380d818', '4f87cfe2-7646-4066-b94f-dba801ceef96', '4c7a5984-2d45-49a8-8585-c26e9d1b179b', '2024-06-10 15:46:15'),
('1408b1c0-452a-40cc-adde-c75ee4e98863', '596b4f18-02dd-48bf-86fc-bd7fe699e05b', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('1482984e-a713-448d-9d22-73216c853538', 'a5adf9dd-87d9-4bab-8bca-9db9469941bb', '45a530b6-7b25-4810-b1f7-0333ba27e2c1', '2024-06-10 15:46:15'),
('16d4570a-013c-42fe-b50f-35f373b4dd8a', 'd8c04332-7c37-4368-9372-93300d6be4d4', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('176beef9-72f9-4dd3-a36c-e709e0989de7', 'd8c04332-7c37-4368-9372-93300d6be4d4', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('191d8427-b11f-4ffb-bff9-31e84df2629d', 'cf808890-4bbb-49d5-8f87-567f0f457711', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('19a12393-ff5e-4150-9033-a27a764b0dd7', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('1cc4dadb-2956-49d3-99d2-9a7c87743cab', '35875241-8e28-4847-a7ad-b38d8c9b2bf8', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('1e887e26-9765-47e1-8f91-7a29885e1efb', 'd841bf3f-4e12-4796-86e9-cff48cc94435', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('1fd7764c-20b8-47b1-84a2-9a962d423d32', '596b4f18-02dd-48bf-86fc-bd7fe699e05b', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('205e747e-8960-4f6d-be2d-911442444d17', '3e60be9c-7737-4a07-a308-c7bf643cf076', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('20ff3cb0-2c51-410d-9b57-09577342f544', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('22d7e349-77d8-4e2c-bc66-fef12cd76664', '6bc56ac9-5c9b-4b91-9f1a-d9ea016b7da5', '4c7a5984-2d45-49a8-8585-c26e9d1b179b', '2024-06-10 15:46:15'),
('2483666e-a3e8-4f8d-89d3-dd8063827b1c', '596b4f18-02dd-48bf-86fc-bd7fe699e05b', 'feb5737d-b33c-43c2-b5f8-de9b56f50777', '2024-06-10 15:46:15'),
('24efc003-9869-49ab-a153-05e9ab1f1dc1', 'd8c04332-7c37-4368-9372-93300d6be4d4', '51bebb5c-905f-4da7-a230-53a20e3ecb47', '2024-06-10 15:46:15'),
('27457ce2-cbe5-48f3-97f9-d2df613b6039', '35875241-8e28-4847-a7ad-b38d8c9b2bf8', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('283a64b8-cba0-4074-8fde-628018e933dc', '21e68070-b579-43db-9f4c-ab0d903bbbd9', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('2bbeae81-5f94-4507-b1e6-08e190af9e21', '8e3ac39d-70f6-4163-ab22-336325e63773', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('2d310f25-8174-45cf-9024-2aaefc28a484', '7be59284-8ada-4fd2-a4e8-a1690c732ac0', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('30498412-26b6-4c67-ad44-66d743d28f8a', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('32e67cf1-778a-43ba-8570-fdf278a40552', 'a5adf9dd-87d9-4bab-8bca-9db9469941bb', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('33c72396-4a5a-4398-b054-e12ad515f988', '21e68070-b579-43db-9f4c-ab0d903bbbd9', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('33e120d6-365c-4bc5-9543-fd49814251f4', 'd8c04332-7c37-4368-9372-93300d6be4d4', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('34325952-75ad-44ed-910c-76785f1191ed', 'd8c04332-7c37-4368-9372-93300d6be4d4', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15'),
('34461a36-bdb2-4e16-a945-7c80948c8417', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('35d11b45-74de-42f0-b21d-abb1ba5de5e4', '35875241-8e28-4847-a7ad-b38d8c9b2bf8', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('3a63d821-1161-471a-ab60-80e56e105a58', 'c622e5b5-01d3-438e-8913-2b6e99f866af', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('3a817413-5ada-427b-b574-131bce715378', 'd841bf3f-4e12-4796-86e9-cff48cc94435', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('3bfb394b-dd82-4562-bd77-b58202f36eb1', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('3dbae004-5fda-461d-bfcd-34085cfd0870', '35875241-8e28-4847-a7ad-b38d8c9b2bf8', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('3ea086da-630a-484c-ba05-839ae73aa3e1', 'c622e5b5-01d3-438e-8913-2b6e99f866af', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('3f66099a-44a9-45f9-8da5-553780c738e0', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('3fa4341d-a00d-4376-a948-2aefe01cfd61', '8e3ac39d-70f6-4163-ab22-336325e63773', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15'),
('4016111f-732d-47e4-bed1-f2d2ad20ba8e', 'd85a638d-24bc-4146-b412-a87af30564e8', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('410c48ae-63cf-4344-99f0-b0ed766e1fbe', '21e68070-b579-43db-9f4c-ab0d903bbbd9', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('422aae03-715c-4b3d-9691-0fb48c0b58d0', 'd85a638d-24bc-4146-b412-a87af30564e8', '6712a556-efb0-4b57-890f-af425f0e7291', '2024-06-10 15:46:15'),
('427556bf-3281-41c9-bf4c-8a31def50613', 'cf808890-4bbb-49d5-8f87-567f0f457711', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('43762d3b-a27f-41f1-8e8d-48e954262c17', 'c622e5b5-01d3-438e-8913-2b6e99f866af', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('451f7fdd-f9e1-4bff-9c1e-9c07748b516f', 'a4b5dc37-b8a7-47ce-b41f-2e8b2b98daf6', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('4521c743-779c-4402-8b64-2585a14df7fa', '3e60be9c-7737-4a07-a308-c7bf643cf076', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('45604c48-e404-4195-a24a-2e457f3bf543', 'd85a638d-24bc-4146-b412-a87af30564e8', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('477b3229-0e6f-40f1-ae97-13308209c37b', 'c622e5b5-01d3-438e-8913-2b6e99f866af', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('4950e38a-6338-42a3-a1e6-f75d5762c381', '35875241-8e28-4847-a7ad-b38d8c9b2bf8', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('49626cde-54f6-46a2-acc9-0aac0e6e2bb7', 'cf808890-4bbb-49d5-8f87-567f0f457711', '39816725-cd03-46c0-9bbc-c60d6cd57674', '2024-06-10 15:46:15'),
('4edc846c-7986-4ec9-97c0-40c2c8fa8282', 'cf808890-4bbb-49d5-8f87-567f0f457711', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('5090c54e-170a-48d3-803f-e8b4125352f8', '3e60be9c-7737-4a07-a308-c7bf643cf076', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('52cb318d-da4f-4976-90b3-2109b36c4e4c', 'cf808890-4bbb-49d5-8f87-567f0f457711', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('54792c31-9948-442b-ad51-566bb0abfee9', 'a5adf9dd-87d9-4bab-8bca-9db9469941bb', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('5586e1fd-4f5b-4235-9b8b-e17653a70604', 'cf808890-4bbb-49d5-8f87-567f0f457711', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('57aeb5f8-fee3-49b6-9ef4-56a9424de6db', 'cf808890-4bbb-49d5-8f87-567f0f457711', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('57f3ed9c-5416-4702-a927-7a74ced51fd1', 'd8c04332-7c37-4368-9372-93300d6be4d4', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('57f478b5-6d9c-4324-b395-07bee5972dda', 'd841bf3f-4e12-4796-86e9-cff48cc94435', '51bebb5c-905f-4da7-a230-53a20e3ecb47', '2024-06-10 15:46:15'),
('581376d0-4fbc-49c0-9b7e-668dc3322a78', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('587d3c28-7a94-4c7f-ae08-d2e52d889acd', '35875241-8e28-4847-a7ad-b38d8c9b2bf8', '2dae0398-1cb4-4ce4-ba32-6591093abc79', '2024-06-10 15:46:15'),
('58cc220f-e900-48ba-87c9-cbf2164d9ac8', 'd841bf3f-4e12-4796-86e9-cff48cc94435', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15'),
('5928ecfb-2ee2-42be-ab53-3f5b01ae5663', '596b4f18-02dd-48bf-86fc-bd7fe699e05b', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('59e5b073-a387-4389-b624-40ef0ec042f4', 'd85a638d-24bc-4146-b412-a87af30564e8', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15'),
('5ca302c6-1009-4a34-a174-891ec55f8fd8', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('5d947e1e-5930-461f-9b36-c59ce827051b', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('60ac5004-1ba5-4f20-82d0-9e298ba5c10a', 'cf808890-4bbb-49d5-8f87-567f0f457711', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('612bc4a0-5d4c-4066-a4e0-7d02e3e14b07', '8e3ac39d-70f6-4163-ab22-336325e63773', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('61baa2fa-a2f0-44dc-aa81-0e77a707bc17', '596b4f18-02dd-48bf-86fc-bd7fe699e05b', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('6546d407-fb38-4b7c-ae42-ca201006c69e', '8e3ac39d-70f6-4163-ab22-336325e63773', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('65976ecc-e443-42f7-ab68-88cd137780a9', 'cf808890-4bbb-49d5-8f87-567f0f457711', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('66a762ae-34b0-4b35-a8a2-bb5f645c923b', 'c622e5b5-01d3-438e-8913-2b6e99f866af', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('67872aeb-28c3-4704-a647-eb5a2288599c', '7be59284-8ada-4fd2-a4e8-a1690c732ac0', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('69bfb637-2e4a-4bce-9d71-3fb1d1c402b6', '3e60be9c-7737-4a07-a308-c7bf643cf076', 'e3a161e8-85e6-45bb-8241-8e14ddf3cbe4', '2024-06-10 15:46:15'),
('6adeb769-8656-4557-8d50-de6390e27224', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('6bb81ced-1e6c-48c7-a967-37858f74feeb', '25cad8af-3666-4edf-b42d-a9b731f342f5', '39816725-cd03-46c0-9bbc-c60d6cd57674', '2024-06-10 15:46:15'),
('6c6085e9-b43e-4426-a6f8-dfde99deab65', 'c622e5b5-01d3-438e-8913-2b6e99f866af', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('6da55aac-0a59-498b-be58-523914bfe6a1', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('6e0e0107-8046-46d9-9268-eed04a653682', '3e60be9c-7737-4a07-a308-c7bf643cf076', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('6fb964f1-4931-4e92-9ecf-6ad53a927af8', 'd85a638d-24bc-4146-b412-a87af30564e8', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('7175ddab-beb7-4888-a163-9e69ec8f32d2', 'd8c04332-7c37-4368-9372-93300d6be4d4', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('72cc01d9-bc7c-4b54-97ca-ef82b7fc0ee6', 'd85a638d-24bc-4146-b412-a87af30564e8', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('742ab7b4-75f1-4d97-ad94-0cbe1dfa8684', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('74f09c90-5a46-4c48-b0e8-e5456255cf7e', 'a5adf9dd-87d9-4bab-8bca-9db9469941bb', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('75333f8f-46c6-42d6-a1ad-05583628fe2e', '21e68070-b579-43db-9f4c-ab0d903bbbd9', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('76356b3f-8ce8-4d01-afd0-457ff126e8b5', '8e3ac39d-70f6-4163-ab22-336325e63773', '45a530b6-7b25-4810-b1f7-0333ba27e2c1', '2024-06-10 15:46:15'),
('7b307137-1f7c-4595-80b8-3efb1e900ef2', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('7e235b4d-ff3b-4bc9-a371-a14251825918', '596b4f18-02dd-48bf-86fc-bd7fe699e05b', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('8164612d-0d05-4786-8ebd-a0f800bd7964', 'a4b5dc37-b8a7-47ce-b41f-2e8b2b98daf6', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('81f88986-908f-4f18-9c86-f963612254a8', 'a5adf9dd-87d9-4bab-8bca-9db9469941bb', '6712a556-efb0-4b57-890f-af425f0e7291', '2024-06-10 15:46:15'),
('848b2844-a85b-4f48-ae84-be1d3c409078', '5a652e8b-1059-420d-a8f5-5e79670cbd30', '4c7a5984-2d45-49a8-8585-c26e9d1b179b', '2024-06-10 15:46:15'),
('860cab72-6360-4927-8837-13f4e970f2c8', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('86aa3d79-3bc3-47a9-b0a4-2c196aa34e5e', '8e3ac39d-70f6-4163-ab22-336325e63773', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('86e9416a-8cf1-4b02-aec3-f11e165be21c', '6290761b-bd2d-43a2-bb40-6bd2db678951', '5cda80f5-805e-4597-af7f-b10b083c34f9', '2024-06-10 15:46:15'),
('87208a17-e5f5-42bb-9c29-7a3dcea54a3a', 'a4b5dc37-b8a7-47ce-b41f-2e8b2b98daf6', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('87d2e408-d404-4f6b-ae00-7378c5b13301', '25cad8af-3666-4edf-b42d-a9b731f342f5', '4c7a5984-2d45-49a8-8585-c26e9d1b179b', '2024-06-10 15:46:15'),
('87dad72e-cbb2-45a8-bcde-f8b78c6e72b8', '8e3ac39d-70f6-4163-ab22-336325e63773', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('88001797-2d0c-4afb-a1c5-a30ab7edb37a', '21e68070-b579-43db-9f4c-ab0d903bbbd9', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('8901beb6-1295-4b1b-a9ff-c370bf575b11', 'd841bf3f-4e12-4796-86e9-cff48cc94435', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('8bcf34b8-cc42-4340-b8ab-b141a554a4ca', '6bc56ac9-5c9b-4b91-9f1a-d9ea016b7da5', 'feb5737d-b33c-43c2-b5f8-de9b56f50777', '2024-06-10 15:46:15'),
('8d3d8837-f1d3-439c-b52f-24a5c0a72b0b', 'a4b5dc37-b8a7-47ce-b41f-2e8b2b98daf6', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15'),
('8ddea7a9-6bd5-4f2e-9a7d-9152e7caea42', '2091cbfd-8361-4a01-9a75-0c9f73be7d4d', 'f913001f-4e89-49be-aa05-d602d4829764', '2024-06-10 15:46:15'),
('8e33a93a-ea5f-4326-a582-ae8410ce130e', '596b4f18-02dd-48bf-86fc-bd7fe699e05b', '45a530b6-7b25-4810-b1f7-0333ba27e2c1', '2024-06-10 15:46:15'),
('8e7afa2d-9ff9-4642-aa04-4b3258981fc3', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('918a6d5b-fd31-42e1-bcef-e7b2e5088028', 'd841bf3f-4e12-4796-86e9-cff48cc94435', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('91e0bb94-5b96-4cae-8a40-6882ad2b6a5a', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('92023fbb-d505-42d9-9364-4f3561db1d28', '7be59284-8ada-4fd2-a4e8-a1690c732ac0', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('92c76ca5-4e23-4da9-9d93-17dbd4e3dad6', '21e68070-b579-43db-9f4c-ab0d903bbbd9', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('933d4796-b0af-44c9-af80-ef9bde4c6dea', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('93634851-610a-4d69-b02f-e443d980e958', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15'),
('939da705-1d40-41f5-8bf3-9903d914a7a4', 'c622e5b5-01d3-438e-8913-2b6e99f866af', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15'),
('94eee7df-d8ba-4150-9f7a-337ad5a26280', '596b4f18-02dd-48bf-86fc-bd7fe699e05b', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('963f24c5-854d-4f2d-93a1-80bfab101c74', 'd841bf3f-4e12-4796-86e9-cff48cc94435', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('993c3269-1dab-4bc4-8f7a-29ae27a0eee3', 'a5adf9dd-87d9-4bab-8bca-9db9469941bb', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('9c01b88d-e9b9-46a9-9a72-f9792afeaba2', '8e3ac39d-70f6-4163-ab22-336325e63773', '39816725-cd03-46c0-9bbc-c60d6cd57674', '2024-06-10 15:46:15'),
('9c1314cb-2ce2-4668-9248-56fe575307e3', '4f87cfe2-7646-4066-b94f-dba801ceef96', '6712a556-efb0-4b57-890f-af425f0e7291', '2024-06-10 15:46:15'),
('9cd7be61-7b1c-4545-bc4c-bf54a3551c06', '3e60be9c-7737-4a07-a308-c7bf643cf076', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('9cfe906f-836d-4231-b6db-afd9e8c05f43', '21e68070-b579-43db-9f4c-ab0d903bbbd9', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('9f39931c-ffd4-42fe-89dd-702bf6ed6448', 'c622e5b5-01d3-438e-8913-2b6e99f866af', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('a0202ccc-1673-4f90-94bd-b2a231772552', 'cf808890-4bbb-49d5-8f87-567f0f457711', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('a0f3f9ad-b705-442d-97c5-a37c2dd48ea9', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15'),
('a10bf843-c52a-427f-b3fe-cc5957996f2e', '2091cbfd-8361-4a01-9a75-0c9f73be7d4d', '4c7a5984-2d45-49a8-8585-c26e9d1b179b', '2024-06-10 15:46:15'),
('a522847e-da94-4d2e-8121-1407cef403a1', '7be59284-8ada-4fd2-a4e8-a1690c732ac0', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('a56ae99d-d7cd-4308-967e-12090a65520a', '521f7794-35f7-4d5c-b60e-3d6e7020231d', '4c7a5984-2d45-49a8-8585-c26e9d1b179b', '2024-06-10 15:46:15'),
('a7270fcf-f9cd-44aa-bf18-3adc973ecfb7', '8e3ac39d-70f6-4163-ab22-336325e63773', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('a7ede6e3-c79b-4cde-9d77-2236645aee03', 'd841bf3f-4e12-4796-86e9-cff48cc94435', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('a892abaf-a8e6-429b-81c8-99012aa3a6ad', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('a98a7a9c-bbfa-46e0-aab6-4f46e156ee27', '21e68070-b579-43db-9f4c-ab0d903bbbd9', '5cda80f5-805e-4597-af7f-b10b083c34f9', '2024-06-10 15:46:15'),
('ab52beaf-37c4-4035-aefe-a631028f9aef', '8e3ac39d-70f6-4163-ab22-336325e63773', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('abc36bcb-3c84-485c-8cbc-c876b6546015', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7', 'd6ae448f-a918-47b5-8a06-fb782cd5b1de', '2024-06-10 15:46:15'),
('abd8db0e-fe87-425f-8af3-296cf0ac39d7', '7be59284-8ada-4fd2-a4e8-a1690c732ac0', 'feb5737d-b33c-43c2-b5f8-de9b56f50777', '2024-06-10 15:46:15'),
('af9e8431-d748-41b6-a1b5-512a9ad9011f', '35875241-8e28-4847-a7ad-b38d8c9b2bf8', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('b2b1ac9a-9da4-41e1-a775-dd764ad74c45', '7be59284-8ada-4fd2-a4e8-a1690c732ac0', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('b2cdc56a-7685-4517-b279-f170426a4199', '35875241-8e28-4847-a7ad-b38d8c9b2bf8', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15'),
('b6a60256-d1b0-4c4c-ad8e-6833d74683ef', 'a4b5dc37-b8a7-47ce-b41f-2e8b2b98daf6', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('b6d7a66e-5593-4a18-ab2d-0d212d0510b6', '3e60be9c-7737-4a07-a308-c7bf643cf076', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('b74633e5-b2ca-4ccc-a559-effda90cf870', '21e68070-b579-43db-9f4c-ab0d903bbbd9', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('b7afbf08-004d-4b6d-9fae-b3f8766b371f', 'a5adf9dd-87d9-4bab-8bca-9db9469941bb', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('b97ca372-4cec-4595-b96c-0f21c6735887', '521f7794-35f7-4d5c-b60e-3d6e7020231d', 'd6ae448f-a918-47b5-8a06-fb782cd5b1de', '2024-06-10 15:46:15'),
('bacce35c-97ee-47ff-a3c7-0e34ec46a084', 'd85a638d-24bc-4146-b412-a87af30564e8', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('bb654bc0-6aef-4038-a848-8ccc0361ff80', 'd85a638d-24bc-4146-b412-a87af30564e8', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('beb5f3ef-9e40-4ec8-af0b-d6bfeddae563', '596b4f18-02dd-48bf-86fc-bd7fe699e05b', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('bfa5722a-a5df-4f3b-b16c-c1c9ad0e2ec2', '8e3ac39d-70f6-4163-ab22-336325e63773', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('bfedce00-7b02-477d-a005-b5fd7910baf1', 'a5adf9dd-87d9-4bab-8bca-9db9469941bb', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('c05252da-2c27-458c-af35-100c5342bfd1', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('c171775f-24ea-462a-81e4-6f82c4851941', '35875241-8e28-4847-a7ad-b38d8c9b2bf8', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('c2a6a9df-2855-4403-aa2c-66c2b81800ec', 'cf808890-4bbb-49d5-8f87-567f0f457711', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('c5ca5ce9-6742-4e43-b612-384a14a9f184', 'd8c04332-7c37-4368-9372-93300d6be4d4', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('c69cdbf8-e2f1-4cbd-a3e1-c321172b6a93', '5a652e8b-1059-420d-a8f5-5e79670cbd30', 'e3a161e8-85e6-45bb-8241-8e14ddf3cbe4', '2024-06-10 15:46:15'),
('c7cde106-fbce-4c45-9f1c-f01a928537b9', 'd841bf3f-4e12-4796-86e9-cff48cc94435', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('c97a0321-6037-4b23-b51e-2bd9268e78f7', 'c622e5b5-01d3-438e-8913-2b6e99f866af', '45a530b6-7b25-4810-b1f7-0333ba27e2c1', '2024-06-10 15:46:15'),
('c9d96a7e-6259-4efe-904b-70422a025e9d', '7be59284-8ada-4fd2-a4e8-a1690c732ac0', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('ca886f1a-8430-458d-b5be-9814539004be', 'd8c04332-7c37-4368-9372-93300d6be4d4', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('cc9ca954-ca45-429d-916f-8dee0750f0af', 'a4b5dc37-b8a7-47ce-b41f-2e8b2b98daf6', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('cd5a8f28-542f-4648-ab01-657d6b055595', 'a5adf9dd-87d9-4bab-8bca-9db9469941bb', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('ce2b93a8-b4b2-40b1-9fd0-7c4b4a0d761e', 'd841bf3f-4e12-4796-86e9-cff48cc94435', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('d09bea78-f12b-4b7a-8784-92fa4c098bf1', 'a5adf9dd-87d9-4bab-8bca-9db9469941bb', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('d42a4e0e-881c-4578-b035-f38bb1c42e23', 'd85a638d-24bc-4146-b412-a87af30564e8', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('d449ddd3-c3bd-456e-8fda-faec1cb60786', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c', 'f913001f-4e89-49be-aa05-d602d4829764', '2024-06-10 15:46:15'),
('d4674725-2c50-42ab-962d-1d48c05d293f', '21e68070-b579-43db-9f4c-ab0d903bbbd9', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('d546b639-56b6-438d-88ad-a5428411347a', 'd8c04332-7c37-4368-9372-93300d6be4d4', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('d55a743c-cce2-45d6-92d6-09143f8fcf82', 'a4b5dc37-b8a7-47ce-b41f-2e8b2b98daf6', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('d7f82cd7-6ab3-436f-bcd5-86e9bf3e6713', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('d8cbd2df-40a7-4646-9dcc-6f6ef9acfefe', 'd8c04332-7c37-4368-9372-93300d6be4d4', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('d960697e-7fcc-4291-a1f6-9e693d3aef39', '35875241-8e28-4847-a7ad-b38d8c9b2bf8', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('da7100f4-8a7b-4319-8842-1ee265ae942a', '8e3ac39d-70f6-4163-ab22-336325e63773', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('dadd8471-e03a-4c34-b7ed-7eed2e936a05', 'c622e5b5-01d3-438e-8913-2b6e99f866af', 'f913001f-4e89-49be-aa05-d602d4829764', '2024-06-10 15:46:15'),
('dc13f042-1367-4b20-b738-f01f504e1605', '3e60be9c-7737-4a07-a308-c7bf643cf076', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('dc52f833-f436-4136-b43a-affcfe9927bf', '21e68070-b579-43db-9f4c-ab0d903bbbd9', '45a530b6-7b25-4810-b1f7-0333ba27e2c1', '2024-06-10 15:46:15'),
('df23a76e-cbff-40ae-9be1-d1f85c54fdd1', '21e68070-b579-43db-9f4c-ab0d903bbbd9', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15'),
('e0546e67-166a-448a-abb1-f7df2d9bec01', 'c622e5b5-01d3-438e-8913-2b6e99f866af', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('e1105caf-bdc8-4128-a90b-23f07cf5a2aa', 'd85a638d-24bc-4146-b412-a87af30564e8', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('e332c489-d451-4df5-bb5d-23dfc13d7b07', '7be59284-8ada-4fd2-a4e8-a1690c732ac0', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('e72e9eb9-f16e-409c-9235-9ac11580f72e', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('e7b9efa7-dde1-4ab1-8235-9b391db8e7d6', '35875241-8e28-4847-a7ad-b38d8c9b2bf8', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('e87246fc-fcfd-4889-93f6-e6c9baefbcfb', 'a4b5dc37-b8a7-47ce-b41f-2e8b2b98daf6', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('e88fe6e7-aa8a-4794-bf9b-2a4e4f5126af', 'a5adf9dd-87d9-4bab-8bca-9db9469941bb', '5a5f27ec-e323-42c0-9732-319c321245d7', '2024-06-10 15:46:15'),
('ea402f0b-a7b1-4e58-a493-6a9200636c34', '21e68070-b579-43db-9f4c-ab0d903bbbd9', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('ec698f7c-6966-4e73-8456-0f0ce0df7246', '596b4f18-02dd-48bf-86fc-bd7fe699e05b', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('edc8c547-bd06-41a3-bb50-78904848f631', '3e60be9c-7737-4a07-a308-c7bf643cf076', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('ee921428-a737-4a9c-b0a0-37a9e828deae', '3e60be9c-7737-4a07-a308-c7bf643cf076', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15'),
('eea7f514-779f-44f0-95f2-2ea0279ab9e1', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('eeeb8b1f-7498-45bd-8930-2b83c9636b43', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('efad088d-d679-453b-8a0d-061b10abac74', 'a4b5dc37-b8a7-47ce-b41f-2e8b2b98daf6', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('f0b9f572-78eb-4719-ac3a-97cd24f7f0a6', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8', 'c1159dea-bbcc-4476-8f3a-aa1064bde790', '2024-06-10 15:46:15'),
('f0ee35e1-2ed7-43c9-a304-a9b929f5b77e', '420b9d0d-8e21-44a3-bc1f-3b466eced0f7', '47cbe5e6-e25d-423f-a3b1-c549efd46048', '2024-06-10 15:46:15'),
('f192e128-b06d-4cab-ad02-9f1c2408c6b0', 'c622e5b5-01d3-438e-8913-2b6e99f866af', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('f1f30faf-6616-4079-b9c0-82eba454fc3b', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8', 'e3a161e8-85e6-45bb-8241-8e14ddf3cbe4', '2024-06-10 15:46:15'),
('f280ca2e-18c1-49a3-a94c-31b2362c78c7', '596b4f18-02dd-48bf-86fc-bd7fe699e05b', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('f307c440-8060-4f71-b957-88c7e3bc23c2', '35875241-8e28-4847-a7ad-b38d8c9b2bf8', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('f41c7587-2178-465b-8870-81c4c14f1724', '3e60be9c-7737-4a07-a308-c7bf643cf076', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('f4ca80e4-e5fe-4111-901a-995e4451eef0', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c', '7eb2d19e-6387-407e-a4d3-a6e38ccff7f4', '2024-06-10 15:46:15'),
('f4f0e289-47aa-4bad-95df-c806720c1914', 'd85a638d-24bc-4146-b412-a87af30564e8', '66493266-63a6-4615-aee5-609a38b277f4', '2024-06-10 15:46:15'),
('f671873c-ce1c-4a21-b549-aaea4383d1a0', '3e60be9c-7737-4a07-a308-c7bf643cf076', 'a67ea817-5488-41fa-af15-b4053bce174b', '2024-06-10 15:46:15'),
('f6f4e1ef-9a27-4458-a86e-cf28302506d8', 'd8c04332-7c37-4368-9372-93300d6be4d4', '45a530b6-7b25-4810-b1f7-0333ba27e2c1', '2024-06-10 15:46:15'),
('f901b836-97c7-4411-9576-04633581ed5a', 'f51806e7-22e1-4b2e-a0a2-92ecd701653c', '2bf644d5-764d-4089-b61d-3286e2b77935', '2024-06-10 15:46:15'),
('f95dfbc6-3540-410a-845f-d9bad642ed3f', 'a4b5dc37-b8a7-47ce-b41f-2e8b2b98daf6', '043fd498-aa67-4b0f-8776-46f58a53fb2c', '2024-06-10 15:46:15'),
('f9d19367-8905-47d1-9d85-52606098efc1', '8e3ac39d-70f6-4163-ab22-336325e63773', 'ebdbd9cc-6a7f-4c16-b29c-ca072ea886c1', '2024-06-10 15:46:15'),
('fd1d8c54-67a0-4bd5-bc97-6d937700748c', 'cfc61e37-4fc5-4422-a19e-eefdc04d29c8', '45a530b6-7b25-4810-b1f7-0333ba27e2c1', '2024-06-10 15:46:15'),
('fd4e5250-e058-4192-ab3f-ec91ac160ae9', 'cf808890-4bbb-49d5-8f87-567f0f457711', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15'),
('fd4f8327-4370-4a53-b494-dd106dcf9ef8', '7be59284-8ada-4fd2-a4e8-a1690c732ac0', '01998a5c-fb07-4530-a4f8-a768b4a6148a', '2024-06-10 15:46:15'),
('fd5a6e15-6993-4eba-9db4-0c49a1df7a75', '7be59284-8ada-4fd2-a4e8-a1690c732ac0', '97ee5474-8475-4669-9151-1670322b43a9', '2024-06-10 15:46:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `idusers` char(36) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `rol` tinyint(1) DEFAULT NULL COMMENT '0 ADMIN\n1 CAJERO\n2 COCINERO\n3 CLIENTE\n4 USUARIO ELIMINADO',
  `actual_order` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`idusers`, `name`, `password`, `phone`, `rol`, `actual_order`) VALUES
('35a08a29-5bc7-429c-a7f4-9c64e2a712c0', 'Cajero', '$2b$08$s2SPwbxyuKhxwEo1rlbqAemSveNLAZHsE3uW9iS8HMq8YlDNpB47O', '4151050184', 1, NULL),
('4e6f65de-0d6d-4ad7-91b3-dade6206665f', 'Susana', '$2b$08$YPNH4GWHG2qiFONLu4c/beaxnkGdWuEXXj1CF52l.lB/1LiYNKQf6', '4151025689', 0, NULL),
('5ef79a0b-1826-41c5-9453-8fd2462e53fe', 'Cocinero', '$2b$08$w.4sDBnstwmcVMWoc1KfsOxBAJAR6b1uDV9eLbt5WxAw1XoNNRGL6', '4151050184', 2, NULL),
('87862748-dd22-40f1-bf0a-51a24b56aab6', 'Alejandro', '$2b$08$S6Laiv8eV4tusNnEWTmUxOANCY993B58N2iBk8wUG73Vcl1.x7SJe', '4151058106', 4, NULL),
('95e1030a-6983-4e43-841c-aea437542bde', 'Arturo', '$2b$08$YmFdg7MHFoS8RJAlfQRj5.WRgOO609retZbzWO008HV.TIu.NolnC', '4151025689', 2, NULL),
('a6b4f98a-e01f-481b-9f28-4db02b87d920', 'Juan', '$2b$08$KqN/2TzlpgN9Um2xR7LC9e.KatA4lBXgdTmSDTQKj7ElW0t4ArHTW', '4151050184', 4, NULL),
('b6ba0a7b-d3de-4166-aad6-fd4d2c521051', 'Arturo', '$2b$08$zaW1N110FYHNBPqdwPwO2uj7HNlX5QbxeHPhw10ceT9HxKDO79ULa', '4151025689', 2, NULL),
('bb8453c7-03cc-42ec-8151-ef190cebbcc9', 'Administrador', '$2b$08$E8ryDaKI.8P5T8mvv37sLOtMssxMNqA65ZrcF7ixP/oG1QD18EdcC', '4151025689', 0, NULL),
('e24fb125-8db1-4a09-bf1e-355672f47eea', 'Lizeth', '$2b$08$uA.COL.LQG5VIBBolc9XOOwSVUNyz4cAUDmUpIIslqbXCLUzk94su', '4151195601', 4, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idcategory`);

--
-- Indices de la tabla `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`idingredients`),
  ADD KEY `fk_ingredients_category1_idx` (`category_idcategory`);

--
-- Indices de la tabla `not_ingredient`
--
ALTER TABLE `not_ingredient`
  ADD PRIMARY KEY (`ingredients_idingredients`,`order_details_idorderdetail`),
  ADD KEY `fk_ingredients_has_order_details_order_details1_idx` (`order_details_idorderdetail`),
  ADD KEY `fk_ingredients_has_order_details_ingredients1_idx` (`ingredients_idingredients`);

--
-- Indices de la tabla `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`idorder`),
  ADD KEY `fk_order_users1_idx` (`users_idusers`);

--
-- Indices de la tabla `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`idorderdetail`),
  ADD KEY `fk_order_details_order1_idx` (`order_idorder`),
  ADD KEY `fk_order_details_products1_idx` (`products_idproducts`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idproducts`),
  ADD KEY `fk_products_category1_idx` (`category_idcategory`);

--
-- Indices de la tabla `products_ingredients`
--
ALTER TABLE `products_ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_ingredients_products1_idx` (`products_idProducts`),
  ADD KEY `fk_products_ingredients_ingredients1_idx` (`ingredients_idingredients`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusers`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `fk_ingredients_category1` FOREIGN KEY (`category_idcategory`) REFERENCES `category` (`idcategory`);

--
-- Filtros para la tabla `not_ingredient`
--
ALTER TABLE `not_ingredient`
  ADD CONSTRAINT `fk_ingredients_has_order_details_ingredients1` FOREIGN KEY (`ingredients_idingredients`) REFERENCES `ingredients` (`idingredients`),
  ADD CONSTRAINT `fk_ingredients_has_order_details_order_details1` FOREIGN KEY (`order_details_idorderdetail`) REFERENCES `order_details` (`idorderdetail`);

--
-- Filtros para la tabla `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`);

--
-- Filtros para la tabla `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_order_details_order1` FOREIGN KEY (`order_idorder`) REFERENCES `order` (`idorder`),
  ADD CONSTRAINT `fk_order_details_products1` FOREIGN KEY (`products_idproducts`) REFERENCES `products` (`idproducts`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_category1` FOREIGN KEY (`category_idcategory`) REFERENCES `category` (`idcategory`);

--
-- Filtros para la tabla `products_ingredients`
--
ALTER TABLE `products_ingredients`
  ADD CONSTRAINT `fk_products_ingredients_ingredients1` FOREIGN KEY (`ingredients_idingredients`) REFERENCES `ingredients` (`idingredients`),
  ADD CONSTRAINT `fk_products_ingredients_products1` FOREIGN KEY (`products_idProducts`) REFERENCES `products` (`idproducts`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
