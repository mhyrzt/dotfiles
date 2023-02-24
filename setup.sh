#!/bin/sh

cp $(ls -pa | grep -v / | grep "^\.") ~

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c ':PlugInstall'

git clone https://github.com/ryanoasis/nerd-fonts.git /tmp/fonts && /tmp/fonts/install.sh Hack

python3 ~/.vim/plugged/youcompleteme/install.py
