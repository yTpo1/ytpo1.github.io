---
title: bash scripting
---

# BASH scripting

## first line
```
#!/bin/bash
```

## Variables
Defining a variable:
```
my_name=Jon
```

Referencing (using) a variable:
```
$my_name
```



## &&
&& means "and if successful"

## A Unix pipe |

## ||

## >

## ; 

## then

## if statement

Single `[ ... ]` vs double `[[ ... ]]` brackets
Using double brackets `[[ ... ]]` in bash scripting provides several advantages over single brackets `[ ... ]`:
1. **Enhanced Syntax**: Double brackets support more complex conditional expressions, such as pattern matching `=~`, logical operators `&&, ||`, and arithmetic comparisons without needing to escape special characters.
2. **Safer Variable Handling**: Double brackets handle variables with spaces or special characters more safely, reducing the risk of syntax errors.
3. **No Word Splitting or Filename Expansion**: Inside double brackets, word splitting and filename expansion are not performed, which can prevent unexpected behaviour.
The result is a more robust and less prone to errors script.
```
if [[ -f "$file" ]]; then
    echo "$file"
fi
```

## Parameter expansion
It allows you to manipulate the value of variables in various ways, for example: extracting substrings, setting default values, removing parts of strings based on patterns, etc.

```
${var}
```

Usefull when working file names, for example, getting the extenshion of file, file name without the extension, etc.

Remove the shortest match of a pattern from the beginning:

```
# example: file.gz.md -> gz.md
${filename##*.} 
```

Remove the longest match of a pattern from the beginning:

```
# example: file.tar.gz -> gz
${filename##*.}
```

Remove the shortest match of a pattern from the end:

```
# example: file.md -> file
${file%.*}
```

Remove the longest match of a pattern from the end:
```
# example: file.md -> file
${file%%.*}
```

Additional info:

* `##` removes the longest matching pattern from the beginning of the variable's value
* `*.` matches everything up to and including the last dot `.` in the filename

## For loops

For each file in current directory with the extension of *.md
```bash
for file in *.md; do 
    # Using double quotes around $file is a good practice in bash scripting.
    # Using double quotes ensures that the script handles filenames with spaces or special characters correctly
    if [ -f "$file" ]; then 
        echo "$file"
    fi 
done
```