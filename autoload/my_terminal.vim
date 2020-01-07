function! my_terminal#SendKeys(keys) abort
  try
    let wininfo = getwininfo()
    let termwins = []
    for i in wininfo
      if i['terminal'] && winnr() != i['winnr']
        call add(termwins, i)
      endif
    endfor
    if len(termwins) == 0
      echoerr "No terminal windows open"
    endif
    if len(termwins) > 1
      echoerr "More than one terminal window open"
    endif
    call term_sendkeys(winbufnr(termwins[0]['winnr']), a:keys . "\<cr>")
  endtry
endfunction

function! my_terminal#SendKeysOperator(type) abort
  let selection = &selection
  let unnamed = @@
  try
    let &selection = "inclusive"
    if a:type ==# 'char'
      normal! `[v`]y
    elseif a:type ==# 'line'
      normal! '[V']y
    elseif a:type ==# 'v'
      normal! `<v`>y
    elseif a:type ==# 'V'
      normal! '<V'>y
    endif
    call my_terminal#SendKeys(@@)
  finally
    let &selection = selection
    let @@ = unnamed
  endtry
endfunction
