#! /usr/bin/env bash
set shell=/bin/sh

current_time=$(date "+%Y.%m.%d-%H.%M.%S")

cd ~
if [[ -d ~/.vim ]]
then
  mkdir -p .old
  mv ~/.vim ~/.old/vim.$current_time
  mv ~/.vimrc ~/.old/vimrc.$current_time
fi

if [[ -d ~/_vim ]]
then
  mkdir -p _old
  mv ~/_vim ~/_old/_vim.$current_time
  mv ~/_vimrc ~/_old/_vimrc.$current_time
fi

git clone https://github.com/horn-toad/base-vim.git ~/.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle

ln -sf ~/.vim/.vimrc

vim -u ~/.vim/bundles.vim +PluginInstall! +qall
