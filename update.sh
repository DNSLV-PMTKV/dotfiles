#!/bin/bash

function usage {
    cat << EOF
Usage: update.sh -mode <mode>

mode options:
    - git - Copies local config to git
    - local - Copies git config to local
EOF
    exit 1
}

function copy_to_git {
    rm -rf ./nvim/ && cp -r ~/.config/nvim/ .
    rm -rf ./alacritty/ && cp -r ~/.config/alacritty/ .
    cp ~/.tmux.conf .
}

function copy_to_local {
    cp -r ./nvim/ ~/.config/
    cp -r ./alacritty/ ~/.config/
    cp ./.tmux.conf ~/.tmux.conf 
}

if [ $# -ne 2 ]; then
    usage;
fi
if [ "$1" != "-mode" ]; then
    usage;
fi

FLAG=$2

if [ $FLAG = "git" ]; then
    echo "Copying local config to git.."
    copy_to_git;
    echo "Done!"
elif [ $FLAG = "local" ]; then
    echo "Copying git config to local.."
    copy_to_local;
    echo "Done!"
else
  usage;
fi
