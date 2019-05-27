function ChangeFocus(key)
    exec 'normal!' a:key
endfunction

function CompileAndRunC()
    write
    T g++ -g -O2 -std=gnu++14 % -o %:r && ./%:r
    wincmd j
    call ChangeFocus('i')
endfunction


nnoremap <F8> :call CompileAndRunC() <CR>
