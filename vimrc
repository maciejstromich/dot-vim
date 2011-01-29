language messages C

" pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set directory=~/.vim/tmp

set t_Co=256
colorscheme underley

helptags ~/.vim/doc

if &bg == "dark"
  hi MatchParen ctermbg=darkblue guibg=blue
endif

hi Pmenu ctermfg=0 ctermbg=3
hi PmenuSel ctermfg=0 ctermbg=7

if has("gui_running")
  set guifont=DejaVu\ Sans\ Mono\ 11
  set co=160
  set lines=52
else
  let g:indent_guides_auto_colors = 0
  let g:indent_guides_guide_size = 1
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=233
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=232
  autocmd VimEnter,BufNewFile,BufRead *.rb,*.php,*.py,*.pl,*.rake,*.css,*.html,Rakefile :IndentGuidesEnable
endif

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
    set fileencodings=utf-8,latin2
endif

set viminfo='10,\"2000,:20,%,n~/.viminfo
set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %{fugitive#statusline()}\ %-14.(%l,%c%V%)\ %P
set laststatus=2

set background=dark
set backspace=2
set nocompatible

set ignorecase
set smartcase

set wildmenu
set wildignore=.svn,CVS,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

set autoindent
set smartindent

set hidden
set vb t_vb=
set ts=2 sts=2 sw=2 expandtab

syntax on

if has("autocmd")
  filetype plugin indent on
endif

let mapleader = ','

set pastetoggle=<F2>
nnoremap <F3> :set nonumber!<CR>
nnoremap <F4> :IndentGuidesToggle<CR>

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" restore position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

