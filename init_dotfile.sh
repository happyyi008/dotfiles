#!/bin/bash

find . -type f | while read -r  f; do
    echo " $HOME/dotfiles/${f:2} $HOME/${f:2}"
done 


