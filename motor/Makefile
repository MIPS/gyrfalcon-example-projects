TOOLCHAIN_ROOT?=/home/kmills/toolchain/riscv-elf

all:
	$(TOOLCHAIN_ROOT)/v1.07/bin/riscv64-mti-elf-gcc -o main64.elf main.c -static -O2
	$(TOOLCHAIN_ROOT)/v3.01/bin/riscv32-mti-elf-gcc -o main32_zba_zbb_c.elf main.c -static -O2
	$(TOOLCHAIN_ROOT)/v3.02/bin/riscv32-mti-elf-gcc -o main32_zba_zbb.elf main.c -static -O2
	$(TOOLCHAIN_ROOT)/v3.03/bin/riscv32-mti-elf-gcc -o main32.elf main.c -static -O2
