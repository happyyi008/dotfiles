#!/bin/bash

find . -type f | while read -r  f; do
    echo "ln -s $HOME/dotfiles/${f:2} $HOME/${f:2}"
    ln -s $HOME/dotfiles/${f:2} $HOME/${f:2}
done 


