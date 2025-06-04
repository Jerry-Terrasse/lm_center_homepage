#!/bin/bash

set -e

# Get the date one week ago
WEEK_AGO=$(date -d '7 days ago' '+%Y-%m-%d')

echo "Looking for image files modified since: $WEEK_AGO"

# Get list of image files modified in the last week from git history
RECENT_IMAGES=$(git log --since="$WEEK_AGO" --name-only --pretty=format: --diff-filter=AM | \
    grep -E '\.(jpg|jpeg|png|gif|svg|webp)$' | \
    sort | uniq | \
    grep -v '^$')

if [ -z "$RECENT_IMAGES" ]; then
    echo "No image files modified in the last week."
    exit 0
fi

echo "Recent image files found:"
echo "$RECENT_IMAGES"

# Create set to store target directories (avoid duplicates)
TARGET_DIRS=""

# Process each recent image file and map to target directories
while IFS= read -r img_file; do
    if [ -z "$img_file" ]; then
        continue
    fi

    echo "Processing: $img_file"

    # Map source directories to target directories using case statement
    case "$img_file" in
        static/images/*)
            # static/images/* -> public/images/
            target_dir="images"
            ;;
        assets/media/*)
            # assets/media/* -> public/media/
            target_dir="media"
            ;;
        content/*/*)
            # content/category/name/* -> public/category/name/
            category=$(echo "$img_file" | cut -d'/' -f2)
            name=$(echo "$img_file" | cut -d'/' -f3)
            target_dir="$category/$name"
            ;;
        *)
            echo "  Warning: Unknown source pattern for $img_file, skipping"
            continue
            ;;
    esac

    # Add to target directories list if not already present
    if [[ ! " $TARGET_DIRS " =~ " $target_dir " ]]; then
        TARGET_DIRS="$TARGET_DIRS $target_dir"
        echo "  Mapped to target directory: $target_dir"
    fi

done <<< "$RECENT_IMAGES"

# Check if we have any target directories
if [ -z "$TARGET_DIRS" ]; then
    echo "No target directories found."
    exit 0
fi

echo ""
echo "Target directories to be packaged:"
for dir in $TARGET_DIRS; do
    echo "  public/$dir"
done

# Create the zip file
if [ -f "release_with_recent_images.zip" ]; then
    echo ""
    echo "Warning: release_with_recent_images.zip already exists, will update it"
else
    echo ""
    echo "Creating release_with_recent_images.zip"
    cd public
    zip -r ../release_with_recent_images.zip . -x "*.mp4" "*.jpg" "*.png"
    cd ..
fi

cd public

# Package each target directory
for dir in $TARGET_DIRS; do
    if [ -d "$dir" ]; then
        echo "Adding directory: $dir"
        zip -ru ../release_with_recent_images.zip "$dir" || true # ignore zip-had-nothing-to-update
    else
        echo "Warning: Directory $dir does not exist in public/"
    fi
done

cd ..

if [ -f "release_with_recent_images.zip" ]; then
    echo ""
    echo "Package created: release_with_recent_images.zip"
    echo "Included images:"
    unzip -l release_with_recent_images.zip | awk '{print $4}' | grep -E '\.(jpg|png)$'
    echo ""
    echo "Total files: $(unzip -l release_with_recent_images.zip | tail -1 | awk '{print $2}')"
else
    echo "Failed to create package."
    exit 1
fi
