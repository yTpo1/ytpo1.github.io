# ZSH shell

Hotkeys:
* `ctrl + r`: open history with current text
* `ctrl + e`: open current text in vim
* `ctrl + space`: accept auto-suggestions

Plugin installation:
To do...

zsh functions:
To do...

#### Print out the code behind a zsh function
(to remind myself of what the function does).
Unfortunately comments are not visible.
```bash
whence -f foo
type -f foo
which foo
```

Which will print out:
```bash
foo () {
    echo hello
}
```

Source:
https://stackoverflow.com/questions/11478673/how-to-show-zsh-function-definition-like-bash-type-myfunc

Docs:
```bash
man zshbuiltins
```