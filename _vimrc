set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

color turtles
set directory=C:/vimswap
set backupdir=C:/vimswap
set lines=60 columns=200
set relativenumber
set backspace=indent,eol,start       " Makes backspace work as expected
set whichwrap+=<,>,[,],h,l           " Make cursor keys wrap line
set autoindent                       " turn on auto indent
set copyindent                       " Indent follows previous line
set tabstop=4                        " Tabs equivalent to 4 spaces
set shiftwidth=4                     " Sets the size used for Vim's re-indent operator ( Shift-> and Shift-< )
set expandtab                        " Expand tabs to spaces
set softtabstop=4                    " Backspace over expanded tabs
set number                           " Turn on line numbering
set colorcolumn=100                  " Draw right margin at 80 chars
set nowrap                           " Turn off line wrapping so long lines extend off screen
set foldmethod=syntax                " Enable folds defined by syntax (i.e. functions)
set foldlevelstart=100               " Open all folds by default
set so=5                             " scrolling activates at 7 lines from the top or bottom of screen
set nobackup                         " Do not create backup files before editing
set nowritebackup                    " Do not create backup files before writing
set noswapfile                       " Do not create a swap file for files before editing
set showmatch                        " Highlight matching braces
set mat=2                            " How long to blink matching braces for
set visualbell t_vb=                 " Turn off visual and error bells
set noerrorbells                     " Turn off auditory bells
set hid                              " Change buffer without saving
set clipboard=unnamed                " Yank and Put commands use the system clipboard
set laststatus=2                     " Turn on the status line always
set undodir=$HOME/.vimundo           " Set directory for storing undo files
set undofile                         " Turn on persistent undo
set cscopetag                        " Search both cscope dbs and ctags files for tags
set csto=0                           " Search cscope dbs before ctags files
set history=20                       " Save 20 lines of command history
set hlsearch                         " Turn on search highlighting
set ignorecase                       " Ignore case in searches
set smartcase                        " Don't ignore case when search term contains capitals
set incsearch                        " Highlight search string as you type
set tags=tags;/                      " Search from current directory to root for ctags db
set fileformats=unix,dos,mac         " support all three, in this order
set list                             " Show control and whitespace characters (tabs, spaces, etc.)
set listchars=tab:>-,trail:-         " Show only trailing spaces and tabs
set lazyredraw                       " Don't redraw unless we need to
set formatoptions+=r                 " Enable continuation of comments after a newline
set omnifunc=syntaxcomplete#Complete " Auto complete based on syntax
set completeopt=menu,longest         " Show a popup menu with the longest common prefix selected
set wildmode=list:full
set wildmenu
set title
set ignorecase                      " Case insensitive searching
set smartcase                       " Automatically switch to a case-sensitive search if capital letters are entered


" Set font stuff.
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h10:cANSI
  endif
endif

