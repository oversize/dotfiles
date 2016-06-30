scriptencoding utf-8
set encoding=utf-8
set nocompatible              " be iMproved, required   
filetype off                  " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.config/nvim/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/vim-airline/vim-airline.git'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'https://github.com/ctrlpvim/ctrlp.vim'

" Typescript Stuff. 
" TS completion using th TSServer
Plugin 'https://github.com/Quramy/tsuquyomi'
" TS Syntax
Plugin 'https://github.com/leafgarland/typescript-vim'

" colorschemes:
" Plugin 'https://github.com/Lokaltog/vim-distinguished'
Plugin 'https://github.com/nanotech/jellybeans.vim'

" all of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line<Paste>

" Make Ctrl-N toggle NerdTabs
nmap <C-n> :NERDTreeTabsToggle<CR> 

" What is the leader Key? in short -> \
" http://usevim.com/2012/07/20/vim101-leader/
" reset the Leader key to , 
let mapleader=","
nmap <leader>l :set list!<CR>
set list
" Make Tabs, spaces and eol characters nicer
" set listchars="tab:▸,eol:¬"
set listchars=eol:~,tab:>-,trail:.
"set listchars=eol:~,tab:->extends:>

" Expand tabs to spaces
set expandtab

" Make a tab 4 spaces (But is this realy working?)
set tabstop=4
set shiftwidth=4
set nu " Show Linenumbers

" For Some Reason the syntax plugin did not recognize ts files, heres is how
autocmd BufNewFile,BufRead *.ts   set syntax=typescript

colorscheme jellybeans " The Colorscheme used
set cursorline         " See the line highlighted where the cursor is

" Highlight for extraspace
" Taken From http://vim.wikia.com/wiki/Highlight_unwanted_spaces
"highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" Show trailing whitespace:
"match ExtraWhitespace /\s\+$/

set nobackup
set nowritebackup 
set noswapfile


" Switching of tabs using PageUp and PageDown
" OSX Terminal does not seem to send Alt Keys correctly
" It should work though: Figure that out later.
" http://stackoverflow.com/questions/7501092/can-i-map-alt-key-in-vim
" http://stackoverflow.com/questions/11723651/mapping-alt-leftright-to-move-tabs
"
map <PageUp> :tabp<CR>
map <PageDown> :tabn<CR>

