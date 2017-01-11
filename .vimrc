execute pathogen#infect()
set backspace=2
syntax enable
filetype on
filetype plugin indent on 
set expandtab
set tabstop=2
set shiftwidth=2
set number
set hidden
set history=100
set hlsearch
set showmatch

set background=light
colorscheme solarized

"i beam cursor in insert mode (Mac)
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

map <C-j> <C-W>h<C-W>
map <C-i> <C-W>k<C-W>
map <C-k> <C-W>j<C-W>
set wmh=0

vnoremap <S-l> $
vnoremap <S-h> ^
nnoremap <S-l> $
nnoremap <S-h> ^

nmap <script> <silent> m :call ToggleLocationList()<CR>
nmap <script> <silent> K :lpr<CR>
nmap <script> <silent> J :lne<CR>

nmap <script> <silent> q :wincmd j<CR>
nmap <script> <silent> w :wincmd k<CR>
nmap <script> <silent> [ :wincmd h<CR>
nmap <script> <silent> ] :wincmd l<CR>

nmap , :bprevious<CR> 
nmap . :bnext<CR> 

nnoremap <silent> <C-c> :nohl<CR>

"Ctrl-p
let g:ctrlp_cmd = 'CtrlP'

"Gitgutter
let g:gitgutter_sign_column_always = 1

"vim-hdevtools
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

"Ghc-mod
"map <silent> ti :GhcModTypeInsert<CR>
"map <silent> ts :GhcModSplitFunCase<CR>
"map <silent> tt :GhcModType<CR>
"map <silent> tc :GhcModTypeClear<CR>

"Nerdtree 
"map <Leader>s :SyntasticToggleMode<CR>
"map <C-n> :NERDTreeToggle<CR>
"map <silent> <leader>t :NERDTreeTabsToggle<CR>
"map <silent> <leader>z :NERDTreeFocusToggle<CR>
"let g:nerdtree_tabs_open_on_console_startup = 1

"Syntastic 
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_loc_list_height = 3	
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_haskell_checkers = ['hdevtools', 'hlint']

let g:airline_theme='solarized'

"Neco-ghc
let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:necoghc_enable_detailed_browse = 1

"YouCompleteMe
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_semantic_triggers = {'haskell' : ['.']}

"let $PATH = $PATH . ':' . expand('~/.cabal/bin')

set statusline+=%F
set laststatus=2

let g:auto_save = 1

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Haskell syntax highlighting
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`

