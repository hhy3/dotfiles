set sb
set nocompatible

" Syntax highlighting
syntax on

" Show line numbers.
set number

" Show relative line number
set relativenumber


" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
" set backspace=indent,eol,start

" enable unsaved hidden buffer
set hidden

" smarter search
set ignorecase
set smartcase

" enable searching immediately after typing anything
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support.
set mouse+=a

" brace matching
inoremap {<CR>  {<CR>}<ESC>O<TAB>

" more convenient (for me) save
inoremap <C-c> <ESC>:w !clip.exe <CR><CR>
map <C-c> :w !clip.exe <CR><CR>


" I don't know what below is all about, but better don't change
set laststatus=0
set encoding=utf-8
set tabstop=2
set autoindent
set shiftwidth=2

set foldenable
set foldmethod=manual
set updatetime=100

set ts=2
set expandtab

highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow


let g:ycm_enable_diagnostic_signs = 0

highlight YcmWarningLine guibg=#ffffcc
highlight YcmWarningSign guibg=#ffffcc
highlight YcmWarningSection guibg=#ffffcc

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)]]]"

"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let g:rustfmt_autosave = 1


" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'



filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'godlygeek/tabular'
Plugin 'preservim/vim-markdown'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'vim-syntastic/syntastic'
Plugin 'VundleVim/Vundle.vim'
Plugin 'wakatime/vim-wakatime'
Plugin 'kien/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'vim-airline/vim-airline'
" Plugin 'garbas/vim-snipmate'

" Optional:
Plugin 'honza/vim-snippets'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ycm-core/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

nmap <leader>n :enew<cr>
nmap <leader>1 :bp<cr>
nmap <leader>2 :bn<cr>
nmap <leader>w :bp <BAR> bd #<CR>

let g:airline_theme='solarized'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
