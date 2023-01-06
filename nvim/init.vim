:set number
:set mouse=a
:set tabstop=2
:set shiftwidth=2
:set softtabstop=2
:set smartindent

call plug#begin("~/.vim/plugged")
	Plug 'vim-airline/vim-airline'
	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'tpope/vim-fugitive'
	Plug 'mhinz/vim-startify'
	Plug 'windwp/nvim-autopairs'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 0
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Make NERDTree open files in new tab
let NERDTreeCustomOpenArgs={'file':{'where': 't'}}
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
nnoremap <silent> <C-A-b> :NERDTreeRefreshRoot<CR>
nnoremap <silent> <C-t> :tabn<CR>
nnoremap <silent> <C-A-t> :tabp<CR>

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" move through wrapped lines with arrow keys
nnoremap <Down> gj
nnoremap <Up> gk

" vim startify startup
let g:startify_custom_header = [
\'',
\'',
\'__________              .__/\          _______                    .__         ',
\'\______   \_____   __ __|  )/  ______  \      \   ____  _______  _|__| _____  ',
\' |     ___/\__  \ |  |  \  |  /  ___/  /   |   \_/ __ \/  _ \  \/ /  |/     \ ',
\' |    |     / __ \|  |  /  |__\___ \  /    |    \  ___(  <_> )   /|  |  Y Y  \',
\' |____|    (____  /____/|____/____  > \____|__  /\___  >____/ \_/ |__|__|_|  /',
\'                \/                \/          \/     \/                    \/ ',
\'',
\'',
\]
highlight Normal ctermbg=Black
highlight NonText ctermbg=Black

source $HOME/.config/nvim/plug-config/coc.vim

:inoremap ( ()<Esc>i
:inoremap [ []<Esc>i
:inoremap { {}<Esc>i
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i
