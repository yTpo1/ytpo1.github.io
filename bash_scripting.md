---
title: bash scripting
date: September 22, 2020
---

## Parameter expansion
It allows you to manipulate the value of variables in various ways, for example: extracting substrings, setting default values, removing parts of strings based on patterns, etc.
> ${var}

Usefull when working file names, for example, getting the extenshion of file, file name without the extension, etc.

Remove the shortest match of a pattern from the beginning:
> ${filename##*.} # example: file.gz.md -> gz.md

Remove the longest match of a pattern from the beginning:
> ${filename##*.} # example: file.tar.gz -> gz

Remove the shortest match of a pattern from the end:
> ${file%.*}  # example: file.md -> file

Remove the longest match of a pattern from the end:
> ${file%%.*}  # example: file.md -> file

Additional info:
* \## removes the longest matching pattern from the beginning of the variable's value
* *. matches everything up to and including the last dot (.) in the filename

## For loops

for each file in current directory with the extension of *.md
```
for file in *.md; do 
    if [ -f "$file" ]; then 
        echo "$file"
    fi 
done
```