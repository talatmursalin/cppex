# cppex

vim plugin thats emulates compile and run funalities.

### Dependencies
cppex require vim 8+ or neovim 0.3+
cppex is just a wrapper. The whole plugin depends on [neoterm](https://github.com/kassio/neoterm) plugin.

### Installation
should be just like any other plugin.

### Usage
run ```call ExEnforce()``` to compile and run c/cpp program.
add ```nnoremap <F8> :call ExEnforce() <CR>``` to your init.vim/.vimrc for 
convenience
