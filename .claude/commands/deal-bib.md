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
	language = {en},
	booktitle = {Full Conference Proceedings Name},
	url = {https://arxiv.org/abs/XXXX.XXXXX},
	author = {Last, First and Last, First and Last, First},
	year = {YYYY},
}
```

### 4. **Field Formatting Rules**:
- **title**: Lowercase except for proper nouns protected with braces `{ProperNoun}`
- **language**: Always `{en}` for English papers
- **booktitle**: Full conference proceedings name
- **url**: Preserve original arXiv or paper URLs
- **author**: Standard BibTeX author format with "and" separators
- **year**: Publication year

### 5. **Conference-Specific Booktitle Templates**:
- **CVPR**: `Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition`
- **ICCV**: `Proceedings of the IEEE/CVF International Conference on Computer Vision`
- **ECCV**: `Proceedings of the European Conference on Computer Vision`
- **ICML**: `Proceedings of the International Conference on Machine Learning`
- **NeurIPS**: `Proceedings of the Neural Information Processing Systems`
- **ICLR**: `Proceedings of the International Conference on Learning Representations`

## Processing Steps

### Phase 1: Analysis and Preparation
1. **Read Source BibTeX File**: Load and analyze current format
2. **Identify Conference Type**: Determine appropriate booktitle based on filename or content
3. **Extract Entry Information**: Parse existing entries and identify required transformations

### Phase 2: Format Standardization
4. **Update Entry Types**: Convert `@article` to `@conference`
5. **Standardize Citation Keys**: Apply `lastname_shorttitle_year` format
6. **Transform Titles**:
   - Convert to lowercase
   - Protect proper nouns with braces
   - Handle special cases (abbreviations, model names)
7. **Add Missing Fields**:
   - `language = {en}`
   - Appropriate `booktitle` for the conference
   - Preserve existing `url` fields

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

## Usage Examples

```bash
# Process ICCV papers
/deal-bib bibtex/iccv2025.bib

# Process with explicit conference type
/deal-bib bibtex/papers2025.bib --conference=ICML

# Process any BibTeX file (auto-detect conference)
/deal-bib path/to/papers.bib
```

## Quality Validation

After processing, the command verifies:
- All entries use `@conference` type
- Citation keys follow naming convention
- Required fields are present
- Proper nouns are correctly protected
- URLs are functional and preserved
- Author names are properly formatted
- Conference name is accurate and complete

This standardization ensures that Hugo's academic theme can properly display:
- Complete conference names instead of generic "arXiv preprint"
- Clickable URLs for paper access
- Consistent formatting across all publication listings
- Proper sorting and categorization by venue