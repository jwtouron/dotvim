nnoremap <bs> <c-^>
nnoremap <space>; *``cgn
nnoremap <space>, #``cgN
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'
nnoremap Y y$
nnoremap <expr> gp '`[' . getregtype()[0] . '`]' " highlight last inserted text
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
" nnoremap <c-space> :noh<cr>
nnoremap <expr> n 'Nn'[v:searchforward]
nnoremap <expr> N 'nN'[v:searchforward]

xnoremap Q :'<,'>:normal @q<CR>

cno <expr>  <tab>    getcmdtype() =~ '[?/]' ? '<c-g>' : feedkeys('<tab>', 'int')[1]
cno <expr>  <s-tab>  getcmdtype() =~ '[?/]' ? '<c-t>' : feedkeys('<s-tab>', 'int')[1]

nnoremap <space>b :CtrlPBuffer<cr>
" nnoremap <space>f :Files<cr>
nnoremap <space>f :CtrlP<cr>
" nnoremap <space>g :Rg 
nnoremap <space>g :Ack 
nnoremap <space>h :noh<cr>
nnoremap <space>l :ALELint<cr>

Arpeggio inoremap jk <Esc>

nmap gs  <plug>(GrepperOperator)
xmap gs  <plug>(GrepperOperator)

