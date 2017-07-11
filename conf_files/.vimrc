
" *** deactivate arrow keys ***

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


execute pathogen#infect()

" *******
" PLUGINS 
" *******

" CtrlP
" ======
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['trunk']
let g:ctrlp_custom_ignore = 'node_modules\|libs'
let g:ctrlp_max_files = 0 " no max CAREFUL as vim may become laggy

" Syntastic
" =========
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['flake8']

" javascript-libraries
" ====================
let g:used_javascript_libs = 'angularjs,jquery'

" Airline
" ======
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='murmur'


" Multi cursors
" =============
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-b>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" FixwhiteSpace
" =============
map <F8> :FixWhitespace<CR>

" NERDTRee
" =========
map <F7> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Auto Pairs
" ==========
"    <CR>  : Insert new indented line after return if cursor in blank brackets or quotes.
"    <BS>  : Delete brackets in pair
"    <M-p> : Toggle Autopairs (g:AutoPairsShortcutToggle)
"    <M-e> : Fast Wrap (g:AutoPairsShortcutFastWrap)
"    <M-n> : Jump to next closed pair (g:AutoPairsShortcutJump)
"    <M-b> : BackInsert (g:AutoPairsShortcutBackInsert)

let g:AutoPairsFlyMode = 0


" ***********************
" LANGUAGE SPECIFIC SETUP
" ***********************

"should use  : 
"au Filetype python source ~/.vim/scripts/python.vim
let python_highlight_all=1

" flag whitespace
au BufRead,BufNewFile *.js, *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" au BufNewFile,BufRead *.js

" associate *.cshtml with html filetype
au BufRead,BufNewFile *.cshtml setfiletype html

" ******
" VISUAL
" ******


" *** undo history ***
set undofile

set undodir=$HOME/.vimundo/


" autoread file realtime
set autoread

" *** syntax & colors ***
set background=dark

colorscheme hybrid
let g:hybrid_custom_term_colors = 1

" indent line
let g:indentLine_char = '|'

" color column 80
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=8
endif

" enable syntax
syntax enable

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

set relativenumber

set showcmd             " show command in bottom bar

set cursorline          " highlight current line

set wildmenu            " visual autocomplete for command menu

set lazyredraw          " redraw only when we need to.

set showmatch           " highlight matching [{()}]

" custom characters
if &encoding ==# 'latin1' && has('gui_running')
    set encoding=utf-8
endif

imap jj <ESC>           " quickly enter normal mode

" Search

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase " search is case insensitive


