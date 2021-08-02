################################################################################
#           ____            _                _ _                               #
#          |  _ \          | |         /\   | (_)                              #
#          | |_) | __ _ ___| |__      /  \  | |_  __ _ ___  ___  ___           #
#          |  _ < / _` / __| '_ \    / /\ \ | | |/ _` / __|/ _ \/ __|          #
#          | |_) | (_| \__ \ | | |  / ____ \| | | (_| \__ \  __/\__ \          #
#          |____/ \__,_|___/_| |_| /_/    \_\_|_|\__,_|___/\___||___/          #
################################################################################
#                             Generic Aliases                                  #
################################################################################
alias g='git'
alias r='ranger'
alias v='vim'
alias q='exit'
alias c='clear'
alias h='history'
alias t='time'
alias p='sudo pacman -S'
alias m='neomutt'
alias rm='rm -Iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias vi='vim'
alias cs='clear; ls'
alias sys='systemctl'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ytd='youtube-dl'
alias gtd='gallery-dl'
alias cat='bat'
alias ping='ping -c 5'
alias mkdir='mkdir -pv'
alias htop='sudo htop'
alias update='sudo pacman -Syu'
alias open='xdg-open'
alias clip='xclip -selection clipboard'
################################################################################
# Scripts
################################################################################
alias udot='source /home/vafhudr/Projects/dotfiles/scripts/updatedotfiles.sh'
################################################################################
#                              ls commands                                     #
################################################################################
alias ls='exa -h --icons --group-directories-first'
alias ld='exa -ldh .* --icons --group-directories-first'
alias ll='exa -lha --icons --group-directories-first'
alias lt='exa --tree --level=2 --icons --group-directories-first'
################################################################################
#                              cd commands                                     #
################################################################################
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias home='cd ~'
alias root='cd /'
################################################################################
#                              chmod commands                                  #
################################################################################
alias mx='chmod a+x'
alias 000='chmod -R 000'
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'
################################################################################
#                              Config shortcuts                                #
################################################################################
alias vimrc='vim ~/.vimrc'
alias svimrc='source ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias szshrc='source ~/.zshrc'
alias bashrc='vim ~/.bashrc'
alias tmuxrc='vim ~/.tmux.conf'
alias muttrc='vim ~/.muttrc'
alias kittyrc='vim ~/.config/kitty/kitty.conf'
################################################################################
#                                    SSH                                       #
################################################################################
alias jellyfin='ssh jellyfin'
alias pihole='ssh pihole'
alias payneless='ssh payneless'
