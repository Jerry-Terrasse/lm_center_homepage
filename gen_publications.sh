#!/bin/bash

set -e

for bibfile in ./bibtex/*.bib; do
    echo "Importing publications from $bibfile..."
    academic import "$bibfile" ./content/publication/ --compact $@
done

# generate english version
echo "Generating English pages of publications..."
for pub in ./content/publication/*; do
    if [ -f $pub/index.md ]; then
        cp -v $pub/index.md $pub/index.en.md
    fi
done