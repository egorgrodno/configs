"  ██╗███╗   ███╗██████╗  ██████╗ ██████╗ ████████╗███████╗
"  ██║████╗ ████║██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝██╔════╝
"  ██║██╔████╔██║██████╔╝██║   ██║██████╔╝   ██║   ███████╗
"  ██║██║╚██╔╝██║██╔═══╝ ██║   ██║██╔══██╗   ██║   ╚════██║
"  ██║██║ ╚═╝ ██║██║     ╚██████╔╝██║  ██║   ██║   ███████║
"  ╚═╝╚═╝     ╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝

call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'kabbamine/yowish.vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree',                           { 'on': 'NERDTreeToggle' }

" Language agnostic plugins
Plug 'w0rp/ale',                                      { 'for': ['haskell', 'typescript', 'typescript.tsx'] }

" Haskell plugins
Plug 'neovimhaskell/haskell-vim',                     { 'for': 'haskell' }

" Typescript plugins
Plug 'HerringtonDarkholme/yats.vim',                  { 'for': ['typescript', 'typescript.tsx'] }
Plug 'prabirshrestha/asyncomplete.vim',               { 'for': ['typescript', 'typescript.tsx'] }
Plug 'runoshun/tscompletejob',                        { 'for': ['typescript', 'typescript.tsx'] }
Plug 'prabirshrestha/asyncomplete-tscompletejob.vim', { 'for': ['typescript', 'typescript.tsx'] }
call plug#end()

"   ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ 
"  ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ 
"  ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
"  ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
"  ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
"   ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ 

" Custom cursor
let &t_SI ="\<Esc>[6 q"
let &t_SR ="\<Esc>[4 q"
let &t_EI ="\<Esc>[2 q"

set autochdir
set cursorline
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set nocompatible
set number
set relativenumber
set showcmd
set smartcase
set swapfile

set conceallevel =1
set dir          =~/.vimtmp
set encoding     =UTF-8
set history      =999
set scrolloff    =999
set shiftwidth   =4
set tabstop      =4
set ttimeoutlen  =0

set wildignore +=*/tmp/*,*.so,*.swp,*.zip,*.svg,*.png,*.jpg,*.gif,node_modules

let g:enable_bold_font   =1
let g:enable_italic_font =1

let g:airline#extensions#ale#enabled     =1
let g:airline#extensions#branch#enabled  =1
let g:airline#extensions#tabline#enabled =1
let g:airline_powerline_fonts            =1

let g:NERDTreeWinSize =50

let g:ale_lint_delay =200

let g:tscompletejob_mappings_disable_default =1

let g:yowish = {
\ 'term_italic':    1,
\ 'comment_italic': 1,
\}

let g:ale_linters = {
\ 'haskell':    ['stack_ghc', 'hdevtools', 'hlint', 'hie'],
\ 'typescript': ['tsserver', 'tslint'],
\}

let g:ale_fixers = {
\ 'haskell':    ['brittany'],
\ 'typescript': ['tslint', 'prettier'],
\}

"  ████████╗██╗  ██╗███████╗███╗   ███╗███████╗
"  ╚══██╔══╝██║  ██║██╔════╝████╗ ████║██╔════╝
"     ██║   ███████║█████╗  ██╔████╔██║█████╗  
"     ██║   ██╔══██║██╔══╝  ██║╚██╔╝██║██╔══╝  
"     ██║   ██║  ██║███████╗██║ ╚═╝ ██║███████╗
"     ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝

syntax on
set termguicolors
colorscheme yowish

"  ██╗  ██╗███████╗██╗   ██╗██████╗ ██╗███╗   ██╗██████╗ ██╗███╗   ██╗ ██████╗ ███████╗
"  ██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔══██╗██║████╗  ██║██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝
"  █████╔╝ █████╗   ╚████╔╝ ██████╔╝██║██╔██╗ ██║██║  ██║██║██╔██╗ ██║██║  ███╗███████╗
"  ██╔═██╗ ██╔══╝    ╚██╔╝  ██╔══██╗██║██║╚██╗██║██║  ██║██║██║╚██╗██║██║   ██║╚════██║
"  ██║  ██╗███████╗   ██║   ██████╔╝██║██║ ╚████║██████╔╝██║██║ ╚████║╚██████╔╝███████║
"  ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝

" Unmap arrow keys
no <down>   <Nop>
no <left>   <Nop>
no <right>  <Nop>
no <up>     <Nop>
ino <down>  <Nop>
ino <left>  <Nop>
ino <right> <Nop>
ino <up>    <Nop>
vno <down>  <Nop>
vno <left>  <Nop>
vno <right> <Nop>
vno <up>    <Nop>

" Change leader key
map <Space> <leader>

" Save & quit
nmap <leader>w :w<CR>
nmap <leader>q :wq<CR>
nmap <A-q>     :qa!<CR>

" Buffer manipulation
nmap <silent> <C-l> :bn<CR>
nmap <silent> <C-h> :bp<CR>
nmap <silent> <C-w> :bd<CR>

" Window manipulation
nmap <silent> <C-A-k> :wincmd k<CR>
nmap <silent> <C-A-j> :wincmd j<CR>
nmap <silent> <C-A-h> :wincmd h<CR>
nmap <silent> <C-A-l> :wincmd l<CR>

" Toggle search highlighting
nmap <silent> <F3> :set hlsearch!<CR>

" Toggle Nerdtree
nmap <silent> <C-n> :NERDTreeToggle<CR>

" IDE keybindings
nmap <silent> <C-j>      <Plug>(ale_next_wrap)
nmap <silent> <C-k>      <Plug>(ale_previous_wrap)
nmap <silent> <leader>e  <Plug>(ale_detail)
nmap <silent> <leader>d  :ALEGoToDefinitionInTab<CR>
nmap <silent> <leader>rf <Plug>(TsCompleteJobReferences)
nmap <silent> <leader>rn <Plug>(TsCompleteJobRename)
nmap <silent> <leader>f  :ALEFix<CR>
