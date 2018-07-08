#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
mkdir -p $DIR/pdf
for f in $DIR/*.tex; do
    cd $(dirname "${f}")
    pdflatex -quiet -halt-on-error -file-line-error \
        -output-directory=$DIR/pdf "$f" > /dev/null 2>&1
done
