call plug#begin('~/.vim/plugged')
Plug 'jnurmine/Zenburn'
Plug 'rafi/vim-tinycomment'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'
call plug#end()

" zenburn
colors zenburn

" tinycomment
nnoremap <C-x>; :TinyCommentLines<cr>
vnoremap <C-x>; :<C-w>TinyCommentLines<cr>
let g:tinycomment_disable_keymaps=0

" CtrlP
nnoremap <leader>fr :CtrlPMixed<cr>
nnoremap <leader>bb :CtrlPBuffer<cr>
nnoremap <leader>bq :CtrlPQuickfix<cr>
let g:ctrlp_working_path_mode = 'ra'

" vim-javascript
let g:javascript_plugin_jsdoc = 1


