set nocompatible

call plug#begin('~/.config/nvim/plugged/')
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'
" Typescript Stuff. 
" TS completion using th TSServer
Plug 'https://github.com/Quramy/tsuquyomi'
" TS Syntax
Plug 'https://github.com/leafgarland/typescript-vim'

" colorschemes:
Plug 'https://github.com/Lokaltog/vim-distinguished'
Plug 'https://github.com/nanotech/jellybeans.vim'

" all of your Plugins must be added before the following line
call plug#end()
" -----------------------------------------------

filetype plugin indent on
syntax on
" Make Ctrl-N toggle NerdTabs
nmap <C-n> :NERDTreeToggle<CR> 

" What is the leader Key? in short -> \
" http://usevim.com/2012/07/20/vim101-leader/
" reset the Leader key to , 
let mapleader=","
nmap <leader>l :set list!<CR>
set list
" Make Tabs, spaces and eol characters nicer
" set listchars="tab:▸,eol:¬"
set listchars=tab:>-,space:.,trail:.,eol:~
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

