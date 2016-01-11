#!/bin/bash
#
# Requirements
# 1.  Pandoc <http://pandoc.org/installing.html>
# 2.  TeX Live <https://www.tug.org/texlive/>

for file in *.md; do
    out=$(basename $file .md)
    pandoc $file -o "$out".pdf
done

tmp=all.md
cat README.md DESCRIPTION.md MENTIONS.md media-resources.md > $tmp
pandoc $tmp -o cloudfleet-presskit.pdf
rm $tmp
