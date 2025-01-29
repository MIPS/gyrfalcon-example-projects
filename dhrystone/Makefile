RISCV_PATH=${HOME}/toolchain/riscv-elf/v2.05/bin
CC = ${RISCV_PATH}/riscv64-mti-elf-gcc

ifeq ($(RISCV_PATH),)
# If RISCV_PATH is not defined, then it is assumed that the bin folder is on your path.
CC = riscv64-mti-elf-gcc
endif

DHRY-LFLAGS =

DHRY-CFLAGS := -O3 -g -DTIME -DNOENUM -Wno-implicit -save-temps
DHRY-CFLAGS += -fno-builtin-printf -fno-common -falign-functions=4

DHRY-CFLAGS += -DDHRY_ITERS=20

SRC = dhry_1.c dhry_2.c strcmp.S
HDR = dhry.h

override CFLAGS += $(DHRY-CFLAGS) $(XCFLAGS) -Xlinker --defsym=__stack_size=0x800 -Xlinker --defsym=__heap_size=0x1000
dhrystone: $(SRC) $(HDR)
	$(CC) $(CFLAGS) $(SRC) $(LDFLAGS) $(LOADLIBES) $(LDLIBS) -o $@.elf

clean:
	rm -f *.i *.s *.o dhrystone.elf dhrystone.hex

