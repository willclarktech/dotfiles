" Set up Vundle

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" My plugins
Plugin 'editorconfig/editorconfig-vim'
Plugin 'roosta/vim-srcery'
Plugin 'jiangmiao/auto-pairs'
Plugin 'pangloss/vim-javascript'

call vundle#end()
filetype plugin indent on
" To ignore plugin indent changes, instead use:
" filetype plugin on

""""""""""""""""

" Non-Vundle settings

" Basics
set ruler
set number
set numberwidth=5
set showcmd
colorscheme torte
syntax on

" Width
set textwidth=100
set colorcolumn=+1

" Tabs
set tabstop=4
set shiftwidth=2
set noexpandtab

" Display extra whitespace
" set list listchars=tab:»·,trail:·,nbsp:·,eol:◊
set list listchars=tab:»·,trail:·,nbsp:·

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
	let col = col('.') - 1
	if !col || getline('.')[col - 1] !~ '\k'
		return "\<tab>"
	else
		return "\<c-p>"
	endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" Plugin-dependent settings
colorscheme srcery
