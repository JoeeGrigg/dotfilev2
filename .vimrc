" Joe Grigg's .vimrc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Core Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Leader Key
let mapleader=','

" Colours & Sytax Highlighting
set t_Co=256
set t_ut=
syntax on

" Shell
set shell=/bin/sh 

" Character Encoding
set encoding=utf8

" Vundle
source ~/.vimrc.bundles

" Tab & Indentation
set expandtab
set tabstop=2
set backspace=2
set shiftwidth=2

" Enable mouse mode
set mouse=a
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

" Disable text wrapping
set nowrap

" Remove esc delay
set timeoutlen=1000 ttimeoutlen=0

" Other
set nocompatible
set nofoldenable

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set pastetoggle=<F3>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Style
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 120 column marker
highlight ColorColumn ctermbg=gray
set colorcolumn=120

" Colours
if (has("termguicolors"))
  set termguicolors
endif
set background=dark
colorscheme spacemacs-theme

" Vim Airline
let g:airline_left_sep=''
let g:airline_right_sep=''
set laststatus=2
if !has('gui_running')
  v	set t_Co=256
endif
let g:airline_powerline_fonts = 1 
let g:airline_theme='light'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" autocmd VimEnter * NERDTree
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=0
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\~$', '\.swp$', '\.git$', '\.hg', '\.svn', '\.bzr', '\.sass-cache']
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1
nmap <silent> <C-D> :NERDTreeToggle<CR>

" Devicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderPatternMatching = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sortware
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Rubocop
let g:vimrubocop_config = '~/.rubocop/config.yml'
