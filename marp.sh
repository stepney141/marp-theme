#!/bin/bash

outDir="./exports"

if [[ "$2" == "--pdf" ]]; then
    suffix="pdf"
elif [[ "$2" == "--html" ]]; then
    suffix="html"
else
    echo "Error!: invalid suffix" >&2
    exit 1
fi

filename=$(basename -s .md "$1")
echo "$filename"

npx marp "$1" --theme-set ./s141-marp-slide.css -o ./${outDir}/"${filename}"."${suffix}"
