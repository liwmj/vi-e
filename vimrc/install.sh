#!/usr/bin/env bash

cd $(dirname $0)

mkdir -p ~/.vim
cp -rfp _vimrc ~/.vimrc
cp -rfp vimfiles/* ~/.vim/
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer

exit 0

