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
