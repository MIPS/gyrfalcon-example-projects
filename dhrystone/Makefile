# CC is defined in this common config file.  Make sure
# it is configured for your environment.
include ../config_rv64.mk

DHRY-LFLAGS =

DHRY-CFLAGS := -O3 -g -DTIME -DNOENUM -Wno-implicit -save-temps -frecord-gcc-switches
DHRY-CFLAGS += -fno-builtin-printf -fno-common -falign-functions=4 -Wno-pointer-to-int-cast -Wno-builtin-declaration-mismatch

DHRY-CFLAGS += -DDHRY_ITERS=20

SRC = dhry_1.c dhry_2.c strcmp.S
HDR = dhry.h

all: dhrystone

override CFLAGS += $(DHRY-CFLAGS) $(XCFLAGS) -Xlinker --defsym=__stack_size=0x800 -Xlinker --defsym=__heap_size=0x1000
dhrystone: $(SRC) $(HDR)
	$(CC) $(CFLAGS) $(SRC) $(LDFLAGS) $(LOADLIBES) $(LDLIBS) -o $@.elf

clean:
	rm -f *.elf *.hex *.i *.o *.s *.su *.cgraph *.map

fresh: clean
	rm -rf experiments