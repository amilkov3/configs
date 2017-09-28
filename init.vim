source ~/.vimrc

:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1





""" Obsolete Haskell dev stuff

"let g:neomake_open_list = 2
"let g:neomake_auto_loc_list = 1
"
"autocmd BufWritePost *.hs GhcModCheck

let g:neomake_haskell_enabled_makers = ['hdevtools', 'hlint']

"let g:neomake_autolint_enabled = 1

autocmd! BufEnter,BufWritePost * Neomake

let g:lopen = 2

"let g:neomake_autolint_sign_column_always = 1

let g:neomake_warning_sign = {
      \ 'text': '🚽',
            \ }

let g:neomake_error_sign = {
      \ 'text': '💩',
      \ }


