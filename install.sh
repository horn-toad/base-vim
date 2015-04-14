#! /usr/bin/env bash
set shell=/bin/sh

current_time=$(date "+%Y.%m.%d-%H.%M.%S")

cd ~
if [[ -d ~/.vim ]]
then
  mv ~/.vim ~/.vim.old.$current_time
  mv ~/.vimrc ~/.vimrc.old.$current_time
fi

if [[ -d ~/_vim ]]
then
  mv ~/_vim ~/_vim.old.$current_time
  mv ~/_vimrc ~/_vimrc.old.$current_time
fi

git clone https://github.com/horn-toad/base-vim.git ~/.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle

ln -sf ~/.vim/.vimrc

vim -u ~/.vim/bundles.vim +PluginInstall! +qall
