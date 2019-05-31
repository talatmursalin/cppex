function ChangeMode(key)
    exec 'normal!' a:key
endfunction

function RunCommand(com)
    exec a:com
endfunction

function cppex#Enforce(com)
    write
    call RunCommand(a:com)
    wincmd j
    call ChangeMode('i')
endfunction

