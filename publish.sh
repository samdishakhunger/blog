#!/bin/sh

rm -rf category
rm -rf _site

bundle exec jekyll build

cp -r _site/category .

git add .
git commit -m "auto-generated commit"
git push

rm -rf category
