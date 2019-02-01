# .xinitrc

[ -f ~/.Xkeymap ] && xkbcomp ~/.Xkeymap $DISPLAY

exec i3
