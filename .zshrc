# .zshrc

bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "\e[3~" delete-char

HISTFILE="$XDG_DATA_HOME/zsh/histfile"
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v

zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

PROMPT='%F{yellow}[%1~]%f '

[ -f "$XDG_CONFIG_HOME/aliases" ] && source "$XDG_CONFIG_HOME/aliases"
