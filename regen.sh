#!/bin/bash

printf "Progress: "
for file in *.md; do 
    if [ -f "$file" ]; then 
        printf "."
        pandoc --standalone --template template.html $file -o ${file%.*}.html
    fi 
done
printf " Finished"
