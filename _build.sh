#!/bin/sh

mkdir output

for i in demografia gts mlde; do
  cd "$i"
  Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
  cd ..
  cp -r "$i/_book" "output/$i"
done

