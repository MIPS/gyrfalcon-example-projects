include ../config_rv32.mk

all:
	$(CC) -o main32_zba_zbb_c.elf main.c -static -O2
#	$(TOOLCHAIN_ROOT)/v3.02/bin/riscv32-mti-elf-gcc -o main32_zba_zbb.elf main.c -static -O2
#	$(TOOLCHAIN_ROOT)/v3.03/bin/riscv32-mti-elf-gcc -o main32.elf main.c -static -O2

clean:
	rm -f *.elf *.i *.o *.s *.su *.cgraph *.map

fresh: clean
	rm -rf experiments