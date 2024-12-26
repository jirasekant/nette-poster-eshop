-- Generated Poster Data

DELETE FROM `poster_category`;
DELETE FROM `poster_image`;
DELETE FROM `poster_size`;
DELETE FROM `poster`;
DELETE FROM `category` WHERE `category_id` > 0;

-- Insert categories
INSERT INTO `category` (`title`, `description`) VALUES
('Bauhaus', 'Bauhaus collection of posters');
INSERT INTO `category` (`title`, `description`) VALUES
('Japanese', 'Japanese collection of posters');
INSERT INTO `category` (`title`, `description`) VALUES
('Art', 'Art collection of posters');
INSERT INTO `category` (`title`, `description`) VALUES
('Fashion', 'Fashion collection of posters');
INSERT INTO `category` (`title`, `description`) VALUES
('Botanical', 'Botanical collection of posters');
INSERT INTO `category` (`title`, `description`) VALUES
('Kids', 'Kids collection of posters');

-- Poster: P308 Bauhausredsun1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P308 Bauhausredsun1_360x', 'p308-bauhausredsun1360x', 'P308 Bauhausredsun1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 1, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(1, '/images/posters/Bauhaus/P308-BauhausRedSun1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(1, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(1, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(1, 'large', 79.99);

-- Poster: P317 Bauhausweimar1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P317 Bauhausweimar1_360x', 'p317-bauhausweimar1360x', 'P317 Bauhausweimar1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 2, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(2, '/images/posters/Bauhaus/P317-BauhausWeimar1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(2, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(2, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(2, 'large', 79.99);

-- Poster: P286 Bauhausbluecolorcode1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P286 Bauhausbluecolorcode1_360x', 'p286-bauhausbluecolorcode1360x', 'P286 Bauhausbluecolorcode1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 3, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(3, '/images/posters/Bauhaus/P286-BauhausBlueColorCode1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(3, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(3, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(3, 'large', 79.99);

-- Poster: P291 Bauhauscoloredcircles1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P291 Bauhauscoloredcircles1_360x', 'p291-bauhauscoloredcircles1360x', 'P291 Bauhauscoloredcircles1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 4, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(4, '/images/posters/Bauhaus/P291-BauhausColoredCircles1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(4, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(4, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(4, 'large', 79.99);

-- Poster: P296 Bauhausexhibition1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P296 Bauhausexhibition1_360x', 'p296-bauhausexhibition1360x', 'P296 Bauhausexhibition1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 5, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(5, '/images/posters/Bauhaus/P296-BauhausExhibition1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(5, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(5, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(5, 'large', 79.99);

-- Poster: P316 Bauhauswarmcolors1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P316 Bauhauswarmcolors1_360x', 'p316-bauhauswarmcolors1360x', 'P316 Bauhauswarmcolors1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 6, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(6, '/images/posters/Bauhaus/P316-BauhausWarmColors1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(6, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(6, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(6, 'large', 79.99);

-- Poster: P319 Bauhausyellowcirclewithlines1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P319 Bauhausyellowcirclewithlines1_360x', 'p319-bauhausyellowcirclewithlines1360x', 'P319 Bauhausyellowcirclewithlines1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 7, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(7, '/images/posters/Bauhaus/P319-BauhausYellowCircleWithLines1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(7, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(7, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(7, 'large', 79.99);

-- Poster: P303 Bauhausmixedsquares1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P303 Bauhausmixedsquares1_360x', 'p303-bauhausmixedsquares1360x', 'P303 Bauhausmixedsquares1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 8, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(8, '/images/posters/Bauhaus/P303-BauhausMixedSquares1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(8, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(8, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(8, 'large', 79.99);

-- Poster: P305 Bauhausorangecolorcode1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P305 Bauhausorangecolorcode1_360x', 'p305-bauhausorangecolorcode1360x', 'P305 Bauhausorangecolorcode1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 9, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(9, '/images/posters/Bauhaus/P305-BauhausOrangeColorCode1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(9, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(9, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(9, 'large', 79.99);

-- Poster: P315 Bauhaustriangles1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P315 Bauhaustriangles1_360x', 'p315-bauhaustriangles1360x', 'P315 Bauhaustriangles1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 10, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(10, '/images/posters/Bauhaus/P315-BauhausTriangles1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(10, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(10, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(10, 'large', 79.99);

-- Poster: P297 Bauhauseyes1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P297 Bauhauseyes1_360x', 'p297-bauhauseyes1360x', 'P297 Bauhauseyes1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 11, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(11, '/images/posters/Bauhaus/P297-BauhausEyes1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(11, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(11, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(11, 'large', 79.99);

-- Poster: P306 Bauhausorangesemicircles1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P306 Bauhausorangesemicircles1_360x', 'p306-bauhausorangesemicircles1360x', 'P306 Bauhausorangesemicircles1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 12, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(12, '/images/posters/Bauhaus/P306-BauhausOrangeSemicircles1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(12, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(12, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(12, 'large', 79.99);

-- Poster: P289 Bauhauscircles21_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P289 Bauhauscircles21_360x', 'p289-bauhauscircles21360x', 'P289 Bauhauscircles21_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 13, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(13, '/images/posters/Bauhaus/P289-BauhausCircles21_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(13, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(13, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(13, 'large', 79.99);

-- Poster: P751 Bauhauszebragreen
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P751 Bauhauszebragreen', 'p751-bauhauszebragreen', 'P751 Bauhauszebragreen - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 14, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(14, '/images/posters/Bauhaus/P751-BauhausZebraGreen-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(14, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(14, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(14, 'large', 79.99);

-- Poster: Bauhausabstractcolors
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Bauhausabstractcolors', 'bauhausabstractcolors', 'Bauhausabstractcolors - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 15, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(15, '/images/posters/Bauhaus/BauhausAbstractColors-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(15, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(15, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(15, 'large', 79.99);

-- Poster: Bauhausgreenpattern
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Bauhausgreenpattern', 'bauhausgreenpattern', 'Bauhausgreenpattern - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 16, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(16, '/images/posters/Bauhaus/BauhausGreenPattern-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(16, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(16, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(16, 'large', 79.99);

-- Poster: P302 Bauhausmixedcolors1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P302 Bauhausmixedcolors1_360x', 'p302-bauhausmixedcolors1360x', 'P302 Bauhausmixedcolors1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 17, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(17, '/images/posters/Bauhaus/P302-BauhausMixedColors1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(17, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(17, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(17, 'large', 79.99);

-- Poster: P293 Bauhausdots1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P293 Bauhausdots1_360x', 'p293-bauhausdots1360x', 'P293 Bauhausdots1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 18, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(18, '/images/posters/Bauhaus/P293-BauhausDots1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(18, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(18, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(18, 'large', 79.99);

-- Poster: P304 Bauhausmuseum1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P304 Bauhausmuseum1_360x', 'p304-bauhausmuseum1360x', 'P304 Bauhausmuseum1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 19, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(19, '/images/posters/Bauhaus/P304-BauhausMuseum1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(19, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(19, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(19, 'large', 79.99);

-- Poster: P300 Bauhauslineswithdots1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P300 Bauhauslineswithdots1_360x', 'p300-bauhauslineswithdots1360x', 'P300 Bauhauslineswithdots1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 20, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(20, '/images/posters/Bauhaus/P300-BauhausLinesWithDots1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(20, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(20, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(20, 'large', 79.99);

-- Poster: P281 Bauhausbicycle1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P281 Bauhausbicycle1_360x', 'p281-bauhausbicycle1360x', 'P281 Bauhausbicycle1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 21, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(21, '/images/posters/Bauhaus/P281-BauhausBicycle1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(21, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(21, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(21, 'large', 79.99);

-- Poster: P288 Bauhauscircles1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P288 Bauhauscircles1_360x', 'p288-bauhauscircles1360x', 'P288 Bauhauscircles1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 22, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(22, '/images/posters/Bauhaus/P288-BauhausCircles1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(22, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(22, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(22, 'large', 79.99);

-- Poster: P282 Bauhausblackdots1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P282 Bauhausblackdots1_360x', 'p282-bauhausblackdots1360x', 'P282 Bauhausblackdots1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 23, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(23, '/images/posters/Bauhaus/P282-BauhausBlackDots1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(23, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(23, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(23, 'large', 79.99);

-- Poster: P292 Bauhauscoloredeyes1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P292 Bauhauscoloredeyes1_360x', 'p292-bauhauscoloredeyes1360x', 'P292 Bauhauscoloredeyes1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 24, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(24, '/images/posters/Bauhaus/P292-BauhausColoredEyes1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(24, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(24, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(24, 'large', 79.99);

-- Poster: P287 Bauhausbluewithshadows1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P287 Bauhausbluewithshadows1_360x', 'p287-bauhausbluewithshadows1360x', 'P287 Bauhausbluewithshadows1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 25, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(25, '/images/posters/Bauhaus/P287-BauhausBlueWithShadows1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(25, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(25, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(25, 'large', 79.99);

-- Poster: P752 Bauhauszebraorange
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P752 Bauhauszebraorange', 'p752-bauhauszebraorange', 'P752 Bauhauszebraorange - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 26, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(26, '/images/posters/Bauhaus/P752-BauhausZebraOrange-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(26, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(26, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(26, 'large', 79.99);

-- Poster: P311 Bauhausrunningman1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P311 Bauhausrunningman1_360x', 'p311-bauhausrunningman1360x', 'P311 Bauhausrunningman1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 27, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(27, '/images/posters/Bauhaus/P311-BauhausRunningMan1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(27, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(27, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(27, 'large', 79.99);

-- Poster: P295 Bauhausdoublecircle1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P295 Bauhausdoublecircle1_360x', 'p295-bauhausdoublecircle1360x', 'P295 Bauhausdoublecircle1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 28, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(28, '/images/posters/Bauhaus/P295-BauhausDoubleCircle1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(28, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(28, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(28, 'large', 79.99);

-- Poster: P310 Bauhausretroabstract21_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P310 Bauhausretroabstract21_360x', 'p310-bauhausretroabstract21360x', 'P310 Bauhausretroabstract21_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 29, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(29, '/images/posters/Bauhaus/P310-BauhausRetroAbstract21_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(29, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(29, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(29, 'large', 79.99);

-- Poster: P280 Bauhausaustellung1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P280 Bauhausaustellung1_360x', 'p280-bauhausaustellung1360x', 'P280 Bauhausaustellung1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 30, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(30, '/images/posters/Bauhaus/P280-BauhausAustellung1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(30, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(30, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(30, 'large', 79.99);

-- Poster: P301 Bauhausmeltedcolors1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P301 Bauhausmeltedcolors1_360x', 'p301-bauhausmeltedcolors1360x', 'P301 Bauhausmeltedcolors1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 31, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(31, '/images/posters/Bauhaus/P301-BauhausMeltedColors1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(31, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(31, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(31, 'large', 79.99);

-- Poster: Bauhausblackpattern
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Bauhausblackpattern', 'bauhausblackpattern', 'Bauhausblackpattern - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 32, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(32, '/images/posters/Bauhaus/BauhausBlackPattern-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(32, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(32, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(32, 'large', 79.99);

-- Poster: P307 Bauhausrandomshapes1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P307 Bauhausrandomshapes1_360x', 'p307-bauhausrandomshapes1360x', 'P307 Bauhausrandomshapes1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 33, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(33, '/images/posters/Bauhaus/P307-BauhausRandomShapes1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(33, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(33, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(33, 'large', 79.99);

-- Poster: P283 Bauhausblacksemicircles1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P283 Bauhausblacksemicircles1_360x', 'p283-bauhausblacksemicircles1360x', 'P283 Bauhausblacksemicircles1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 34, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(34, '/images/posters/Bauhaus/P283-BauhausBlackSemicircles1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(34, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(34, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(34, 'large', 79.99);

-- Poster: P320 Bauhauszebra1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P320 Bauhauszebra1_360x', 'p320-bauhauszebra1360x', 'P320 Bauhauszebra1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 35, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(35, '/images/posters/Bauhaus/P320-BauhausZebra1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(35, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(35, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(35, 'large', 79.99);

-- Poster: P321 Bauhauszebraabstract1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P321 Bauhauszebraabstract1_360x', 'p321-bauhauszebraabstract1360x', 'P321 Bauhauszebraabstract1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 36, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(36, '/images/posters/Bauhaus/P321-BauhausZebraAbstract1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(36, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(36, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(36, 'large', 79.99);

-- Poster: P285 Bauhausbluecirclewithlines1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P285 Bauhausbluecirclewithlines1_360x', 'p285-bauhausbluecirclewithlines1360x', 'P285 Bauhausbluecirclewithlines1_360x - Beautiful Bauhaus poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 37, `category_id` FROM `category` WHERE `title` = 'Bauhaus';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(37, '/images/posters/Bauhaus/P285-BauhausBlueCircleWithLines1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(37, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(37, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(37, 'large', 79.99);

-- Poster: Yayoikusamapinkdots
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Yayoikusamapinkdots', 'yayoikusamapinkdots', 'Yayoikusamapinkdots - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 38, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(38, '/images/posters/Japanese/YayoiKusamaPinkDots-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(38, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(38, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(38, 'large', 79.99);

-- Poster: P365 Oharakosonpeacock1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P365 Oharakosonpeacock1_360x', 'p365-oharakosonpeacock1360x', 'P365 Oharakosonpeacock1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 39, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(39, '/images/posters/Japanese/P365-OharaKosonPeacock1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(39, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(39, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(39, 'large', 79.99);

-- Poster: P376 Yayoikusamaflowers1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P376 Yayoikusamaflowers1_360x', 'p376-yayoikusamaflowers1360x', 'P376 Yayoikusamaflowers1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 40, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(40, '/images/posters/Japanese/P376-YayoiKusamaFlowers1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(40, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(40, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(40, 'large', 79.99);

-- Poster: P373 Yayoikusamaalltheeternallove1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P373 Yayoikusamaalltheeternallove1_360x', 'p373-yayoikusamaalltheeternallove1360x', 'P373 Yayoikusamaalltheeternallove1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 41, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(41, '/images/posters/Japanese/P373-YayoiKusamaAllTheEternalLove1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(41, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(41, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(41, 'large', 79.99);

-- Poster: P378 Yayoikusamamushrooms1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P378 Yayoikusamamushrooms1_360x', 'p378-yayoikusamamushrooms1360x', 'P378 Yayoikusamamushrooms1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 42, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(42, '/images/posters/Japanese/P378-YayoiKusamaMushrooms1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(42, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(42, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(42, 'large', 79.99);

-- Poster: P379 Yayoikusamapumpkin1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P379 Yayoikusamapumpkin1_360x', 'p379-yayoikusamapumpkin1360x', 'P379 Yayoikusamapumpkin1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 43, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(43, '/images/posters/Japanese/P379-YayoiKusamaPumpkin1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(43, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(43, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(43, 'large', 79.99);

-- Poster: P382 Yayoikusamathesea1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P382 Yayoikusamathesea1_360x', 'p382-yayoikusamathesea1360x', 'P382 Yayoikusamathesea1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 44, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(44, '/images/posters/Japanese/P382-YayoiKusamaTheSea1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(44, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(44, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(44, 'large', 79.99);

-- Poster: Yayoikusamapinkpumpkin
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Yayoikusamapinkpumpkin', 'yayoikusamapinkpumpkin', 'Yayoikusamapinkpumpkin - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 45, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(45, '/images/posters/Japanese/YayoiKusamaPinkPumpkin-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(45, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(45, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(45, 'large', 79.99);

-- Poster: P675 Yayoikusamazebrapattern1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P675 Yayoikusamazebrapattern1_360x', 'p675-yayoikusamazebrapattern1360x', 'P675 Yayoikusamazebrapattern1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 46, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(46, '/images/posters/Japanese/P675-YayoiKusamaZebraPattern1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(46, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(46, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(46, 'large', 79.99);

-- Poster: P669 Thefirstramenshop1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P669 Thefirstramenshop1_360x', 'p669-thefirstramenshop1360x', 'P669 Thefirstramenshop1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 47, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(47, '/images/posters/Japanese/P669-TheFirstRamenShop1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(47, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(47, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(47, 'large', 79.99);

-- Poster: Ramendefinition
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Ramendefinition', 'ramendefinition', 'Ramendefinition - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 48, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(48, '/images/posters/Japanese/RamenDefinition-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(48, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(48, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(48, 'large', 79.99);

-- Poster: Yayoikusamagreendots
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Yayoikusamagreendots', 'yayoikusamagreendots', 'Yayoikusamagreendots - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 49, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(49, '/images/posters/Japanese/YayoiKusamaGreenDots-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(49, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(49, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(49, 'large', 79.99);

-- Poster: Yayoikusamainfinitymushrooms
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Yayoikusamainfinitymushrooms', 'yayoikusamainfinitymushrooms', 'Yayoikusamainfinitymushrooms - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 50, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(50, '/images/posters/Japanese/YayoiKusamaInfinityMushrooms-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(50, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(50, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(50, 'large', 79.99);

-- Poster: P335 Hokusaithegreatwaveoffkanagawa1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P335 Hokusaithegreatwaveoffkanagawa1_360x', 'p335-hokusaithegreatwaveoffkanagawa1360x', 'P335 Hokusaithegreatwaveoffkanagawa1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 51, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(51, '/images/posters/Japanese/P335-HokusaiTheGreatWaveOffKanagawa1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(51, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(51, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(51, 'large', 79.99);

-- Poster: P337 Hokusaiyorowaterfallinminoprovince1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P337 Hokusaiyorowaterfallinminoprovince1_360x', 'p337-hokusaiyorowaterfallinminoprovince1360x', 'P337 Hokusaiyorowaterfallinminoprovince1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 52, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(52, '/images/posters/Japanese/P337-HokusaiYoroWaterfallInMinoProvince1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(52, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(52, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(52, 'large', 79.99);

-- Poster: P359 Oharakosonbirdonbranch1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P359 Oharakosonbirdonbranch1_360x', 'p359-oharakosonbirdonbranch1360x', 'P359 Oharakosonbirdonbranch1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 53, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(53, '/images/posters/Japanese/P359-OharaKosonBirdOnBranch1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(53, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(53, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(53, 'large', 79.99);

-- Poster: P325 Bijutsusekaipinksky1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P325 Bijutsusekaipinksky1_360x', 'p325-bijutsusekaipinksky1360x', 'P325 Bijutsusekaipinksky1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 54, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(54, '/images/posters/Japanese/P325-BijutsuSekaiPinkSky1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(54, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(54, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(54, 'large', 79.99);

-- Poster: P351 Matsumotohojifrog1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P351 Matsumotohojifrog1_360x', 'p351-matsumotohojifrog1360x', 'P351 Matsumotohojifrog1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 55, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(55, '/images/posters/Japanese/P351-MatsumotoHojiFrog1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(55, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(55, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(55, 'large', 79.99);

-- Poster: P327 Bluewaves1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P327 Bluewaves1_360x', 'p327-bluewaves1360x', 'P327 Bluewaves1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 56, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(56, '/images/posters/Japanese/P327-BlueWaves1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(56, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(56, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(56, 'large', 79.99);

-- Poster: P375 Yayoikusamaeyes1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P375 Yayoikusamaeyes1_360x', 'p375-yayoikusamaeyes1360x', 'P375 Yayoikusamaeyes1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 57, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(57, '/images/posters/Japanese/P375-YayoiKusamaEyes1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(57, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(57, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(57, 'large', 79.99);

-- Poster: P336 Hokusaithegreatwaveoffkanagawa21_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P336 Hokusaithegreatwaveoffkanagawa21_360x', 'p336-hokusaithegreatwaveoffkanagawa21360x', 'P336 Hokusaithegreatwaveoffkanagawa21_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 58, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(58, '/images/posters/Japanese/P336-HokusaiTheGreatWaveOffKanagawa21_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(58, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(58, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(58, 'large', 79.99);

-- Poster: Yayoikusamatokyocolors
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Yayoikusamatokyocolors', 'yayoikusamatokyocolors', 'Yayoikusamatokyocolors - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 59, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(59, '/images/posters/Japanese/YayoiKusamaTokyoColors-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(59, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(59, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(59, 'large', 79.99);

-- Poster: P673 Yayoikusamayellowpattern1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P673 Yayoikusamayellowpattern1_360x', 'p673-yayoikusamayellowpattern1360x', 'P673 Yayoikusamayellowpattern1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 60, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(60, '/images/posters/Japanese/P673-YayoiKusamaYellowPattern1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(60, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(60, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(60, 'large', 79.99);

-- Poster: Yayoikusamapinkinfinitypumpkin
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Yayoikusamapinkinfinitypumpkin', 'yayoikusamapinkinfinitypumpkin', 'Yayoikusamapinkinfinitypumpkin - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 61, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(61, '/images/posters/Japanese/YayoiKusamaPinkInfinityPumpkin-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(61, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(61, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(61, 'large', 79.99);

-- Poster: P672 Yayoikusamasinglemushroom1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P672 Yayoikusamasinglemushroom1_360x', 'p672-yayoikusamasinglemushroom1360x', 'P672 Yayoikusamasinglemushroom1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 62, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(62, '/images/posters/Japanese/P672-YayoiKusamaSingleMushroom1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(62, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(62, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(62, 'large', 79.99);

-- Poster: P381 Yayoikusamareddots1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P381 Yayoikusamareddots1_360x', 'p381-yayoikusamareddots1360x', 'P381 Yayoikusamareddots1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 63, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(63, '/images/posters/Japanese/P381-YayoiKusamaRedDots1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(63, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(63, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(63, 'large', 79.99);

-- Poster: P363 Oharakosonkoifish1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P363 Oharakosonkoifish1_360x', 'p363-oharakosonkoifish1360x', 'P363 Oharakosonkoifish1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 64, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(64, '/images/posters/Japanese/P363-OharaKosonKoiFish1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(64, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(64, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(64, 'large', 79.99);

-- Poster: P836 Mountfuji
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P836 Mountfuji', 'p836-mountfuji', 'P836 Mountfuji - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 65, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(65, '/images/posters/Japanese/P836-MountFuji-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(65, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(65, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(65, 'large', 79.99);

-- Poster: P671 Yayoikusamainfinitynet21_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P671 Yayoikusamainfinitynet21_360x', 'p671-yayoikusamainfinitynet21360x', 'P671 Yayoikusamainfinitynet21_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 66, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(66, '/images/posters/Japanese/P671-YayoiKusamaInfinityNet21_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(66, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(66, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(66, 'large', 79.99);

-- Poster: P343 Japaneseredsun1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P343 Japaneseredsun1_360x', 'p343-japaneseredsun1360x', 'P343 Japaneseredsun1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 67, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(67, '/images/posters/Japanese/P343-JapaneseRedSun1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(67, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(67, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(67, 'large', 79.99);

-- Poster: P798 Pumpkintokyo
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P798 Pumpkintokyo', 'p798-pumpkintokyo', 'P798 Pumpkintokyo - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 68, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(68, '/images/posters/Japanese/P798-PumpkinTokyo-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(68, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(68, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(68, 'large', 79.99);

-- Poster: Utagawahirokagethetigerofryokoku
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Utagawahirokagethetigerofryokoku', 'utagawahirokagethetigerofryokoku', 'Utagawahirokagethetigerofryokoku - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 69, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(69, '/images/posters/Japanese/UtagawaHirokageTheTigerOfRyokoku-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(69, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(69, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(69, 'large', 79.99);

-- Poster: Oharakosonblossomingcherryonamoonlitnight
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Oharakosonblossomingcherryonamoonlitnight', 'oharakosonblossomingcherryonamoonlitnight', 'Oharakosonblossomingcherryonamoonlitnight - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 70, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(70, '/images/posters/Japanese/OharaKosonBlossomingCherryOnAMoonlitNight-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(70, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(70, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(70, 'large', 79.99);

-- Poster: P380 Yayoikusamapumpkinforever1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P380 Yayoikusamapumpkinforever1_360x', 'p380-yayoikusamapumpkinforever1360x', 'P380 Yayoikusamapumpkinforever1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 71, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(71, '/images/posters/Japanese/P380-YayoiKusamaPumpkinForever1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(71, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(71, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(71, 'large', 79.99);

-- Poster: P374 Yayoikusamablackdots1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P374 Yayoikusamablackdots1_360x', 'p374-yayoikusamablackdots1360x', 'P374 Yayoikusamablackdots1_360x - Beautiful Japanese poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 72, `category_id` FROM `category` WHERE `title` = 'Japanese';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(72, '/images/posters/Japanese/P374-YayoiKusamaBlackDots1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(72, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(72, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(72, 'large', 79.99);

-- Poster: P639 Farmgardenwithsunflowers1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P639 Farmgardenwithsunflowers1_360x', 'p639-farmgardenwithsunflowers1360x', 'P639 Farmgardenwithsunflowers1_360x - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 73, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(73, '/images/posters/Art/P639-FarmGardenWithSunflowers1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(73, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(73, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(73, 'large', 79.99);

-- Poster: P642 Hygieia1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P642 Hygieia1_360x', 'p642-hygieia1360x', 'P642 Hygieia1_360x - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 74, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(74, '/images/posters/Art/P642-Hygieia1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(74, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(74, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(74, 'large', 79.99);

-- Poster: P773 Lobstertelephone
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P773 Lobstertelephone', 'p773-lobstertelephone', 'P773 Lobstertelephone - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 75, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(75, '/images/posters/Art/P773-LobsterTelephone-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(75, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(75, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(75, 'large', 79.99);

-- Poster: P838 Theequatorialjungle
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P838 Theequatorialjungle', 'p838-theequatorialjungle', 'P838 Theequatorialjungle - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 76, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(76, '/images/posters/Art/P838-TheEquatorialJungle-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(76, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(76, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(76, 'large', 79.99);

-- Poster: P612 Humanism1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P612 Humanism1_360x', 'p612-humanism1360x', 'P612 Humanism1_360x - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 77, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(77, '/images/posters/Art/P612-Humanism1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(77, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(77, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(77, 'large', 79.99);

-- Poster: Fridayellowversion
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Fridayellowversion', 'fridayellowversion', 'Fridayellowversion - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 78, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(78, '/images/posters/Art/X37-FridaYellowVersion-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(78, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(78, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(78, 'large', 79.99);

-- Poster: P788 Relativity
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P788 Relativity', 'p788-relativity', 'P788 Relativity - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 79, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(79, '/images/posters/Art/P788-Relativity-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(79, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(79, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(79, 'large', 79.99);

-- Poster: P702 Campbellstomatosoup
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P702 Campbellstomatosoup', 'p702-campbellstomatosoup', 'P702 Campbellstomatosoup - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 80, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(80, '/images/posters/Art/P702-CampbellsTomatoSoup-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(80, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(80, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(80, 'large', 79.99);

-- Poster: P724 Thevelvetundergroundandnico
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P724 Thevelvetundergroundandnico', 'p724-thevelvetundergroundandnico', 'P724 Thevelvetundergroundandnico - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 81, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(81, '/images/posters/Art/P724-TheVelvetUndergroundAndNico-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(81, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(81, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(81, 'large', 79.99);

-- Poster: P526 Cafeterraceatnight1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P526 Cafeterraceatnight1_360x', 'p526-cafeterraceatnight1360x', 'P526 Cafeterraceatnight1_360x - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 82, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(82, '/images/posters/Art/P526-CafeTerraceAtNight1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(82, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(82, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(82, 'large', 79.99);

-- Poster: P535 Skullofaskeletonwithburningcigarette1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P535 Skullofaskeletonwithburningcigarette1_360x', 'p535-skullofaskeletonwithburningcigarette1360x', 'P535 Skullofaskeletonwithburningcigarette1_360x - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 83, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(83, '/images/posters/Art/P535-SkullOfASkeletonWithBurningCigarette1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(83, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(83, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(83, 'large', 79.99);

-- Poster: P608 Dj1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P608 Dj1_360x', 'p608-dj1360x', 'P608 Dj1_360x - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 84, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(84, '/images/posters/Art/P608-DJ1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(84, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(84, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(84, 'large', 79.99);

-- Poster: P611 Flower1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P611 Flower1_360x', 'p611-flower1360x', 'P611 Flower1_360x - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 85, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(85, '/images/posters/Art/P611-Flower1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(85, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(85, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(85, 'large', 79.99);

-- Poster: P633 Thetenlargestno.2childhood1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P633 Thetenlargestno.2childhood1_360x', 'p633-thetenlargestno2childhood1360x', 'P633 Thetenlargestno.2childhood1_360x - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 86, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(86, '/images/posters/Art/P633-TheTenLargestNo.2Childhood1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(86, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(86, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(86, 'large', 79.99);

-- Poster: P760 Thelove
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P760 Thelove', 'p760-thelove', 'P760 Thelove - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 87, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(87, '/images/posters/Art/P760-TheLove-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(87, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(87, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(87, 'large', 79.99);

-- Poster: P616 Montreux1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P616 Montreux1_360x', 'p616-montreux1360x', 'P616 Montreux1_360x - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 88, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(88, '/images/posters/Art/P616-Montreux1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(88, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(88, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(88, 'large', 79.99);

-- Poster: P805 Nightshawks
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P805 Nightshawks', 'p805-nightshawks', 'P805 Nightshawks - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 89, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(89, '/images/posters/Art/P805-Nightshawks-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(89, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(89, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(89, 'large', 79.99);

-- Poster: Insidemypersonalgarden
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Insidemypersonalgarden', 'insidemypersonalgarden', 'Insidemypersonalgarden - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 90, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(90, '/images/posters/Art/X8-InsideMyPersonalGarden-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(90, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(90, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(90, 'large', 79.99);

-- Poster: P761 Serigraphieno.18
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P761 Serigraphieno.18', 'p761-serigraphieno18', 'P761 Serigraphieno.18 - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 91, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(91, '/images/posters/Art/P761-SerigraphieNo.18-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(91, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(91, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(91, 'large', 79.99);

-- Poster: P706 Greencat
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P706 Greencat', 'p706-greencat', 'P706 Greencat - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 92, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(92, '/images/posters/Art/P706-GreenCat-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(92, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(92, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(92, 'large', 79.99);

-- Poster: P607 Dancers1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P607 Dancers1_360x', 'p607-dancers1360x', 'P607 Dancers1_360x - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 93, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(93, '/images/posters/Art/P607-Dancers1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(93, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(93, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(93, 'large', 79.99);

-- Poster: P755 Miroseriesi1953
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P755 Miroseriesi1953', 'p755-miroseriesi1953', 'P755 Miroseriesi1953 - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 94, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(94, '/images/posters/Art/P755-MiroSeriesI1953-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(94, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(94, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(94, 'large', 79.99);

-- Poster: P723 Thevelvetundergroundandnico2
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P723 Thevelvetundergroundandnico2', 'p723-thevelvetundergroundandnico2', 'P723 Thevelvetundergroundandnico2 - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 95, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(95, '/images/posters/Art/P723-TheVelvetUndergroundAndNico2-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(95, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(95, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(95, 'large', 79.99);

-- Poster: P622 Skater1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P622 Skater1_360x', 'p622-skater1360x', 'P622 Skater1_360x - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 96, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(96, '/images/posters/Art/P622-Skater1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(96, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(96, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(96, 'large', 79.99);

-- Poster: P524 Almondblossom1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P524 Almondblossom1_360x', 'p524-almondblossom1360x', 'P524 Almondblossom1_360x - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 97, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(97, '/images/posters/Art/P524-AlmondBlossom1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(97, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(97, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(97, 'large', 79.99);

-- Poster: P792 Aretrospective2
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P792 Aretrospective2', 'p792-aretrospective2', 'P792 Aretrospective2 - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 98, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(98, '/images/posters/Art/P792-ARetrospective2-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(98, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(98, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(98, 'large', 79.99);

-- Poster: P796 Aretrospective6
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P796 Aretrospective6', 'p796-aretrospective6', 'P796 Aretrospective6 - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 99, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(99, '/images/posters/Art/P796-ARetrospective6-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(99, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(99, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(99, 'large', 79.99);

-- Poster: P722 Sunset
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P722 Sunset', 'p722-sunset', 'P722 Sunset - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 100, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(100, '/images/posters/Art/P722-Sunset-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(100, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(100, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(100, 'large', 79.99);

-- Poster: P815 Leslalanne
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P815 Leslalanne', 'p815-leslalanne', 'P815 Leslalanne - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 101, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(101, '/images/posters/Art/P815-LesLalanne-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(101, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(101, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(101, 'large', 79.99);

-- Poster: P618 Partyoflifeinvitation1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P618 Partyoflifeinvitation1_360x', 'p618-partyoflifeinvitation1360x', 'P618 Partyoflifeinvitation1_360x - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 102, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(102, '/images/posters/Art/P618-PartyOfLifeInvitation1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(102, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(102, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(102, 'large', 79.99);

-- Poster: P758 Picassothekiss
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P758 Picassothekiss', 'p758-picassothekiss', 'P758 Picassothekiss - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 103, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(103, '/images/posters/Art/P758-PicassoTheKiss-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(103, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(103, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(103, 'large', 79.99);

-- Poster: P623 Twofiguresholdingheart1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P623 Twofiguresholdingheart1_360x', 'p623-twofiguresholdingheart1360x', 'P623 Twofiguresholdingheart1_360x - Beautiful Art poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 104, `category_id` FROM `category` WHERE `title` = 'Art';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(104, '/images/posters/Art/P623-TwoFiguresHoldingHeart1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(104, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(104, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(104, 'large', 79.99);

-- Poster: P121 Diordog1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P121 Diordog1_360x', 'p121-diordog1360x', 'P121 Diordog1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 105, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(105, '/images/posters/Fashion/P121-DiorDog1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(105, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(105, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(105, 'large', 79.99);

-- Poster: P131 Girlwithchanelsnowboard1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P131 Girlwithchanelsnowboard1_360x', 'p131-girlwithchanelsnowboard1360x', 'P131 Girlwithchanelsnowboard1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 106, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(106, '/images/posters/Fashion/P131-GirlWithChanelSnowboard1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(106, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(106, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(106, 'large', 79.99);

-- Poster: P813 Guccitiger
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P813 Guccitiger', 'p813-guccitiger', 'P813 Guccitiger - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 107, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(107, '/images/posters/Fashion/P813-GucciTiger-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(107, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(107, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(107, 'large', 79.99);

-- Poster: P155 Pradamarfa1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P155 Pradamarfa1_360x', 'p155-pradamarfa1360x', 'P155 Pradamarfa1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 108, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(108, '/images/posters/Fashion/P155-PradaMarfa1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(108, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(108, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(108, 'large', 79.99);

-- Poster: P816 Fashionsurfer
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P816 Fashionsurfer', 'p816-fashionsurfer', 'P816 Fashionsurfer - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 109, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(109, '/images/posters/Fashion/P816-FashionSurfer-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(109, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(109, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(109, 'large', 79.99);

-- Poster: P806 Playboykylie
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P806 Playboykylie', 'p806-playboykylie', 'P806 Playboykylie - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 110, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(110, '/images/posters/Fashion/P806-PlayboyKylie-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(110, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(110, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(110, 'large', 79.99);

-- Poster: P824 Centralceeteeth
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P824 Centralceeteeth', 'p824-centralceeteeth', 'P824 Centralceeteeth - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 111, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(111, '/images/posters/Fashion/P824-CentralCeeTeeth-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(111, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(111, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(111, 'large', 79.99);

-- Poster: P147 No5surfergirl1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P147 No5surfergirl1_360x', 'p147-no5surfergirl1360x', 'P147 No5surfergirl1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 112, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(112, '/images/posters/Fashion/P147-NO5SurferGirl1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(112, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(112, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(112, 'large', 79.99);

-- Poster: Michaeljordan3fingers
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Michaeljordan3fingers', 'michaeljordan3fingers', 'Michaeljordan3fingers - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 113, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(113, '/images/posters/Fashion/MichaelJordan3Fingers-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(113, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(113, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(113, 'large', 79.99);

-- Poster: P144 Marilynmonroesmoking1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P144 Marilynmonroesmoking1_360x', 'p144-marilynmonroesmoking1360x', 'P144 Marilynmonroesmoking1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 114, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(114, '/images/posters/Fashion/P144-MarilynMonroeSmoking1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(114, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(114, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(114, 'large', 79.99);

-- Poster: P116 Chanelbeachcabin1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P116 Chanelbeachcabin1_360x', 'p116-chanelbeachcabin1360x', 'P116 Chanelbeachcabin1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 115, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(115, '/images/posters/Fashion/P116-ChanelBeachCabin1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(115, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(115, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(115, 'large', 79.99);

-- Poster: P118 Coco1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P118 Coco1_360x', 'p118-coco1360x', 'P118 Coco1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 116, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(116, '/images/posters/Fashion/P118-COCO1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(116, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(116, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(116, 'large', 79.99);

-- Poster: P842 Frankoceanxblond
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P842 Frankoceanxblond', 'p842-frankoceanxblond', 'P842 Frankoceanxblond - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 117, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(117, '/images/posters/Fashion/P842-FrankOceanXBlond-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(117, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(117, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(117, 'large', 79.99);

-- Poster: Nikeairjordan
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Nikeairjordan', 'nikeairjordan', 'Nikeairjordan - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 118, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(118, '/images/posters/Fashion/NikeAirJordan-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(118, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(118, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(118, 'large', 79.99);

-- Poster: P134 Highheelsincar1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P134 Highheelsincar1_360x', 'p134-highheelsincar1360x', 'P134 Highheelsincar1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 119, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(119, '/images/posters/Fashion/P134-HighHeelsInCar1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(119, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(119, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(119, 'large', 79.99);

-- Poster: P811 Travisscottastroworld
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P811 Travisscottastroworld', 'p811-travisscottastroworld', 'P811 Travisscottastroworld - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 120, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(120, '/images/posters/Fashion/P811-TravisScottAstroworld-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(120, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(120, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(120, 'large', 79.99);

-- Poster: P136 Katemossbunny1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P136 Katemossbunny1_360x', 'p136-katemossbunny1360x', 'P136 Katemossbunny1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 121, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(121, '/images/posters/Fashion/P136-KateMossBunny1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(121, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(121, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(121, 'large', 79.99);

-- Poster: Legoutdesautres
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Legoutdesautres', 'legoutdesautres', 'Legoutdesautres - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 122, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(122, '/images/posters/Fashion/X141-LeGoutDesAutres-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(122, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(122, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(122, 'large', 79.99);

-- Poster: Kawsbasketball
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Kawsbasketball', 'kawsbasketball', 'Kawsbasketball - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 123, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(123, '/images/posters/Fashion/KawsBasketball-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(123, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(123, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(123, 'large', 79.99);

-- Poster: Velvetpumps
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Velvetpumps', 'velvetpumps', 'Velvetpumps - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 124, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(124, '/images/posters/Fashion/X10-VelvetPumps-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(124, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(124, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(124, 'large', 79.99);

-- Poster: P160 Rogermooredrinking1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P160 Rogermooredrinking1_360x', 'p160-rogermooredrinking1360x', 'P160 Rogermooredrinking1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 125, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(125, '/images/posters/Fashion/P160-RogerMooreDrinking1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(125, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(125, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(125, 'large', 79.99);

-- Poster: P145 Middlefingergirl1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P145 Middlefingergirl1_360x', 'p145-middlefingergirl1360x', 'P145 Middlefingergirl1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 126, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(126, '/images/posters/Fashion/P145-MiddleFingerGirl1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(126, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(126, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(126, 'large', 79.99);

-- Poster: P730 Louisvuittonvintage1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P730 Louisvuittonvintage1_360x', 'p730-louisvuittonvintage1360x', 'P730 Louisvuittonvintage1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 127, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(127, '/images/posters/Fashion/P730-LouisVuittonVintage1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(127, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(127, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(127, 'large', 79.99);

-- Poster: P809 Playboyxbutterfly
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P809 Playboyxbutterfly', 'p809-playboyxbutterfly', 'P809 Playboyxbutterfly - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 128, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(128, '/images/posters/Fashion/P809-PlayboyxButterfly-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(128, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(128, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(128, 'large', 79.99);

-- Poster: Kawsrobot
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Kawsrobot', 'kawsrobot', 'Kawsrobot - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 129, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(129, '/images/posters/Fashion/KawsRobot-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(129, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(129, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(129, 'large', 79.99);

-- Poster: P139 Marilynmonroebubblegum1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P139 Marilynmonroebubblegum1_360x', 'p139-marilynmonroebubblegum1360x', 'P139 Marilynmonroebubblegum1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 130, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(130, '/images/posters/Fashion/P139-MarilynMonroeBubblegum1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(130, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(130, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(130, 'large', 79.99);

-- Poster: P127 Fridakahlowithflowers1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P127 Fridakahlowithflowers1_360x', 'p127-fridakahlowithflowers1360x', 'P127 Fridakahlowithflowers1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 131, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(131, '/images/posters/Fashion/P127-FridaKahloWithFlowers1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(131, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(131, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(131, 'large', 79.99);

-- Poster: Sensualkiss
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Sensualkiss', 'sensualkiss', 'Sensualkiss - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 132, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(132, '/images/posters/Fashion/X17-SensualKiss-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(132, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(132, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(132, 'large', 79.99);

-- Poster: Vinyl
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Vinyl', 'vinyl', 'Vinyl - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 133, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(133, '/images/posters/Fashion/X13-Vinyl-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(133, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(133, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(133, 'large', 79.99);

-- Poster: P135 Katemossbubblegum1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P135 Katemossbubblegum1_360x', 'p135-katemossbubblegum1360x', 'P135 Katemossbubblegum1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 134, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(134, '/images/posters/Fashion/P135-KateMossBubblegum1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(134, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(134, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(134, 'large', 79.99);

-- Poster: P111 Audreyhepburnlipstick1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P111 Audreyhepburnlipstick1_360x', 'p111-audreyhepburnlipstick1360x', 'P111 Audreyhepburnlipstick1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 135, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(135, '/images/posters/Fashion/P111-AudreyHepburnLipstick1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(135, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(135, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(135, 'large', 79.99);

-- Poster: P142 Marilynmonroereading1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P142 Marilynmonroereading1_360x', 'p142-marilynmonroereading1360x', 'P142 Marilynmonroereading1_360x - Beautiful Fashion poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 136, `category_id` FROM `category` WHERE `title` = 'Fashion';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(136, '/images/posters/Fashion/P142-MarilynMonroeReading1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(136, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(136, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(136, 'large', 79.99);

-- Poster: P387 Flowermarketbarcelona21_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P387 Flowermarketbarcelona21_360x', 'p387-flowermarketbarcelona21360x', 'P387 Flowermarketbarcelona21_360x - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 137, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(137, '/images/posters/Botanical/P387-FlowerMarketBarcelona21_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(137, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(137, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(137, 'large', 79.99);

-- Poster: P405 Flowermarketparis1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P405 Flowermarketparis1_360x', 'p405-flowermarketparis1360x', 'P405 Flowermarketparis1_360x - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 138, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(138, '/images/posters/Botanical/P405-FlowerMarketParis1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(138, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(138, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(138, 'large', 79.99);

-- Poster: Flowersatnight
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Flowersatnight', 'flowersatnight', 'Flowersatnight - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 139, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(139, '/images/posters/Botanical/X144-FlowersAtNight-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(139, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(139, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(139, 'large', 79.99);

-- Poster: P413 Flowermarketstockholm1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P413 Flowermarketstockholm1_360x', 'p413-flowermarketstockholm1360x', 'P413 Flowermarketstockholm1_360x - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 140, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(140, '/images/posters/Botanical/P413-FlowerMarketStockholm1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(140, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(140, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(140, 'large', 79.99);

-- Poster: P415 Flowermarketstockholm31_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P415 Flowermarketstockholm31_360x', 'p415-flowermarketstockholm31360x', 'P415 Flowermarketstockholm31_360x - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 141, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(141, '/images/posters/Botanical/P415-FlowerMarketStockholm31_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(141, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(141, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(141, 'large', 79.99);

-- Poster: P404 Flowermarketnewyork1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P404 Flowermarketnewyork1_360x', 'p404-flowermarketnewyork1360x', 'P404 Flowermarketnewyork1_360x - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 142, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(142, '/images/posters/Botanical/P404-FlowerMarketNewYork1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(142, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(142, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(142, 'large', 79.99);

-- Poster: P416 Flowermarketsydney1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P416 Flowermarketsydney1_360x', 'p416-flowermarketsydney1360x', 'P416 Flowermarketsydney1_360x - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 143, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(143, '/images/posters/Botanical/P416-FlowerMarketSydney1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(143, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(143, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(143, 'large', 79.99);

-- Poster: P411 Flowermarketseoul21_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P411 Flowermarketseoul21_360x', 'p411-flowermarketseoul21360x', 'P411 Flowermarketseoul21_360x - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 144, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(144, '/images/posters/Botanical/P411-FlowerMarketSeoul21_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(144, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(144, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(144, 'large', 79.99);

-- Poster: P406 Flowermarketprague1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P406 Flowermarketprague1_360x', 'p406-flowermarketprague1360x', 'P406 Flowermarketprague1_360x - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 145, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(145, '/images/posters/Botanical/P406-FlowerMarketPrague1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(145, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(145, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(145, 'large', 79.99);

-- Poster: P386 Flowermarketbarcelona1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P386 Flowermarketbarcelona1_360x', 'p386-flowermarketbarcelona1360x', 'P386 Flowermarketbarcelona1_360x - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 146, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(146, '/images/posters/Botanical/P386-FlowerMarketBarcelona1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(146, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(146, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(146, 'large', 79.99);

-- Poster: P418 Flowermarkettokyo21_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P418 Flowermarkettokyo21_360x', 'p418-flowermarkettokyo21360x', 'P418 Flowermarkettokyo21_360x - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 147, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(147, '/images/posters/Botanical/P418-FlowerMarketTokyo21_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(147, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(147, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(147, 'large', 79.99);

-- Poster: P385 Flowermarketamsterdam1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P385 Flowermarketamsterdam1_360x', 'p385-flowermarketamsterdam1360x', 'P385 Flowermarketamsterdam1_360x - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 148, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(148, '/images/posters/Botanical/P385-FlowerMarketAmsterdam1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(148, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(148, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(148, 'large', 79.99);

-- Poster: Floralfrida
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Floralfrida', 'floralfrida', 'Floralfrida - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 149, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(149, '/images/posters/Botanical/X131-FloralFrida-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(149, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(149, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(149, 'large', 79.99);

-- Poster: P390 Flowermarketcopenhagen1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P390 Flowermarketcopenhagen1_360x', 'p390-flowermarketcopenhagen1360x', 'P390 Flowermarketcopenhagen1_360x - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 150, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(150, '/images/posters/Botanical/P390-FlowerMarketCopenhagen1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(150, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(150, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(150, 'large', 79.99);

-- Poster: P417 Flowermarkettokyo1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P417 Flowermarkettokyo1_360x', 'p417-flowermarkettokyo1360x', 'P417 Flowermarkettokyo1_360x - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 151, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(151, '/images/posters/Botanical/P417-FlowerMarketTokyo1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(151, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(151, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(151, 'large', 79.99);

-- Poster: P410 Flowermarketseoul1_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P410 Flowermarketseoul1_360x', 'p410-flowermarketseoul1360x', 'P410 Flowermarketseoul1_360x - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 152, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(152, '/images/posters/Botanical/P410-FlowerMarketSeoul1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(152, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(152, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(152, 'large', 79.99);

-- Poster: P398 Flowermarketlondon21_360x
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('P398 Flowermarketlondon21_360x', 'p398-flowermarketlondon21360x', 'P398 Flowermarketlondon21_360x - Beautiful Botanical poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 153, `category_id` FROM `category` WHERE `title` = 'Botanical';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(153, '/images/posters/Botanical/P398-FlowerMarketLondon21_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(153, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(153, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(153, 'large', 79.99);

-- Poster: Scandisleepingtiger
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Scandisleepingtiger', 'scandisleepingtiger', 'Scandisleepingtiger - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 154, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(154, '/images/posters/Kids/X731-ScandiSleepingTiger-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(154, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(154, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(154, 'large', 79.99);

-- Poster: Dinosaursin80sjumpers
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Dinosaursin80sjumpers', 'dinosaursin80sjumpers', 'Dinosaursin80sjumpers - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 155, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(155, '/images/posters/Kids/X728-DinosaursIn80sJumpers-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(155, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(155, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(155, 'large', 79.99);

-- Poster: Babylion
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Babylion', 'babylion', 'Babylion - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 156, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(156, '/images/posters/Kids/X708-BabyLion-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(156, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(156, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(156, 'large', 79.99);

-- Poster: Babyfox
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Babyfox', 'babyfox', 'Babyfox - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 157, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(157, '/images/posters/Kids/X706-BabyFox-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(157, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(157, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(157, 'large', 79.99);

-- Poster: Howareyoufeeling
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Howareyoufeeling', 'howareyoufeeling', 'Howareyoufeeling - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 158, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(158, '/images/posters/Kids/X735-HowAreYouFeeling-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(158, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(158, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(158, 'large', 79.99);

-- Poster: Littlelion
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Littlelion', 'littlelion', 'Littlelion - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 159, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(159, '/images/posters/Kids/X719-LittleLion-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(159, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(159, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(159, 'large', 79.99);

-- Poster: Babypig
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Babypig', 'babypig', 'Babypig - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 160, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(160, '/images/posters/Kids/X710-BabyPig-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(160, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(160, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(160, 'large', 79.99);

-- Poster: Babygiraffe
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Babygiraffe', 'babygiraffe', 'Babygiraffe - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 161, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(161, '/images/posters/Kids/X707-BabyGiraffe-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(161, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(161, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(161, 'large', 79.99);

-- Poster: Littletoucan
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Littletoucan', 'littletoucan', 'Littletoucan - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 162, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(162, '/images/posters/Kids/X870-LittleToucan-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(162, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(162, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(162, 'large', 79.99);

-- Poster: Bunnyonskateboard
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Bunnyonskateboard', 'bunnyonskateboard', 'Bunnyonskateboard - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 163, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(163, '/images/posters/Kids/X721-BunnyOnSkateboard-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(163, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(163, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(163, 'large', 79.99);

-- Poster: Swingsetdreams
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Swingsetdreams', 'swingsetdreams', 'Swingsetdreams - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 164, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(164, '/images/posters/Kids/X667-SwingsetDreams-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(164, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(164, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(164, 'large', 79.99);

-- Poster: Babyrabbit
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Babyrabbit', 'babyrabbit', 'Babyrabbit - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 165, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(165, '/images/posters/Kids/X711-BabyRabbit-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(165, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(165, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(165, 'large', 79.99);

-- Poster: Guineapigworking
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Guineapigworking', 'guineapigworking', 'Guineapigworking - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 166, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(166, '/images/posters/Kids/X726-GuineaPigWorking-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(166, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(166, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(166, 'large', 79.99);

-- Poster: Rocketlove
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Rocketlove', 'rocketlove', 'Rocketlove - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 167, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(167, '/images/posters/Kids/X742-RocketLove-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(167, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(167, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(167, 'large', 79.99);

-- Poster: Dreambigpink
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Dreambigpink', 'dreambigpink', 'Dreambigpink - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 168, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(168, '/images/posters/Kids/X747-DreamBigPink-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(168, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(168, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(168, 'large', 79.99);

-- Poster: Babyelephant
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Babyelephant', 'babyelephant', 'Babyelephant - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 169, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(169, '/images/posters/Kids/X705-BabyElephant-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(169, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(169, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(169, 'large', 79.99);

-- Poster: Matahari
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Matahari', 'matahari', 'Matahari - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 170, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(170, '/images/posters/Kids/X715-Matahari-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(170, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(170, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(170, 'large', 79.99);

-- Poster: Intheclouds
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Intheclouds', 'intheclouds', 'Intheclouds - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 171, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(171, '/images/posters/Kids/X659-InTheClouds-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(171, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(171, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(171, 'large', 79.99);

-- Poster: Happinesshomework
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Happinesshomework', 'happinesshomework', 'Happinesshomework - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 172, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(172, '/images/posters/Kids/X733-HappinessHomework-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(172, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(172, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(172, 'large', 79.99);

-- Poster: Animallettersabc
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Animallettersabc', 'animallettersabc', 'Animallettersabc - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 173, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(173, '/images/posters/Kids/X749-AnimalLettersABC-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(173, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(173, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(173, 'large', 79.99);

-- Poster: Scandipantha
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Scandipantha', 'scandipantha', 'Scandipantha - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 174, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(174, '/images/posters/Kids/X729-ScandiPantha-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(174, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(174, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(174, 'large', 79.99);

-- Poster: Dailyaffirmations
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Dailyaffirmations', 'dailyaffirmations', 'Dailyaffirmations - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 175, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(175, '/images/posters/Kids/X734-DailyAffirmations-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(175, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(175, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(175, 'large', 79.99);

-- Poster: Dreamland
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Dreamland', 'dreamland', 'Dreamland - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 176, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(176, '/images/posters/Kids/X654-Dreamland-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(176, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(176, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(176, 'large', 79.99);

-- Poster: Babyracoon
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Babyracoon', 'babyracoon', 'Babyracoon - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 177, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(177, '/images/posters/Kids/X712-BabyRacoon-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(177, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(177, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(177, 'large', 79.99);

-- Poster: Dogsinglasses
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Dogsinglasses', 'dogsinglasses', 'Dogsinglasses - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 178, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(178, '/images/posters/Kids/X724-DogsInGlasses-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(178, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(178, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(178, 'large', 79.99);

-- Poster: Whalesinhats
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Whalesinhats', 'whalesinhats', 'Whalesinhats - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 179, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(179, '/images/posters/Kids/X725-WhalesInHats-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(179, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(179, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(179, 'large', 79.99);

-- Poster: Beunique
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Beunique', 'beunique', 'Beunique - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 180, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(180, '/images/posters/Kids/X783-BeUnique-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(180, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(180, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(180, 'large', 79.99);

-- Poster: Junglebabies
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Junglebabies', 'junglebabies', 'Junglebabies - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 181, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(181, '/images/posters/Kids/X660-JungleBabies-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(181, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(181, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(181, 'large', 79.99);

-- Poster: Reptilesinglasses
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Reptilesinglasses', 'reptilesinglasses', 'Reptilesinglasses - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 182, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(182, '/images/posters/Kids/X727-ReptilesInGlasses-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(182, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(182, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(182, 'large', 79.99);

-- Poster: Bekind
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Bekind', 'bekind', 'Bekind - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 183, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(183, '/images/posters/Kids/X784-BeKind-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(183, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(183, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(183, 'large', 79.99);

-- Poster: Babymonkey
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Babymonkey', 'babymonkey', 'Babymonkey - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 184, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(184, '/images/posters/Kids/X709-BabyMonkey-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(184, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(184, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(184, 'large', 79.99);

-- Poster: Clevergirl
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Clevergirl', 'clevergirl', 'Clevergirl - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 185, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(185, '/images/posters/Kids/X745-CleverGirl-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(185, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(185, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(185, 'large', 79.99);

-- Poster: Giantgirl
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Giantgirl', 'giantgirl', 'Giantgirl - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 186, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(186, '/images/posters/Kids/X713-GiantGirl-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(186, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(186, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(186, 'large', 79.99);

-- Poster: Littlemonkey
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Littlemonkey', 'littlemonkey', 'Littlemonkey - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 187, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(187, '/images/posters/Kids/X865-LittleMonkey-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(187, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(187, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(187, 'large', 79.99);

-- Poster: Behappy
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Behappy', 'behappy', 'Behappy - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 188, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(188, '/images/posters/Kids/X786-BeHappy-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(188, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(188, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(188, 'large', 79.99);

-- Poster: Becurious
INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES
('Becurious', 'becurious', 'Becurious - Beautiful Kids poster', 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 189, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(189, '/images/posters/Kids/X785-BeCurious-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(189, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(189, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(189, 'large', 79.99);
