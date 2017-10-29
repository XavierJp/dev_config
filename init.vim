
" VIM-PLUG
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" CTRLP
Plug 'kien/ctrlp.vim'

" AUTO PAIR
Plug 'jiangmiao/auto-pairs'

" AIRLINE BAR
Plug 'vim-airline/vim-airline'

" AIRLINE THEMES
Plug 'vim-airline/vim-airline-themes'

" Indetn line
Plug 'Yggdroot/indentLine'

" Syntastic
Plug 'scrooloose/syntastic'

" multiple cursors
Plug 'terryma/vim-multiple-cursors'

" python pep8 checker
Plug 'nvie/vim-flake8', { 'for' : 'python' }

" Deoplete auto completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'steelsojka/deoplete-flow', {'for' : 'javascript'}

" javascript true colors
Plug 'pangloss/vim-javascript', {'for' : 'javascript'}

" Nova color scheme
Plug 'trevordmiller/nova-vim'

" Initialize plugin system
call plug#end()

" **************
" PLUGINS CONFIG
" *************

" Deoplete
let g:deoplete#enable_at_startup = 1

"  Deoplete + flow-bin
let g:deoplete#sources#flow#flow_bin = '/urs/local/bin/flow'


" CtrlP
" ======
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.git']
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

" associate *.cshtml with html filetype
au BufRead,BufNewFile *.cshtml setfiletype html

" ******
" VISUAL
" ******

" *** undo history ***
set undofile
set undodir=$HOME/.vimundo/

set autoread            " autoread file realtime
set background=dark     " *** syntax & colors ***

colorscheme nova
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

" tabs and indenting
set autoindent
set backspace=indent,eol,start " use of <BS>
set smarttab
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set shiftwidth=4    " when indenting with '>', use 4 spaces width

set listchars=eol:¬,trail:·,extends:>,precedes:<
set list
set laststatus=2        " always show status line
set ruler               " line and column
set scrolloff=5        " minimal number of screen line around current line
set number              " show line numbers
set relativenumber      " relative line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

" custom characters
if &encoding ==# 'latin1' && has('gui_running')
    set encoding=utf-8
endif

imap jk <ESC>           " quickly enter normal mode

" Search

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " search is case insensitive

" *** deactivate arrow keys ***

for prefix in ['i', 'n', 'v']
    for key in ['<Up>', '<Down>', '<Left>', '<Right>']
        exe prefix . "noremap " . key . " <Nop>"
    endfor
endfor

