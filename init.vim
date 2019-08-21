source ~/.vimrc

:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Haskell
" Might as well have syntax highlighting and the works just to quickly browse
" files and such
let g:neomake_haskell_enabled_makers = ['hdevtools', 'hlint']

autocmd! BufEnter,BufWritePost * Neomake

let g:neomake_warning_sign = {
      \ 'text': '🚽',
            \ }

let g:neomake_error_sign = {
      \ 'text': '💩',
      \ }

" Not sure what this does
let g:lopen = 2

""" Obsolete Haskell dev stuff I didn't want to delete

"let g:neomake_open_list = 2
"let g:neomake_auto_loc_list = 1
"
"autocmd BufWritePost *.hs GhcModCheck


"let g:neomake_autolint_enabled = 1

"let g:neomake_autolint_sign_column_always = 1

let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

