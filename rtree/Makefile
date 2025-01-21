#LD_LIBRARY_PATH=/home/cfu.scratch/install/lib64 
#/home/ashrivastava.scratch/tools/install/llvm/bin/clang
CC=riscv64-mti-elf-gcc
CFLAGS= -O3 -march=rv64gc -static 
# SYSROOT=/home/ashrivastava.scratch/tools/install/riscv_gnu/sysroot
# GCC_TOOLCHAIN=/home/ashrivastava.scratch/tools/install/riscv_gnu/
# QEMU=/home/ashrivastava.scratch/tools/riscv-qemu/build/qemu-riscv64

SRC=main.c rtree.c
INC=rtree.h trace_macros.h
TARGET=rtree
INCLUDE=.

${TARGET}: ${SRC} ${INC}
		$(CC) $(CFLAGS) -O -o $@ ${SRC} -I$(INCLUDE)
clean:
	-rm -f *.o ${TARGET}

disasm:
	$(CC) -S $(CFLAGS) --sysroot=$(SYSROOT) --gcc-toolchain=$(GCC_TOOLCHAIN) -c rtree.c -I$(INCLUDE) 

# run:
# 	export QEMU_CPU=rv64,zba=true,zbb=true
# 	$(QEMU) -L /home/ashrivastava.scratch/tools/install/riscv_gnu/sysroot rtree


