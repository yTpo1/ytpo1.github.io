---
title: tmux
---

# tmux
tmux (Terminal Multiplexer). It allows users to manage multiple terminal sessions from a single window.

Configuration: `~/.tmux.conf`

## Hotkeys
* `ctrl+b c` Create a new window
* `ctrl+b n` & `ctrl+b p` Go to next window, Go to previous window
* `ctrl+[` Enter copy mode (allows scrolling)
    * scroll using `ctrl+u` & `ctrl+d`
    * `/` search
    * `q` to exit copy mode
* `ctrl+b d` Detatch from current session in current terminal

Split panes
* `ctrl+"` Create new window in horizontal split screen
* `ctrl+UP` `ctrl+Down` Change size of the current split pane
* `ctrl+!` Move split pane into its own window 
* `ctrl+j` & `ctrl+k` Focus on top/bottom pane

## Docs
* https://tmuxcheatsheet.com/