call plug#begin()
  Plug 'jpo/vim-railscasts-theme'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-fugitive'
  Plug 'Raimondi/delimitMate'
  Plug 'tomtom/tcomment_vim'
  Plug 'kien/ctrlp.vim'
  Plug 'gabesoft/vim-ags'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'

  " syntax checkers and styling
  Plug 'scrooloose/syntastic'
  Plug 'elixir-lang/vim-elixir'
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-rails'
  Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
  Plug 'hail2u/vim-css3-syntax'
  Plug 'othree/html5.vim'

  " autocompleter and snippets
  " Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
call plug#end()

colorscheme railscasts
syntax enable " enable syntax processing
set guifont=Monaco\ for\ Powerline:h18
set guitablabel=%M%t
if has("gui_macvim")
  set invmmta                     " make Mac's Option key behave as the Meta key
endif

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

set autoread autowrite          " reads modifications and writes without asking
set fileformats+=mac

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set nobackup                    " don't make backup files
set noswapfile                  " do not use swap files (brave mode on!)

set relativenumber number
set cursorline
set lazyredraw                  " redraw only when we need to
set showmatch                   " highlight matching [{()}]
set showcmd
set noshowmode
set laststatus=2
set showbreak=…
set nowrap
set linebreak                   " when wrapping, uses chars listed in breakt
set breakat=\ ^I!@*-+;:,./?     " when wrapping, break at these characters
set list
set listchars=tab:▻⋅,trail:⋅,nbsp:⋅
set visualbell t_vb=            "disable visual bell
set cursorline
set virtualedit=block           " allow moving past end of line in block selection mode
filetype indent on              " load filetype-specific indent files

" visual autocomplete for command menu
set wildmenu
set wildmode=full
set wildignore+=*.jpg,*.png,*.gif,*.avi,*.wmv,*.ogg,*.mp3,*.mov,*.zip,*.gz,*.bz,*.tar

set mouse=a ttymouse=xterm2

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

set splitbelow
set splitright
set noequalalways

set incsearch ignorecase smartcase
set hlsearch
set gdefault
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set nrformats-=octal nrformats+=alpha

"folding settings
set foldmethod=indent           " fold based on indent
set foldnestmax=3               " deepest fold is 3 levels
set foldlevelstart=99           " open folds by default
set foldenable                  " fold by default

" space open/closes fold
nnoremap <space> za

" move vertically by visual lin
nnoremap j gj
nnoremap k gk

"switch to last used buffer. fucking useful!
nnoremap <leader>; :e#<CR>

" shortcuts to open and reload .vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:edit $MYVIMRC<cr>
nnoremap <leader>rv :source $MYVIMRC<cr>

"map Q to something useful
noremap Q gq

"make Y consistent with C and D
nnoremap Y y$

"typos in command line
cabbrev W w
cabbrev Wq wq
cabbrev Q q

" shortcuts to save and quit
nmap <leader>q  :q <CR>
nmap <leader>w  :w <CR>

" K = inverted J: join line up
map K ddpkJ

"easy indent
vmap > >gv
vmap < <gv

" splits made easy
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>s <C-w>s<C-w>j

"OMG, no arrow keys
map <Left>  <Nop>
map <Right> <Nop>
map <Up>    <Nop>
map <Down>  <Nop>

" highlight last inserted text
nnoremap gV `[v`]

" declutter all windows
nnoremap <leader>o <C-w>o

" strip all trailing whitespaces
nnoremap <leader>- :%s/\s\+$//<cr>:let @/=''<CR>

"Macbook Pro touch bar has no physical ESC
" inoremav <S-Tab> <Tab>
" vnoremap <Tab> <Esc>
