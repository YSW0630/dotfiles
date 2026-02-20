" Appearance and Interface
set background=dark        " Use dark background color scheme
set cursorline             " Highlight current line
set nocursorcolumn         " Highlight current column
set laststatus=2           " Always display the status line
set ruler                  " Show cursor position
set showcmd                " Display typed command in the bottom right
set showtabline=2          " Always show tab bar
set splitbelow             " Horizontal splits open below current window
set splitright             " Vertical splits open to the right
set wildmenu               " Enhanced command-line completion

" Clipboard and Shell
set clipboard=unnamedplus  " Use system clipboard
set shell=/bin/bash        " Set shell to /bin/zsh

" Completion Options
set pumheight=10           " Set popup menu height for completion to 15 lines
set complete+=kspell       " Use dictionary words with spell check"
set completeopt=menu,menuone,noselect,preview "popup
"set completepopup=height:10,width:60,highlight:Terminal

" Cursor and Highlighting
set hlsearch               " Highlight search results
set incsearch              " Incremental search
set lazyredraw             " Improves performance when running macros
set mouse=a                " Enable mouse in all modes
set ttymouse=xterm2        " Makes the mouse draggable in tmux

" Editing and Indentation
set autoindent             " Auto-indent new lines
set autoread               " Reload files changed outside Vim
set cindent                " C-style indentation
set cinoptions+=g0         " Do not add extra indentation inside braces {}
set cinoptions+=:0         " Do not indent case labels in switch statements
set cinoptions+=N-s        " Do not add extra indentation inside C++ namespaces
set cinoptions+=(0         " Do not indent function arguments on line breaks
set smarttab               " Insert shiftwidth spaces with <Tab>
set smartcase              " Case-sensitive search when using uppercase
set tabstop=2              " Number of spaces for <Tab>
set shiftwidth=2           " Indent size
set softtabstop=2          " Spaces per <Tab> when editing
set expandtab              " Use spaces instead of tabs
set wrap                   " Wrap long lines
set linebreak              " Wrap lines at word boundaries

" File and Buffer Management
set hidden                 " Allow switching buffers without saving
set history=100            " Command history size
set nofoldenable           " Disable code folding by default
set report=0               " Always show change reports

" Regex and Search
set magic                  " Use extended regex
set regexpengine=1         " Use old regex engine
set ignorecase             " Case-insensitive search
set wildignorecase         " Case-insensitive file completion
set wrapscan               " Wrap search around file

" Notifications and Bells
set noerrorbells           " Disable error bells
set novisualbell           " Disable Visual flash

" Mode and Behavior
set gdefault               " Global flag for substitutions
set nostartofline          " Maintain cursor column when jumping
set timeout                " Enable mapped sequence timeout
set timeoutlen=400         " Timeout length in ms
set virtualedit=block      " Allow free cursor movement in visual block mode

" Scrolling and View
set scrolloff=10           " Start scrolling 10 lines before edge
set sidescrolloff=0        " No side scrolling offset

" Undo Memory
set undodir=~/.vim/undodir
set undofile

" Add some packs
packadd termdebug

" File Type Detection and Plugins
filetype on                " Enable file type detection
filetype plugin indent on  " Load file type plugins with indentation
syntax enable              " Enable syntax highlighting

" Williamlin's number
set nu
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set rnu
	autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

" Remember Last Cursor Position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Python highlighting
let python_highlight_all=1
let python_highlight_space_errors=0

" Recursively upward toward (included current directory) the root directory (/)
" However, I can use '$ vim .', then use nerdtree to nevigate
"set tags=./tags;/,./TAGS;/,~/.vim/system.tags
