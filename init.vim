let mapleader=' '

source ~/.config/nvim/filetype.vim
source ~/.config/nvim/func.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/default.vim
source ~/.config/nvim/ui.vim
"source ~/.config/nvim/large-file.vim
"" keymap

" gneral
nnoremap <leader>fs :w<cr>
nnoremap <leader>bd :bd<cr>
nnoremap <leader>fed :e ~/.config/nvim/init.vim<cr>
nnoremap <leader>feR :source ~/.config/nvim/init.vim<cr>
nnoremap <leader><tab> <C-^>
nnoremap <leader>q :confirm quit<cr>
nnoremap <C-space> /
nnoremap <C-k> za
nnoremap sp %
imap jk <esc>
imap kj <esc>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
xnoremap <C-r> :<C-u>call VSetSearch('/')<CR>:%s/\V<C-R>=@/<CR>//gc<Left><Left><Left>

" edit
nnoremap Y y$
nnoremap <C-a> ^
nnoremap <C-e> $
nnoremap gy yyp
nnoremap gY yy:TinyCommentLines<cr>p
inoremap <C-b> <left>
inoremap <C-f> <right>
inoremap <C-a> <home>
inoremap <C-e> <end>
vnoremap <C-a> <home>
vnoremap <C-e> <end>
xnoremap < <gv
xnoremap > >gv|
nnoremap > >>_
nnoremap < <<_

" window
nnoremap s <nop>
nnoremap sv :vsplit<cr>
nnoremap ss :split<cr>
nnoremap sc <C-w><C-c>
nnoremap so <C-w><C-o>
