#if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ]; then
#  [ -z "${TMUX}" ] && { tmux attach || tmux; } >/dev/null 2>&1
#fi
export TERM=xterm-256color
export EDITOR=vim
##Generic Aliases##
# test
alias g='git'
alias r='ranger'
alias v='vim'
alias q='exit'
alias c='clear'
alias h='history'
alias t='time'
alias x='exit'
alias s='sudo'
alias p='sudo pacman -S'
alias j='journalctl -xe'
alias m='neomutt'
alias rm='rm -Iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias vi='vim'
alias cs='clear; ls'
alias sys='systemctl'
alias grep='grep --color'
alias cat='bat'
alias ping='ping -c 5'
alias mkdir='mkdir -pv'
alias htop='sudo htop'
alias pup='sudo pacman -Syu'
#ls commands
alias ls='exa -h --icons --group-directories-first'
alias ld='exa -ldh .* --icons --group-directories-first'
alias ll='exa -lha --icons --group-directories-first'
alias lt='exa --tree --level=2 --icons --group-directories-first'
#cd commands
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias home='cd ~'
alias root='cd /'
# chmod commands
alias mx='chmod a+x'
alias 000='chmod -R 000'
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'
# Config shortcuts
alias vimrc='vim ~/.vimrc'
alias svimrc='source ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias szshrc='source ~/.zshrc'
alias tmuxrc='vim ~/.tmux.conf'
alias muttrc='vim ~/.muttrc'
alias kittyrc='vim ~/.config/kitty/kitty.conf'

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

#ignore

source /home/vafhudr/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

