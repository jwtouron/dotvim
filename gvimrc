if has('gui_win32')
  set guifont=Iosevka:h11,Hack:h10:cANSI:qDRAFT,DejaVu_Sans_Mono:h11:cANSI:qDRAFT,Fira_Mono:h11:cANSI:qDRAFT
else
  set guifont=Iosevka\ 11,Hack\ 10,DejaVu\ Sans\ Mono\ 11,Fira\ Mono\ 11
endif

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

set background=dark

let g:nord_comment_brightness = 11
" colo nord
colo Tomorrow-Night-Eighties

highlight MatchParen gui=underline guifg=NONE guibg=NONE cterm=underline ctermfg=NONE ctermbg=NONE term=underline
"
"highlight CursorLine guifg=NONE ctermfg=NONE gui=NONE cterm=NONE term=NONE
