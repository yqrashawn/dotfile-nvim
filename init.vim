let mapleader=' '

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/foldtext.vim

" gneral
nnoremap <leader>fs :w<cr>
nnoremap <leader>bd :bd<cr>
nnoremap <leader>fed :e ~/.config/nvim/init.vim<cr>
nnoremap <leader>feR :source ~/.config/nvim/init.vim<cr>
nnoremap <leader><tab> <C-^>
nnoremap <leader>q :confirm quit<cr>
nnoremap <C-space> /
nnoremap <C-k> za
imap jk <esc>
imap kj <esc>

" edit
nnoremap <C-a> <home>
nnoremap <C-e> <end>
nnoremap gy yyp
nnoremap gY yy:TinyCommentLines<cr>p
imap <C-b> <left>
imap <C-f> <right>
imap <C-a> <home>
imap <C-e> <end>

" window
nnoremap s <nop>
nnoremap sv :vsplit<cr>
nnoremap ss :split<cr>
nnoremap sc <C-w><C-c>
nnoremap so <C-w><C-o>


set smartcase
set smartindent
set softtabstop=2
set clipboard=unnamedplus
set foldmethod=syntax
