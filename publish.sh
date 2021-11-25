#!/bin/sh

bundle exec jekyll build

cp -r _site/category .

git add .
git commit -m "auto-generated commit"
git push
