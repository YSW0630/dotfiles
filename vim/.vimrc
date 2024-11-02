"  _  __(_)_ _  ________
" | |/ / /  ' \/ __/ __/
" |___/_/_/_/_/_/  \__/ 
"
" Configuration

" Appearance and Interface
set background=dark        " Use dark background color scheme
set cursorline             " Highlight current line
set laststatus=2           " Always display the status line
set ruler                  " Show cursor position
set showcmd                " Display typed command in the bottom right
set showtabline=2          " Always show tab bar
set splitbelow             " Horizontal splits open below current window
set splitright             " Vertical splits open to the right
set wildmenu               " Enhanced command-line completion

" Clipboard and Shell
set clipboard=unnamedplus  " Use system clipboard
set shell=/bin/sh          " Set shell to /bin/sh

" Cursor and Highlighting
set guicursor=             " Default cursor style
set hlsearch               " Highlight search results
set incsearch              " Incremental search
set lazyredraw             " Improves performance when running macros
set mouse=a                " Enable mouse in all modes

" Editing and Indentation
set autoindent             " Auto-indent new lines
set autoread               " Reload files changed outside Vim
set cindent                " C-style indentation
set smarttab               " Insert shiftwidth spaces with <Tab>
set smartcase              " Case-sensitive search when using uppercase
set tabstop=2              " Number of spaces for <Tab>
set shiftwidth=2           " Indent size
set softtabstop=2          " Spaces per <Tab> when editing
set noexpandtab            " Use actual tab character
set wrap                   " Wrap long lines
set linebreak              " Wrap lines at word boundaries

" File and Buffer Management
set hidden                 " Allow switching buffers without saving
set history=100            " Command history size
set nofoldenable           " Disable code folding by default
set autoread               " Auto-read file changes
set report=0               " Always show change reports

" Regex and Search
set magic                  " Use extended regex
set regexpengine=1         " Use old regex engine
set ignorecase             " Case-insensitive search
set wildignorecase         " Case-insensitive file completion
set wrapscan               " Wrap search around file

" Notifications and Bells
set noerrorbells           " Disable error bells
set visualbell             " Visual flash instead of sound
set ttyfast                " Optimize terminal communication

" Mode and Behavior
set gdefault               " Global flag for substitutions
set nostartofline          " Maintain cursor column when jumping
set noshowmode             " Hide mode display
set timeout                " Enable mapped sequence timeout
set timeoutlen=400         " Timeout length in ms
set virtualedit=block      " Allow free cursor movement in visual block mode

" Scrolling and View
set scrolloff=10           " Start scrolling 10 lines before edge
set sidescrolloff=0        " No side scrolling offset

" File Type Detection and Plugins
filetype on                " Enable file type detection
filetype plugin indent on  " Load file type plugins with indentation
syntax enable              " Enable syntax highlighting

" Exit Mappings
inoremap jk <C-[><left>  " Exit insert mode with 'jk'
inoremap jj <C-[><left>  " Exit insert mode with 'jj'

" Undo Memory
if has('nvim')
    set undodir=~/.cache/nvim/undodir
else
    set undodir=~/.vim/undodir
endif
set undofile               " Save undo history

" Shift Line Mappings
nnoremap <M-Up> :m-2<CR>   " Move line up
nnoremap <M-Down> :m+<CR>  " Move line down
inoremap <M-Up> <Esc>:m-2<CR>i
inoremap <M-Down> <Esc>:m+<CR>i

" Yank to End of Line
nnoremap Y y$

" Remember Last Cursor Position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Change Cursor Style
let &t_EI = "\e[2 q"       " Normal mode: block
let &t_SI = "\e[6 q"       " Insert mode: beam
let &t_SR = "\e[4 q"       " Replace mode: underline

if !exists('vscode') && filereadable('/home/pacfrog/.vim/MyVimConf.vim')
    source /home/pacfrog/.vim/MyVimConf.vim
endif