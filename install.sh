#!/usr/bin/env bash

DOTFILES=$HOME/GitRepos/dotfiles


echo -e "\nCreating symlinks"
echo "=============================="
linkables=$( find -H "$DOTFILES" -name '*.symlink' )
for file in $linkables ; do
    target="$HOME/.$( basename $file '.symlink' )"
    if [ -e $target ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $file"
        ln -s $file $target
    fi
done


echo -e "\nLinking VIM Config"
echo "=============================="
target="$HOME/.vim"
VIMCONFIG="$DOTFILES/vim/vim.config"
if [ -e $target ]; then
    echo "~${target#$HOME} already exists... Skipping."
else
    echo "Creating symlink for $VIMCONFIG"
    ln -s $VIMCONFIG $target
fi
