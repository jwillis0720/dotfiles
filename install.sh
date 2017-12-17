#!/usr/bin/env bash

echo "Initializing submodule(s)"
git submodule update --init --recursive

if [ -d "/dnas" ]; then
  export DOTFILES=$HOME/repos/dotfiles
#Mac
else
  export DOTFILES=$HOME/GitRepos/dotfiles
fi

update_symlink () {
  local SRC=$1
  local DST=$2
  if [ -e $DST ]; then
    echo " ${SRC} already exists... checking if it points."
    if [ "$(readlink -- "$SRC")" = $DST ]; then
      echo " $SRC points towars $(readlink -- "$SRC")....skipping"
      echo "" 
    else
      echo " Creating symlink for $DST to $SRC "
      ln -sfv $DST $SRC
    fi
  fi
}

echo -e "\nLinking ZSHRC "
echo "=============================="
update_symlink "$HOME/.zshrc" "$DOTFILES/zsh/zshrc.symlink"


echo -e "\nLinking NVIMRC "
echo "=============================="
update_symlink "$HOME/.config/nvim/init.vim" "$DOTFILES/nvim/vimrc.symlink"


echo -e "\nLinking Neovim config"
echo "=============================="
update_symlink "$HOME/.vim" "$DOTFILES/nvim/nvim.config"



echo -e "\nLinking tmux config"
echo "=============================="
update_symlink "$HOME/.tmux.conf" "$DOTFILES/tmux/tmux.conf.symlink"
update_symlink "$HOME/.dotfiles" "$DOTFILES"
