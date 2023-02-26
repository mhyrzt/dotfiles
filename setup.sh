#!/bin/sh

cp $(ls -pa | grep -v / | grep "^\.") ~

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c ':PlugInstall'
vim -c ':CocInstall coc-docker'
vim -c ':CocInstall coc-clangd'
vim -c ':CocInstall coc-go'
vim -c ':CocInstall coc-json'
vim -c ':CocInstall coc-markdownlint'
vim -c ':CocInstall coc-pyright'
vim -c ':CocInstall coc-tsserver'
vim -c ':CocInstall coc-json'
vim -c ':CocInstall coc-yaml'
vim -c ':CocInstall coc-sh'
vim -c ':CocInstall coc-css'

git clone https://github.com/ryanoasis/nerd-fonts.git /tmp/fonts && /tmp/fonts/install.sh Hack

