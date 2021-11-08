call plug#begin('~/.vim/plugged')

" Erlang generic plugins:
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-tags'

" Erlang function navigation:
Plug 'edkolev/erlang-motions'

" Vim plugin for Git:
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

" Color themes
"" Plug 'morhetz/gruvbox'
"" Plug 'altercation/vim-colors-solarized'
Plug 'mhinz/vim-janah'

" Vusial decorations:
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'

" File explorer:
"Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdtree'

" Buffers:
Plug 'ap/vim-buftabline'
"Plug 'zefei/vim-wintabs'
"Plug 'zefei/vim-wintabs-powerline'


call plug#end()

" Completion:
function! SuperTab()
    if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
        return "\<Tab>"
    elseif pumvisible()
        return "\<C-N>"
    else
        if &omnifunc != ''
            return "\<C-X>\<C-O>"
        else
            return "\<C-N>"
        endif
    endif
endfunction

inoremap <Tab> <C-R>=SuperTab()<cr>
set cot-=preview
set completeopt+=menuone,noselect,noinsert
set shortmess+=c " Shut off completion messages

" Identation:
filetype plugin indent on
set expandtab shiftwidth=4 tabstop=4

" Color theme:
syntax enable
set background=dark
colorscheme janah

" Visual decorations:

" vim-gitgutter
let g:gitgutter_map_keys = 0
set signcolumn=yes

" vim-devicons & vim-startify:
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_startify = 1
" https://github.com/mhinz/vim-startify/issues/435:
function! StartifyEntryFormat()
	return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

" lightline.vim:
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" tabline:
let g:buftabline_show = 2
let g:buftabline_indicators = 1
nnoremap <C-N> :bnext!<CR>
nnoremap <C-P> :bprev!<CR>
nnoremap <C-D> :bdelete<CR>
set noshowmode "Hide the default mode text (e.g. -- INSERT -- below the statusline)

" Misc:
set encoding=utf-8 
set number
set undofile
set undolevels=1000