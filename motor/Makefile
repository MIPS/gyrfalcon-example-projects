TOOLCHAIN_ROOT=/home/kmills/toolchain/riscv-elf

all64:
	#$(TOOLCHAIN_ROOT)/v1.07/bin/riscv64-mti-elf-gcc -O2 -S test.c
	#$(TOOLCHAIN_ROOT)/v1.07/bin/riscv64-mti-elf-gcc -O2 -c test.c
	#$(TOOLCHAIN_ROOT)/v1.07/bin/riscv64-mti-elf-objdump -d test.o
	#$(TOOLCHAIN_ROOT)/v1.07/bin/riscv64-mti-elf-gcc -c new.s
	#$(TOOLCHAIN_ROOT)/v1.07/bin/riscv64-mti-elf-objdump -d new.o
	$(TOOLCHAIN_ROOT)/v1.07/bin/riscv64-mti-elf-gcc -o main64.elf main.c -static -O2
	#$(TOOLCHAIN_ROOT)/v1.07/bin/qemu-riscv64 ./main64.elf

all32:
	#$(TOOLCHAIN_ROOT)/v3.01/bin/riscv32-mti-elf-gcc -O2 -S test.c
	#$(TOOLCHAIN_ROOT)/v3.01/bin/riscv32-mti-elf-gcc -O2 -c test.c
	#$(TOOLCHAIN_ROOT)/v3.01/bin/riscv32-mti-elf-objdump -d test.o
	#$(TOOLCHAIN_ROOT)/v3.01/bin/riscv32-mti-elf-gcc -c new.s
	#$(TOOLCHAIN_ROOT)/v3.01/bin/riscv32-mti-elf-objdump -d new.o
	$(TOOLCHAIN_ROOT)/v3.01/bin/riscv32-mti-elf-gcc -o main32-1.elf main.c -static -O2
	#$(TOOLCHAIN_ROOT)/v3.01/bin/qemu-riscv32 ./main32.elf

all32-2:
	$(TOOLCHAIN_ROOT)/v3.01/bin/riscv32-mti-elf-gcc -o main32-2.elf main2.c -static -O2
	#$(TOOLCHAIN_ROOT)/v3.01/bin/qemu-riscv32 ./main32-2.elf

all32-3:
	$(TOOLCHAIN_ROOT)/v3.02/bin/riscv32-mti-elf-gcc -o main32-3 main2.c -static -O2
	$(TOOLCHAIN_ROOT)/v3.02/bin/riscv32-mti-elf-objdump -d main2 > main2.dis
	#$(TOOLCHAIN_ROOT)/v3.02/bin/qemu-riscv32 ./main32-3.elf

all32-4:
	$(TOOLCHAIN_ROOT)/v3.03/bin/riscv32-mti-elf-gcc -o main32-4 main2.c -static -O2
	$(TOOLCHAIN_ROOT)/v3.03/bin/riscv32-mti-elf-objdump -d main2 > main2.dis
	#$(TOOLCHAIN_ROOT)/v3.03/bin/qemu-riscv32 ./main32-4.elf
