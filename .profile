# .profile

export TERMINAL="termite"
export EDITOR="nvim"
export BROWSER="palemoon"
export READER="zathura"

export WM="bspwm"

export INTERNET_IS_PRECIOUS="true"

export HOME_BIN="$HOME/.local/bin"
export BIN_HOME="$HOME_BIN"
export PROSJEKTER="$HOME/prosjekter"

# Golang
export GOPATH="$HOME/go"

# Path
export PATH="$GOPATH/bin:$PATH"
export PATH="$(du "$BIN_HOME/" | cut -f2 | tr '\n' ':'):$PATH"

# XDG variables
## User directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
## System directories
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

# Xorg
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"

[ ! $DISPLAY ] && [ $XDG_VTNR -eq 1 ] && exec startx "$XINITRC"

sudo -n loadkeys "$XDG_CONFIG_HOME/keymaps/ttymap.kmap" 2>/dev/null

