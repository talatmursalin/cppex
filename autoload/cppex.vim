function ChangeMode(key)
    exec 'normal!' a:key
endfunction

function RunCommand(ft)
    if ft=='cpp'
        call CompileAndRunCpp()
    elseif ft=='c'
	call CompileAndRunC()
    elseif ft=='python'
	call RunPython()
    else
	T echo -e "Executor Command Not Found. Run Manually..."
endfunction

function Enforce()
    write
    call RunCommand(&filetype)
    wincmd j
    call ChangeMode('i')
endfunction

