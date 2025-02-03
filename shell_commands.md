---
title: Basic Shell Commands (Terminal Commands)
---

# Basic Shell Commands (Terminal Commands)

`cat`, `cd`, `cp`, `echo`, `ls`, `mkdir`, `rm`, `rmdir`, `touch`  

Less commonly used:
`htop`, `man`, `uname`,

`cp`:
```bash
# Copy a file
cp source.txt destination.txt

# Copy a directory
cp -r source destination
```

## Command Substitution

This is command substitution. It runs the command inside the parentheses and substitutes the output in its place.
```bash
$(...)
```