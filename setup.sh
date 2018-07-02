#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mv ~/.vimrc ~/vimrc.bak
ln -sf ${DIR}/vimrc ~/.vimrc

sudo apt update
sudo apt install build-essential cmake
sudo apt install python-dev python3-dev

cd ~/.vim/plugged/youcompleteme
./install.py --clang-completer
cd -


