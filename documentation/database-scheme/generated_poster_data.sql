-- Generated Poster Data

DELETE FROM `poster_category`;
DELETE FROM `poster_image`;
DELETE FROM `poster_size`;
DELETE FROM `poster`;
DELETE FROM `author`;
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
('Kitchen', 'Kitchen collection of posters');
INSERT INTO `category` (`title`, `description`) VALUES
('Kids', 'Kids collection of posters');

-- Poster: Bauhaus Red Sun 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Red Sun 1', 'bauhaus-red-sun-1', 'Bauhaus Red Sun 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Weimar 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Weimar 1', 'bauhaus-weimar-1', 'Bauhaus Weimar 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Blue Color Code 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Blue Color Code 1', 'bauhaus-blue-color-code-1', 'Bauhaus Blue Color Code 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Colored Circles 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Colored Circles 1', 'bauhaus-colored-circles-1', 'Bauhaus Colored Circles 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Exhibition 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Exhibition 1', 'bauhaus-exhibition-1', 'Bauhaus Exhibition 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Warm Colors 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Warm Colors 1', 'bauhaus-warm-colors-1', 'Bauhaus Warm Colors 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Yellow Circle With Lines 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Yellow Circle With Lines 1', 'bauhaus-yellow-circle-with-lines-1', 'Bauhaus Yellow Circle With Lines 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Mixed Squares 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Mixed Squares 1', 'bauhaus-mixed-squares-1', 'Bauhaus Mixed Squares 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Orange Color Code 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Orange Color Code 1', 'bauhaus-orange-color-code-1', 'Bauhaus Orange Color Code 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Triangles 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Triangles 1', 'bauhaus-triangles-1', 'Bauhaus Triangles 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Eyes 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Eyes 1', 'bauhaus-eyes-1', 'Bauhaus Eyes 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Orange Semicircles 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Orange Semicircles 1', 'bauhaus-orange-semicircles-1', 'Bauhaus Orange Semicircles 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Circles 21
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Circles 21', 'bauhaus-circles-21', 'Bauhaus Circles 21 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Zebra Green
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Zebra Green', 'bauhaus-zebra-green', 'Bauhaus Zebra Green - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Abstract Colors
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Abstract Colors', 'bauhaus-abstract-colors', 'Bauhaus Abstract Colors - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Green Pattern
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Green Pattern', 'bauhaus-green-pattern', 'Bauhaus Green Pattern - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Mixed Colors 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Mixed Colors 1', 'bauhaus-mixed-colors-1', 'Bauhaus Mixed Colors 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Dots 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Dots 1', 'bauhaus-dots-1', 'Bauhaus Dots 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Museum 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Museum 1', 'bauhaus-museum-1', 'Bauhaus Museum 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Lines With Dots 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Lines With Dots 1', 'bauhaus-lines-with-dots-1', 'Bauhaus Lines With Dots 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Bicycle 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Bicycle 1', 'bauhaus-bicycle-1', 'Bauhaus Bicycle 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Circles 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Circles 1', 'bauhaus-circles-1', 'Bauhaus Circles 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Black Dots 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Black Dots 1', 'bauhaus-black-dots-1', 'Bauhaus Black Dots 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Colored Eyes 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Colored Eyes 1', 'bauhaus-colored-eyes-1', 'Bauhaus Colored Eyes 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Blue With Shadows 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Blue With Shadows 1', 'bauhaus-blue-with-shadows-1', 'Bauhaus Blue With Shadows 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Zebra Orange
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Zebra Orange', 'bauhaus-zebra-orange', 'Bauhaus Zebra Orange - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Running Man 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Running Man 1', 'bauhaus-running-man-1', 'Bauhaus Running Man 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Double Circle 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Double Circle 1', 'bauhaus-double-circle-1', 'Bauhaus Double Circle 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Retro Abstract 21
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Retro Abstract 21', 'bauhaus-retro-abstract-21', 'Bauhaus Retro Abstract 21 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Austellung 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Austellung 1', 'bauhaus-austellung-1', 'Bauhaus Austellung 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Melted Colors 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Melted Colors 1', 'bauhaus-melted-colors-1', 'Bauhaus Melted Colors 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Black Pattern
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Black Pattern', 'bauhaus-black-pattern', 'Bauhaus Black Pattern - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Random Shapes 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Random Shapes 1', 'bauhaus-random-shapes-1', 'Bauhaus Random Shapes 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Black Semicircles 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Black Semicircles 1', 'bauhaus-black-semicircles-1', 'Bauhaus Black Semicircles 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Zebra 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Zebra 1', 'bauhaus-zebra-1', 'Bauhaus Zebra 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Zebra Abstract 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Zebra Abstract 1', 'bauhaus-zebra-abstract-1', 'Bauhaus Zebra Abstract 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Poster: Bauhaus Blue Circle With Lines 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bauhaus Blue Circle With Lines 1', 'bauhaus-blue-circle-with-lines-1', 'Bauhaus Blue Circle With Lines 1 - Beautiful Bauhaus poster', NULL, 50, 1);
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

