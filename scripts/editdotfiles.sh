#!/usr/bin/env bash
figlet -f big Config Editor | lolcat
echo "Which config file to edit?"
echo -n ":"
read choice

case $choice in

    zsh)
        vim ~/.${choice}rc
        ;;

    bsh)
        vim ~/.${choice}rc
        ;;

    vim)
        vim ~/.${choice}rc
        ;;

    alias)
        vim ~/.bash_${choice}es
        ;;

    sig)
        vim ~/.${choice}nature
        ;;

    tmux)
        vim ~/.${choice}.conf
        ;;

    mut)
        vim ~/.${choice}trc
        ;;

    git)
        vim ~/.${choice}config
        ;;

    kit)
        vim ~/.config/${choice}ty/${choice}ty.conf
        ;;

    ran)
        vim ~/.config/${choice}ger/rc.conf
        ;;

    sta)
        vim ~/.config/starship.toml
        ;;

    *)
        echo "Unknown file"
        ;;
esac




