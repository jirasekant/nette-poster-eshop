import os
import re
from pathlib import Path
from typing import Optional, Tuple

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

def clean_image_name(filename: str) -> str:
    """Clean up the image name by removing common patterns"""
    name = filename
    # Remove file extension
    name = re.sub(r'\.(jpg|png|jpeg)$', '', name, flags=re.IGNORECASE)
    # Remove dimension suffixes (e.g., _360x, -1_360x)
    name = re.sub(r'[-_]\d+[_-]?\d*x$', '', name)
    # Remove P-number prefixes (e.g., P365, P376)
    name = re.sub(r'^[PX]\d+[-_]?', '', name)
    # Remove any remaining underscores or multiple dashes
    name = re.sub(r'[_-]+', '-', name)
    # Add space before numbers that are part of the title
    name = re.sub(r'([a-zA-Z])(\d+)', r'\1 \2', name)
    return name.strip('-')

def extract_author(filename: str) -> Tuple[Optional[str], str]:
    """Extract author name from filename if present and return (author, remaining_title)"""
    # Known author patterns
    known_authors = [
        'YayoiKusama', 'UtagawaHirokage', 'OharaKoson', 'MatsumotoHoji', 'Hokusai',
    ]
    
    # Try to find known authors
    for author in known_authors:
        if author.lower() in filename.lower():
            # Remove author from filename and return both parts
            title = filename.replace(author, '').strip('-_')
            # Add spaces to author name before capitals except first letter
            formatted_author = re.sub(r'(?<!^)(?=[A-Z])', ' ', author)
            return formatted_author, title
    
    return None, filename

def split_camel_case(text: str) -> str:
    """Split camelCase text into words with spaces"""
    # Add space before capital letters, but not at the start of the string
    return re.sub(r'(?<!^)(?=[A-Z])', ' ', text)

def clean_filename(filename: str) -> Tuple[str, Optional[str]]:
    """Clean up the filename to get a nice title and extract author if present"""
    # First clean up the image name
    name = clean_image_name(filename)
    
    # Extract author if present
    author, title = extract_author(name)
    
    # Replace dashes with spaces
    words = title.replace('-', ' ').split()
    
    # Process each word - handle camelCase and capitalization
    processed_words = []
    for word in words:
        # Split camelCase into separate words
        split_words = split_camel_case(word)
        processed_words.extend(split_words.split())
    
    # Join and title case the final result
    clean_title = ' '.join(word.capitalize() for word in processed_words)
    return clean_title, author

def generate_url(title: str) -> str:
    """Generate URL-friendly string"""
    return re.sub(r'[^a-z0-9-]', '', title.lower().replace(' ', '-'))

def test_filename_cleaning():
    """Test the filename cleaning with some example filenames"""
    test_files = [
        'P365-Peacock1_360x.png',
        'P376-Flowers1_360x.png',
        'YayoiKusama-PinkDots-1_360x.png',
        'X123-RedDots_360x.png',
        'OharaKoson-Peacock-2_360x.png'
    ]
    
    print("\nTesting filename cleaning:")
    print("-" * 50)
    for filename in test_files:
        clean_title, author = clean_filename(filename)
        print(f"\nOriginal: {filename}")
        print(f"Clean title: {clean_title}")
        if author:
            print(f"Author: {author}")
        print(f"URL: {generate_url(clean_title)}")
    print("-" * 50)

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
    sql.append('DELETE FROM `author`;')
    sql.append('DELETE FROM `category` WHERE `category_id` > 0;\n')
    
    # Track authors to avoid duplicates
    authors = {}  # name -> id mapping
    next_author_id = 1
    
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
                title, author = clean_filename(file)
                url = generate_url(title)
                image_url = f'/images/posters/{category}/{file}'
                
                # Handle author if present
                author_id = 'NULL'
                if author:
                    if author not in authors:
                        # Insert new author
                        sql.append(f"-- Author: {author}")
                        sql.append(f"INSERT INTO `author` (`author_id`, `name`) VALUES\n"
                                 f"({next_author_id}, '{author}');")
                        authors[author] = next_author_id
                        next_author_id += 1
                    
                    author_id = str(authors[author])
                    print(f'    Author: {author} (ID: {author_id})')
                
                # Insert poster
                sql.append(f"-- Poster: {title}")
                sql.append(f"INSERT INTO `poster` (`title`, `url`, `description`, `author_id`, `stock`, `available`) VALUES\n"
                          f"('{title}', '{url}', '{title} - Beautiful {category} poster', {author_id}, 50, 1);")
                
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
    if authors:
        print(f'Created {len(authors)} authors: {", ".join(authors.keys())}')

if __name__ == '__main__':
    # Run the test function first
    test_filename_cleaning()
    # Then run the main script
    main() 