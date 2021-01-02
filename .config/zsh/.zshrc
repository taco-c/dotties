# .zshrc

# Fixes for the Home, End and Delete buttons
bindkey "\e[H" beginning-of-line
bindkey "\e[1~" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[P" delete-char
bindkey "\e[3~" delete-char

HISTFILE="$XDG_DATA_HOME/zsh/histfile"
HISTSIZE=10000
SAVEHIST=10000

# PROMPT
source /usr/share/git/completion/git-prompt.sh
setopt PROMPT_SUBST

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
#GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_HIDE_IF_PWD_IGNORED=true
#GIT_PS1_SHOWUPSTREAM="auto"

PS1='%B%F{yellow}%~%f%b '
RPROMPT='$(__git_ps1 " %s")'

setopt appendhistory autocd extendedglob nomatch notify
setopt HIST_IGNORE_DUPS
unsetopt beep
#bindkey -v

# Plugins
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit && compinit
 autoload -U colors && colors

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
[ -f "$XDG_CONFIG_HOME/aliases" ] && source "$XDG_CONFIG_HOME/aliases"
