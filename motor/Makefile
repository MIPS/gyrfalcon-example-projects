RISCV_PATH=${HOME}/toolchain/riscv-elf/v3.06/bin
CC = ${RISCV_PATH}/riscv32-mti-elf-gcc

ifeq ($(RISCV_PATH),)
# If RISCV_PATH is not defined, then it is assumed that the bin folder is on your path.
CC = riscv64-mti-elf-gcc
endif

all:
	$(CC) -o main32_zba_zbb_c.elf main.c -static -O2
#	$(TOOLCHAIN_ROOT)/v3.02/bin/riscv32-mti-elf-gcc -o main32_zba_zbb.elf main.c -static -O2
#	$(TOOLCHAIN_ROOT)/v3.03/bin/riscv32-mti-elf-gcc -o main32.elf main.c -static -O2
