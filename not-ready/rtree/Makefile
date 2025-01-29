# Use this if the toolchain is in your PATH.
# CC = riscv64-mti-elf-gcc

# Or you can explicitly point to the compiler.
CC = $${HOME}/toolchain/riscv-elf/v2.05/bin/riscv64-mti-elf-gcc

CFLAGS= -O3 -march=rv64gc -static 
SRC=main.c rtree.c
INC=rtree.h trace_macros.h
TARGET=rtree
INCLUDE=.

all: ${TARGET}

${TARGET}: ${SRC} ${INC}
		$(CC) $(CFLAGS) -O -o $@ ${SRC} -I$(INCLUDE)
clean:
	-rm -f *.o ${TARGET}

disasm:
	$(CC) -S $(CFLAGS) --sysroot=$(SYSROOT) --gcc-toolchain=$(GCC_TOOLCHAIN) -c rtree.c -I$(INCLUDE) 


