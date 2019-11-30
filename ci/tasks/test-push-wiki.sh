#!/usr/bin/env sh
git clone resource-example-wiki updated-resource-example-wiki
git config --global user.email "marug4580@gmail.com"
git config --global user.name "ak1ra24"

cd updated-resource-example-wiki

FILE="Wiki.md"
 
if [ -e $FILE ]; then
    echo "| date | time |\n" >> Wiki.md
    echo "|---|---|\n" >> Wiki.md
fi
export DATE=$(date '+%Y/%m/%d')
export TIME=$(date '+%R')
echo "|$DATE|$TIME|" >> Wiki.md

git add -A
git commit -m "Update wiki $DATE $TIME"
