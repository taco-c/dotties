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

PROMPT='%F{yellow}[%1~]%f '

alias ls="ls -hN --color=auto --group-directories-first"
alias ll="ls -lA"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias mkdir="mkdir -pv"
alias yt="youtube-dl -ic --add-metadata"
alias dotties="git --git-dir=$HOME/.dotties/ --work-tree=$HOME"
