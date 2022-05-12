# demo-vim-py3-plugin
A demo VIM plugin implemented by python3.

Demo customization of reading *.xyz

add the following line to your .vimrc to customize the file reading process.

au BufReadCmd,FileReadCmd *.xyz call xyz#Load(expand("<amatch>"))
