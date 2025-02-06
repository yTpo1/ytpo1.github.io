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


Example, convert `(foo.md)` to `(foo.html)`:
```bash
sed -i 's/\.md"/\.html"/g'
```
* `\.md"`: The pattern to search for. Here:
    * `\.`: matches a literal dot `.`
    * `md"`: matches the string
* `\.html"`: The replacement string
* `g`: The global flag. It tells sed to replace all occurrences of the pattern in each line, not just for the first one.


Example, convert `(foo.md#topic)` to `(foo.html#topic)`:
```bash
sed -i 's/\.md\(#*\)/\.html\1/g' ${file%.*}.html
```
* `s/`: Start the substitution command
* `\.md\(#*\)/`: The search pattern. `\.` matches a literal dot, `md` matches the string "md", and `\(#*\)` captures zero or more `#` characters
* `.html\1/`: The replacement pattern. `.html` is the replacement string, and `\1` refers to the captured group of `#` characters.
