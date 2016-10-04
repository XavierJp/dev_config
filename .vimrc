
execute pathogen#infect()

" *** undo history ***
set undofile

set undodir=/home/xjouppe/.vimundo/


" autoread file realtime
set autoread

" *** syntax & colors ***
colorscheme base16-tomorrow-night " mustang

syntax enable           " enable syntax processing

" associate *.cshtml with php filetype
au BufRead,BufNewFile *.cshtml setfiletype html

" *** tabs and indentation ***

" autoindent on new line
filetype plugin indent on

set autoindent

set backspace=indent,eol,start " use of <BS>

set smarttab

set tabstop=4       " number of visual spaces per TAB

set softtabstop=4   " number of spaces in tab when editing

" when indenting with '>', use 4 spaces width
set shiftwidth=4

set expandtab       " tabs are spaces

set listchars=eol:¬,trail:·,extends:>,precedes:<
set list

" *** UI ***

set laststatus=2        " always show status line

set ruler               " line and column

set scrolloff=5        " minimal number of screen line around current line

set number              " show line numbers

set showcmd             " show command in bottom bar

set cursorline          " highlight current line

set wildmenu            " visual autocomplete for command menu

se  6 ¬
  7 set undodir=/home/xjouppe/.vimundo/¬
    8 ¬
      9 ¬
      t lazyredraw          " redraw only when we need to.

  5 set undofile¬
  set showmatch           " highlight matching [{()}]

story ***¬
set foldmethod=syntax

" custom characters
if &encoding ==# 'latin1' && has('gui_running')
    set encoding=utf-8
endif

imap jj <ESC>           " quickly enter normal mode

" Search

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase " search is case insensitive


" *** plugins ***

" CtrlP

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" javascript-libraries
let g:used_javascript_libs = 'angularjs,jquery'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1



" color column 80
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=10
endif

" FixwhiteSpace

map <F8> :FixWhitespace<CR>

" NERDTRee
map <F7> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Auto Pairs
"    <CR>  : Insert new indented line after return if cursor in blank brackets or quotes.
"    <BS>  : Delete brackets in pair
"    <M-p> : Toggle Autopairs (g:AutoPairsShortcutToggle)
"    <M-e> : Fast Wrap (g:AutoPairsShortcutFastWrap)
"    <M-n> : Jump to next closed pair (g:AutoPairsShortcutJump)
"    <M-b> : BackInsert (g:AutoPairsShortcutBackInsert)

let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<C-d>'
