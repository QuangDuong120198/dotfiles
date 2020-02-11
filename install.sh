#!/usr/bin/env sh

sudo add-apt-repository -y ppa:git-core/ppa
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo add-apt-repository -y ppa:jonathonf/vim
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test

sudo apt update
sudo apt -y upgrade

sudo apt install -y git
sudo apt install -y tree
sudo apt install -y xclip # copy to clipboard
sudo apt install -y universal-ctags # ctags for vista.vim
sudo apt install -y curl
sudo apt install -y tmux # tmux for vim-tmux-navigator
sudo apt install -y neovim
sudo apt install -y vim
sudo apt install -y ccls # C/C++ language server

sh ./python-install.sh
sh ./node-install.sh
sh ./plug-install.sh
