call plug#begin()
" General
Plug 'Shougo/echodoc.vim'
Plug 'ajh17/vimcompletesme'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'danro/rename.vim'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'embear/vim-localvimrc'
Plug 'felikz/ctrlp-py-matcher'
Plug 'itchyny/lightline.vim'
Plug 'jpalardy/vim-slime'
Plug 'kana/vim-arpeggio'
Plug 'kassio/neoterm'
Plug 'ludovicchabant/vim-gutentags'
Plug 'maximbaz/lightline-ale'
Plug 'mbbill/undotree'
Plug 'mileszs/ack.vim'
Plug 'moll/vim-bbye'
Plug 'raimondi/delimitmate'
Plug 'romainl/vim-cool'
Plug 'romainl/vim-qlist'
Plug 'scrooloose/nerdtree'
Plug 'skywind3000/asyncrun.vim'
Plug 'svermeulen/vim-subversive'
Plug 'svermeulen/vim-yoink'
Plug 'terryma/vim-expand-region'
Plug 'thinca/vim-qfreplace'
Plug 'thinca/vim-visualstar'
Plug 'tommcdo/vim-exchange'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vimwiki/vimwiki'
Plug 'w0rp/ale'
Plug 'xtal8/traces.vim' " range, pattern and substitute preview
" vim-text-obj-user
Plug 'kana/vim-textobj-user'
Plug 'Julian/vim-textobj-brace' " ij, aj - any braces (), [], {}
Plug 'kana/vim-textobj-entire' " ie, ae - entire
Plug 'kana/vim-textobj-function' " if, af, iF, aF - function
Plug 'kana/vim-textobj-indent' " ii, ai, iI, aI - indentation
Plug 'saihoooooooo/vim-textobj-space' " iS, aS - whitespace
" Colorschemes
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim'
" Languages
" C
" Clojure
" Plug 'jwtouron/vim-fireplace'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-salve'
Plug 'clojure-vim/async-clj-omni'
" Java
Plug 'artur-shaik/vim-javacomplete2'
" JVM
Plug 'tpope/vim-classpath'
" Lisp
Plug 'bhurlow/vim-parinfer'
" Plug 'guns/vim-sexp'
" Plug 'tpope/vim-sexp-mappings-for-regular-people'
" Python
" Rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
" Vim
Plug 'tpope/vim-scriptease'
" Web
" Plug 'docunext/closetag.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-ragtag'
call plug#end()

runtime! macros/matchit.vim

" ack
if executable('rg')
  let g:ackprg = 'rg --vimgrep --color never --no-heading -S'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" ale
let g:ale_lint_delay = 1000
let g:ale_set_highlights = 0
let g:ale_sign_column_always = 1

" ctrlp
if executable('rg')
  let g:ctrlp_user_command = 'rg --files --color=never %s'
  " let g:ctrlp_use_caching = 0
endif

" ctrlp-py-matcher
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" delimitmate
let g:delimitMate_expand_cr = 1
let g:delimitMate_excluded_ft = "clojure"

" deoplete
" let g:deoplete#enable_at_startup = 1
" call deoplete#custom#option({'auto_complete': v:false})
" inoremap <silent><expr> <TAB>
"     \ pumvisible() ? "\<C-n>" :
"     \ <SID>check_back_space() ? "\<TAB>" :
"     \ deoplete#mappings#manual_complete()
" function! s:check_back_space() abort "{{{
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction
" let g:python3_host_prog = exepath('python.exe')

" echodoc
let g:echodoc#enable_at_startup = 1

" gutentabs
let g:gutentags_generate_on_write = 0

" localvimrc
let g:localvimrc_sandbox = 0
let g:localvimrc_ask = 0

" vim-racer
let g:racer_experimental_completer = 1

" youcompleteme
let g:ycm_auto_trigger = 0
let g:ycm_confirm_extra_conf = 0
