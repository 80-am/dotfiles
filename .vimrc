set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'kaicataldo/material.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-syntastic/syntastic'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Quramy/tsuguyomo'
Plugin 'vobornik/vim-mql4'
Plugin 'sheerun/vim-polyglot'

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
set background=dark
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
" let g:airline_theme='material'
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

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
