" vim:foldenable:foldmethod=marker

" Plugins {{{1

call plug#begin()
" General
Plug 'Valloric/YouCompleteMe'
Plug 'ajh17/vimcompletesme', {'on': '<plug>xyz'}
Plug 'bronson/vim-trailing-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'danro/rename.vim'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'embear/vim-localvimrc'
Plug 'felikz/ctrlp-py-matcher'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'jpalardy/vim-slime'
Plug 'justinmk/vim-sneak'
Plug 'kana/vim-arpeggio'
Plug 'kassio/neoterm'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'mileszs/ack.vim'
Plug 'moll/vim-bbye'
Plug 'raimondi/delimitmate', {'on': '<plug>xyz'}
Plug 'romainl/vim-cool'
Plug 'romainl/vim-qf'
Plug 'romainl/vim-qlist'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-expand-region'
Plug 'tommcdo/vim-exchange'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'
Plug 'w0rp/ale'
Plug 'wellle/targets.vim'
Plug 'xtal8/traces.vim' " range, pattern and substitute preview
" textobj-user
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-syntax'
" Colorschemes
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim'
" Languages
" C
" Plug 'justmao945/vim-clang'
" Clojure
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-salve'
" Java
Plug 'artur-shaik/vim-javacomplete2'
" JVM
Plug 'tpope/vim-classpath'
" Lisp
Plug 'bhurlow/vim-parinfer'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
" Python
Plug 'davidhalter/jedi-vim'
" Rust
Plug 'racer-rust/vim-racer'
" Web
" Plug 'docunext/closetag.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-ragtag'
call plug#end()

runtime! macros/matchit.vim

" Plugin Settings {{{1

" ack
if executable('rg')
  let g:ackprg = 'rg --vimgrep --color never --no-heading -S'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" ale
let g:ale_lint_delay = 1000
let g:ale_set_highlights = 0
let g:ale_sign_column_always = 1

" clang
let g:clang_auto = 0

" ctrlp
if executable('rg')
  let g:ctrlp_user_command = 'rg --files --color=never %s'
  " let g:ctrlp_use_caching = 0
endif
let g:ctrlp_by_filename = 1

" delimitmate
let g:delimitMate_expand_cr = 1

" Deoplete
let g:deoplete#enable_at_startup = 1

" Jedi
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = 0

" youcompleteme
let g:ycm_auto_trigger = 0
let g:ycm_confirm_extra_conf = 0

" Settings {{{1
syntax on

set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set cmdheight=2
set completeopt+=menuone
set confirm
set cursorline
set display=lastline
set encoding=utf-8
set formatoptions+=j
set formatoptions-=c formatoptions-=o formatoptions-=r
set gdefault
set hidden
set hlsearch
set ignorecase
set incsearch
set infercase
set laststatus=2
set lazyredraw
set list
set listchars=tab:>\ ,extends:>,precedes:<
set number
set relativenumber
set ruler
set sessionoptions-=options
set shiftwidth=0 tabstop=4 expandtab
set shiftround
set shortmess+=c
set showcmd
set smartcase
set smarttab
set splitbelow
set splitright
set synmaxcol=240
set t_vb=
set virtualedit=block
set visualbell
set wildmenu
set wildmode=list:longest,full

set nofoldenable
set noshowmode
set nostartofline
set noswapfile " May want to use 'set directory' instead

" augroup my_config {{{1
" augroup my_config
"   autocmd!
"   autocmd QuickFixCmdPost [^l]* nested cwindow
"   autocmd QuickFixCmdPost    l* nested lwindow
"   autocmd FocusLost * silent! wa
" augroup END

" Commands {{{1
command! -nargs=1 Spaces
      \ execute "setlocal tabstop=" . <args> . " shiftwidth=" . <args> . " softtabstop=" . <args> . " expandtab" | setlocal ts? sw? sts? et?

command! -nargs=1 Tabs
      \ execute "setlocal tabstop=" . <args> . " shiftwidth=" . <args> . " softtabstop=" . <args> . " noexpandtab" | setlocal ts? sw? sts? et?
