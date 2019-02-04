# .profile

export EDITOR="vim"
export BROWSER="palemoon"
export READER="zathura"

# XDG variables
## User directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
## System directories
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && startx

#if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#	exec startx
#fi

sudo -n loadkeys "$XDG_CONFIG_HOME/keymaps/ttymap.kmap" 2>/dev/null

