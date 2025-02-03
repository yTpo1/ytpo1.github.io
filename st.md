# ST "Suckless Terminal"
https://st.suckless.org/
The following is how I set up on my machine

## Step 1. Download and Installation
Get the source code.
```bash
cd /usr/local/src/
sudo git clone https://git.suckless.org/st  
cd st
sudo git checkout 0.8.4  
```

## Step 2. Patching
1. Put the .diff file in the git repo.  
I use the gruvbox theme. While still in the st directory.
```bash
wget https://st.suckless.org/patches/gruvbox/st-gruvbox-dark-0.8.2.diff
```

2. Use `patch` command  
-u (unified) option lets patch know that the patch file contains unified context lines.  
-r (recursive) option to make diff look into any sub-directories  
-N (new file)  
-d (directory) option tell patch which directory to work on.  
```bash
patch -ruN -d . < st-gruvbox-dark-0.8.2.diff  
```

## Step 3. Edit the config file. (My Tweaks)
Increase the font size to 24.  
> static char \*font = "Liberation Mono:pixelsize=24:antialias=true:autohint=true";  

## Step 4. Installation
To see available options:  
> make  

Then to install:  
> sudo make clean install  

Uninstalation:  
> sudo make clean uninstall

## Hotkeys
* Ctrl-Shift-y : Paste from primary selection (middle mouse button).  
* Ctrl-Shift-v : Paste from the clipboard selection.  
* Ctrl-Shift-c : Copy the selected text to the clipboard selection.  

Sources:  
https://www.howtogeek.com/415442/how-to-apply-a-patch-to-a-file-and-create-patches-in-linux/  
Luke Smith https://www.youtube.com/watch?v=FJmm7wl4JUI