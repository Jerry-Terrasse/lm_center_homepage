---
allowed-tools: Bash(mkdir:*), Bash(cp:*), Bash(ls:*), Bash(find:*), Bash(date:*), Bash(hugo:*), Read, Write, Edit, MultiEdit
argument-hint: [docx2md-work-directory]
description: Create Hugo post from docx2md output with validation and testing
---

I will create a complete Hugo post from `/docx2md` output, including post structure creation, content adaptation, validation, and testing. This command works with pre-processed markdown and images from `/docx2md`.

## Phase 1: Input Validation and Analysis
1. **Validate Input Directory**: Check that docx2md work directory exists and contains processed files
2. **Analyze Content**: Read processed markdown file and identify:
   - Title (from content or filename)
   - Content structure and length
   - Available images (renamed: stp.png, spa.png, etc.)
   - Publication type and appropriate tags
3. **Generate Post Metadata**: Extract date and create slug from content/filename

## Phase 2: Content Preparation for Post Format
4. **Content Fidelity Preservation**: Maintain strict adherence to original content
   - **No Content Modification**: Preserve all original text without alteration
   - **Format-Only Changes**: Apply only necessary formatting adjustments
   - **Original Structure**: Keep original section organization and flow
   - **Title Preservation**: Use original document title without modification
5. **Post Structure Adaptation**:
   - Extract original title from document
   - Generate summary from opening paragraph (without modification)
   - Preserve original content flow and organization
   - Identify appropriate cover image from available images

## Phase 3: Hugo Post Structure Creation
6. **Create Post Directory**:
   ```bash
   mkdir -p content/post/YYYY-MM-DD-slug-name
   ```
7. **Generate YAML Front Matter**: Create proper Hugo front matter following established patterns
   ```yaml
   ---
   title: "Title from original document"
   summary: "Generated summary highlighting key achievements"
   date: YYYY-MM-DD
   authors:
     - admin
   tags:
     - [auto-detected English tags only: accepted_papers, academia_news, conference, award, etc.]
   image:
     filename: cover.jpg
   ---
   ```
8. **Create Post Content Body**:
   - **Preserve Original Content**: Use original text without modification or simplification
   - **Format Enhancement Only**: Apply Hugo-compatible formatting without changing content
   - **Follow existing post format**: Analyze existing similar posts to understand the structure and formatting.
   - **Image Integration**: Insert enhanced image references with centered captions:
     ```
     ![STP](stp.png)

     <p style="text-align: center; font-size: 0.9em; color: #666; margin-top: 5px;">
     图：[原文图题]
     </p>
     ```
   - **Original Links**: Preserve all original external links and citations

## Phase 4: Image Processing and Organization
9. **Copy and Process Images**: Move images from docx2md output to post directory
   - Copy all processed images (stp.png, spa.png, etc.)
   - Select appropriate cover image
   - Rename images for post context if needed
   - Update image references in markdown content

## Phase 5: Bilingual Support
10. **Create English Version**: Generate `index.en.md`
    - Copy Chinese version structure
    - Maintain same image references and structure
    - Preserve technical terms and paper citations

## Phase 6: Content Validation and Quality Check
11. **Content Validation**:
    - Markdown syntax verification
    - Image reference validation
    - Front matter YAML syntax check
    - Hugo post format compliance
12. **Quality Assurance**:
    - Verify content readability for general audience
    - Check that technical achievements are clearly explained
    - Ensure proper attribution and citations
    - Validate publication date and metadata

## Phase 7: Build Testing and Integration
13. **Local Hugo Build Test**:
    ```bash
    hugo server -D --bind=0.0.0.0 --port=1313
    ```
14. **Integration Testing**:
    - Verify post appears in post listing
    - Check post page renders correctly
    - Test image loading and display
    - Validate navigation and links
15. **Error Detection**: Monitor for build errors or warnings

## Phase 8: Final Validation and Reporting
16. **Generate Comprehensive Report**:
    - File structure verification
    - Content transformation summary
    - Image processing status
    - Build test results
    - Integration test outcomes
17. **Create Manual Review Checklist**: Provide specific action items for human verification

## Expected Input and Output
**Input**: `$ARGUMENTS` or `$1` - Path to `/docx2md` work directory containing:
- Processed markdown file (with Hugo Blox format)
- Renamed images (stp.png, spa.png, tramoe.png, tpm.png, etc.)
- Any additional extracted media

**Output**:
- Complete post structure in `content/post/YYYY-MM-DD-slug/`
- Both Chinese (`index.md`) and English (`index.en.md`) versions
- Properly organized images optimized for web
- Hugo-compatible post content adapted for general audience
- Build validation results
- Detailed manual review checklist

**Content Transformation**:
- Original content → Hugo post format (structure only)
- Technical details → Preserved exactly as written
- Academic citations → Enhanced with proper HTML links
- Original structure → Maintained with format optimization only

## Contextual Review Report
After completion, I'll provide a specific checklist based on actual processing results:
- Issues encountered during content transformation
- Specific technical terms that may need review for accessibility
- Image processing results and any quality concerns
- External links and citations that need verification
- Content sections that required significant adaptation
- Build test results and any errors found
- Specific translation needs for the English version
- Post categorization recommendations based on content analysis (English tags only: accepted_papers, academia_news, conference, award, etc.)

**Usage**: First run `/docx2md path/to/document.docx`, review output, then run `/new-post path/to/docx2md/work/directory`