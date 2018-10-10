" Author: Jayden Chan

set nocompatible

filetype off

" Plugins

    set rtp+=$HOME/.vim/bundle/Vundle.vim
    call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'tomtom/tlib_vim'
    Plugin 'garbas/vim-snipmate'
    Plugin 'vim-airline/vim-airline'
    Plugin 'gcmt/taboo.vim'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plugin 'tpope/vim-commentary'
    Plugin 'tpope/vim-surround'
    Plugin 'jayden-chan/onedark.vim'
    Plugin 'godlygeek/tabular'
    Plugin 'junegunn/goyo.vim'
    Plugin 'buoto/gotests-vim'

    call vundle#end()
    filetype plugin indent on

" Behaviour
    set timeoutlen=1000 ttimeoutlen=0

    " Theme
    syntax on

    " 256 colors
    set t_Co=256
    set t_ut=

    " Use system clipboard (MacOS)
    set clipboard=unnamed

    colorscheme onedark
    set guifont=Monospace\ 13

    " Tab settings
    set expandtab
    set shiftwidth=4
    set softtabstop=4
    set smarttab
    set smartindent

    " Use backspace
    set backspace=indent,eol,start

    " Search settings
    set gdefault
    set ignorecase
    set incsearch

    " Open new splits on the right
    set splitright

    " Nice line wraps
    set linebreak

    " Fold settings
    set foldlevel=1000
    set foldmethod=indent

    " I mess up a lot
    set undolevels=9001

    " No cursor line
    set cursorline

    " No command bar
    set noshowmode

    " Don't let the cursor reach the top/bottom 8 lines of text
    set scrolloff=8

    " Automatically update working dir
    set autochdir

    " Set .tex files to LaTeX syntax
    let g:tex_flavor = "latex"

    " Make LaTeX live preview smoother
    set updatetime=1000

" Binds

    " Leader
    let mapleader = "\<Space>"
    " Remaps keys for dvorak movement
    noremap j gk
    noremap k gj

    " Maps the keys for jumping to end of line, or up/down 10 lines
    noremap H g^
    noremap L g$
    noremap J 10<c-u>
    noremap K 10<c-d>

    " Maps keys for moving between windows
    nnoremap <leader>h <c-w>h
    nnoremap <leader>j <c-w>j
    nnoremap <leader>k <c-w>k
    nnoremap <leader>l <c-w>l


    " Relative line number toggle
    set number relativenumber
    map <F9> <Esc>:set<Space>rnu!<CR>

    " Reload vimrc
    map <leader>ss :so $MYVIMRC<CR>

    " Map Ctrl-s to save because I am a compulsive saver
    nmap <c-s> :wa<CR>
    imap <c-s> <Esc>:wa<CR>

    " Spell check
    map <F6> :setlocal spell! spelllang=en_ca<CR>
    set spellfile=$HOME/.vim/en.utf-8.add

    " ez semicolons (perhaps the greatest bind in this entire config)
    inoremap ;; <Esc>A;

    " Formatting (remove whitespace and reindent)
    noremap <leader>ww :%s/\s\+$//e<CR>
    noremap <leader>tt mtgg=G`tzz

    " Disable Ex mode
    map q: <nop>
    map Q <nop>

    " Used for centering text in the 'thicc' comments
    map <c-m> ^f*a<Space><Esc>f*h<Space><Esc>^

    " New line no insert mode
    map go o<Esc>

    " Delete line without filling yank buffer
    nnoremap <silent> <leader>dd "_dd
    vnoremap <silent> <leader>dd "_dd

    " Prevent x and c from filling buffer
    noremap x "_x
    noremap c "_c
    noremap cc "_cc

    " Mouse for scrolling only, mostly for skimming files
    set mouse=a

    " Plugin specific settings

    let NERDTreeMapOpenSplit='h'
    map <c-n> :NERDTreeToggle<CR>

    let g:snipMate = get(g:, 'snipMate', {})
    let g:snipMate = {}
    let g:snipMate.no_default_aliases = 1

    let g:airline_powerline_fonts = 1
    let g:airline_section_c = '%t'

    let g:onedark_termcolors = 256

    let g:NERDTreeFileExtensionHighlightFullName = 1
    let g:NERDTreeExactMatchHighlightFullName = 1
    let g:NERDTreePatternMatchHighlightFullName = 1
    let NERDTreeAutoDeleteBuffer = 1

    let g:ycm_key_list_select_completion = ['<Enter>', '<Down>']
    let g:ycm_min_num_identifier_candidate_chars = 4
    let g:ycm_max_num_identifier_candidates = 5

    let g:goyo_width = 120

    let g:go_doc_keywordprg_enabled = 0
    let g:go_highlight_methods=1
    let g:go_highlight_functions=1
    let g:go_highlight_function_calls = 1
    let g:go_highlight_extra_types = 1
    let g:go_highlight_types = 1
    let g:go_highlight_variable_declarations = 1

    " Commands

    " Make leaving easier in case of typos
    command Q :q
    command Wq :wq
    command WQ :wq
    command Wqa :wqa
    command WQa :wqa

    " Always open NERDTree in new windows
    autocmd BufWinEnter *.* NERDTreeMirror

    " Enable spell check for certain file types
    autocmd FileType gitcommit,text,markdown,tex setlocal spell

    " Set indentation to 2 spaces for certain files
    autocmd FileType javascript,html,css,json setlocal shiftwidth=2
    autocmd FileType javascript,html,css,json setlocal softtabstop=2

    " Set indentation to hard tabs for some files
    autocmd FileType snippets,go setlocal tabstop=4
    autocmd FileType snippets,go setlocal shiftwidth=4
    autocmd FileType go          setlocal noexpandtab


    " Abbreviations

    iab retrun   return
    iab retnru   return
    iab erturn   return
    iab ertnru   return
    iab thsi     this
    iab fcuntoin function
    iab fucntion function