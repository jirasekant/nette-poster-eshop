-- Authors Table
INSERT INTO `Authors` (`Name`) VALUES
('John Doe'),
('Jane Smith'),
('Michael Brown'),
('Emma Johnson');

-- Categories Table
INSERT INTO `Categories` (`CategoryName`, `ParentCategoryID`) VALUES
('Art', NULL),
('Photography', NULL),
('Digital Art', 1),
('Abstract', 3),
('Nature', 2);

-- Users Table
INSERT INTO `Users` (`Username`, `PasswordHash`, `Email`) VALUES
('johndoe', 'hashedpassword123', 'johndoe@example.com'),
('janesmith', 'hashedpassword456', 'janesmith@example.com'),
('michaelbrown', 'hashedpassword789', 'michaelbrown@example.com'),
('emmajohnson', 'hashedpassword101', 'emmajohnson@example.com');

-- Posters Table
INSERT INTO `Posters` (`PosterName`, `Description`, `AuthorID`, `Stock`) VALUES
('Mountain Landscape', 'A beautiful mountain view during sunrise.', 1, 50),
('Cityscape at Night', 'A vibrant city skyline with colorful lights.', 2, 30),
('Abstract Art', 'A modern abstract painting with vivid colors.', 3, 20),
('Wildlife Photography', 'A stunning shot of a lion in the wild.', 4, 15);

-- PosterCategories Table
INSERT INTO `PosterCategories` (`PosterID`, `CategoryID`) VALUES
(1, 1),  -- Mountain Landscape -> Art
(2, 2),  -- Cityscape at Night -> Photography
(3, 3),  -- Abstract Art -> Digital Art
(4, 5),  -- Wildlife Photography -> Nature
(1, 4);  -- Mountain Landscape -> Abstract

-- PosterImages Table
INSERT INTO `PosterImages` (`PosterID`, `ImageURL`) VALUES
(1, 'https://example.com/images/mountain_landscape.jpg'),
(2, 'https://example.com/images/cityscape_night.jpg'),
(3, 'https://example.com/images/abstract_art.jpg'),
(4, 'https://example.com/images/wildlife_photography.jpg');

-- PosterSizes Table
INSERT INTO `PosterSizes` (`PosterID`, `Size`, `Price`) VALUES
(1, 'Small', 15.00),
(1, 'Medium', 25.00),
(1, 'Large', 35.00),
(2, 'Small', 18.00),
(2, 'Medium', 28.00),
(2, 'Large', 38.00),
(3, 'Small', 20.00),
(3, 'Medium', 30.00),
(3, 'Large', 40.00),
(4, 'Small', 25.00),
(4, 'Medium', 35.00),
(4, 'Large', 45.00);

-- Carts Table
INSERT INTO `Carts` (`UserID`) VALUES
(1),
(2),
(3),
(4);

-- CartItems Table
INSERT INTO `CartItems` (`CartID`, `PosterSizeID`, `Quantity`) VALUES
(1, 1, 2),  -- User 1, Mountain Landscape, Small x2
(1, 3, 1),  -- User 1, Abstract Art, Large x1
(2, 2, 1),  -- User 2, Cityscape at Night, Medium x1
(3, 4, 3),  -- User 3, Wildlife Photography, Small x3
(4, 5, 2);  -- User 4, Abstract Art, Medium x2

-- Orders Table
INSERT INTO `Orders` (`UserID`, `CartID`, `TotalAmount`, `Status`) VALUES
(1, 1, 95.00, 'Pending'),
(2, 2, 60.00, 'Completed'),
(3, 3, 105.00, 'Pending'),
(4, 4, 160.00, 'Completed');

-- OrderItems Table
INSERT INTO `OrderItems` (`OrderID`, `PosterSizeID`, `Quantity`, `Price`) VALUES
(1, 1, 2, 15.00),  -- Order 1, Mountain Landscape x2 (Small)
(1, 3, 1, 40.00),  -- Order 1, Abstract Art x1 (Large)
(2, 2, 1, 28.00),  -- Order 2, Cityscape at Night x1 (Medium)
(3, 4, 3, 25.00),  -- Order 3, Wildlife Photography x3 (Small)
(4, 5, 2, 30.00);  -- Order 4, Abstract Art x2 (Medium)
