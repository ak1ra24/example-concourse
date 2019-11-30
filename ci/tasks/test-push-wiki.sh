#!/usr/bin/env sh
git clone git@github.com:ak1ra24/example-concourse.git resource-example-wiki
git config --global user.email "marug4580@gmail.com"
git config --global user.name "ak1ra24"

cd resource-example-wiki

FILE="Wiki.md"
 
if [ -e $FILE ]; then
    echo "| date | time |\n" >> Home.md
    echo "|---|---|\n" >> Home.md
fi
export DATE=$(date '+%Y/%m/%d')
export TIME=$(date '+%R')
echo "|$DATE|$TIME|" >> Home.md

git add -A
git commit -m "Update wiki $DATE $TIME"
