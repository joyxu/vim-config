"  ---------------------------------------------------------------------------
"  refer to : https://github.com/krisleech/turbo-vim/blob/master/bundles.vim
"  refer to : https://github.com/timss/vimconf/blob/master/.vimrc
"  ---------------------------------------------------------------------------

set nocompatible               " be iMproved

"  ---------------------------------------------------------------------------
"  Plugins
"  ---------------------------------------------------------------------------
filetype off                   " must be off before Vundle has run

let has_vundle=1
if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let has_vundle=0
endif

set runtimepath+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Color schemes
Plugin 'vim-scripts/Risto-Color-Scheme'

" Files
Plugin 'tpope/vim-markdown'

" Utility
Plugin 'ntpeters/vim-better-whitespace'  " show and strip eol whitespaces
Plugin 'nathanaelkane/vim-indent-guides' " display indent guides in code, sometime useful in too long methods
"Plugin 'vim-scripts/OmniCppComplete'

" IDE
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'bling/vim-airline'  		" a nice and lightweight bar
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/grep.vim.git'
Plugin 'vim-scripts/c.vim.git'
Plugin 'chazy/cscope_maps'
Plugin 'vivien/vim-linux-coding-style'
Plugin 'tomtom/tcomment_vim'

" Git
Plugin 'tpope/vim-fugitive'

" Tmux
"Plugin 'benmills/vimux'

Plugin 'majutsushi/tagbar' 		" display ctags in a side buffer

call vundle#end()

if has_vundle == 0
    :silent! PluginInstall
    :qa
endif

"  ---------------------------------------------------------------------------
"  General
"  ---------------------------------------------------------------------------
syntax enable					" syntax highlighting
filetype plugin indent on			" detect file plugin+indent
set nobackup                                    " disable backups
set cursorline                             	" hilight cursor line
set number                                  	" line numbers
set title                                   	" window title
set history=1000                                " default 20
set laststatus=2                                " always show statusline
set ttyfast                                     " for faster redraws etc
set lazyredraw
set ruler
set encoding=utf-8
let mapleader=","
set ai

"  ---------------------------------------------------------------------------
"  UI
"  ---------------------------------------------------------------------------
set t_Co=256
colorscheme risto

" Mouse in terminal!!! (good for resizing splits)
if has('mouse')
  set mouse=a
  set ttymouse=xterm2
endif

"  ---------------------------------------------------------------------------
"  Text Formatting
"  ---------------------------------------------------------------------------
set nowrap
set textwidth=79

"  ---------------------------------------------------------------------------
"  GREP settings
"  ---------------------------------------------------------------------------
nnoremap <silent> <F3> :Regrep<CR>

"  ---------------------------------------------------------------------------
"  Mappings
"  ---------------------------------------------------------------------------
set ignorecase                                  " by default ignore case
set smartcase                                   " sensitive with uppercase
set incsearch
set showmatch

"  ---------------------------------------------------------------------------
"  OmniCompletion
"  ---------------------------------------------------------------------------


"  ---------------------------------------------------------------------------
"  Supertab
"  ---------------------------------------------------------------------------
"let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

"  ---------------------------------------------------------------------------
"  Toggle tagbar (definitions, functions etc.)
"  ---------------------------------------------------------------------------
let g:tagbar_left = 0
let g:tagbar_width = 30
set tags=tags;/
noremap <F4> :TagbarToggle<CR>

"  ---------------------------------------------------------------------------
"  NERD_tree settings
"  ---------------------------------------------------------------------------
noremap <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks = 0
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"
let NERDTreeHijackNetrw = 1
"let NERDTreeQuitOnOpen = 1
let NERDTreeChDirMode = 2
let NERDTreeDirArrows = 1

" Easy commenting
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>
