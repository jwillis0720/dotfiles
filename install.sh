#!/usr/bin/env bash

if [ -d "/dnas" ]; then
  export DOTFILES=$HOME/repos/dotfiles
#Mac
else
  export DOTFILES=$HOME/GitRepos/dotfiles
fi


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


echo -e "\nLinking NVIM Config"
echo "=============================="
target="$HOME/.vim"
VIMCONFIG="$DOTFILES/nvim/nvim.config"
if [ -e $target ]; then
    echo "~${target#$HOME} already exists... Skipping."
else
    echo "Creating symlink for $VIMCONFIG"
    ln -s $VIMCONFIG $target
fi
