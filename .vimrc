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
set shortmess=a
set cmdheight=2

"if &term =~ '^xterm\\|rxvt'
  " solid underscore
  "let &t_SI .= "\<Esc>[4 q"
  " solid block
 " let &t_EI .= "\<Esc>[2 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
"endif

"let &t_SI = "\<esc>[5 q"
"let &t_SR = "\<esc>[5 q"
"let &t_EI = "\<esc>[2 q"


let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Files with no extension are assumed to be bash scripts
au BufNewFile,BufRead * if &syntax == '' | set syntax=sh | endif

" Autosave on modify plugin
let g:auto_save = 1

" Spellchecker
setlocal spell spelllang=en_us
set complete+=kspell

" Theme
set background=dark
colorscheme solarized
let g:airline_theme='solarized'

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Markdown plugin

" Vimperator uses .tmp files when doing C-i to use vim to write
" stuff in text boxes
autocmd BufNewFile,BufReadPost *.tmp set filetype=markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['scala', 'bash=sh', 'haskell']


"i beam cursor in insert mode (Mac)
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" Can't remember what this is for
map <C-j> <C-W>h<C-W>
map <C-i> <C-W>k<C-W>
map <C-k> <C-W>j<C-W>
set wmh=0

nnoremap <S-e> v$
nnoremap <S-b> v^

" Jump to end and beginning of line
vnoremap <S-l> $
vnoremap <S-h> ^
nnoremap <S-l> $
nnoremap <S-h> ^

nnoremap ci c^

" Moving in error buffer
nmap <script> <silent> m :call ToggleLocationList()<CR>
nmap <script> <silent> K :lpr<CR>
nmap <script> <silent> J :lne<CR>

" Moving in quickfix buffer
nmap <script> <silent> < :cn<CR>
nmap <script> <silent> > :cp<CR>

" Navigate vim panes
nmap <script> <silent> q :wincmd j<CR>
nmap <script> <silent> w :wincmd k<CR>
nmap <script> <silent> [ :wincmd h<CR>
nmap <script> <silent> ] :wincmd l<CR>

" Moving between buffers I think
nmap , :bprevious<CR>
nmap . :bnext<CR>

"Clear highlight(s)
nnoremap <silent> <C-c> :nohl<CR>

"Ctrl-p fuzzy finder
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'r'
nmap <script> <silent> <C-x> :CtrlPDir ../<CR>
nmap <script> <silent> <C-z> :CtrlPDir ../../<CR>

"Gitgutter
set signcolumn=yes

"YouCompleteMe
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_semantic_triggers = {'haskell' : ['.']}

" Can't remember
set statusline+=%F
set laststatus=2

" air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif




""""""UNUSED STUFF I DIDN"T WANT TO DELETE

""""" Haskell dev in vim made obsolete by spacemacs """"""

"vim-hdevtools
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

"Ghc-mod
map <silent> ti :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tt :GhcModType<CR>
map <silent> tc :GhcModTypeClear<CR>


"Neco-ghc
let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:necoghc_enable_detailed_browse = 1


" Haskell syntax highlighting
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`


"""" Pretty sure just having a powerline fonts makes this obsolete """"

" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
"
"" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

