filetype on
" setup pathogen
execute pathogen#infect()
filetype plugin indent on
filetype indent on
"  activate 'omnifunc' for the whole possible 
"  languages that implement completion
set omnifunc=syntaxcomplete#Complete


set nocompatible
set modeline

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" a tab is four space
set tabstop=4

" number of spaces to use for autoindenting
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" set show matching parenthesis
set showmatch

" ignore case when searching
set ignorecase

" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase

" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

" highlight search terms
set hlsearch

" show search matches as you type
set incsearch

" always show line number
" set number

" remember more commands and search history
set history=500

" use many muchos levels of undo
set undolevels=500

" enable the mouse use
set mouse=a

" set spelling check
set spell spelllang=en_us

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml,tex,snippets set listchars-=tab:>.,trail:.


" setup vim latex
" set shellslash
" set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

set clipboard=unnamedplus
" auto save after lost focus
au FocusLost * :wa

" enable syntax highlighting
if &t_Co >= 256 || has("gui_running")
   colorscheme nuvola
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif

" setup rainbow 
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1

" Keymapings
let mapleader = ","
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap ; :
nnoremap <leader>a :Ack
" clear the search buffer when you press ,/
nnoremap <silent> <leader>/ :nohlsearch<CR>
nnoremap <leader>ev <C-w><c-v><C-l>:e $MYVIMRC<cr>
" set for latex compiling and view
nnoremap <leader>t :w<CR>:!rubber --pdf --warn all %<CR>
nnoremap <leader>v :!evince %:r.pdf &<CR><CR>
nnoremap <leader>th :!evince ~/Documents/latex/latex_symbol_list.pdf &<CR><CR>
" set for taglist
nnoremap <leader>tl :TlistOpen<cr>


