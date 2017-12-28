#!/bin/bash

# create symlinks in $HOME for all files in dotfiles
find . -type f | grep -v '/.git/\|swp' | while read -r  f; do
    echo "ln -s $HOME/dotfiles/${f:2} $HOME/${f:2}"
    ln -s $HOME/dotfiles/${f:2} $HOME/${f:2}
done 


