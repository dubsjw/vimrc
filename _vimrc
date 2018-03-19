set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set rtp+=$VIM/vim74/bundle/Vundle.vim
call vundle#begin('$VIM/vim74/bundle/')

Plugin 'Vundle.vim'
Plugin 'beigebrucewayne/Turtles'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'

call vundle#end()

colorscheme turtles
set autoindent                       " turn on auto indent
set backspace=indent,eol,start       " Makes backspace work as expected
set backupdir=C:/vimswap
set clipboard=unnamed                " Yank and Put commands use the system clipboard
set colorcolumn=100                  " Draw right margin at 80 chars
set completeopt=menu,longest         " Show a popup menu with the longest common prefix selected
set copyindent                       " Indent follows previous line
set cscopetag                        " Search both cscope dbs and ctags files for tags
set csto=0                           " Search cscope dbs before ctags files
set directory=C:/vimswap
set expandtab                        " Expand tabs to spaces
set fileformats=unix,dos,mac         " support all three, in this order
set foldlevelstart=100               " Open all folds by default
set foldmethod=syntax                " Enable folds defined by syntax (i.e. functions)
set formatoptions+=r                 " Enable continuation of comments after a newline
set hid                              " Change buffer without saving
set history=40                       " Save 20 lines of command history
set hlsearch                         " Turn on search highlighting
set ignorecase                       " Ignore case in searches
set ignorecase                      " Case insensitive searching
set incsearch                        " Highlight search string as you type
set laststatus=2                     " Turn on the status line always
set lazyredraw                       " Don't redraw unless we need to
set lines=60 columns=200
set list                             " Show control and whitespace characters (tabs, spaces, etc.)
set listchars=tab:>-,trail:-         " Show only trailing spaces and tabs
set mat=2                            " How long to blink matching braces for
set nobackup                         " Do not create backup files before editing
set noerrorbells                     " Turn off auditory bells
set noswapfile                       " Do not create a swap file for files before editing
set nowrap                           " Turn off line wrapping so long lines extend off screen
set nowritebackup                    " Do not create backup files before writing
set number                           " Turn on line numbering
set omnifunc=syntaxcomplete#Complete " Auto complete based on syntax
set relativenumber
set shiftwidth=4                     " Sets the size used for Vim's re-indent operator ( Shift-> and Shift-< )
set showmatch                        " Highlight matching braces
set smartcase                        " Don't ignore case when search term contains capitals
set smartcase                       " Automatically switch to a case-sensitive search if capital letters are entered
set so=5                             " scrolling activates at 7 lines from the top or bottom of screen
set softtabstop=4                    " Backspace over expanded tabs
set tabstop=4                        " Tabs equivalent to 4 spaces
set tags=tags;/                      " Search from current directory to root for ctags db
set textwidth=79
set title
set undodir=$HOME/.vimundo           " Set directory for storing undo files
set undofile                         " Turn on persistent undo
set visualbell t_vb=                 " Turn off visual and error bells
set whichwrap+=<,>,[,],h,l           " Make cursor keys wrap line
set wildmenu
set wildmode=list:full

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <C-n> :NERDTreeToggle<CR>

" Set font stuff.
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif


