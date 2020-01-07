" Plugins

call plug#begin($HOME . '/.vim/plugged')
Plug 'airblade/vim-rooter'
Plug 'andrewradev/bufferize.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'embear/vim-localvimrc'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kana/vim-arpeggio'
Plug 'ludovicchabant/vim-gutentags'
Plug 'nelstrom/vim-visual-star-search'
Plug 'pechorin/any-jump.vim'
Plug 'romainl/vim-cool'
Plug 'romainl/vim-devdocs'
Plug 'romainl/vim-qlist'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'tyru/open-browser.vim'
Plug 'vimwiki/vimwiki'
Plug 'wellle/targets.vim'
" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " It happens on some versions of neovim, use <C-w>o to close other windows or use :call coc#util#float_hide()
" Colorschemes
Plug 'atelierbram/vim-colors_atelier-schemes'
Plug 'ayu-theme/ayu-vim'
Plug 'CreaturePhil/vim-handmade-hero'
Plug 'djjcast/mirodark'
Plug 'flazz/vim-colorschemes'
Plug 'hardselius/warlock'
Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'
Plug 'sainnhe/forest-night'
Plug 'sainnhe/sonokai'
" Languages
" Clojure
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
" Go
Plug 'fatih/vim-go'
" Haskell
Plug 'neovimhaskell/haskell-vim'
Plug 'twinside/vim-hoogle'
" Nim
Plug 'zah/nim.vim'
" Python
Plug 'jmcantrell/vim-virtualenv'
" Plug 'davidhalter/jedi-vim'
" XML
Plug 'alvan/vim-closetag'
call plug#end()

packadd cfilter
packadd! matchit

" any-jump

let g:any_jump_disable_default_keybindings = 1
let g:any_jump_search_prefered_engine = 'ag'

" coc

let g:coc_global_extensions = [
      \ "coc-pyright",
      \ ]

" cool

let g:CoolTotalMatches = 1

" go

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" gutentags

if !executable('ctags')
  let g:gutentags_enabled = 0
endif
if executable('ug')
  let g:gutentags_file_list_command = 'ug --color=never -l ""'
endif
let g:gutentags_ctags_tagfile = '.vimtags'

" haskell

" let hs_highlight_delimiters = 1
" let hs_highlight_boolean = 1
" let hs_highlight_types = 1
" let hs_highlight_more_types = 1
let g:haskell_classic_highlighting = 1
" let g:haskell_enable_pattern_synonyms = 1
" let g:haskell_enable_quantification = 1
let g:haskell_indent_if = 0
let g:haskell_indent_in = 0

" rooter

let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_patterns = ['.projections.json']

" vimwiki

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/'}]

" virtualenv

let g:virtualenv_directory = '.'

" Settings

set shiftwidth=0 softtabstop=-1 " Only 'tabstop' needs to be set

set autowrite
set cmdheight=2
set complete-=t
set completeopt=menu,menuone,noselect,preview
set expandtab
set formatoptions-=cro
set gdefault
set hidden
set hlsearch
set ignorecase
set lazyredraw
set list
set listchars=tab:>\ ,extends:>,precedes:<,nbsp:+
set number
set relativenumber
set shiftround
set showcmd
set smartcase
" set synmaxcol=200
set virtualedit=block
set wildmode=longest,list,full

set noshowmode
set noswapfile

if executable('ugrep')
  set grepprg=ugrep\ -RInk\ -j\ -u\ --tabs=1\ --ignore-files
  set grepformat=%f:%l:%c:%m,%f+%l+%c+%m,%-G%f\\\|%l\\\|%c\\\|%m
endif

augroup MY_AUTOCMDS
  autocmd!
  autocmd QuickFixCmdPost [^l]* nested cwindow
  autocmd QuickFixCmdPost    l* nested lwindow
  " autocmd InsertLeave,WinEnter * set cursorline
  " autocmd InsertEnter,WinLeave * set nocursorline
augroup END

if has('WIN32') || has('WIN64')
  command! MyGitAmendAndPush exec 'term ++shell set GIT_TERMINAL_PROMPT=1 && git commit -a --amend --no-edit && git push -f'
else
  command! MyGitAmendAndPush exec 'term ++shell git commit -a --amend --no-edit && GIT_TERMINAL_PROMPT=1 git push -f'
endif

command! BW :b#|bw#

if has('gui_running')
  set cursorline
endif
