# Nette Poster E-shop Documentation
## Notes
- Cleaning the filenames is not perfect, it will need further improvements
  - atm not caught cases example: P317-BauhausWeimar1_360x.png -> P317 Bauhausweimar1_360x
- The current version generates standard prices for all posters:
  - Small: $29.99
  - Medium: $49.99
  - Large: $79.99
- Each poster is set with a default stock of 50 items
- All posters are set as available by default

## Database Initialization

To initialize the database with all posters and categories, follow these steps:

1. First, drop your existing database (if any)
2. Run the initial database structure:
   ```sql
   SOURCE path/to/database-scheme/initsql.sql
   ```
   This creates all necessary tables and basic structure.

3. Generate SQL from poster images(or use the generated_poster_data.sql file):
   ```bash
   cd documentation
   python3 generate_poster_data.py
   ```
   This will:
   - Scan the `eshop/www/images/posters` directory
   - Find all poster images in category folders
   - Generate appropriate SQL inserts
   - Save the output to `database-scheme/generated_poster_data.sql`

4. Run the generated poster data:
   ```sql
   SOURCE path/to/database-scheme/generated_poster_data.sql
   ```
   This populates the database with:
   - Categories based on folder structure
   - Posters with cleaned titles
   - Poster images
   - Standard sizes and prices for each poster

## Poster Image Requirements

The script expects:
- Images to be organized in category folders (e.g., Art/, Fashion/, Kids/, etc.)
- Images can be either .jpg or .png
- Each category folder should contain the main poster images

## Future Improvements

The following improvements are planned for the data generation:

1. **Author Management**:
   - Add author data generation
   - Link posters to appropriate authors
   - Consider adding author metadata to image filenames or separate config

2. **Price Customization**:
   - Allow different price ranges for different categories
   - Support custom prices for specific posters
   - Consider adding price metadata

3. **Image Variants**:
   - Support multiple images per poster
   - Handle thumbnail and detail images
   - Better naming conventions for image variants

4. **Metadata Support**:
   - Add support for poster descriptions
   - Handle SEO metadata
   - Support for tags and additional categorization

5. **Data Validation**:
   - Add checks for image quality and size
   - Validate naming conventions
   - Ensure all required files are present


