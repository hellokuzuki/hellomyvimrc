#!/bin/bash

BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m'
VUN_DIR="$HOME/.vim/bundle/Vundle.vim"
FONTS_DIR="$HOME/.vim/bundle/fonts"

printf " ** 0. Copy bashrc to home directory"
sudo cp .bashrc  "$HOME/.bashrc"
sudo cp .vimrc "$HOME.vimrc"
sudo cp .tmux.conf "$HOME/.tmux.conf"
echo ""

printf " ** 1. Cloning Vundle Plugin ..."
if [ "$(ls -A $VUN_DIR)" ]; then
	echo " Vundle.vim is already exists!"
else
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
printf " ** 1. Vundle Plugin Setup Done!"
printf "\n"
printf " ** 2. Cloning Powerline fonts ..."
if [ "$(ls -A $FONTS_DIR)" ]; then
	echo " Fons folderalready exists!"
else
	git clone https://github.com/powerline/fonts.git ~/.vim/bundle/fonts
fi
cd $HOME/.vim/bundle/fonts
./install.sh
cd ..
rm -rf fonts
printf " ** 2. Powerline Fonts installed!"!

