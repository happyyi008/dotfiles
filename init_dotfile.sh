#!/bin/bash

# create symlinks in $HOME for all files in dotfiles
find . -maxdepth 1 | grep -v '\.git\|swp' | while read -r  f; do
    echo "ln -s $HOME/dotfiles/${f:2} $HOME/${f:2}"
    ln -s $HOME/dotfiles/${f:2} $HOME/${f:2}
done 

# other installed programs:
# xclip for linux: sudp apt-get install xclip
# fonts-powerline: sudo apt-get install fonts-powerline

# In vim:
# Install plugins: :PlugInstall

# In Tmux:
# Install plugins: prefix + I

