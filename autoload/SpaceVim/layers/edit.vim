function! SpaceVim#layers#edit#plugins() abort
    return [
                \ ['tpope/vim-surround'],
                \ ['terryma/vim-multiple-cursors'],
                \ ['scrooloose/nerdcommenter'],
                \ ['mattn/emmet-vim',                        { 'on_cmd' : 'EmmetInstall'}],
                \ ['gcmt/wildfire.vim',{'on_map' : '<Plug>(wildfire-'}],
                \ ['easymotion/vim-easymotion',{'on_map' : '<Plug>(easymotion-prefix)'}],
                \ ['editorconfig/editorconfig-vim', { 'on_cmd' : 'EditorConfigReload'}],
                \ ['floobits/floobits-neovim',      { 'on_cmd' : ['FlooJoinWorkspace','FlooShareDirPublic','FlooShareDirPrivate']}],
                \ ['lilydjwg/fcitx.vim',        { 'on_i' : 1}],
                \ ]
endfunction

function! SpaceVim#layers#edit#config() abort
    let g:multi_cursor_next_key='<C-n>'
    let g:multi_cursor_prev_key='<C-p>'
    let g:multi_cursor_skip_key='<C-x>'
    let g:multi_cursor_quit_key='<C-g>'
    let g:NERDSpaceDelims = 1

    let g:user_emmet_install_global = 0
    let g:user_emmet_leader_key='<C-e>'
    let g:user_emmet_mode='a'
    let g:user_emmet_settings = {
                \  'jsp' : {
                \      'extends' : 'html',
                \  },
                \}
    " noremap <SPACE> <Plug>(wildfire-fuel)
    " vnoremap <C-SPACE> <Plug>(wildfire-water)
    noremap <leader>v <Plug>(wildfire-fuel)
    vnoremap V <Plug>(wildfire-water)
    let g:wildfire_objects = ["i'", 'i"', 'i)', 'i]', 'i}', 'ip', 'it']
    map <Leader>j <Plug>(easymotion-prefix)
endfunction
