---
title: sed
---

# sed
`sed` is a stream editor command using for parsing and transforming text.
`-i` This option tells sed to edit files in place. It means the  

Format:
```
s/pattern/replacement/flags
```
* `s`: Stands for substitution
* `/`: Delimiters that separate the pattern and the replacement.


Example:
```
's/\.md"/\.html"/g'
```
* `\.md"`: The pattern to search for. Here:
    * `\.`: matches a literal dot `.`
    * `md"`: matches the string
* `\.html"`: The replacement string
* `g`: The global flag. It tells sed to replace all occurrences of the pattern in each line, not just for the first one.