# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Hugo-based academic website for the Large Model Center at Nanjing University (南京大学大模型研究协同创新中心). It uses the Hugo Blox Builder (formerly Academic) theme for creating academic homepages and research group websites.

## Development Commands

### Local Development
```bash
# Install Hugo (version 0.136.5+ required)
# Start local development server
hugo serve -D

# Build for production
./release.sh
```

### Publication Management
```bash
# Import publications from BibTeX files (requires academic CLI tool)
./gen_publications.sh

# Install academic tool if needed:
uv tool install academic
# or pip install academic==0.11.2
```

### Release and Packaging
```bash
# Create standard release package (excludes videos and images)
./release.sh

# Create package with recent images only (last 7 days)
./pack_with_recent_images.sh
```

### Python Scripts
```bash
# Update index files
python update_index.py

# Process cover images
python deal_cover.py ./path/to/cover.jpg
```

## Script Details

### `release.sh` - Production Build and Quality Control
This script performs a complete production build with strict quality checks:
1. **Publication Import**: Runs `gen_publications.sh` to import latest BibTeX files
2. **Hugo Build**: Builds site with production URL (`https://cs.nju.edu.cn/lm/`)
3. **Quality Checks**:
   - Validates no non-ASCII characters in file paths (fails build if found)
   - Ensures no WebP images in output (platform compatibility requirement)
4. **URL Fixing**: Runs `update_index.py` to fix URL patterns
5. **Index Duplication**: Creates `index.htm` copy for platform compatibility
6. **Packaging**: Creates `release.zip` with options:
   - Default: Excludes videos (.mp4) and images (.jpg, .png)
   - `--with-images`: Excludes only videos
   - `--with-all`: Includes everything

### `update_index.py` - URL Pattern Normalization
Fixes Hugo's directory-style URLs to explicit `.html` extensions for static hosting:
- Converts `/research/` → `/research/index.html`
- Converts `/publication/some-paper/` → `/publication/some-paper/index.html`
- Converts `/publication/some-paper/cite.bib` → `/publication/some-paper/cite.txt`
- Handles pagination URLs and language variants
- Essential for platforms that don't support directory-style routing

### `deal_cover.py` - Academic Paper Cover Image Processor
Standardizes paper cover images to consistent dimensions and format:
- **Input**: Any image file (typically paper screenshots or covers)
- **Processing**:
  - Crops 10px border to remove potential black edges
  - Resizes to fit within 3000×1700 canvas while maintaining aspect ratio
  - Centers image on white background
  - Outputs as high-quality JPEG
- **Output**: `{original_name}_deal.jpg` in same directory
- **Use Case**: Creating uniform cover images for publication pages

### `pack_with_recent_images.sh` - Smart Incremental Packaging
Creates optimized packages containing only recently modified images:
- **Detection**: Uses Git history to find images modified in last 7 days
- **Mapping**: Maps source paths to deployment paths:
  - `static/images/*` → `public/images/`
  - `assets/media/*` → `public/media/`
  - `content/category/name/*` → `public/category/name/`
- **Packaging**: Updates existing `release_with_recent_images.zip` with only changed directories
- **Purpose**: Efficient deployment updates without transferring entire site

## Architecture

### Content Structure
- `content/`: Main content directory with multilingual support (Chinese default, English secondary)
  - `content/research/`: Research group pages
  - `content/publication/`: Auto-generated publication pages from BibTeX
  - `content/post/`: News and blog posts
  - `content/_index.md`: Homepage configuration with Hugo Blox sections

### Configuration
- `config/_default/`: Hugo configuration files
  - `hugo.yaml`: Main Hugo configuration (Chinese default language)
  - `params.yaml`: Theme parameters
  - `menus.yaml`: Navigation structure
  - `languages.yaml`: Multilingual settings

### Assets and Media
- `assets/media/`: Site media files that get processed
- `static/`: Static files served directly
- `layouts/`: Custom template overrides
- `data/`: YAML data files (e.g., languages.yaml)

### Build and Deployment
- Hugo version 0.136.5 (specified in hugoblox.yaml and workflows)
- Netlify deployment with Hugo cache plugin
- GitHub Actions workflow deploys to GitHub Pages from `dev-lm-center` branch
- Multiple build artifacts generated (with/without images/videos)

### Publication Workflow
1. Add BibTeX files to `bibtex/` directory
2. Run `./gen_publications.sh` to import via academic CLI
3. Script auto-generates both Chinese and English versions
4. Citation files converted from .bib to .txt for platform compatibility

### Bilingual Support
- Default language: Chinese (zh)
- Secondary language: English (en)
- Content files use `.md` (Chinese) and `.en.md` (English) naming convention
- Separate menu and parameter files for each language