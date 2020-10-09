`git clone https://github.com/torvalds/linux`
`./create_cscope_db.sh`
`./component_symbols.sh`


The script does the following:

For each module directory(e.g. fs, block, etc) we find all the function calls using cscope. Then, for each function we find its definition via cscope.
