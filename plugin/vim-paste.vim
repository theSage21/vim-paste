if !has('python')
    echo "Error: Y u not have +python"
    finish
endif

if exists("g:VimPasterLoaded")
    finish
endif

let g:PluginDir = expand("<sfile>:p:h")

python << END_PYTHON
import os, sys
import vim
sys.path.append(vim.eval("g:PluginDir"))

END_PYTHON

if filereadable(expand("<sfile>:p:h")."/paster.py")
function! Paste()
    pyfile <sfile>:p:h/paster.py
endfunc
else
    echohl WarningMsg |
    \ echomsg "Cannot find paster.py".g:PluginDir |
    \ echohl None
    finish
endif


command! Paste call Paste()
let g:FloobitsPluginLoaded = 1
