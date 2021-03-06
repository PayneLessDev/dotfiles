#!/usr/bin/env bash

files=(
    ".zshrc"
    ".Xresources"
    ".vimrc"
    ".tmux.conf"
    ".signature"
    ".muttrc"
    ".gitconfig"
    ".bashrc"
    ".bash_aliases"
    ".taskrc"
    ".config/kitty/kitty.conf"
    ".config/ranger/rc.conf"
    ".config/starship.toml"
    ".config/conky/conky.conf")


for i in ${files[*]};
do
    rsync -havP ~/$i ~/Projects/dotfiles
done

figlet -f big Config Synced | lolcat
