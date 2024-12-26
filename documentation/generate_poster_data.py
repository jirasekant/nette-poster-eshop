import os
import re
from pathlib import Path

# Get the absolute path to the posters directory
SCRIPT_DIR = Path(__file__).parent.absolute()
POSTERS_DIR = (SCRIPT_DIR.parent / 'eshop' / 'www' / 'images' / 'posters').resolve()
OUTPUT_FILE = SCRIPT_DIR / 'database-scheme' / 'generated_poster_data.sql'

# Standard sizes and prices for all posters
POSTER_SIZES = {
    'small': 29.99,
    'medium': 49.99,
    'large': 79.99
}

def clean_filename(filename):
    """Clean up the filename to get a nice title"""
    # Remove file extension
    name = re.sub(r'\.(jpg|png)$', '', filename, flags=re.IGNORECASE)
    
    # Remove various prefixes and suffixes
    name = re.sub(r'-\d+_\d+x$', '', name)  # Remove size suffix like -1_360x
    name = re.sub(r'^[XP]\d+-', '', name)   # Remove X123- or P123- prefix
    name = re.sub(r'\d+_\d+x$', '', name)   # Remove any remaining size indicators
    
    # Special case for Bauhaus files
    if name.lower().startswith('bauhaus'):
        # Split "bauhausredsun" into "bauhaus red sun"
        name = re.sub(r'(?<=bauhaus)(?=[a-z])', ' ', name, flags=re.IGNORECASE)
    
    # Add spaces before capital letters in combined words
    name = re.sub(r'(?<!^)(?<![\s-])([A-Z][a-z])', r' \1', name)
    
    # Replace dashes and underscores with spaces
    name = name.replace('-', ' ').replace('_', ' ')
    
    # Remove duplicate spaces and split into words
    words = [w for w in name.split() if w]
    
    # Title case each word
    return ' '.join(word.capitalize() for word in words)

def generate_url(title):
    """Generate URL-friendly string"""
    # Convert to lowercase and replace spaces with dashes
    url = title.lower().replace(' ', '-')
    # Remove any characters that aren't alphanumeric or dashes
    url = re.sub(r'[^a-z0-9-]', '', url)
    # Remove multiple consecutive dashes
    url = re.sub(r'-+', '-', url)
    return url

def main():
    print(f'Script directory: {SCRIPT_DIR}')
    print(f'Looking for posters in: {POSTERS_DIR}')
    
    if not POSTERS_DIR.exists():
        print(f'Error: Posters directory not found at {POSTERS_DIR}')
        return
    
    # Store SQL statements
    sql = []
    sql.append('-- Generated Poster Data\n')
    
    # Clear existing data
    sql.append('DELETE FROM `poster_category`;')
    sql.append('DELETE FROM `poster_image`;')
    sql.append('DELETE FROM `poster_size`;')
    sql.append('DELETE FROM `poster`;')
    sql.append('DELETE FROM `category` WHERE `category_id` > 0;\n')
    
    # Scan directories
    categories = []
    
    # Get all category folders
    print('\nScanning for categories:')
    for item in os.listdir(POSTERS_DIR):
        item_path = POSTERS_DIR / item
        if item_path.is_dir() and not item.startswith('.'):
            categories.append(item)
            print(f'Found category: {item}')
    
    if not categories:
        print('Error: No category folders found!')
        return
    
    # Insert categories
    sql.append('-- Insert categories')
    for category in categories:
        sql.append(f"INSERT INTO `category` (`title`, `description`) VALUES\n"
                  f"('{category}', '{category} collection of posters');")
    sql.append('')
    
    # Process each category and its posters
    poster_id = 1
    total_images = 0
    
    print('\nScanning for posters:')
    for category in categories:
        category_path = POSTERS_DIR / category
        print(f'\nIn category {category}:')
        
        # Get all image files in category
        for file in os.listdir(category_path):
            if file.lower().endswith(('.jpg', '.png')) and not file.startswith('.'):
                print(f'  Found image: {file}')
                title = clean_filename(file)
                url = generate_url(title)
                image_url = f'/images/posters/{category}/{file}'
                
                # Insert poster
                sql.append(f"-- Poster: {title}")
                sql.append(f"INSERT INTO `poster` (`title`, `url`, `description`, `stock`, `available`) VALUES\n"
                          f"('{title}', '{url}', '{title} - Beautiful {category} poster', 50, 1);")
                
                # Link poster to category
                sql.append(f"INSERT INTO `poster_category` (`poster_id`, `category_id`)\n"
                          f"SELECT {poster_id}, `category_id` FROM `category` WHERE `title` = '{category}';")
                
                # Insert poster image
                sql.append(f"INSERT INTO `poster_image` (`poster_id`, `image_url`) VALUES\n"
                          f"({poster_id}, '{image_url}');")
                
                # Insert poster sizes
                for size, price in POSTER_SIZES.items():
                    sql.append(f"INSERT INTO `poster_size` (`poster_id`, `size`, `price`) VALUES\n"
                             f"({poster_id}, '{size}', {price});")
                
                sql.append('')  # Empty line for readability
                poster_id += 1
                total_images += 1
    
    if total_images == 0:
        print('\nError: No images found in any category!')
        return
    
    # Write to file
    print(f'\nWriting SQL to: {OUTPUT_FILE}')
    with open(OUTPUT_FILE, 'w') as f:
        f.write('\n'.join(sql))
    
    print(f'\nSuccess! Found {total_images} posters in {len(categories)} categories.')

if __name__ == '__main__':
    main() 