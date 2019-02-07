# .zshrc

# Fixes for the Home, End and Delete buttons
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "\e[3~" delete-char

HISTFILE="$XDG_DATA_HOME/zsh/histfile"
HISTSIZE=10000
SAVEHIST=10000
PROMPT='%F{yellow}[%1~]%f '

setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v

# Plugins
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit && compinit

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
[ -f "$XDG_CONFIG_HOME/aliases" ] && source "$XDG_CONFIG_HOME/aliases"
