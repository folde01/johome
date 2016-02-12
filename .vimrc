<<<<<<< HEAD
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" for nerdcommenter:
filetype plugin on

" because this is easier than typing '\' for some reason:
let mapleader=","

syntax off
set nohlsearch
set t_Co=0
=======
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nohlsearch
syntax off

set expandtab
set smarttab
set autoindent
set smartindent
inoremap { { <CR><BS>}<Esc>ko

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()
>>>>>>> 764b7270d16613c3a4626715ab89bcc3e23a9f95
