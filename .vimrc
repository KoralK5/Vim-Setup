" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set belloff=all
set clipboard=unnamed
set <C-S-v> = "*p
set <C-c> = "*y

syntax on

if has('gui_running')
	set background=light
	let g:solarized_italic=0
	colorscheme solarized
	set guifont=Fixedsys:h12:cANSI:qDRAFT
endif

inoremap {<CR>  {<CR>}<Esc>O
inoremap {}     {}
map <C-a> <esc>ggVG<CR>

autocmd BufNewFile *.cpp 0r C:\Users\kulac\Coding\Competitive\Templates\V1.cpp
autocmd filetype cpp nnoremap <F9> :w <bar> vert ter ++shell g++ -std=c++17 -O2 -Wall % -o %:r && %:r.exe <CR>
autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:vert ter python "%"<CR>
