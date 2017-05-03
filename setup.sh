#!/usr/bin/env bash

# install vundle
git clone git@github.com:danielarias/.dot_files.git
cp .dot_files/.vimrc ~/.vimrc
# cp .dot_files/.bashrc ~/.bashrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall



