set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'

Bundle 'nono/vim-handlebars'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'vim-ruby/vim-ruby'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-fugitive'
Bundle 'comscrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'chriskempson/base16-vim'
Bundle 'benmills/vimux'
Bundle 'chrishunt/color-schemes'
Bundle 'thoughtbot/vim-rspec'
Bundle 'rking/ag.vim'
" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0
set clipboard=unnamed

set cursorline
hi CursorLine cterm=NONE ctermbg=darkgray ctermfg=NONE guibg=darkred guifg=white

set autoread                    "Reload files changed outside vim
"set autowrite

syntax on

" Autocomplete
set wildmode=longest,list
set wildmenu

" Tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
"set viminfo='100,f1  "Save up to 100 marks, enable capital marks

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

let ruby_space_errors = 1

nnoremap <leader>h :set hlsearch!<CR>

set t_Co=256

" syntax enable
set background=dark
colorscheme vimbrant
highlight ColorColumn ctermbg=LightGray
highlight ColorColumn guibg=LightGray


let mapleader = "\<Space>"

map <leader>w <c-w>w
map <leader>x :Gblame<CR>

au! BufNewFile,BufRead *.god set ft=ruby
au BufRead,BufNewFile * set colorcolumn=80

imap <c-l> <space>=><space>

nmap <leader>f :CtrlP<CR>
nmap <leader>t :tabnew<CR>
nmap 1 :tabp<CR>
nmap 2 :tabn<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>

nmap <leader>b :CtrlPMRU<CR>

let g:ctrlp_custom_ignore = 'build/\|\.agility-shared\|.git'
map <S-Right> :tabn<CR>
map <S-Left>  :tabp<CR>
map <leader>n :NERDTreeToggle<CR>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>a :call RunAllSpecs()<CR>
map <Leader>s :call RunNearestSpec()<CR>
let g:rspec_command = "!rspec -fs {spec}"


set showcmd
set ruler

:set timeout timeoutlen=500
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
"imap <up> <nop>
"imap <down> <nop>

" ================= Vimux ===================
" Rub the current file with rspec
map <leader>rb :call VimuxRunCommand("clear; rspec -fs " . bufname("%"))<CR>
" Prompt for a command to run
map <leader>rp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <leader>rl :VimuxRunLastCommand<CR>
" Inspect runener pane
map <leader>ri :VimuxInspectRunner<CR>
" Close all other tmux panes in current window
map <leader>rx :VimuxClosePanes<CR>
" Close vim tmux runner opened by VimuxRubCommand
map <leader>rq :VimuxCloseRunner<CR>
" Interrup any command running  in the runner pane
map <leader>rs :VimuxInterruptRunner<CR>
" Give tmux pane 35% screen real estate
let g:VimuxHeight = "35"
" Split tmux pane horizontaly
let g:VimuxOrientation = "h"


:set lazyredraw
