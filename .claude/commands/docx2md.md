---
allowed-tools: Bash(pandoc:*), Bash(mkdir:*), Bash(cp:*), Bash(ls:*), Bash(find:*), Read, Write, Edit, MultiEdit
argument-hint: [docx-file-path]
description: Convert DOCX to Hugo Blox-compatible Markdown with comprehensive post-processing
---

I will convert a DOCX file to Hugo Blox-compatible markdown format following the standardized academic website workflow. Here's the complete process I'll execute:

## Phase 1: Environment Setup and Prerequisites
1. **Verify Prerequisites**: Check that `pandoc` is installed and available
2. **Create Isolated Workspace**: Generate unique working directory:
   ```bash
   mkdir -p ./tmp/work_$(date +%Y%m%d_%H%M)_$(basename "$docx_file" .docx | tr '[:upper:]' '[:lower:]' | tr ' ' '_')
   cd ./tmp/work_$(date +%Y%m%d_%H%M)_$(basename "$docx_file" .docx | tr '[:upper:]' '[:lower:]' | tr ' ' '_')
   ```
3. **Copy Source File**: Copy DOCX file to working directory for isolated processing:
   ```bash
   cp "path/to/source.docx" ./document.docx
   ```

## Phase 2: Initial Conversion with Full Metadata Preservation
4. **Execute Pandoc Conversion**:
   ```bash
   pandoc "./document.docx" -t markdown --extract-media=extracted_images --standalone -o "document.md"
   ```
   - `--standalone`: Preserves document metadata including titles
   - `--extract-media`: Extracts all embedded images to organized directory
   - Output includes YAML front matter when available

## Phase 3: Hugo Blox Compatibility Post-Processing
5. **Title Structure Normalization**:
   - Remove main document title (`# Title`) for Hugo Blox text block compatibility
   - Convert all `## Section` to `### Section` (Hugo Blox uses ### for content sections)
   - Preserve content hierarchy while adjusting for YAML text block context

6. **Image Processing and Standardization**:
   - **Rename Strategy**: Convert generic names to semantic identifiers
     * `image1.png` → `stp.png` (for STP model)
     * `image2.png` → `spa.png` (for SPA model)
     * `image3.png` → `tramoe.png` (for Tra-MoE model)
     * `image4.png` → `tpm.png` (for TPM/planning model)
   - **Reference Update**: Transform to Hugo Blox format
     * From: `![Long descriptive text](extracted_images/media/image1.png){width="X" height="Y"}`
     * To: `![STP](stp.png)`
   - **File Management**: Copy renamed files to working directory root for easy access

7. **Academic Citation Transformation**:
   - **Detect Citation Patterns**: Identify multi-line author citations
   - **HTML Link Conversion**:
     * From:
       ```
       Author Name, Second Author, Third Author,
       Paper Title with Long Name,
       Conference/Journal 2025.
       ```
     * To:
       ```
       Author Name, Second Author, Third Author, <a href="PLACEHOLDER_ARXIV_URL" target="_blank">Paper Title with Long Name</a>, in Conference/Journal 2025.
       ```
   - **Placeholder Management**: Use `PLACEHOLDER_ARXIV_URL` for manual URL replacement
   - **Format Consistency**: Ensure "in Conference" format for proceedings

8. **Content Formatting and Cleanup**:
   - **Line Break Fixes**: Repair pandoc-induced awkward line breaks
   - **Spacing Normalization**: Ensure consistent paragraph spacing
   - **Technical Term Preservation**: Maintain proper spacing for terms like "6000 GPU小时"
   - **Name Formatting**: Fix split names like "Jitendra MALIK" back to "Jitendra MALIK"

## Phase 4: Quality Assurance and Validation
9. **Content Verification**:
   - Verify all images were extracted successfully
   - Check that all citations were properly converted
   - Ensure no content was lost during transformation
   - Validate markdown syntax correctness

10. **Hugo Blox Integration Readiness**:
    - Confirm title hierarchy matches target format (### for sections)
    - Verify image paths are simplified and accessible
    - Check that content can be directly copied to Hugo Blox `text:` blocks
    - Ensure proper indentation for YAML integration

## Phase 5: Output and Contextual Review Guidelines
11. **Generate Final Files**:
    - Primary output: `{document_name}_processed.md`
    - Image directory: renamed and organized image files
    - Working directory ready for next stage processing

12. **Dynamic Review Report**: Based on actual processing results, I will provide:
    - Specific PLACEHOLDER_ARXIV_URL instances found and their context
    - Image processing results and any issues encountered
    - Content transformation details and potential accuracy concerns
    - Specific sections requiring human verification based on complexity
    - Ready-to-use working directory path for next command

## Expected Input and Output
**Input**: DOCX file containing academic content with embedded images
**Arguments**:
- `$ARGUMENTS` or `$1`: Path to DOCX file (optional if file is in ./tmp/)

**Output**:
- Hugo Blox-compatible markdown with proper section hierarchy
- Standardized image files with semantic naming
- HTML-formatted citations ready for web display
- Integration guide for Hugo Blox YAML structure

**Reference Format**: Output matches `content/research/*/index.md` section[2]['content']['text'] format

If you provide a DOCX file path as an argument, I'll use that. Otherwise, I'll look for DOCX files in ./tmp/ and process them following this comprehensive conversion workflow.