nnoremap <silent> <plug>(my-terminal-sendkeys) :<c-u>set operatorfunc=my_terminal#SendKeysOperator<cr>g@
xnoremap <silent> <plug>(my-terminal-sendkeys) :<c-u>call my_terminal#SendKeysOperator(visualmode())<cr>


" nnoremap <silent> <Plug>(neoterm-repl-send)
"       \ :<c-u>set opfunc=neoterm#repl#opfunc<cr>g@
" xnoremap <silent> <Plug>(neoterm-repl-send)
"       \ :<c-u>call neoterm#repl#selection()<cr>
" nnoremap <silent> <Plug>(neoterm-repl-send-line)
"       \ :<c-u>set opfunc=neoterm#repl#opfunc<bar>exe 'norm! 'v:count1.'g@_'<cr>

command! -nargs=1 TS call my_terminal#SendKeys(<f-args>)
command! -nargs=* T :term <args>
command! -nargs=* TC :term ++close <args>
