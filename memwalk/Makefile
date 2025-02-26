# CC is defined in this common config file.  Make sure
# it is configured for your environment.
ARCH?=rv64
include ../config_${ARCH}.mk

PROGRAM = memwalk

O0: $(PROGRAM)_O0_${ARCH}
O1: $(PROGRAM)_O1_${ARCH}
O3: $(PROGRAM)_O3_${ARCH}

$(PROGRAM)_O0_${ARCH}: $(wildcard src/*.c) $(wildcard src/*.h)
	$(CC) -O0 $(CFLAGS) $(LDFLAGS) $(filter %.c %.S,$^) -o $@.elf

$(PROGRAM)_O1_${ARCH}: $(wildcard src/*.c) $(wildcard src/*.h)
	$(CC) -O1 $(CFLAGS) $(LDFLAGS) $(filter %.c %.S,$^) -o $@.elf

$(PROGRAM)_O3_${ARCH}: $(wildcard src/*.c) $(wildcard src/*.h)
	$(CC) -O3 $(CFLAGS) $(LDFLAGS) $(filter %.c %.S,$^) -o $@.elf

all: O0 O1 O3

clean:
	rm -f *.elf *.i *.o *.s *.su *.cgraph *.map

fresh: clean
	rm -rf experiments