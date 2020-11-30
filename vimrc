set nocompatible              " be iMproved, required
filetype off


" set rtp+=~/.vim/autoload/pathogen.vim
" runtime ~/.vim/autoload/pathogen.vim
" call pathogen#infect()
" call pathogen#helptags()

" filetype plugin indent on
" syntax on

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'autoload/pathogen.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'sirosen/vim-rockstar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Pathogen load


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
" syntax on
" colorscheme onedark

filetype plugin off

set laststatus=2
set t_Co=256
set background=dark

" set autoindent
" set smartindent
set smartcase
set wrap
set linebreak
set breakindent
set listchars=tab:>-,trail:~,extends:>,precedes:<
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set number
set list

" filetype plugin indent on
syntax on
au BufNewFile,BufRead *.jsc set filetype=javascript
au BufNewFile,BufRead ~/.work_aliases set filetype=sh

set t_Co=256


hi Normal ctermfg=White guifg=White

" Groups used in the 'highlight' and 'guicursor' options default value.
" hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
" hi ModeMsg term=bold cterm=bold gui=bold
" hi Cursor guibg=Grey guifg=NONE
" hi lCursor guibg=LightGrey guifg=NONE
" hi Directory term=bold ctermfg=DarkBlue guifg=Blue
hi LineNr term=underline ctermfg=White guifg=White
hi Search term=reverse ctermbg=Grey ctermfg=NONE guibg=Grey guifg=NONE
" hi Title term=bold ctermfg=DarkMagenta gui=bold guifg=Magenta
" hi WarningMsg term=standout ctermfg=DarkRed guifg=Red
" hi Folded term=standout ctermbg=Grey ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
" hi FoldColumn term=standout ctermbg=Grey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
hi CursorLine term=underline cterm=underline

" Colors for syntax highlighting
hi Constant term=underline ctermfg=Red guifg=Red guibg=grey95
hi Special term=bold ctermfg=Magenta guifg=Magenta guibg=grey95
hi Statement term=bold cterm=bold ctermfg=208 gui=bold guifg=LightRed
hi Comment ctermfg=Blue guifg=Blue
hi Identifier ctermfg=LightBlue guifg=LightBlue
hi PreProc term=bold cterm=bold ctermfg=Red gui=bold guifg=LightRed
hi Ignore ctermfg=LightGrey guifg=grey90

