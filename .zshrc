#if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ]; then
#  [ -z "${TMUX}" ] && { tmux attach || tmux; } >/dev/null 2>&1
#fi

export TERM=xterm-256color
export EDITOR=vim

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

##Functions##
mkcd () {
    mkdir -p $1
    cd $1
   }

extract () {
    for archive in $*; do
        if [ -f $archive ] ; then
            case $archive in
                *.tar.bz2)   tar xvjf $archive    ;;
                *.tar.gz)    tar xvzf $archive    ;;
                *.bz2)       bunzip2 $archive     ;;
                *.rar)       rar x $archive       ;;
                *.gz)        gunzip $archive      ;;
                *.tar)       tar xvf $archive     ;;
                *.tbz2)      tar xvjf $archive    ;;
                *.tgz)       tar xvzf $archive    ;;
                *.zip)       unzip $archive       ;;
                *.Z)         uncompress $archive  ;;
                *.7z)        7z x $archive        ;;
                *)           echo "don't know how to extract '$archive'..." ;;
            esac
         else
                echo "'$archive' is not a valid file!"
        fi
    done
}


export MANPAGER="sh -c 'col -bx | bat -l man -p'"

eval "$(starship init zsh)"


HITSIZE=10000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

autoload -U compinit
zstyle ":completion:*" menu select
zmodload zsh/complist
compinit

bindkey -v
export KEYTIMEOUT=1

source /home/vafhudr/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
