# .profile

export TERMINAL="termite"
export EDITOR="nvim"
export BROWSER="palemoon"
export READER="zathura"
export WM="dwm"
export ZDOTDIR="$HOME/.config/zsh"

#PATHs
export GOPATH="$HOME/go"
export BIN_HOME="$HOME/.local/bin"
export PATH="$GOPATH/bin:$BIN_HOME:$PATH"

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
#export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

#[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && startx "$XINITRC"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx "$XINITRC"
fi

#[ ! $DISPLAY ] && [ $XDG_VTNR -eq 1 ] exec startx "$XINITRC"

#sudo -n loadkeys "$XDG_CONFIG_HOME/keymaps/ttymap.kmap" 2>/dev/null

