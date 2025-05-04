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

# copy *.bib to *.txt (.bib file is not supported by the platform)
for bib in ./content/publication/*/cite.bib; do
    cp -v $bib ${bib%.bib}.txt
done