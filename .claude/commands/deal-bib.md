---
allowed-tools: Read, Edit, MultiEdit
argument-hint: [bibtex-file-path]
description: Standardize BibTeX file format for Hugo academic theme compatibility
---

I will standardize a BibTeX file to match the established format used in the Hugo academic theme, ensuring proper display of conference names and clickable URLs.

## Target Format Standards

Based on `bibtex/cvpr2025.bib`, the standardized format includes:

### 1. **Entry Type**: `@conference` (not `@article`)
### 2. **Citation Key Format**: `lastname_shorttitle_year`
   - Use first author's last name in lowercase
   - Use abbreviated title (2-3 key words)
   - Include publication year

### 3. **Required Fields**:
```bibtex
@conference{yang_mobileviclip_2025,
	title = {Standardized title format},
	booktitle = {Full Conference Proceedings Name},
	url = {https://arxiv.org/abs/XXXX.XXXXX},
	author = {Last, First and Last, First and Last, First},
	year = {YYYY},
	date = {YYYY-MM-DD},
}
```

### 4. **Field Formatting Rules**:
- **title**: Lowercase except for proper nouns protected with braces `{ProperNoun}`
- **booktitle**: Full conference proceedings name
- **url**: Preserve original arXiv or paper URLs
- **author**: Standard BibTeX author format with "and" separators
- **year**: Publication year
- **date**: Publication date in YYYY-MM-DD format (required for proper sorting)
- **language**: Optional field (not required)

### 5. **Conference-Specific Booktitle Templates**:
- **CVPR**: `Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition`
- **ICCV**: `Proceedings of the IEEE/CVF International Conference on Computer Vision`
- **ECCV**: `Proceedings of the European Conference on Computer Vision`
- **ICML**: `Proceedings of the International Conference on Machine Learning`
- **NeurIPS**: `Proceedings of the Neural Information Processing Systems`
- **ICLR**: `Proceedings of the International Conference on Learning Representations`

## Processing Steps

### Phase 1: Analysis and Preparation
1. **Create Backup**: Automatically backup original file to tmp directory
   ```bash
   cp bibtex/filename.bib tmp/filename_ori.bib
   ```
2. **Read Source BibTeX File**: Load and analyze current format
3. **Check for Date Fields**: Analyze if entries contain date information
4. **Request Date if Missing**: If no date fields found, prompt user for publication date
5. **Identify Conference Type**: Determine appropriate booktitle based on filename or content
6. **Extract Entry Information**: Parse existing entries and identify required transformations

### Phase 2: Format Standardization
4. **Update Entry Types**: Convert `@article` to `@conference`
5. **Standardize Citation Keys**: Apply `lastname_shorttitle_year` format
6. **Transform Titles**:
   - Convert to lowercase
   - Protect proper nouns with braces
   - Handle special cases (abbreviations, model names)
7. **Add Missing Fields**:
   - Appropriate `booktitle` for the conference
   - Add `year` field if missing
   - Add `date` field using user-provided or detected date
   - Preserve existing `url` fields
   - Optionally add `language = {en}` (not required)

### Phase 3: Quality Control
8. **Validate Format Consistency**: Ensure all entries follow the same pattern
9. **Check Special Characters**: Handle UTF-8 characters and special symbols
10. **Verify URLs**: Ensure all URLs are preserved correctly
11. **Author Format Check**: Standardize author name formatting

## Title Formatting Guidelines

### Proper Noun Protection Examples:
- `{MobileViCLIP}` → Model names
- `{SAM2}` → Specific system names
- `{MLLMs}` → Technical abbreviations
- `{VRBench}` → Dataset/benchmark names
- `{3D}` → Technical terms

### Capitalization Rules:
- First word: lowercase (unless proper noun)
- Subtitle after colon: lowercase
- Technical terms: case-sensitive protection with braces
- General words: all lowercase

## Expected Input and Output

**Input**: Path to BibTeX file (e.g., `bibtex/iccv2025.bib`)

**Processing**:
- Create backup of original file in tmp directory
- Analyze current format and identify conference type
- Apply standardization transformations
- Preserve all essential bibliographic information
- Update format for Hugo academic theme compatibility

**Output**:
- Standardized BibTeX file with consistent formatting
- Proper `@conference` entries with full conference names
- Protected proper nouns and technical terms
- Preserved URLs and author information
- Hugo-compatible format for publication displays

## Conference Detection Rules

The command will automatically detect conference type based on:
1. **Filename patterns**: `cvpr2025.bib`, `iccv2025.bib`, etc.
2. **Existing booktitle fields**: Extract conference from partial names
3. **Manual specification**: Accept conference type as optional parameter

## Date Handling

### Automatic Date Detection
The command will check for existing date fields in the BibTeX entries. If found, it will preserve them.

### User Date Input Required
If **no date fields** are found in any entries, the command will:
1. **Stop processing** and request user input
2. **Prompt for publication date** in YYYY-MM-DD format
3. **Apply the same date** to all entries in the file
4. **Resume processing** after date is provided

## Usage Examples

```bash
# Process ICCV papers (will request date if missing)
/deal-bib bibtex/iccv2025.bib
# If no dates found, you'll be prompted:
# "No date fields found. Please provide publication date (YYYY-MM-DD): "

# Process with explicit conference type
/deal-bib bibtex/papers2025.bib --conference=ICML

# Process any BibTeX file (auto-detect conference)
/deal-bib path/to/papers.bib
```

## Quality Validation

After processing, the command verifies:
- All entries use `@conference` type
- Citation keys follow naming convention
- Required fields are present (including date)
- Proper nouns are correctly protected
- URLs are functional and preserved
- Author names are properly formatted
- Conference name is accurate and complete
- Date fields are consistently formatted

This standardization ensures that Hugo's academic theme can properly display:
- Complete conference names instead of generic "arXiv preprint"
- Clickable URLs for paper access
- Consistent formatting across all publication listings
- Proper chronological sorting by publication date
- Accurate venue-based categorization