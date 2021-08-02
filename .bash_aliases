################################################################################
#           ____            _                _ _                               #
#          |  _ \          | |         /\   | (_)                              #
#          | |_) | __ _ ___| |__      /  \  | |_  __ _ ___  ___  ___           #
#          |  _ < / _` / __| '_ \    / /\ \ | | |/ _` / __|/ _ \/ __|          #
#          | |_) | (_| \__ \ | | |  / ____ \| | | (_| \__ \  __/\__ \          #
#          |____/ \__,_|___/_| |_| /_/    \_\_|_|\__,_|___/\___||___/          #
################################################################################
#                                Shortcuts                                     #
################################################################################
alias g='git'
alias r='ranger'
alias v='vim'
alias q='exit'
alias c='clear'
alias h='history'
alias m='neomutt'
alias sys='systemctl'
alias ytd='youtube-dl'
alias gtd='gallery-dl'
alias inst='sudo pacman -S'
alias update='sudo pacman -Syu'
################################################################################
# Defaults
################################################################################
alias rm='rm -Iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias cs='clear; ls'
alias wget='wget -c'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ping='ping -c 5'
alias mkdir='mkdir -pv'
alias htop='sudo htop'
alias open='xdg-open'
alias clip='xclip -selection clipboard'
################################################################################
# Replacements
################################################################################
alias vi='vim'
alias cat='bat'
################################################################################
# Scripts
################################################################################
alias udot='source /home/vafhudr/Projects/dotfiles/scripts/updatedotfiles.sh'
alias sdot='source /home/vafhudr/Projects/dotfiles/scripts/source.sh'
alias gdot='source /home/vafhudr/Projects/dotfiles/scripts/gitdotfile.sh'
alias edot='source /home/vafhudr/Projects/dotfiles/scripts/editdotfiles.sh'
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
alias zshrc='vim ~/.zshrc'
alias bashrc='vim ~/.bashrc'
alias tmuxrc='vim ~/.tmux.conf'
alias muttrc='vim ~/.muttrc'
alias kittyrc='vim ~/.config/kitty/kitty.conf'
################################################################################
# Task warrior
################################################################################
alias t='task'
alias ta='task add'
alias cal='task calendar'

################################################################################
#                                    SSH                                       #
################################################################################
alias jellyfin='ssh jellyfin'
alias pihole='ssh pihole'
alias payneless='ssh payneless'
