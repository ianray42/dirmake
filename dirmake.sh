#!/bin/bash

### dependencies: (1) sed

## assumes a file extension exists on input file
## removes extension, creates directory of same name as file
## moves original file to created directory

inputFilename="$1"
alteredFilename=""
alteredFilenameDir=""

alteredFilename=$(echo $1 | sed 's/\.[A-Za-z0-9]\{1,4\}$//')    # regex matches (1) dot (2) extension using any letter/digit from 1-4 char len (3) end of file marker

mkdir -v "$alteredFilename"

mv -v "$inputFilename" ./"$alteredFilename"/
