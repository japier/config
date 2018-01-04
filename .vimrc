
syntax enable
syntax on
set background=dark
set fenc=utf-8
set ruler

set history=9999
set formatoptions+=n


filetype plugin on
filetype indent on
set clipboard+=unnamed

set number
set showmatch

set formatoptions=rq
set smartcase
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set autoindent
let mapleader=','
highlight ExtraWhitespace ctermbg=red guibg=red

"
autocmd! bufwritepost .vimrc source %

"New

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-endwise'
Plugin 'geoffharcourt/vim-matchit'
Plugin 'vim-scripts/ruby-matchit'
Plugin 'pangloss/vim-javascript'
Plugin 'mileszs/ack.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jacoborus/tender'
Plugin 'neomake/neomake'
Plugin 'dougnukem/vim-swap-lines'
Plugin 'mxw/vim-jsx'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'vim-syntastic/syntastic'
Plugin 'gcorne/vim-sass-lint'
Plugin 'mattn/emmet-vim'
Plugin 'mhartington/oceanic-next'
Plugin 'airblade/vim-gitgutter'
Plugin 'fleischie/vim-styled-components'
Plugin 'Shougo/deoplete.nvim'
Plugin 'carlitux/deoplete-ternjs'
Plugin 'Yggdroot/indentLine'
Plugin 'kien/ctrlp.vim'
Plugin 'johngrib/vim-game-snake'
Plugin 'johngrib/vim-game-code-break'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"Neomake
autocmd BufRead,BufWrite * :Neomake
let g:neomake_javascript_enabled_makers = ['eslint']

"Todos los pishis plugins

call vundle#end()            " required
filetype plugin indent on    " required

"vim -jsx
let g:jsx_ext_required = 0

" Cntlp
set wildignore+=*/tmp/*,*/bin/*,*/node_modules/*,*/bower_components/*,*/vendor/*,*.so,*.swp,*.zip,*.lock,*/vendor/*

"Snipets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=$HOME.'/.vim/UltiSnips'

"Moore
map <C-a> :NERDTreeToggle<CR>
map <C-n> :noh<CR>
imap jk <ESC>

"Git gutter
map <C-g> :GitGutterToggle<CR>
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

set undofile
set undodir=~/.vim/vimundo/
set undolevels=1000
colorscheme OceanicNext

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set nolazyredraw

"Remove white spaces
autocmd BufWritePre * %s/\s\+$//e

"indent
let g:indentLine_enabled = 1
let g:indentLine_color_gui = '#444444'


" Deoplete
set runtimepath+=/Users/jcastro/.vim/bundle/deoplete.nvim/rplugin/python3/deoplete
let g:deoplete#enable_at_startup = 1
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete

"Add extra filetypes
let g:tern#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '...'
                \ ]


let g:python3_host_prog = '/Users/jcastro/.pyenv/shims/python3'
let g:python2_host_prog = '/Users/jcastro/.pyenv/shims/python2'

"Syntaxtic config"
let g:syntatic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_ = 1
let g:syntastic_javascript_eslint_args = ['eslint']
let g:syntastic_sass_checkers=["sasslint"]
let g:syntastic_scss_checkers=["sasslint"]
autocmd BufNewFile,BufReadPre *.js{,x}  let b:syntastic_checkers = ['eslint']

