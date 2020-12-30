# .profile

export TERMINAL="urxvt"
export EDITOR="nvim"
export BROWSER="firefox"
export READER="zathura"
export WM="bspwm"
export ZDOTDIR="$HOME/.config/zsh"

# XDG variables
## User directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
## System directories
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

#PATHs
export GOPATH="$XDG_DATA_HOME/go:$HOME/go"
export BIN_HOME="$HOME/.local/bin"
export PATH="$XDG_DATA_HOME/go/bin:$HOME/go/bin:$BIN_HOME:$PATH"

# Xorg
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
#export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

export LESSHISTFILE=-
#export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"

#[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && startx "$XINITRC"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx "$XINITRC"
fi

#[ ! $DISPLAY ] && [ $XDG_VTNR -eq 1 ] exec startx "$XINITRC"

#sudo -n loadkeys "$XDG_CONFIG_HOME/keymaps/ttymap.kmap" 2>/dev/null

