"PLUGIN SETTING
":PlugInstall
"comment out Plug '~', and :PlugClean
call plug#begin()

"status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"file tree
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'

"Themes
Plug 'tomasiser/vim-code-dark'

"Languages
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'
call plug#end()

"airline

"status line setting
let g:airline#extensions#default#layout = [
			\[ 'a', 'b', 'c' ],
			\[ 'z', 'y' ]
			\]

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_theme = 'minimalist'
"let g:airline_theme = 'luna'
let g:airline_theme = 'codedark'
let g:codedark_transparent=1
let g:codedark_conservative=1
colorscheme codedark

"file tree
let g:fern#renderer = 'nerdfont'
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

" Ctrl+n, show or hide the file tree
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>

"DEFAULT SETTNG
set cursorline
set noswapfile
set incsearch
set tabstop=4
set shiftwidth=4
set number
set autoindent
set smartindent
syntax on
set showmatch
set matchtime=1
set backspace=indent,eol,start
"set background=dark
