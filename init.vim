" General -----------------------
syntax on
:set encoding=UTF-8
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set nowrap
:set softtabstop=4
:set mouse=a
:set splitbelow splitright "

"Localleader
:let mapleader='\'

"Plugins ------------------------
call plug#begin("~/local/share/nvim/plugged")
	
	"Color schemes
	Plug 'Mofiqul/dracula.nvim'

	"File explorer
	Plug 'scrooloose/nerdtree'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'ryanoasis/vim-devicons'
	Plug 'airblade/vim-gitgutter'
	Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
	Plug 'scrooloose/nerdcommenter'

	"JSX, TSX support
	Plug 'yuezk/vim-js'
	Plug 'HerringtonDarkholme/yats.vim'
	Plug 'maxmellon/vim-jsx-pretty'

	"Autoclose ([{
	Plug 'jiangmiao/auto-pairs' 

	"Auto complete, prettier, tslint
	Plug 'neoclide/coc.nvim'

	"List of CoC extensions
	let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-python']  

call plug#end()

" General II ------------------------

"Color scheme
colorscheme dracula

"Opening NERDTree onStart
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree
let g:NERDTreeWinPos = "right"


"Running code
augroup exe_code
		autocmd!

		"Execute python
 		autocmd FileType python nnoremap <buffer> <localleader>r
					\ :sp<CR> :term python3 %<CR> :startinsert<CR>
		
		"Execute JavaScript
		autocmd FileType javascript nnoremap <buffer> <localleader>r
					\ :sp<CR> :term node %<CR> :startinsert<CR>

		"Execute bash
		autocmd FileType bash,sh nnoremap < buffer> <localleader>r
					\ :sp<CR> :term bash %<CR> :startinsert<CR>

augroup END
