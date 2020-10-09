rm -rf cscope.*
LNX=linux    
find  linux/                                                                \
	-path "$LNX/arch/*" ! -path "$LNX/arch/i386*" -prune -o               \
	-path "$LNX/include/asm-*" ! -path "$LNX/include/asm-i386*" -prune -o \
	-path "$LNX/tmp*" -prune -o                                           \
	-path "$LNX/Documentation*" -prune -o                                 \
	-path "$LNX/scripts*" -prune -o                                       \
	-path "$LNX/drivers*" -prune -o                                       \
	-path "$LNX/tools*" -prune -o                                       \
	-path "$LNX/samples*" -prune -o                                       \
	-path "$LNX/sound*" -prune -o                                       \
	-path "$LNX/init*" -prune -o						\
	-path "$LNX/virt*" -prune -o						\
	-path "$LNX/usr*" -prune -o						\
	-path "$LNX/lib*" -prune -o						\
	-path "$LNX/crypto*" -prune -o						\
        -name "*.[c]" -print > cscope.files

cscope -b -q -k
