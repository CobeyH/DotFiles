call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'scrooloose/nerdtree' 
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'

call plug#end()

" Theme Settings
syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

" COC Settings
let g:coc_global_extensions = [
			\ 'coc-tsserver',
			\ 'coc-rust-analyzer',
			\ 'coc-json',
			\ 'coc-eslint',
			\ 'coc-prettier',
			\ ]
" Change tab width
set tabstop=4
set shiftwidth=4
set expandtab

" Leader
let mapleader = "\<Space>"
" Remaps keys for movement
noremap h h
noremap t gk
noremap n gj
noremap s l

noremap j N
noremap k n

" Maps the keys for jumping to end of line, or up/down 10 lines
noremap H g^
noremap S g$
noremap T 10<c-u>
noremap N 10<c-d>

" Maps keys for moving between windows
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l


" Relative line number toggle
set number relativenumber
map <F9> <Esc>:set<Space>rnu!<CR>
" Don't let the cursor reach the top/bottom 8 lines of text
set scrolloff=8

" Always use system clipboard
set clipboard=unnamedplus

" Spell check
map <F6> :setlocal spell! spelllang=en_ca<CR>
set spellfile=$HOME/.vim/en.utf-8.add

" ez semicolons 
inoremap ;; <Esc>A;

" Formatting (remove whitespace and reindent)
noremap <leader>ww :%s/\s\+$//e<CR>
noremap <leader>tt mtgg=G`tzz

" Disable Ex mode
map q: <nop>
map Q <nop>


" Delete line without filling yank buffer
nnoremap <silent> <leader>dd "_dd
vnoremap <silent> <leader>dd "_dd

" Prevent x and c from filling buffer
noremap x "_x
noremap c "_c
noremap cc "_cc

" Make leaving easier in case of typos
command Q :q
command Wq :wq
command WQ :wq
command Wqa :wqa
command WQa :wqa

" Plugin Specific Settings
" NerdTree
    let NERDTreeMapOpenInTab='y'
    map <c-n> :NERDTreeToggle<CR>

" Prettier
   command! -nargs=0 Prettier :CocCommand prettier.formatFile


" Abbreviations
iab retrun   return
iab retnru   return
iab erturn   return
iab ertnru   return
iab thsi     this
iab fcuntoin function
iab fucntion function
iab yor      for

