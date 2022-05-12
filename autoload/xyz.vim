" add following line to .vimrc to customize the file loading process
" au BufReadCmd,FileReadCmd *.xyz call xyz#Load(expand("<amatch>"))

function xyz#Load(fname)
    let bak_undolevel=&undolevels
    set undolevels=-1 " clear undolist
    python3 << EOF
import vim
import random
fname = vim.eval("a:fname")
# here you can parse the file, append lines with some modification
with open(fname) as f:
    for line in f:
        mark = random.randint(0, 1)
        if mark:
            line = "===>ERROR " + line
        else:
            line = "===> " + line
        vim.current.buffer.append(line)
del vim.current.buffer[0] # workaround
EOF
    setf xyz " set filetype to trigger syntax highlight
    set buftype=nofile " disable write
    let &undolevels=bak_undolevel
    unlet bak_undolevel
endfunction
