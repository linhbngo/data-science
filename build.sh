#!/bin/bash

jekyll build
cp -R _site/* ../data-science

cd ../data-science
git pull
git add .
git commit -m "update"
git push origin gh-pages
