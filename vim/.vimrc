let mapleader = ","

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'vim-scripts/pydoc.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ervandew/supertab'
Plugin 'fholgado/minibufexpl.vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'honza/vim-snippets'
Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'sjl/gundo.vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'

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


" Ack Plugin
nmap <leader>a <Esc>:Ack!


" Gundo plugin
nmap <leader>g :GundoToggle<CR>


" Nerdtreee
map <C-n> :NERDTreeToggle<CR>


" Configuration for Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsListSnippets="<leader>l"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]


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

" Key Mappings
map :Q :q!
nmap j gj
nmap k gk
noremap :p :!python
noremap :P :!python


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


"set t_Co=16
let g:solarized_termcolors=256
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
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif


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

" Syntastic checkers
" C checkers
let g:syntastic_c_check_header = 1
let g:syntastic_c_auto_refresh_includes = 1
let g:syntastic_c_compiler_options = '-ansi'
