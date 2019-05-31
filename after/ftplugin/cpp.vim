function CompileAndRunCpp()
    T g++ -g -O2 -std=gnu++14 % -o %:r && %:r
endfunction
