SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Drop tables if they exist
DROP TABLE IF EXISTS `cart_item`;
DROP TABLE IF EXISTS `cart`;
DROP TABLE IF EXISTS `order_item`;
DROP TABLE IF EXISTS `order`;
DROP TABLE IF EXISTS `poster_size`;
DROP TABLE IF EXISTS `poster_image`;
DROP TABLE IF EXISTS `poster_category`;
DROP TABLE IF EXISTS `poster`;
DROP TABLE IF EXISTS `category`;
DROP TABLE IF EXISTS `forgotten_password`;
DROP TABLE IF EXISTS `permission`;
DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `resource`;
DROP TABLE IF EXISTS `role`;
DROP TABLE IF EXISTS `author`;

-- Create role table
CREATE TABLE `role` (
    `role_id` varchar(50) COLLATE utf8mb4_czech_ci NOT NULL,
    PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Create resource table
CREATE TABLE `resource` (
    `resource_id` varchar(50) COLLATE utf8mb4_czech_ci NOT NULL,
    PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci COMMENT='Table containing list of resources';

-- Create user table
CREATE TABLE `user` (
    `user_id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(40) COLLATE utf8mb4_czech_ci NOT NULL,
    `email` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
    `facebook_id` varchar(100) COLLATE utf8mb4_czech_ci DEFAULT NULL,
    `role_id` varchar(50) COLLATE utf8mb4_czech_ci DEFAULT NULL,
    `password` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
    PRIMARY KEY (`user_id`),
    UNIQUE KEY `email` (`email`),
    UNIQUE KEY `facebook_id` (`facebook_id`),
    KEY `role_id` (`role_id`),
    CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci COMMENT='Table with user data';

-- Create permission table
CREATE TABLE `permission` (
    `permission_id` int(11) NOT NULL AUTO_INCREMENT,
    `role_id` varchar(50) COLLATE utf8mb4_czech_ci NOT NULL,
    `resource_id` varchar(50) COLLATE utf8mb4_czech_ci NOT NULL,
    `action` varchar(100) COLLATE utf8mb4_czech_ci NOT NULL,
    `type` set('allow','deny') COLLATE utf8mb4_czech_ci NOT NULL DEFAULT 'allow',
    PRIMARY KEY (`permission_id`),
    UNIQUE KEY `role_id` (`role_id`,`resource_id`,`action`,`type`),
    KEY `permission_ibfk_1` (`resource_id`),
    CONSTRAINT `permission_ibfk_1` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`resource_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `permission_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Create forgotten_password table
CREATE TABLE `forgotten_password` (
    `forgotten_password_id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `code` varchar(50) COLLATE utf8mb4_czech_ci NOT NULL,
    `created` timestamp NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (`forgotten_password_id`),
    KEY `user_id` (`user_id`),
    CONSTRAINT `forgotten_password_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Create category table
CREATE TABLE `category` (
    `category_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` varchar(100) COLLATE utf8mb4_czech_ci NOT NULL,
    `description` varchar(300) COLLATE utf8mb4_czech_ci NOT NULL,
    `parent_category_id` smallint(5) UNSIGNED DEFAULT NULL,
    PRIMARY KEY (`category_id`),
    CONSTRAINT `category_ibfk_1` FOREIGN KEY (`parent_category_id`) REFERENCES `category` (`category_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Create author table
CREATE TABLE `author` (
    `author_id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(100) COLLATE utf8mb4_czech_ci NOT NULL,
    PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Create poster table
CREATE TABLE `poster` (
    `poster_id` int(11) NOT NULL AUTO_INCREMENT,
    `title` varchar(100) COLLATE utf8mb4_czech_ci NOT NULL,
    `url` varchar(100) COLLATE utf8mb4_czech_ci NOT NULL,
    `description` text COLLATE utf8mb4_czech_ci NOT NULL,
    `author_id` int(11) DEFAULT NULL,
    `stock` int(11) DEFAULT 0,
    `available` tinyint(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`poster_id`),
    UNIQUE KEY `url` (`url`),
    KEY `author_id` (`author_id`),
    KEY `available` (`available`),
    CONSTRAINT `poster_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Create poster_category table
CREATE TABLE `poster_category` (
    `poster_category_id` int(11) NOT NULL AUTO_INCREMENT,
    `poster_id` int(11) NOT NULL,
    `category_id` smallint(5) UNSIGNED NOT NULL,
    PRIMARY KEY (`poster_category_id`),
    UNIQUE KEY `poster_category_index_0` (`poster_id`, `category_id`),
    KEY `category_id` (`category_id`),
    CONSTRAINT `poster_category_ibfk_1` FOREIGN KEY (`poster_id`) REFERENCES `poster` (`poster_id`) ON DELETE CASCADE,
    CONSTRAINT `poster_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Create poster_image table
CREATE TABLE `poster_image` (
    `poster_image_id` int(11) NOT NULL AUTO_INCREMENT,
    `poster_id` int(11) NOT NULL,
    `image_url` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
    PRIMARY KEY (`poster_image_id`),
    KEY `poster_id` (`poster_id`),
    CONSTRAINT `poster_image_ibfk_1` FOREIGN KEY (`poster_id`) REFERENCES `poster` (`poster_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Create poster_size table
CREATE TABLE `poster_size` (
    `poster_size_id` int(11) NOT NULL AUTO_INCREMENT,
    `poster_id` int(11) NOT NULL,
    `size` ENUM('small','medium','large') COLLATE utf8mb4_czech_ci NOT NULL,
    `price` decimal(10,2) NOT NULL,
    PRIMARY KEY (`poster_size_id`),
    UNIQUE KEY `poster_size_index_1` (`poster_id`, `size`),
    CONSTRAINT `poster_size_ibfk_1` FOREIGN KEY (`poster_id`) REFERENCES `poster` (`poster_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Create cart table
CREATE TABLE `cart` (
    `cart_id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) DEFAULT NULL,
    `last_modified` timestamp NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (`cart_id`),
    KEY `user_id` (`user_id`),
    CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Create cart_item table
CREATE TABLE `cart_item` (
    `cart_item_id` int(11) NOT NULL AUTO_INCREMENT,
    `cart_id` int(11) NOT NULL,
    `poster_size_id` int(11) NOT NULL,
    `count` int(11) NOT NULL DEFAULT 1,
    PRIMARY KEY (`cart_item_id`),
    UNIQUE KEY `cart_item_index_2` (`cart_id`, `poster_size_id`),
    KEY `poster_size_id` (`poster_size_id`),
    CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`) ON DELETE CASCADE,
    CONSTRAINT `cart_item_ibfk_2` FOREIGN KEY (`poster_size_id`) REFERENCES `poster_size` (`poster_size_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Create order table
CREATE TABLE `order` (
    `order_id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `cart_id` int(11) NOT NULL,
    `total_amount` decimal(10,2) NOT NULL,
    `status` ENUM('pending','completed','cancelled') COLLATE utf8mb4_czech_ci DEFAULT 'pending',
    `created` timestamp NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (`order_id`),
    KEY `user_id` (`user_id`),
    KEY `cart_id` (`cart_id`),
    CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
    CONSTRAINT `order_ibfk_2` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Create order_item table
CREATE TABLE `order_item` (
    `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
    `order_id` int(11) NOT NULL,
    `poster_size_id` int(11) NOT NULL,
    `count` int(11) NOT NULL DEFAULT 1,
    `price` decimal(10,2) NOT NULL,
    PRIMARY KEY (`order_item_id`),
    KEY `order_id` (`order_id`),
    KEY `poster_size_id` (`poster_size_id`),
    CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE,
    CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`poster_size_id`) REFERENCES `poster_size` (`poster_size_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

-- Insert default roles
INSERT INTO `role` (`role_id`) VALUES
('admin'),
('authenticated'),
('guest');

-- Insert default resources
INSERT INTO `resource` (`resource_id`) VALUES
('Admin:Category'),
('Admin:Dashboard'),
('Admin:Error4xx'),
('Admin:Product'),
('Category'),
('Front:Cart'),
('Front:Error'),
('Front:Error4xx'),
('Front:Homepage'),
('Front:Product'),
('Front:User'),
('Product');

-- Insert default permissions (similar to old schema)
INSERT INTO `permission` (`role_id`, `resource_id`, `action`, `type`) VALUES
('admin', 'Admin:Category', '', 'allow'),
('admin', 'Admin:Dashboard', '', 'allow'),
('admin', 'Admin:Product', '', 'allow'),
('admin', 'Category', '', 'allow'),
('admin', 'Product', '', 'allow'),
('authenticated', 'Front:Cart', '', 'allow'),
('authenticated', 'Front:Error', '', 'allow'),
('authenticated', 'Front:Error4xx', '', 'allow'),
('authenticated', 'Front:Homepage', '', 'allow'),
('authenticated', 'Front:Product', '', 'allow'),
('authenticated', 'Front:User', 'login', 'allow'),
('authenticated', 'Front:User', 'logout', 'allow'),
('guest', 'Front:Cart', '', 'allow'),
('guest', 'Front:Error', '', 'allow'),
('guest', 'Front:Error4xx', '', 'allow'),
('guest', 'Front:Homepage', '', 'allow'),
('guest', 'Front:Product', '', 'allow'),
('guest', 'Front:User', 'login', 'allow'),
('guest', 'Front:User', 'register', 'allow'),
('guest', 'Front:User', 'forgottenPassword', 'allow'),
('guest', 'Front:User', 'renewPassword', 'allow'),
('guest', 'Front:User', 'facebookLogin', 'allow');

COMMIT;
