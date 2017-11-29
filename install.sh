#!/bin/bash

BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m'
VUN_DIR="$HOME/.vim/bundle/Vundle.vim"
FONTS_DIR="$HOME/.vim/bundle/fonts"
OMZSH_DIR="$HOME/.oh-my-zsh/"

printf " ** 0. Copy bashrc to home directory"
sudo cp .bashrc  "$HOME/.bashrc"
sudo cp .vimrc "$HOME.vimrc"
sudo cp .tmux.conf "$HOME/.tmux.conf"
sudo cp .zshrc "$HOME/.zshrc"
echo ""

# Clone Vim Plugins
printf " ** 1. Cloning Vundle Plugin ..."
if [ "$(ls -A $VUN_DIR)" ]; then
	echo " Vundle.vim is already exists!"
else
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
printf " ** 1. Vundle Plugin Setup Done!"
printf "\n"


# Install Powerline fonts
printf " ** 2. Cloning Powerline fonts ..."
if [ -d "$FONTS_DIR" ]; then
	echo " Fons folder already exists!"
else
	git clone https://github.com/powerline/fonts.git ~/.vim/bundle/fonts
	cd $FONTS_DIR
	./install.sh
fi
rm -rf "$FONTS_DIR"/*
printf " ** 2. Powerline Fonts installed!"!
printf "\n"

# Install oh-my-zsh
printf " ** 3. Install on-my-zsh ..."
if [ -d "$OMZSH_DIR" ]; then
	echo "on-my-zsh folder already exists!"
else
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
printf " ** 3. oh-my-zsh installed!"!
printf "\n"


