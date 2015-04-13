set nocompatible
filetype off

source ~/.vim/bundles.vim

for f in split(glob('~/.vim/local/*.vim'), '\n')
  exe 'source' f
endfor
