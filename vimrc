" Leader
let mapleader = " "

set backspace=2   " backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " always display the status line
set autowrite     " automatically :write before running commands

" syntax highlighting using Tomorrow Night theme
colorscheme onedark
set guifont=Menlo\ Regular:h18
syntax on
filetype plugin indent on

" fzf
set rtp+=/usr/local/opt/fzf
nnoremap <Leader>f :FZF<CR>

" NERDtree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" emoji git statuses
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "😱",
    \ "Staged"    : "😌",
    \ "Untracked" : "🐣",
    \ "Renamed"   : "😎",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "🗑",
    \ "Dirty"     : "💩",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : "🤐",
    \ "Unknown"   : "?"
    \ }

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" 80 character line
set textwidth=80
set colorcolumn=+1

" Line numbers
set number
set numberwidth=5
set relativenumber

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" More natural splits
set splitbelow
set splitright

" Quicker split navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Show matching bracket or parenthesis
set showmatch

" Highlight search matches
set hlsearch

" JSX
let g:jsx_ext_required = 0

" Snippets
nnoremap ,html :-1read $HOME/.vim/.snippets/.skeleton.html<CR>4jf>a
nnoremap ,form :-1read $HOME/.vim/.snippets/.form.html<CR>f"a
nnoremap ,elmbp :1read $HOME/.vim/.snippets/.beginnerProgram.elm<CR>
