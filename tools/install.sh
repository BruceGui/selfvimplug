#!/bin/bash

##############################
# Vim Plugin Manager Install Tools
# A Collection of useful vim plugin for developer.
#
##############################

main() {

    if which tput >/dev/null 2>&1; then
        ncolors=$(tput colors)
    fi

    if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
        RED="$(tput setaf 1)"
        GREEN="$(tput setaf 2)"
        YELLOW="$(tput setaf 3)"
        BLUE="$(tput setaf 4)"
        BOLD="$(tput bold)"
        NORMAL="$(tput sgr0)"
    else
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        BOLD=""
        NORMAL=""
    fi

    set -e 

    if [ ! -n "$VIM_PLUG_CONF" ]; then
        VIM_PLUG_CONF=~/.vimplugconf
    fi

    if [ -d "$VIM_PLUG_CONF" ]; then
        printf "${RED}You already have vim plug conf installed.${BLOD}\n"
        exit
    fi

    printf "${BLUE}Cloning vim plug conf...${NORMAL}\n"
    command -v git >/dev/null 2>&1 || {
        echo "Error: git is not installed"
        exit 1
    }

    env git  clone --depth=1 git@github.com:soragui/vimconfplug.git $VIM_PLUG_CONF || {
        printf "Error: git clone of vim plug conf repo failed\n"
        exit 1    
    }

}

main