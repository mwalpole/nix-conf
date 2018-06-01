" plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

filetype plugin indent on

set tabstop=4    " show existing tab with 4 spaces width 
set shiftwidth=4 " when indenting with '>', use 4 spaces width 
set expandtab    " On pressing tab, insert 4 spaces 

