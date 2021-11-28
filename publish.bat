del /f /s /q category 1>nul
rmdir /q category
del /f /s /q _site 1>nul
rmdir /q _site

echo n | START /wait bundle exec jekyll build

echo D | xcopy "_site/category" "category"

git add .
git commit -m "auto-generated commit"
git push
