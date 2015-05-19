if !has('python')
    echo "Error: Y u not have +python"
    finish
endif

if exists("g:VimPasterLoaded")
    finish
endif

function! Paste()
    pyfile ~/.vim/bundle/vim-paste/plugin/paster.py
endfunc

command! Paste call Paste()
let g:VimPasterLoaded = 1
