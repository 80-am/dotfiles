set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'rakr/vim_one'
Plugin 'kaicataldo/material.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-syntastic/syntastic'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Quramy/tsuguyomo'

call vundle#end()            " required
filetype plugin indent on    " required

"Allow local .vimrc configurations
set exrc
set secure "Make sure this can't be abused

" INTERFACE
set clipboard=unnamedplus
set encoding=utf-8
set fileencoding=utf-8
set nu
set ruler
hi LineNr       term=bold cterm=bold ctermfg=2 guifg=Yellow guibg=NONE
syntax on

colorscheme material
let g:material_theme_style = 'dark'
hi Normal guibg=NONE ctermbg=NONE

" INDENTING
set tabstop=4
set shiftwidth=4
set noexpandtab " tabs are tabs, not spaces
set autoindent
set smartindent
set smarttab

" Airline
let g:airline_theme = 'deus'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ'
let g:airline_linecolumn_prefix = 'C'
let g:airline#extensions#tabline#enabled = 1

" NERD TREE
let NERDTreeQuitOnOpen=1
:noremap <F5> :NERDTreeToggle<CR>
:noremap <F6> :NERDTreeFind<CR>

" TAGBAR
let g:tagbar_autoclose=1
:noremap <F7> :TagbarToggle<CR>

" SYNTASTIC
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_mode_map = {
            \ "mode": "active",
            \ "passive_filetypes": ["asm"] }

