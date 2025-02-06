#!/bin/bash

notes_dir=ytpo1.github.io
server_dir=/srv/http

printf "Updating. Progress: "
for file in *.md; do 
    if [[ -f "$file" ]]; then

        pandoc --standalone --template 0_template.html "$file" -f gfm -o ${file%.*}.html

        # Repalace all .md links with .html
        # sed -i 's/\.md"/\.html"/g' ${file%.*}.html
        sed -i 's/\.md\(#*\)/\.html\1/g' ${file%.*}.html
        #sed -i 's/\/\/.md"/\/\.html"/g' ${file%.*}.html # doesn't work

        printf "."
    fi 
done

# To Do: loop to check if .html file has a corresponding .md file

# Publish
echo "Copying to $server_dir. "
sudo cp -r ../$notes_dir $server_dir

printf " Finished"