-- Author: Yayoi Kusama
INSERT INTO `author` (`author_id`, `name`) VALUES
(1, 'Yayoi Kusama');
-- Poster: Pink Dots
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Pink Dots', 'pink-dots', 'Pink Dots - Beautiful Japanese poster', 1, 50, 1);
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

-- Author: Ohara Koson
INSERT INTO `author` (`author_id`, `name`) VALUES
(2, 'Ohara Koson');
-- Poster: Peacock 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Peacock 1', 'peacock-1', 'Peacock 1 - Beautiful Japanese poster', 2, 50, 1);
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

-- Poster: Flowers 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flowers 1', 'flowers-1', 'Flowers 1 - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: All The Eternal Love 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('All The Eternal Love 1', 'all-the-eternal-love-1', 'All The Eternal Love 1 - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: Mushrooms 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Mushrooms 1', 'mushrooms-1', 'Mushrooms 1 - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: Pumpkin 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Pumpkin 1', 'pumpkin-1', 'Pumpkin 1 - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: The Sea 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('The Sea 1', 'the-sea-1', 'The Sea 1 - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: Pink Pumpkin
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Pink Pumpkin', 'pink-pumpkin', 'Pink Pumpkin - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: Zebra Pattern 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Zebra Pattern 1', 'zebra-pattern-1', 'Zebra Pattern 1 - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: The First Ramen Shop 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('The First Ramen Shop 1', 'the-first-ramen-shop-1', 'The First Ramen Shop 1 - Beautiful Japanese poster', NULL, 50, 1);
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

-- Poster: Ramen Definition
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Ramen Definition', 'ramen-definition', 'Ramen Definition - Beautiful Japanese poster', NULL, 50, 1);
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

-- Poster: Green Dots
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Green Dots', 'green-dots', 'Green Dots - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: Infinity Mushrooms
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Infinity Mushrooms', 'infinity-mushrooms', 'Infinity Mushrooms - Beautiful Japanese poster', 1, 50, 1);
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

-- Author: Hokusai
INSERT INTO `author` (`author_id`, `name`) VALUES
(3, 'Hokusai');
-- Poster: The Great Wave Off Kanagawa 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('The Great Wave Off Kanagawa 1', 'the-great-wave-off-kanagawa-1', 'The Great Wave Off Kanagawa 1 - Beautiful Japanese poster', 3, 50, 1);
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

-- Poster: Yoro Waterfall In Mino Province 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Yoro Waterfall In Mino Province 1', 'yoro-waterfall-in-mino-province-1', 'Yoro Waterfall In Mino Province 1 - Beautiful Japanese poster', 3, 50, 1);
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

-- Poster: Bird On Branch 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bird On Branch 1', 'bird-on-branch-1', 'Bird On Branch 1 - Beautiful Japanese poster', 2, 50, 1);
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

-- Poster: Bijutsu Sekai Pink Sky 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bijutsu Sekai Pink Sky 1', 'bijutsu-sekai-pink-sky-1', 'Bijutsu Sekai Pink Sky 1 - Beautiful Japanese poster', NULL, 50, 1);
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

-- Author: Matsumoto Hoji
INSERT INTO `author` (`author_id`, `name`) VALUES
(4, 'Matsumoto Hoji');
-- Poster: Frog 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Frog 1', 'frog-1', 'Frog 1 - Beautiful Japanese poster', 4, 50, 1);
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

-- Poster: Blue Waves 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Blue Waves 1', 'blue-waves-1', 'Blue Waves 1 - Beautiful Japanese poster', NULL, 50, 1);
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

-- Poster: Eyes 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Eyes 1', 'eyes-1', 'Eyes 1 - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: The Great Wave Off Kanagawa 21
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('The Great Wave Off Kanagawa 21', 'the-great-wave-off-kanagawa-21', 'The Great Wave Off Kanagawa 21 - Beautiful Japanese poster', 3, 50, 1);
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

-- Poster: Tokyo Colors
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Tokyo Colors', 'tokyo-colors', 'Tokyo Colors - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: Yellow Pattern 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Yellow Pattern 1', 'yellow-pattern-1', 'Yellow Pattern 1 - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: Pink Infinity Pumpkin
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Pink Infinity Pumpkin', 'pink-infinity-pumpkin', 'Pink Infinity Pumpkin - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: Single Mushroom 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Single Mushroom 1', 'single-mushroom-1', 'Single Mushroom 1 - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: Red Dots 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Red Dots 1', 'red-dots-1', 'Red Dots 1 - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: Koi Fish 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Koi Fish 1', 'koi-fish-1', 'Koi Fish 1 - Beautiful Japanese poster', 2, 50, 1);
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

-- Poster: Mount Fuji
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Mount Fuji', 'mount-fuji', 'Mount Fuji - Beautiful Japanese poster', NULL, 50, 1);
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

-- Poster: Infinity Net 21
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Infinity Net 21', 'infinity-net-21', 'Infinity Net 21 - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: Japanese Red Sun 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Japanese Red Sun 1', 'japanese-red-sun-1', 'Japanese Red Sun 1 - Beautiful Japanese poster', NULL, 50, 1);
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

-- Poster: Pumpkin Tokyo
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Pumpkin Tokyo', 'pumpkin-tokyo', 'Pumpkin Tokyo - Beautiful Japanese poster', NULL, 50, 1);
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

-- Author: Utagawa Hirokage
INSERT INTO `author` (`author_id`, `name`) VALUES
(5, 'Utagawa Hirokage');
-- Poster: The Tiger Of Ryokoku
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('The Tiger Of Ryokoku', 'the-tiger-of-ryokoku', 'The Tiger Of Ryokoku - Beautiful Japanese poster', 5, 50, 1);
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

-- Poster: Blossoming Cherry On A Moonlit Night
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Blossoming Cherry On A Moonlit Night', 'blossoming-cherry-on-a-moonlit-night', 'Blossoming Cherry On A Moonlit Night - Beautiful Japanese poster', 2, 50, 1);
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

-- Poster: Pumpkin Forever 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Pumpkin Forever 1', 'pumpkin-forever-1', 'Pumpkin Forever 1 - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: Black Dots 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Black Dots 1', 'black-dots-1', 'Black Dots 1 - Beautiful Japanese poster', 1, 50, 1);
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

-- Poster: Farm Garden With Sunflowers 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Farm Garden With Sunflowers 1', 'farm-garden-with-sunflowers-1', 'Farm Garden With Sunflowers 1 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Hygieia 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Hygieia 1', 'hygieia-1', 'Hygieia 1 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Lobster Telephone
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Lobster Telephone', 'lobster-telephone', 'Lobster Telephone - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: The Equatorial Jungle
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('The Equatorial Jungle', 'the-equatorial-jungle', 'The Equatorial Jungle - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Humanism 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Humanism 1', 'humanism-1', 'Humanism 1 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Frida Yellow Version
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Frida Yellow Version', 'frida-yellow-version', 'Frida Yellow Version - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Relativity
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Relativity', 'relativity', 'Relativity - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Campbells Tomato Soup
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Campbells Tomato Soup', 'campbells-tomato-soup', 'Campbells Tomato Soup - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: The Velvet Underground And Nico
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('The Velvet Underground And Nico', 'the-velvet-underground-and-nico', 'The Velvet Underground And Nico - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Cafe Terrace At Night 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Cafe Terrace At Night 1', 'cafe-terrace-at-night-1', 'Cafe Terrace At Night 1 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Skull Of A Skeleton With Burning Cigarette 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Skull Of A Skeleton With Burning Cigarette 1', 'skull-of-a-skeleton-with-burning-cigarette-1', 'Skull Of A Skeleton With Burning Cigarette 1 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: D J 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('D J 1', 'd-j-1', 'D J 1 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Flower 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower 1', 'flower-1', 'Flower 1 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: The Ten Largest No.2 Childhood 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('The Ten Largest No.2 Childhood 1', 'the-ten-largest-no2-childhood-1', 'The Ten Largest No.2 Childhood 1 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: The Love
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('The Love', 'the-love', 'The Love - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Montreux 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Montreux 1', 'montreux-1', 'Montreux 1 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Nightshawks
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Nightshawks', 'nightshawks', 'Nightshawks - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Inside My Personal Garden
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Inside My Personal Garden', 'inside-my-personal-garden', 'Inside My Personal Garden - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Serigraphie No.18
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Serigraphie No.18', 'serigraphie-no18', 'Serigraphie No.18 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Green Cat
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Green Cat', 'green-cat', 'Green Cat - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Dancers 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Dancers 1', 'dancers-1', 'Dancers 1 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Miro Series I 1953
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Miro Series I 1953', 'miro-series-i-1953', 'Miro Series I 1953 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: The Velvet Underground And Nico 2
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('The Velvet Underground And Nico 2', 'the-velvet-underground-and-nico-2', 'The Velvet Underground And Nico 2 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Skater 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Skater 1', 'skater-1', 'Skater 1 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Almond Blossom 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Almond Blossom 1', 'almond-blossom-1', 'Almond Blossom 1 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: A Retrospective 2
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('A Retrospective 2', 'a-retrospective-2', 'A Retrospective 2 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: A Retrospective 6
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('A Retrospective 6', 'a-retrospective-6', 'A Retrospective 6 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Sunset
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Sunset', 'sunset', 'Sunset - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Les Lalanne
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Les Lalanne', 'les-lalanne', 'Les Lalanne - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Party Of Life Invitation 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Party Of Life Invitation 1', 'party-of-life-invitation-1', 'Party Of Life Invitation 1 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Picasso The Kiss
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Picasso The Kiss', 'picasso-the-kiss', 'Picasso The Kiss - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Two Figures Holding Heart 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Two Figures Holding Heart 1', 'two-figures-holding-heart-1', 'Two Figures Holding Heart 1 - Beautiful Art poster', NULL, 50, 1);
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

-- Poster: Dior Dog 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Dior Dog 1', 'dior-dog-1', 'Dior Dog 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Girl With Chanel Snowboard 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Girl With Chanel Snowboard 1', 'girl-with-chanel-snowboard-1', 'Girl With Chanel Snowboard 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Gucci Tiger
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Gucci Tiger', 'gucci-tiger', 'Gucci Tiger - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Prada Marfa 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Prada Marfa 1', 'prada-marfa-1', 'Prada Marfa 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Fashion Surfer
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Fashion Surfer', 'fashion-surfer', 'Fashion Surfer - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Playboy Kylie
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Playboy Kylie', 'playboy-kylie', 'Playboy Kylie - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Central Cee Teeth
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Central Cee Teeth', 'central-cee-teeth', 'Central Cee Teeth - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: N O 5 Surfer Girl 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('N O 5 Surfer Girl 1', 'n-o-5-surfer-girl-1', 'N O 5 Surfer Girl 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Michael Jordan 3 Fingers
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Michael Jordan 3 Fingers', 'michael-jordan-3-fingers', 'Michael Jordan 3 Fingers - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Marilyn Monroe Smoking 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Marilyn Monroe Smoking 1', 'marilyn-monroe-smoking-1', 'Marilyn Monroe Smoking 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Chanel Beach Cabin 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Chanel Beach Cabin 1', 'chanel-beach-cabin-1', 'Chanel Beach Cabin 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: C O C O 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('C O C O 1', 'c-o-c-o-1', 'C O C O 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Frank Ocean X Blond
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Frank Ocean X Blond', 'frank-ocean-x-blond', 'Frank Ocean X Blond - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Nike Air Jordan
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Nike Air Jordan', 'nike-air-jordan', 'Nike Air Jordan - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: High Heels In Car 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('High Heels In Car 1', 'high-heels-in-car-1', 'High Heels In Car 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Travis Scott Astroworld
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Travis Scott Astroworld', 'travis-scott-astroworld', 'Travis Scott Astroworld - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Kate Moss Bunny 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Kate Moss Bunny 1', 'kate-moss-bunny-1', 'Kate Moss Bunny 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Le Gout Des Autres
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Le Gout Des Autres', 'le-gout-des-autres', 'Le Gout Des Autres - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Kaws Basketball
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Kaws Basketball', 'kaws-basketball', 'Kaws Basketball - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Velvet Pumps
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Velvet Pumps', 'velvet-pumps', 'Velvet Pumps - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Roger Moore Drinking 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Roger Moore Drinking 1', 'roger-moore-drinking-1', 'Roger Moore Drinking 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Middle Finger Girl 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Middle Finger Girl 1', 'middle-finger-girl-1', 'Middle Finger Girl 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Louis Vuitton Vintage 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Louis Vuitton Vintage 1', 'louis-vuitton-vintage-1', 'Louis Vuitton Vintage 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Playboyx Butterfly
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Playboyx Butterfly', 'playboyx-butterfly', 'Playboyx Butterfly - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Kaws Robot
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Kaws Robot', 'kaws-robot', 'Kaws Robot - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Marilyn Monroe Bubblegum 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Marilyn Monroe Bubblegum 1', 'marilyn-monroe-bubblegum-1', 'Marilyn Monroe Bubblegum 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Frida Kahlo With Flowers 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Frida Kahlo With Flowers 1', 'frida-kahlo-with-flowers-1', 'Frida Kahlo With Flowers 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Sensual Kiss
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Sensual Kiss', 'sensual-kiss', 'Sensual Kiss - Beautiful Fashion poster', NULL, 50, 1);
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
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Vinyl', 'vinyl', 'Vinyl - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Kate Moss Bubblegum 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Kate Moss Bubblegum 1', 'kate-moss-bubblegum-1', 'Kate Moss Bubblegum 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Audrey Hepburn Lipstick 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Audrey Hepburn Lipstick 1', 'audrey-hepburn-lipstick-1', 'Audrey Hepburn Lipstick 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Marilyn Monroe Reading 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Marilyn Monroe Reading 1', 'marilyn-monroe-reading-1', 'Marilyn Monroe Reading 1 - Beautiful Fashion poster', NULL, 50, 1);
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

-- Poster: Flower Market Barcelona 21
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower Market Barcelona 21', 'flower-market-barcelona-21', 'Flower Market Barcelona 21 - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Flower Market Paris 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower Market Paris 1', 'flower-market-paris-1', 'Flower Market Paris 1 - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Flowers At Night
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flowers At Night', 'flowers-at-night', 'Flowers At Night - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Flower Market Stockholm 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower Market Stockholm 1', 'flower-market-stockholm-1', 'Flower Market Stockholm 1 - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Flower Market Stockholm 31
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower Market Stockholm 31', 'flower-market-stockholm-31', 'Flower Market Stockholm 31 - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Flower Market New York 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower Market New York 1', 'flower-market-new-york-1', 'Flower Market New York 1 - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Flower Market Sydney 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower Market Sydney 1', 'flower-market-sydney-1', 'Flower Market Sydney 1 - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Flower Market Seoul 21
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower Market Seoul 21', 'flower-market-seoul-21', 'Flower Market Seoul 21 - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Flower Market Prague 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower Market Prague 1', 'flower-market-prague-1', 'Flower Market Prague 1 - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Flower Market Barcelona 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower Market Barcelona 1', 'flower-market-barcelona-1', 'Flower Market Barcelona 1 - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Flower Market Tokyo 21
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower Market Tokyo 21', 'flower-market-tokyo-21', 'Flower Market Tokyo 21 - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Flower Market Amsterdam 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower Market Amsterdam 1', 'flower-market-amsterdam-1', 'Flower Market Amsterdam 1 - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Floral Frida
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Floral Frida', 'floral-frida', 'Floral Frida - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Flower Market Copenhagen 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower Market Copenhagen 1', 'flower-market-copenhagen-1', 'Flower Market Copenhagen 1 - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Flower Market Tokyo 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower Market Tokyo 1', 'flower-market-tokyo-1', 'Flower Market Tokyo 1 - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Flower Market Seoul 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower Market Seoul 1', 'flower-market-seoul-1', 'Flower Market Seoul 1 - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Flower Market London 21
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Flower Market London 21', 'flower-market-london-21', 'Flower Market London 21 - Beautiful Botanical poster', NULL, 50, 1);
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

-- Poster: Il Godimento Della Dolce Vita
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Il Godimento Della Dolce Vita', 'il-godimento-della-dolce-vita', 'Il Godimento Della Dolce Vita - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 154, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(154, '/images/posters/Kitchen/X967-IlGodimentoDellaDolceVita-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(154, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(154, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(154, 'large', 79.99);

-- Poster: Limoncello
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Limoncello', 'limoncello', 'Limoncello - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 155, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(155, '/images/posters/Kitchen/X328-Limoncello-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(155, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(155, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(155, 'large', 79.99);

-- Poster: Aperol Cocktail
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Aperol Cocktail', 'aperol-cocktail', 'Aperol Cocktail - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 156, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(156, '/images/posters/Kitchen/X187-AperolCocktail-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(156, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(156, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(156, 'large', 79.99);

-- Poster: Espresso Guide
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Espresso Guide', 'espresso-guide', 'Espresso Guide - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 157, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(157, '/images/posters/Kitchen/X382-EspressoGuide-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(157, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(157, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(157, 'large', 79.99);

-- Poster: Espresso Martini
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Espresso Martini', 'espresso-martini', 'Espresso Martini - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 158, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(158, '/images/posters/Kitchen/X1008-EspressoMartini-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(158, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(158, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(158, 'large', 79.99);

-- Poster: Pizza Est 1977
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Pizza Est 1977', 'pizza-est-1977', 'Pizza Est 1977 - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 159, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(159, '/images/posters/Kitchen/X165-PizzaEst1977-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(159, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(159, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(159, 'large', 79.99);

-- Poster: Spritz Summer
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Spritz Summer', 'spritz-summer', 'Spritz Summer - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 160, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(160, '/images/posters/Kitchen/X189-SpritzSummer-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(160, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(160, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(160, 'large', 79.99);

-- Poster: American Lobster
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('American Lobster', 'american-lobster', 'American Lobster - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 161, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(161, '/images/posters/Kitchen/X231-AmericanLobster-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(161, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(161, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(161, 'large', 79.99);

-- Poster: Balcony Hygge
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Balcony Hygge', 'balcony-hygge', 'Balcony Hygge - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 162, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(162, '/images/posters/Kitchen/X470-BalconyHygge-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(162, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(162, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(162, 'large', 79.99);

-- Poster: Negroni
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Negroni', 'negroni', 'Negroni - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 163, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(163, '/images/posters/Kitchen/P847-Negroni-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(163, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(163, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(163, 'large', 79.99);

-- Poster: Le Homard
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Le Homard', 'le-homard', 'Le Homard - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 164, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(164, '/images/posters/Kitchen/X1012-LeHomard-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(164, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(164, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(164, 'large', 79.99);

-- Poster: Hot Sauce Squares
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Hot Sauce Squares', 'hot-sauce-squares', 'Hot Sauce Squares - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 165, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(165, '/images/posters/Kitchen/X241-HotSauceSquares-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(165, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(165, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(165, 'large', 79.99);

-- Poster: Fruit Market Italy 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Fruit Market Italy 1', 'fruit-market-italy-1', 'Fruit Market Italy 1 - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 166, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(166, '/images/posters/Kitchen/P421-FruitMarketItaly1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(166, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(166, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(166, 'large', 79.99);

-- Poster: Gin And Tonic 2
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Gin And Tonic 2', 'gin-and-tonic-2', 'Gin And Tonic 2 - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 167, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(167, '/images/posters/Kitchen/P846-GinAndTonic2-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(167, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(167, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(167, 'large', 79.99);

-- Poster: Croissant Paris
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Croissant Paris', 'croissant-paris', 'Croissant Paris - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 168, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(168, '/images/posters/Kitchen/X474-CroissantParis-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(168, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(168, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(168, 'large', 79.99);

-- Poster: Ramen Japanese Soup
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Ramen Japanese Soup', 'ramen-japanese-soup', 'Ramen Japanese Soup - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 169, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(169, '/images/posters/Kitchen/X193-RamenJapaneseSoup-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(169, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(169, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(169, 'large', 79.99);

-- Poster: Cheers Girls
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Cheers Girls', 'cheers-girls', 'Cheers Girls - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 170, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(170, '/images/posters/Kitchen/X329-CheersGirls-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(170, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(170, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(170, 'large', 79.99);

-- Poster: Buongiorno Espresso
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Buongiorno Espresso', 'buongiorno-espresso', 'Buongiorno Espresso - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 171, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(171, '/images/posters/Kitchen/X845-BuongiornoEspresso-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(171, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(171, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(171, 'large', 79.99);

-- Poster: Spaghetti Woman 1
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Spaghetti Woman 1', 'spaghetti-woman-1', 'Spaghetti Woman 1 - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 172, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(172, '/images/posters/Kitchen/P162-SpaghettiWoman1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(172, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(172, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(172, 'large', 79.99);

-- Poster: I Prefer The Full One
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('I Prefer The Full One', 'i-prefer-the-full-one', 'I Prefer The Full One - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 173, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(173, '/images/posters/Kitchen/X85-IPreferTheFullOne-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(173, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(173, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(173, 'large', 79.99);

-- Poster: Pancake Est 1951
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Pancake Est 1951', 'pancake-est-1951', 'Pancake Est 1951 - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 174, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(174, '/images/posters/Kitchen/X163-PancakeEst1951-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(174, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(174, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(174, 'large', 79.99);

-- Poster: Brunch
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Brunch', 'brunch', 'Brunch - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 175, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(175, '/images/posters/Kitchen/X186-Brunch-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(175, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(175, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(175, 'large', 79.99);

-- Poster: Classic Wine Guide
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Classic Wine Guide', 'classic-wine-guide', 'Classic Wine Guide - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 176, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(176, '/images/posters/Kitchen/P900-ClassicWineGuide-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(176, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(176, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(176, 'large', 79.99);

-- Poster: Aperol Spritz
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Aperol Spritz', 'aperol-spritz', 'Aperol Spritz - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 177, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(177, '/images/posters/Kitchen/P834-AperolSpritz-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(177, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(177, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(177, 'large', 79.99);

-- Poster: Coffee Est 1979
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Coffee Est 1979', 'coffee-est-1979', 'Coffee Est 1979 - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 178, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(178, '/images/posters/Kitchen/X164-CoffeeEst1979-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(178, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(178, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(178, 'large', 79.99);

-- Poster: More Wine Please
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('More Wine Please', 'more-wine-please', 'More Wine Please - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 179, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(179, '/images/posters/Kitchen/X219-MoreWinePlease-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(179, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(179, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(179, 'large', 79.99);

-- Poster: More Espresso Less Depresso
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('More Espresso Less Depresso', 'more-espresso-less-depresso', 'More Espresso Less Depresso - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 180, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(180, '/images/posters/Kitchen/X472-MoreEspressoLessDepresso-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(180, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(180, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(180, 'large', 79.99);

-- Poster: We Ride Until Dawn
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('We Ride Until Dawn', 'we-ride-until-dawn', 'We Ride Until Dawn - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 181, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(181, '/images/posters/Kitchen/X26-WeRideUntilDawn-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(181, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(181, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(181, 'large', 79.99);

-- Poster: Ramen Japanese Food
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Ramen Japanese Food', 'ramen-japanese-food', 'Ramen Japanese Food - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 182, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(182, '/images/posters/Kitchen/X837-RamenJapaneseFood-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(182, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(182, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(182, 'large', 79.99);

-- Poster: Pomodori
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Pomodori', 'pomodori', 'Pomodori - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 183, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(183, '/images/posters/Kitchen/X789-Pomodori-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(183, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(183, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(183, 'large', 79.99);

-- Poster: Dolcezza Amara
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Dolcezza Amara', 'dolcezza-amara', 'Dolcezza Amara - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 184, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(184, '/images/posters/Kitchen/X1009-DolcezzaAmara-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(184, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(184, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(184, 'large', 79.99);

-- Poster: Your Best Friends Forget You Get Old
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Your Best Friends Forget You Get Old', 'your-best-friends-forget-you-get-old', 'Your Best Friends Forget You Get Old - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 185, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(185, '/images/posters/Kitchen/X22-YourBestFriendsForgetYouGetOld-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(185, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(185, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(185, 'large', 79.99);

-- Poster: My Drink Needs A Drink
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('My Drink Needs A Drink', 'my-drink-needs-a-drink', 'My Drink Needs A Drink - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 186, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(186, '/images/posters/Kitchen/X20-MyDrinkNeedsADrink-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(186, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(186, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(186, 'large', 79.99);

-- Poster: Italian Menu
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Italian Menu', 'italian-menu', 'Italian Menu - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 187, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(187, '/images/posters/Kitchen/X222-ItalianMenu-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(187, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(187, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(187, 'large', 79.99);

-- Poster: Sushi Est 1966
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Sushi Est 1966', 'sushi-est-1966', 'Sushi Est 1966 - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 188, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(188, '/images/posters/Kitchen/X162-SushiEst1966-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(188, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(188, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(188, 'large', 79.99);

-- Poster: Pizza Double Cheese
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Pizza Double Cheese', 'pizza-double-cheese', 'Pizza Double Cheese - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 189, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(189, '/images/posters/Kitchen/P848-PizzaDoubleCheese-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(189, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(189, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(189, 'large', 79.99);

-- Poster: Il Dolce Far Niente
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Il Dolce Far Niente', 'il-dolce-far-niente', 'Il Dolce Far Niente - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 190, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(190, '/images/posters/Kitchen/X968-IlDolceFarNiente-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(190, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(190, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(190, 'large', 79.99);

-- Poster: Limone
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Limone', 'limone', 'Limone - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 191, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(191, '/images/posters/Kitchen/X965-Limone-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(191, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(191, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(191, 'large', 79.99);

-- Poster: Le Citron
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Le Citron', 'le-citron', 'Le Citron - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 192, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(192, '/images/posters/Kitchen/X60-LeCitron-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(192, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(192, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(192, 'large', 79.99);

-- Poster: Morning Rituals
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Morning Rituals', 'morning-rituals', 'Morning Rituals - Beautiful Kitchen poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 193, `category_id` FROM `category` WHERE `title` = 'Kitchen';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(193, '/images/posters/Kitchen/X28-MorningRituals-1_540x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(193, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(193, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(193, 'large', 79.99);

-- Poster: Scandi Sleeping Tiger
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Scandi Sleeping Tiger', 'scandi-sleeping-tiger', 'Scandi Sleeping Tiger - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 194, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(194, '/images/posters/Kids/X731-ScandiSleepingTiger-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(194, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(194, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(194, 'large', 79.99);

-- Poster: Dinosaurs In 80s Jumpers
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Dinosaurs In 80s Jumpers', 'dinosaurs-in-80s-jumpers', 'Dinosaurs In 80s Jumpers - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 195, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(195, '/images/posters/Kids/X728-DinosaursIn80sJumpers-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(195, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(195, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(195, 'large', 79.99);

-- Poster: Baby Lion
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Baby Lion', 'baby-lion', 'Baby Lion - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 196, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(196, '/images/posters/Kids/X708-BabyLion-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(196, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(196, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(196, 'large', 79.99);

-- Poster: Baby Fox
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Baby Fox', 'baby-fox', 'Baby Fox - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 197, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(197, '/images/posters/Kids/X706-BabyFox-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(197, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(197, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(197, 'large', 79.99);

-- Poster: How Are You Feeling
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('How Are You Feeling', 'how-are-you-feeling', 'How Are You Feeling - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 198, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(198, '/images/posters/Kids/X735-HowAreYouFeeling-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(198, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(198, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(198, 'large', 79.99);

-- Poster: Little Lion
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Little Lion', 'little-lion', 'Little Lion - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 199, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(199, '/images/posters/Kids/X719-LittleLion-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(199, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(199, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(199, 'large', 79.99);

-- Poster: Baby Pig
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Baby Pig', 'baby-pig', 'Baby Pig - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 200, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(200, '/images/posters/Kids/X710-BabyPig-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(200, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(200, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(200, 'large', 79.99);

-- Poster: Baby Giraffe
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Baby Giraffe', 'baby-giraffe', 'Baby Giraffe - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 201, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(201, '/images/posters/Kids/X707-BabyGiraffe-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(201, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(201, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(201, 'large', 79.99);

-- Poster: Little Toucan
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Little Toucan', 'little-toucan', 'Little Toucan - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 202, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(202, '/images/posters/Kids/X870-LittleToucan-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(202, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(202, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(202, 'large', 79.99);

-- Poster: Bunny On Skateboard
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Bunny On Skateboard', 'bunny-on-skateboard', 'Bunny On Skateboard - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 203, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(203, '/images/posters/Kids/X721-BunnyOnSkateboard-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(203, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(203, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(203, 'large', 79.99);

-- Poster: Swingset Dreams
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Swingset Dreams', 'swingset-dreams', 'Swingset Dreams - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 204, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(204, '/images/posters/Kids/X667-SwingsetDreams-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(204, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(204, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(204, 'large', 79.99);

-- Poster: Baby Rabbit
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Baby Rabbit', 'baby-rabbit', 'Baby Rabbit - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 205, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(205, '/images/posters/Kids/X711-BabyRabbit-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(205, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(205, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(205, 'large', 79.99);

-- Poster: Guinea Pig Working
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Guinea Pig Working', 'guinea-pig-working', 'Guinea Pig Working - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 206, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(206, '/images/posters/Kids/X726-GuineaPigWorking-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(206, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(206, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(206, 'large', 79.99);

-- Poster: Rocket Love
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Rocket Love', 'rocket-love', 'Rocket Love - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 207, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(207, '/images/posters/Kids/X742-RocketLove-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(207, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(207, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(207, 'large', 79.99);

-- Poster: Dream Big Pink
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Dream Big Pink', 'dream-big-pink', 'Dream Big Pink - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 208, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(208, '/images/posters/Kids/X747-DreamBigPink-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(208, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(208, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(208, 'large', 79.99);

-- Poster: Baby Elephant
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Baby Elephant', 'baby-elephant', 'Baby Elephant - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 209, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(209, '/images/posters/Kids/X705-BabyElephant-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(209, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(209, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(209, 'large', 79.99);

-- Poster: Matahari
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Matahari', 'matahari', 'Matahari - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 210, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(210, '/images/posters/Kids/X715-Matahari-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(210, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(210, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(210, 'large', 79.99);

-- Poster: In The Clouds
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('In The Clouds', 'in-the-clouds', 'In The Clouds - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 211, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(211, '/images/posters/Kids/X659-InTheClouds-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(211, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(211, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(211, 'large', 79.99);

-- Poster: Happiness Homework
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Happiness Homework', 'happiness-homework', 'Happiness Homework - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 212, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(212, '/images/posters/Kids/X733-HappinessHomework-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(212, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(212, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(212, 'large', 79.99);

-- Poster: Animal Letters A B C
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Animal Letters A B C', 'animal-letters-a-b-c', 'Animal Letters A B C - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 213, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(213, '/images/posters/Kids/X749-AnimalLettersABC-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(213, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(213, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(213, 'large', 79.99);

-- Poster: Scandi Pantha
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Scandi Pantha', 'scandi-pantha', 'Scandi Pantha - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 214, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(214, '/images/posters/Kids/X729-ScandiPantha-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(214, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(214, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(214, 'large', 79.99);

-- Poster: Daily Affirmations
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Daily Affirmations', 'daily-affirmations', 'Daily Affirmations - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 215, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(215, '/images/posters/Kids/X734-DailyAffirmations-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(215, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(215, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(215, 'large', 79.99);

-- Poster: Dreamland
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Dreamland', 'dreamland', 'Dreamland - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 216, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(216, '/images/posters/Kids/X654-Dreamland-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(216, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(216, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(216, 'large', 79.99);

-- Poster: Baby Racoon
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Baby Racoon', 'baby-racoon', 'Baby Racoon - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 217, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(217, '/images/posters/Kids/X712-BabyRacoon-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(217, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(217, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(217, 'large', 79.99);

-- Poster: Dogs In Glasses
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Dogs In Glasses', 'dogs-in-glasses', 'Dogs In Glasses - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 218, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(218, '/images/posters/Kids/X724-DogsInGlasses-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(218, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(218, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(218, 'large', 79.99);

-- Poster: Whales In Hats
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Whales In Hats', 'whales-in-hats', 'Whales In Hats - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 219, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(219, '/images/posters/Kids/X725-WhalesInHats-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(219, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(219, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(219, 'large', 79.99);

-- Poster: Be Unique
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Be Unique', 'be-unique', 'Be Unique - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 220, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(220, '/images/posters/Kids/X783-BeUnique-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(220, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(220, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(220, 'large', 79.99);

-- Poster: Jungle Babies
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Jungle Babies', 'jungle-babies', 'Jungle Babies - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 221, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(221, '/images/posters/Kids/X660-JungleBabies-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(221, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(221, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(221, 'large', 79.99);

-- Poster: Reptiles In Glasses
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Reptiles In Glasses', 'reptiles-in-glasses', 'Reptiles In Glasses - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 222, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(222, '/images/posters/Kids/X727-ReptilesInGlasses-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(222, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(222, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(222, 'large', 79.99);

-- Poster: Be Kind
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Be Kind', 'be-kind', 'Be Kind - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 223, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(223, '/images/posters/Kids/X784-BeKind-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(223, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(223, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(223, 'large', 79.99);

-- Poster: Baby Monkey
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Baby Monkey', 'baby-monkey', 'Baby Monkey - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 224, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(224, '/images/posters/Kids/X709-BabyMonkey-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(224, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(224, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(224, 'large', 79.99);

-- Poster: Clever Girl
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Clever Girl', 'clever-girl', 'Clever Girl - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 225, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(225, '/images/posters/Kids/X745-CleverGirl-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(225, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(225, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(225, 'large', 79.99);

-- Poster: Giant Girl
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Giant Girl', 'giant-girl', 'Giant Girl - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 226, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(226, '/images/posters/Kids/X713-GiantGirl-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(226, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(226, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(226, 'large', 79.99);

-- Poster: Little Monkey
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Little Monkey', 'little-monkey', 'Little Monkey - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 227, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(227, '/images/posters/Kids/X865-LittleMonkey-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(227, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(227, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(227, 'large', 79.99);

-- Poster: Be Happy
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Be Happy', 'be-happy', 'Be Happy - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 228, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(228, '/images/posters/Kids/X786-BeHappy-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(228, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(228, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(228, 'large', 79.99);

-- Poster: Be Curious
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Be Curious', 'be-curious', 'Be Curious - Beautiful Kids poster', NULL, 50, 1);
INSERT INTO `poster_category` (`poster_id`, `category_id`)
SELECT 229, `category_id` FROM `category` WHERE `title` = 'Kids';
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(229, '/images/posters/Kids/X785-BeCurious-1_360x.png');
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(229, 'small', 29.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(229, 'medium', 49.99);
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(229, 'large', 79.99);
