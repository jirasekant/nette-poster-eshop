-- Insert test users with hashed passwords (using bcrypt)
INSERT INTO `user` (`name`, `email`, `password`, `role_id`) VALUES
('John Doe', 'john@example.com', '$2y$10$GRA8D27bvZzxaECqD7SOIuXwC6oHtHrFZ.4q/kPtqsX9M2VF.nE8W', 'admin'), -- password: admin123
('Jane Smith', 'jane@example.com', '$2y$10$8HxXxx0.1EYVLdZH7HKO8u0UpVBVrX3dh3YGhXjEUf4qmEtGHfSge', 'authenticated'), -- password: user123
('Michael Brown', 'michael@example.com', '$2y$10$8HxXxx0.1EYVLdZH7HKO8u0UpVBVrX3dh3YGhXjEUf4qmEtGHfSge', 'authenticated'), -- password: user123
('Emma Johnson', 'emma@example.com', '$2y$10$8HxXxx0.1EYVLdZH7HKO8u0UpVBVrX3dh3YGhXjEUf4qmEtGHfSge', 'authenticated'); -- password: user123

-- Insert authors
INSERT INTO `author` (`name`) VALUES
('Vincent van Gogh'),
('Claude Monet'),
('Gustav Klimt'),
('Alphonse Mucha');

-- Insert categories
INSERT INTO `category` (`title`, `description`, `parent_category_id`) VALUES
('Art', 'Beautiful art pieces from various artists', NULL),
('Photography', 'Stunning photographic works', NULL),
('Digital Art', 'Modern digital artworks', 1),
('Abstract', 'Abstract art pieces', 3),
('Nature', 'Nature themed artwork', 2);

-- Insert posters
INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES
('Starry Night', 'starry-night', 'The iconic night sky painting by Vincent van Gogh', 1, 50, 1),
('Water Lilies', 'water-lilies', 'Monet\'s famous water lilies series', 2, 30, 1),
('The Kiss', 'the-kiss', 'Gustav Klimt\'s masterpiece of the Golden Period', 3, 20, 1),
('The Seasons', 'the-seasons', 'Mucha\'s decorative panel series', 4, 15, 1);

-- Insert poster categories
INSERT INTO `poster_category` (`poster_id`, `category_id`) VALUES
(1, 1),  -- Starry Night -> Art
(2, 1),  -- Water Lilies -> Art
(3, 1),  -- The Kiss -> Art
(4, 1),  -- The Seasons -> Art
(1, 4),  -- Starry Night -> Abstract
(2, 5);  -- Water Lilies -> Nature

-- Insert poster images
INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES
(1, '/images/posters/starry-night-main.jpg'),
(1, '/images/posters/starry-night-detail.jpg'),
(2, '/images/posters/water-lilies-main.jpg'),
(3, '/images/posters/the-kiss-main.jpg'),
(4, '/images/posters/the-seasons-main.jpg');

-- Insert poster sizes with prices
INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES
(1, 'small', 29.99),
(1, 'medium', 49.99),
(1, 'large', 79.99),
(2, 'small', 24.99),
(2, 'medium', 44.99),
(2, 'large', 74.99),
(3, 'small', 34.99),
(3, 'medium', 54.99),
(3, 'large', 84.99),
(4, 'small', 39.99),
(4, 'medium', 59.99),
(4, 'large', 89.99);

-- Insert carts
INSERT INTO `cart` (`user_id`, `last_modified`) VALUES
(2, NOW()),  -- Cart for Jane
(3, NOW()),  -- Cart for Michael
(4, NOW());  -- Cart for Emma

-- Insert cart items
INSERT INTO `cart_item` (`cart_id`, `poster_size_id`, `count`) VALUES
(1, 1, 2),  -- Jane's cart: 2x Starry Night (small)
(1, 5, 1),  -- Jane's cart: 1x Water Lilies (medium)
(2, 8, 1),  -- Michael's cart: 1x The Kiss (medium)
(3, 12, 1); -- Emma's cart: 1x The Seasons (large)

-- Insert orders
INSERT INTO `order` (`user_id`, `cart_id`, `total_amount`, `status`, `created`) VALUES
(2, 1, 104.97, 'completed', NOW() - INTERVAL 2 DAY),  -- Jane's completed order
(3, 2, 54.99, 'pending', NOW() - INTERVAL 1 DAY),     -- Michael's pending order
(4, 3, 89.99, 'completed', NOW());                    -- Emma's completed order

-- Insert order items
INSERT INTO `order_item` (`order_id`, `poster_size_id`, `count`, `price`) VALUES
(1, 1, 2, 29.99),  -- Jane's order: 2x Starry Night (small)
(1, 5, 1, 44.99),  -- Jane's order: 1x Water Lilies (medium)
(2, 8, 1, 54.99),  -- Michael's order: 1x The Kiss (medium)
(3, 12, 1, 89.99); -- Emma's order: 1x The Seasons (large)

-- Insert a forgotten password request (for testing)
INSERT INTO `forgotten_password` (`user_id`, `code`, `created`) VALUES
(2, 'test-reset-code-123', NOW() - INTERVAL 1 HOUR);
