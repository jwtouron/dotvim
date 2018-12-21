augroup my_augroup
  autocmd!
  " autocmd QuickFixCmdPost [^l]* nested cwindow
  " autocmd QuickFixCmdPost    l* nested lwindow
  autocmd FocusLost * silent! wa
augroup END
