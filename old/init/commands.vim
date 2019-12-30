command! -nargs=1 Spaces
      \ execute "setlocal tabstop=" . <args> . " shiftwidth=" . <args> . " softtabstop=" . <args> . " expandtab" | setlocal ts? sw? sts? et?

command! -nargs=1 Tabs
      \ execute "setlocal tabstop=" . <args> . " shiftwidth=" . <args> . " softtabstop=" . <args> . " noexpandtab" | setlocal ts? sw? sts? et?

