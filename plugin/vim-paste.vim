if !has('python')
    echo "Error: Y u not have +python"
    finish
endif

function! Paste()
    pyfile paster.py
endfunc

command! Paste call Paste()
