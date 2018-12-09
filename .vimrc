if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
  set fileencodings=utf-8,latin1
endif

set number
set shiftwidth=2
set autoindent
set expandtab
set showmatch
set smartindent
set smarttab

set nocompatible
set bs=indent,eol,start
set viminfo='20,\"50
set history=50
set ruler
set vb t_vb= "ビープ音無効化

set colorcolumn=120
highlight ColorColumn ctermbg=white

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/


if has("autocmd")
  augroup redhat
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END 
endif

if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst 
   set nocsverb
   if filereadable("cscope.out")
      cs add cscope.out
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

if &term=="xterm"
  set t_Co=8
  set t_Sb=[4%dm
  set t_Sf=[3%dm
endif
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END 

scriptencoding utf-8
set nocompatible

if has('vim_starting')
  filetype plugin off 
  filetype indent off 
endif

syntax on
filetype plugin on
filetype indent on

call plug#begin('~/.vim/plugged')

Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'Valloric/YouCompleteMe'

call plug#end()

execute pathogen#infect()

" for YouCompleteMe
let g:ycm_global_ycm_extra_conf = '${HOME}/.ycm_extra_conf.py'
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_autoclose_preview_window_after_insertion = 1
