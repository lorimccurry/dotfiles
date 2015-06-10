set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'
 Plugin 'tpope/vim-surround'
 Plugin 'tomtom/tcomment_vim'
 Plugin 'scrooloose/nerdtree'
 Plugin 'mattn/emmet-vim' 
 Plugin 'altercation/vim-colors-solarized'
 Plugin 'tpope/vim-fugitive'
 Plugin 'airblade/vim-gitgutter'
 Plugin 'powerline/powerline'
 Plugin 'nathanaelkane/vim-indent-guides'
 Plugin 'flazz/vim-colorschemes'
 Plugin 'kien/ctrlp.vim'
 Plugin 'pangloss/vim-javascript'
 Plugin 'othree/javascript-libraries-syntax.vim'
 Plugin 'burnettk/vim-angular'
 Plugin 'matthewsimo/angular-vim-snippets'
 "Plugin 'scrooloose/syntastic' 
 Plugin 'Townk/vim-autoclose'
 Plugin 'vim-scripts/closetag.vim'
 Plugin 'bling/vim-airline'
 
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on

" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

"if $VIM_PLUGINS != 'NO'
"  runtime! autoload/pathogen.vim
"  if exists('g:loaded_pathogen')
"    execute pathogen#infect('~/.vimbundles/{}', '~/.vim/bundle/{}')
"  endif
"endif

syntax on
filetype plugin indent on

set visualbell

set wildmenu
" set wildmode=list:longest,full

set splitright
set splitbelow

set hidden

set antialias
set encoding=utf-8
set guifont=Monaco:h16
set guioptions-=T guioptions-=e guioptions-=L guioptions-=r
set shell=bash

augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
  let g:indent_guides_auto_colors = 0
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=236
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=235 
augroup END

let g:indent_guides_enable_on_vim_startup = 1

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
