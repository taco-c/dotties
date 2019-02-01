# .profile

export EDITOR="vim"
export BROWSER="palemoon"
export READER="zathura"

[ -f ~/.bashrc ] && source ~/.bashrc

[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && startx

#if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#	exec startx
#fi

sudo -n loadkeys ~/.ttymap.kmap 2>/dev/null

