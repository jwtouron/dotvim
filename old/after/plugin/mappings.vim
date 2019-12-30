" nnoremap <bs> <c-^>
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
" nnoremap <expr> n 'Nn'[v:searchforward]
" nnoremap <expr> N 'nN'[v:searchforward]

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

" Text objects from romainl
for char in [ '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '*', '+', '%', '-', '#' ]
  execute 'xnoremap i' . char . ' :<C-u>normal! T' . char . 'vt' . char . '<CR>'
  execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
  execute 'xnoremap a' . char . ' :<C-u>normal! F' . char . 'vf' . char . '<CR>'
  execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor

" vim-subversive
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
nmap S <plug>(SubversiveSubstituteToEndOfLine)
nmap <space>s <plug>(SubversiveSubstituteRange)
xmap <space>s <plug>(SubversiveSubstituteRange)
nmap <space>ss <plug>(SubversiveSubstituteWordRange)

" vim-yoink
nmap <c-n> <plug>(YoinkPostPasteSwapBack)
nmap <c-p> <plug>(YoinkPostPasteSwapForward)
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)
nmap [y <plug>(YoinkRotateBack)
nmap ]y <plug>(YoinkRotateForward)
nmap <c-=> <plug>(YoinkPostPasteToggleFormat)
nmap y <plug>(YoinkYankPreserveCursorPosition)
xmap y <plug>(YoinkYankPreserveCursorPosition)
