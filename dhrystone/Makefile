# CC is defined in this common config file.  Make sure
# it is configured for your environment.
RV?=64
ARCH=rv${RV}
include ../config_${ARCH}.mk

DHRY-LFLAGS =

DHRY-CFLAGS := -DTIME -DNOENUM -Wno-implicit -frecord-gcc-switches
DHRY-CFLAGS += -mlittle-endian $(MTUNE) -mcmodel=medany -mload-store-pairs -mccmov -misa-spec=20191213 -mlittle-endian -g -Ofast -funroll-loops -fno-inline -fipa-pta

ifeq ($(RV),'32')
DHRY-CFLAGS += -falign-jumps=2 -falign-loops=2
endif


DHRY-CFLAGS += -DDHRY_ITERS=20
DHRY-CFLAGS += $(MTUNE)

SRC = dhry_1.c dhry_2.c strcmp.S
HDR = dhry.h

all: dhrystone_${ARCH}

override CFLAGS += $(DHRY-CFLAGS) $(XCFLAGS) -Xlinker --defsym=__stack_size=0x800 -Xlinker --defsym=__heap_size=0x1000
dhrystone_${ARCH}: $(SRC) $(HDR)
	$(CC) $(CFLAGS) $(SRC) $(LDFLAGS) $(LOADLIBES) $(LDLIBS) -o $@.elf

clean:
	rm -f *.elf *.hex *.i *.o *.s *.su *.cgraph *.map

fresh: clean
	rm -rf experiments