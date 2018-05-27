set nocompatible              " required
filetype off                  " required


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'rakr/vim_one'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

colorscheme one
" set background=dark
hi Normal guibg=NONE ctermbg=NONE


let g:airline_theme='one'

