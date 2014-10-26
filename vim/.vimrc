set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nvie/vim-flake8'
Plugin 'nvie/vim-pyunit'
Plugin 'sjl/gundo.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'vim-scripts/pydoc.vim'
Plugin 'klen/rope-vim'
"Plugin 'tomtom/tlib_vim'

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Syntax Highlighting and Validation
syntax enable
filetype on
filetype plugin indent on
let g:pyflakes_use_quickfix = 0

" Code folding
set foldmethod=indent
set foldlevel=99

" Rope keybinding
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

" Ack Plugin
nmap <leader>a <Esc>:Ack!

" Gundo plugin
nmap <leader>g :GundoToggle<CR>

" Task lists
map <leader>td <Plug>TaskList

" Pep8 plugin
let g:pep8_map='<leader>8'

" Show line numbers
set number

" Show cursor position
set ruler

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=999

" Search settings
set incsearch  " search as you type
set ignorecase " ignore case when searching
set smartcase  " 

" Show autocomplete menus
set wildmenu

" Tab Completion and Documentation
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
set ofu=syntaxcomplete#Complete

" Word Wrapping
set formatoptions=l
set lbr
set textwidth=79

" Add the virtualenv's site-packages to vim path (python)
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" Generic Key Mappings
map :Q :q!

"Spell check
function! ToggleSpell()
	if !exists("b:spell")
		setlocal spell spelllang=en_us
		let b:spell = 1
	else
		setlocal nospell
		unlet b:spell
	endif
endfunction

nmap <F4> :call ToggleSpell()<CR>
imap <F4> <ESC>:call toggleSpell()<CR>a

set t_Co=16
set background=dark " dark | light "
colorscheme solarized "set back to dante if solarized isn't cool
set colorcolumn=80
call togglebg#map("<f5>")

" Use UTF-8
set encoding=utf-8

set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

" Show editing mode
set showmode

" Paste from clipboard
nmap <c-v> "+gp
" Copy to clipboard
vmap <c-c> "+y

" Mapping movement keys for split windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Always show the status line
set laststatus=2

" Format the statusline
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%h\ \ \ Line:\ %l/%L:%c

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source /home/aaron/.vimrc

" Gvim window size
"set lines=35 columns=99

" Block comment mappings
" Python comment
map ,# :s/^/#/<CR> 
" C++ comment
map ,/ :s/^/\/\//<CR>
" Clear comments
map ,c :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>

"fix backspace issues
set nocompatible
set backspace=2

" Powerline entries
set fillchars+=stl:\ ,stlnc:\
set ambiwidth=single
set guifont=Droid\ Sans\ Mono\ for\ Powerline