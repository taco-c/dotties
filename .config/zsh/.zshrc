# .zshrc

# Fixes for the Home, End and Delete buttons
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[3~" delete-char
bindkey "\e[P" delete-char

HISTFILE="$XDG_DATA_HOME/zsh/histfile"
HISTSIZE=10000
SAVEHIST=10000
PROMPT='%B%F{yellow}[%~]%f%b '

setopt appendhistory autocd extendedglob nomatch notify
setopt HIST_IGNORE_DUPS
unsetopt beep
#bindkey -v

# Plugins
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit && compinit

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
[ -f "$XDG_CONFIG_HOME/aliases" ] && source "$XDG_CONFIG_HOME/aliases"
