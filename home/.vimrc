" Sets how many lines of history VIM has to remember
set history=500

syntax enable

colorscheme slate

" Enable filetype plugins
filetype plugin on
filetype indent on

autocmd BufNewFile,BufRead *.rl set syntax=ragel filetype=c
autocmd BufNewFile,BufRead *.h set filetype=c
autocmd FileType c setlocal tabstop=8 shiftwidth=8 softtabstop=8 noexpandtab

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" File navigation
set number
set hlsearch
set smartcase
set incsearch
hi clear Search
hi Search cterm=underline gui=undercurl ctermbg=darkgrey
hi IncSearch cterm=underline gui=undercurl ctermbg=darkgrey

" Line length
set colorcolumn=80
highlight ColorColumn ctermbg=darkgrey

" Configure spell checking
set spell
set spellcapcheck=
hi clear SpellBad
hi SpellBad gui=undercurl

" Install vim-plug if it isn't already installed.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:airline_powerline_fonts = 1

" Init plugins.
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/rainbow_parentheses.vim'
Plug 'jneen/ragel.vim'
call plug#end()

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['brown',       'firebrick3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['red',         'firebrick3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ]
