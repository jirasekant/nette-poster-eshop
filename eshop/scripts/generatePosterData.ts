import * as fs from 'fs';
import * as path from 'path';

type PosterData = {
    title: string;
    url: string;
    categoryTitle: string;
    imageUrl: string;
};

const POSTER_SIZES = {
    small: { price: 29.99 },
    medium: { price: 49.99 },
    large: { price: 79.99 }
};

const POSTERS_DIR = '../www/images/posters';
const OUTPUT_FILE = './generated_poster_data.sql';

function titleCase(str: string): string {
    return str.toLowerCase().split('-').map(word => 
        word.charAt(0).toUpperCase() + word.slice(1)
    ).join(' ');
}

function generateUrl(filename: string): string {
    return filename.toLowerCase().replace(/\s+/g, '-').replace(/\.jpg$/, '');
}

function scanPosters(baseDir: string): PosterData[] {
    const posters: PosterData[] = [];
    
    // Read category directories
    const categories = fs.readdirSync(baseDir)
        .filter(item => fs.statSync(path.join(baseDir, item)).isDirectory());

    categories.forEach(category => {
        const categoryPath = path.join(baseDir, category);
        const files = fs.readdirSync(categoryPath)
            .filter(file => file.endsWith('.jpg'));

        files.forEach(file => {
            const title = titleCase(file.replace(/-main\.jpg$/, ''));
            posters.push({
                title,
                url: generateUrl(file),
                categoryTitle: category,
                imageUrl: `/images/posters/${category}/${file}`
            });
        });
    });

    return posters;
}

function generateSQL(posters: PosterData[]): string {
    let sql = '-- Generated Poster Data\n\n';

    // Clear existing data
    sql += `DELETE FROM \`poster_category\`;\n`;
    sql += `DELETE FROM \`poster_image\`;\n`;
    sql += `DELETE FROM \`poster_size\`;\n`;
    sql += `DELETE FROM \`poster\`;\n`;
    sql += `DELETE FROM \`category\` WHERE \`category_id\` > 0;\n\n`;

    // Insert categories
    const categories = [...new Set(posters.map(p => p.categoryTitle))];
    sql += '-- Insert categories\n';
    categories.forEach((category, index) => {
        sql += `INSERT INTO \`category\` (\`title\`, \`description\`) VALUES
('${category}', '${category} collection of posters');\n`;
    });
    sql += '\n';

    // Insert posters
    sql += '-- Insert posters\n';
    posters.forEach((poster, index) => {
        const posterId = index + 1;
        sql += `INSERT INTO \`poster\` (\`title\`, \`url\`, \`description\`, \`stock\`, \`available\`) VALUES
('${poster.title}', '${generateUrl(poster.title)}', '${poster.title} - Beautiful ${poster.categoryTitle} poster', 50, 1);\n`;

        // Insert poster_category relation
        sql += `INSERT INTO \`poster_category\` (\`poster_id\`, \`category_id\`) 
SELECT ${posterId}, \`category_id\` FROM \`category\` WHERE \`title\` = '${poster.categoryTitle}';\n`;

        // Insert poster image
        sql += `INSERT INTO \`poster_image\` (\`poster_id\`, \`image_url\`) VALUES
(${posterId}, '${poster.imageUrl}');\n`;

        // Insert poster sizes
        Object.entries(POSTER_SIZES).forEach(([size, { price }]) => {
            sql += `INSERT INTO \`poster_size\` (\`poster_id\`, \`size\`, \`price\`) VALUES
(${posterId}, '${size}', ${price});\n`;
        });
        sql += '\n';
    });

    return sql;
}

try {
    console.log('Scanning posters directory...');
    const posters = scanPosters(path.resolve(__dirname, POSTERS_DIR));
    console.log(`Found ${posters.length} posters`);

    console.log('Generating SQL...');
    const sql = generateSQL(posters);

    fs.writeFileSync(path.resolve(__dirname, OUTPUT_FILE), sql);
    console.log(`SQL generated successfully to ${OUTPUT_FILE}`);
} catch (error) {
    console.error('Error:', error);
    process.exit(1);
} 