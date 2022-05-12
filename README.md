# demo-vim-py3-plugin
A demo VIM plugin implemented by python3.
This plugin will handle the reading of .xyz, and highlight the ERROR line.

# Help info from VIM
When using one of the "*Cmd" events, the matching autocommands are expected to
do the file reading, writing or sourcing.  This can be used when working with
a special kind of file, for example on a remote system.

# Add the following line to your .vimrc to catch file reading event

au BufReadCmd,FileReadCmd *.xyz call xyz#Load(expand("<amatch>"))
