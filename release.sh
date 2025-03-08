#!/bin/bash

set -e

rm -rf ./public
hugo build -b https://cs.nju.edu.cn/lm/

# Check if there are non-ASCII characters in the output
if find ./public -print | grep -P "[^\x00-\x7F]" > /dev/null; then
    echo -e "\033[31mError: Non-ASCII characters found in the output\033[0m"
    exit 1
fi

# Check if there are webp images in the output
if find ./public -type f -name "*.webp" | grep -q .; then
    echo -e "\033[31mError: webp images found in the output\033[0m"
    exit 1
fi

python update_index.py
cp ./public/index.html ./public/index.htm

rm -f release.zip
cd public
zip -r ../release.zip . -x "*.mp4" "*.jpg" "*.png"