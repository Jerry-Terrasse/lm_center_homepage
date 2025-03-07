#!/bin/bash

set -e

rm -rf ./public
hugo build -b https://cs.nju.edu.cn/lm/
python update_index.py
cp ./public/index.html ./public/index.htm

rm -f release.zip
cd public
zip -r ../release.zip . -x "*.mp4" "*.jpg" "*.png"