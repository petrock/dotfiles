set nocompatible
let mapleader = ","
execute pathogen#infect()

if has('gui_running')
  set background=dark
  colorscheme quantum
else
  set background=dark
  colorscheme solarized
endif

map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>
set nu

" turn on automatic syntax highlighting.
syntax on

set hlsearch

" set nobackup
set backupdir=~/tmp
set undodir=~/tmp

"set visual wrap without physical line breaks
set textwidth=0 
set wrapmargin=0

set expandtab 
set autoindent
set smartindent
set shiftwidth=2
set tabstop=2

" fixes an autoindent problem on windows gVIM.
set backspace=indent,eol,start

set foldmethod=indent
set foldminlines=2
set foldlevel=99

" always keep several lines of text around the cursor.
set scrolloff=4

" turn on completion matching
set complete-=k complete+=k
" and make matching case insensitive.
set ignorecase
set smartcase

" Spit navigation to just ctrl+ J, K, L, H
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" More natural split opening
set splitbelow
set splitright

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" set runtimepath^=~/.vim/bundle/ctrlp.vim
" let g:ctrlp_working_path_mode = 0
let g:ctrlp_show_hidden = 1

" use Ctrl-l to complete tags.  Twice to open a new line and autoindent.
let xml_tag_completion_map = "<C-c>"

" map tab to word complete
" imap <Tab> <C-P>

" use tab to jump to matching bracket
nnoremap <tab> %
vnoremap <tab> %

" use Ctrl-j to jump to and from start and end tags.
" nmap <C-j> <LocalLeader>5
" vmap <C-j> <LocalLeader>5

" use Ctrl-k to wrap selected text in a tag.
" vmap <C-k> <LocalLeader>x

" set wildchar=<Tab> wildmenu wildmode=full

" map hh to ESC
:map! jk <ESC>

set wildmenu
set wildmode=longest,full

" no swap file
" :set noswapfile
set swapfile
set dir=~/tmp
" no swap file message
set shortmess+=A

" syntastic settings
let g:syntastic_check_on_open = 1

"Relative with start point or with line number or absolute number lines
set nu
set rnu

function! NumberToggle()
    if(&nu == 1)
        set nu
        set rnu!
      else
        set rnu
        set nu                                                  
    endif
endfunction

nnoremap <C-n> :call NumberToggle()<CR>

" markdown preview plugin
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_toggle=3
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'

" netrw settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Show title of document
autocmd BufReadPost,FileReadPost,BufNewFile,BufEnter * call system("tmux rename-window 'vim | " . expand("%:t") . "'")
autocmd VimLeave * call system("tmux rename-window 'zsh'")

set autoread
set pastetoggle=<F2>
set clipboard=unnamed
