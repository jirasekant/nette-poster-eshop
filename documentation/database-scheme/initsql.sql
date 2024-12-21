-- Drop tables if they exist
DROP TABLE IF EXISTS `OrderItems`;
DROP TABLE IF EXISTS `Orders`;
DROP TABLE IF EXISTS `CartItems`;
DROP TABLE IF EXISTS `Carts`;
DROP TABLE IF EXISTS `PosterSizes`;
DROP TABLE IF EXISTS `PosterImages`;
DROP TABLE IF EXISTS `PosterCategories`;
DROP TABLE IF EXISTS `Posters`;
DROP TABLE IF EXISTS `Categories`;
DROP TABLE IF EXISTS `Users`;
DROP TABLE IF EXISTS `Authors`;

-- Create Users table
CREATE TABLE `Users` (
  `UserID` INT PRIMARY KEY AUTO_INCREMENT,
  `Username` VARCHAR(50) UNIQUE NOT NULL,
  `PasswordHash` VARCHAR(255) NOT NULL,
  `Email` VARCHAR(100) UNIQUE NOT NULL,
  `CreatedAt` DATETIME DEFAULT (CURRENT_TIMESTAMP)
);

-- Create Categories table
CREATE TABLE `Categories` (
  `CategoryID` INT PRIMARY KEY AUTO_INCREMENT,
  `CategoryName` VARCHAR(100) NOT NULL,
  `ParentCategoryID` INT
);

-- Create Posters table
CREATE TABLE `Posters` (
  `PosterID` INT PRIMARY KEY AUTO_INCREMENT,
  `PosterName` VARCHAR(100) NOT NULL,
  `Description` TEXT,
  `AuthorID` INT,
  `Stock` INT DEFAULT 0
);

-- Create PosterCategories table
CREATE TABLE `PosterCategories` (
  `PosterCategoryID` INT PRIMARY KEY AUTO_INCREMENT,
  `PosterID` INT,
  `CategoryID` INT
);

-- Create PosterImages table
CREATE TABLE `PosterImages` (
  `PosterImageID` INT PRIMARY KEY AUTO_INCREMENT,
  `PosterID` INT,
  `ImageURL` VARCHAR(255) NOT NULL
);

-- Create PosterSizes table
CREATE TABLE `PosterSizes` (
  `PosterSizeID` INT PRIMARY KEY AUTO_INCREMENT,
  `PosterID` INT,
  `Size` ENUM('Small','Medium','Large') NOT NULL,
  `Price` DECIMAL(10,2) NOT NULL
);

-- Create Carts table
CREATE TABLE `Carts` (
  `CartID` INT PRIMARY KEY AUTO_INCREMENT,
  `UserID` INT,
  `CreatedAt` DATETIME DEFAULT (CURRENT_TIMESTAMP)
);

-- Create CartItems table
CREATE TABLE `CartItems` (
  `CartItemID` INT PRIMARY KEY AUTO_INCREMENT,
  `CartID` INT,
  `PosterSizeID` INT,
  `Quantity` INT NOT NULL DEFAULT 1
);

-- Create Orders table
CREATE TABLE `Orders` (
  `OrderID` INT PRIMARY KEY AUTO_INCREMENT,
  `UserID` INT,
  `CartID` INT,
  `OrderDate` DATETIME DEFAULT (CURRENT_TIMESTAMP),
  `TotalAmount` DECIMAL(10,2) NOT NULL,
  `Status` ENUM('Pending','Completed','Cancelled') DEFAULT 'Pending'
);

-- Create OrderItems table
CREATE TABLE `OrderItems` (
  `OrderItemID` INT PRIMARY KEY AUTO_INCREMENT,
  `OrderID` INT,
  `PosterSizeID` INT,
  `Quantity` INT NOT NULL DEFAULT 1,
  `Price` DECIMAL(10,2) NOT NULL
);

-- Create Authors table
CREATE TABLE `Authors` (
  `AuthorID` INT PRIMARY KEY AUTO_INCREMENT,
  `Name` VARCHAR(100) NOT NULL
);

-- Create indexes
CREATE UNIQUE INDEX `PosterCategories_index_0` ON `PosterCategories` (`PosterID`, `CategoryID`);
CREATE UNIQUE INDEX `PosterSizes_index_1` ON `PosterSizes` (`PosterID`, `Size`);
CREATE UNIQUE INDEX `CartItems_index_2` ON `CartItems` (`CartID`, `PosterSizeID`);

-- Add comments to tables
ALTER TABLE `Users` COMMENT = 'Stores user information.';
ALTER TABLE `Categories` COMMENT = 'Categories can have a parent category for hierarchical structure.';
ALTER TABLE `Posters` COMMENT = 'Stores poster details.';
ALTER TABLE `PosterCategories` COMMENT = 'Represents a many-to-many relationship between Posters and Categories.';
ALTER TABLE `PosterImages` COMMENT = 'Stores multiple images for a single poster.';
ALTER TABLE `PosterSizes` COMMENT = 'Stores price details for different sizes of posters.';
ALTER TABLE `Carts` COMMENT = 'Represents user carts for adding posters before purchase.';
ALTER TABLE `CartItems` COMMENT = 'Many-to-many relationship between Carts and Posters with specific sizes.';
ALTER TABLE `Orders` COMMENT = 'Tracks completed orders.';
ALTER TABLE `OrderItems` COMMENT = 'Stores the price of the poster at the time of the order to ensure consistency.';

-- Add foreign key constraints
ALTER TABLE `Categories` ADD FOREIGN KEY (`ParentCategoryID`) REFERENCES `Categories` (`CategoryID`);
ALTER TABLE `Posters` ADD FOREIGN KEY (`AuthorID`) REFERENCES `Authors` (`AuthorID`);
ALTER TABLE `PosterCategories` ADD FOREIGN KEY (`PosterID`) REFERENCES `Posters` (`PosterID`);
ALTER TABLE `PosterCategories` ADD FOREIGN KEY (`CategoryID`) REFERENCES `Categories` (`CategoryID`);
ALTER TABLE `PosterImages` ADD FOREIGN KEY (`PosterID`) REFERENCES `Posters` (`PosterID`);
ALTER TABLE `PosterSizes` ADD FOREIGN KEY (`PosterID`) REFERENCES `Posters` (`PosterID`);
ALTER TABLE `Carts` ADD FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);
ALTER TABLE `CartItems` ADD FOREIGN KEY (`CartID`) REFERENCES `Carts` (`CartID`);
ALTER TABLE `CartItems` ADD FOREIGN KEY (`PosterSizeID`) REFERENCES `PosterSizes` (`PosterSizeID`);
ALTER TABLE `Orders` ADD FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);
ALTER TABLE `Orders` ADD FOREIGN KEY (`CartID`) REFERENCES `Carts` (`CartID`);
ALTER TABLE `OrderItems` ADD FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`);
ALTER TABLE `OrderItems` ADD FOREIGN KEY (`PosterSizeID`) REFERENCES `PosterSizes` (`PosterSizeID`);
