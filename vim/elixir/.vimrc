call plug#begin('~/.vim/plugged')

" ----- Making Vim look good ------------------------------------------
Plug 'flazz/vim-colorschemes'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" ----- Vim as a programmer's text editor -----------------------------
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'elixir-lang/vim-elixir'
Plug 'viastakhov/moonshiner.vim'
" Plug 'slashmili/alchemist.vim'
call plug#end()

set guifont=Source_Code_Pro:h11:cRUSSIAN:qDRAFT
map <C-n> :NERDTreeToggle<CR>

" --- General settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set splitright
set splitbelow
syntax on
set mouse=a

" ----- Plugin-Specific Settings --------------------------------------

" ----- altercation/vim-colors-solarized settings -----
" Toggle this to "light" for light colorscheme
set background=dark

" Uncomment the next line if your terminal is not configured for solarized
" let g:solarized_termcolors=256

" Set the colorscheme
colorscheme gruvbox

" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" Finally, uncomment the next line
let g:airline_powerline_fonts = 1

" Use the solarized theme for the Airline status bar
let g:airline_theme='solarized'

" omnifunc
filetype plugin on
set omnifunc=syntaxcomplete#Complete

set encoding=utf-8

"Optional but recommended
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
