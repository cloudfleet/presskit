#!/bin/bash
#
# Requirements
# 1.  Pandoc <http://pandoc.org/installing.html>
# 2.  TeX Live <https://www.tug.org/texlive/>

# Running
#     bash make-pdf.bash

# for now we will only use the single pdf, but with this we could generate
# individual pdfs

# for file in *.md; do
#     out=$(basename $file .md)
#     pandoc $file -o "$out".pdf
# done

tmp=all.md
cat README.md DESCRIPTION.md MENTIONS.md media-resources.md \
  sample-tech-article.md > $tmp
pandoc $tmp -o cloudfleet-presskit.pdf
rm $tmp
