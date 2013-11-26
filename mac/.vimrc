" for mac local vimrc. nagamoto
" 2013/11/15

syntax on
set encoding=utf-8

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set ic
set nu
set noautoindent

set incsearch
set hlsearch

"set paste

colorscheme desert

if has("autocmd")
  autocmd FileType * let &l:comments=join(filter(split(&l:comments, ','), 'v:val =~ "^[sme]"'), ',')
endif

autocmd FileType perl :map <C-n> <ESC>:!perl -cw %<CR>
autocmd FileType perl :map <C-e> <ESC>:!perl %<CR>
autocmd FileType ruby :map <C-n> <ESC>:!ruby -cW %<CR>
autocmd FileType ruby :map <C-e> <ESC>:!ruby %<CR>
autocmd FileType php :map <C-n> <ESC>:!php -l %<CR>
autocmd FileType php :map <C-e> <ESC>:!php %<CR>
autocmd FileType python :map <C-e> <ESC>:!python  %<CR>

nnoremap p "0p
