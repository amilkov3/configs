execute pathogen#infect()
set backspace=2
syntax on
filetype plugin indent on 
set expandtab
:q
:q
set tabstop=2
set shiftwidth=2
colorscheme solarized
set number
set hidden
set history=100
set hlsearch
set showmatch

let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

map <C-j> <C-W>h<C-W>
map <C-i> <C-W>k<C-W>
map <C-k> <C-W>j<C-W>
set wmh=0

nmap <silent> <A-Right> :wincmd l<CR>

let g:ctrlp_cmd = 'CtrlP'

nnoremap h i
nnoremap i k
nnoremap j h
nnoremap k j

vnoremap <S-l> $
vnoremap <S-j> ^
nnoremap <S-l> $
nnoremap <S-j> ^

vnoremap i k
vnoremap j h
vnoremap k j

map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

"map <Leader>s :SyntasticToggleMode<CR>
"map <C-n> :NERDTreeToggle<CR>
"map <silent> <leader>t :NERDTreeTabsToggle<CR>
"map <silent> <leader>z :NERDTreeFocusToggle<CR>
"let g:nerdtree_tabs_open_on_console_startup = 1

"syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 3	
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_haskell_checkers = ['hdevtools', 'hlint', 'ghc_mod']

let g:airline_theme='solarized'

let g:haskellmode_completion_ghc = 0

let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 1

autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

let $PATH = $PATH . ':' . expand('~/.cabal/bin')

set statusline+=%F
set laststatus=2

let g:auto_save = 1

let g:ycm_semantic_triggers = {'haskell' : ['.']}

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

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`

