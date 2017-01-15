function! SpaceVim#mapping#leader#defindWindowsLeader(key) abort
    if !empty(a:key)
        call zvim#util#defineMap('nnoremap', '[Window]', '<Nop>'   , 'Defind window prefix'   ,'normal [Window]')
        call zvim#util#defineMap('nmap'    , a:key, '[Window]', 'Use ' . a:key . ' as window prefix' ,'normal ' . a:key)

        call zvim#util#defineMap('nnoremap <silent>', '[Window]p', ':<C-u>vsplit<CR>:wincmd w<CR>',
                    \'vsplit vertically,switch to next window','vsplit | wincmd w')
        call zvim#util#defineMap('nnoremap <silent>', '[Window]s', ':<C-u>split<CR>', 'split window','split')
        call zvim#util#defineMap('nnoremap <silent>', '[Window]v', ':<C-u>vsplit<CR>', 'vsplit window','vsplit')
        call zvim#util#defineMap('nnoremap <silent>', '[Window]t', ':<C-u>tabnew<CR>', 'Create new tab','tabnew')
        call zvim#util#defineMap('nnoremap <silent>', '[Window]o', ':<C-u>only<CR>', 'Close other windows','only')
        call zvim#util#defineMap('nnoremap <silent>', '[Window]x', ':<C-u>call zvim#util#BufferEmpty()<CR>',
                    \'Empty current buffer','call zvim#util#BufferEmpty()')
        call zvim#util#defineMap('nnoremap <silent>', '[Window]\', ':<C-u>b#<CR>', 'Switch to the last buffer','b#')
        call zvim#util#defineMap('nnoremap <silent>', '[Window]c', ':<C-u>close<CR>', 'Close current windows','close')
    endif
endfunction

function! SpaceVim#mapping#leader#defindUniteLeader(key) abort
    if !empty(a:key)
        " The prefix key.
        nnoremap    [unite]   <Nop>
        exe 'nmap ' .a:key . ' [unite]'
        nnoremap <silent> [unite]c  :<C-u>UniteWithCurrentDir
                    \ -buffer-name=files buffer bookmark file<CR>
        nnoremap <silent> [unite]b  :<C-u>UniteWithBufferDir
                    \ -buffer-name=files -prompt=%\  buffer bookmark file<CR>
        nnoremap <silent> [unite]r  :<C-u>Unite
                    \ -buffer-name=register register<CR>
        nnoremap <silent> [unite]o  :<C-u>Unite -buffer-name=outline -start-insert -auto-preview -split outline<CR>
        nnoremap <silent> [unite]s  :<C-u>Unite session<CR>
        nnoremap <silent> [unite]n  :<C-u>Unite session/new<CR>
        nnoremap <silent> [unite]fr
                    \ :<C-u>Unite -buffer-name=resume resume<CR>
        nnoremap <silent> [unite]ma
                    \ :<C-u>Unite mapping<CR>
        nnoremap <silent> [unite]me
                    \ :<C-u>Unite output:message<CR>
        nnoremap  [unite]f  :<C-u>Unite source<CR>
        nnoremap <silent> [unite]w
                    \ :<C-u>Unite -buffer-name=files -no-split
                    \ jump_point file_point buffer_tab
                    \ file_rec:! file file/new<CR>
        nnoremap <silent>[unite]<Space> :Unite -silent -ignorecase -winheight=17 -start-insert menu:CustomKeyMaps<CR>
    endif
endfunction
