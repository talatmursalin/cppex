function GetExeFile()
    let exe = expand('%:r')
    let s_path=split(exe,"/")
    let l = len(s_path)
    if l==1
        return "./".exe
    else
        return exe
endfunction

function GetCommand(ft)
    if a:ft=="cpp"
        let ret = "T g++ -g -O2 -std=gnu++14 % -o %:r && "
        let eret = GetExeFile()
        echo eret
        return ret.eret
    elseif a:ft=="c"
        let ret = "T gcc -g -O2 -std=gnu11 % -o %:r && "
        let eret = GetExeFile()
        return ret.eret
    elseif a:ft=="python"
        return "T python3 %"
    else
        return "T echo 'Executor Command Not Found. Run Manually...'"
    endif
endfunction

function ExEnforce()
    let com = GetCommand(&filetype)
    call cppex#Enforce(com)
endfunction
