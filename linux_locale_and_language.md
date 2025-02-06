# Linux. The current locale and language settings

Set hotkey to change keyboard language.
~/.config/i3/config
```bash
# toggle between english and russian languages
exec --no-startup-id /usr/bin/setxkbmap -option grp:ctrl_alt_toggle us,ru
```

Display current language in the status bar.
~/.config/i3blocks/keyboard_layout.sh
```bash
#!/bin/bash

VAR=$(xset -q|grep LED| awk '{ print $10 }')

case "$(xset -q|grep LED| awk '{ print $10 }')" in
  "00000000") KBD="eng" ;;
  "00000001") KBD="ENG" ;;
  "00001000") KBD="rus" ;;
  "00001001") KBD="RUS" ;;
  *) KBD="unknown" ;;
esac

get_layouts() {
	echo $(setxkbmap -query | grep layout | awk '{print $2}')
}

if [[ $(get_layouts) != "us,ru" ]]; then
	setxkbmap -option grp:ctrl_alt_toggle us,ru;
	notify-send "Switched to us,ru";
fi

echo $KBD
```
