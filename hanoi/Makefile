# CC is defined in this common config file.  Make sure
# it is configured for your environment.
RV?=64
ARCH=rv${RV}
include ../config_${ARCH}.mk

PROGRAM = hanoi

O0: $(PROGRAM)_${ARCH}_O0
O1: $(PROGRAM)_${ARCH}_O1
O3: $(PROGRAM)_${ARCH}_O3

$(PROGRAM)_${ARCH}_O0: $(wildcard src/*.c) $(wildcard src/*.h)
	$(CC) -O0 $(CFLAGS) $(LDFLAGS) $(filter %.c %.S,$^) -o $@.elf

$(PROGRAM)_${ARCH}_O1: $(wildcard src/*.c) $(wildcard src/*.h)
	$(CC) -O1 $(CFLAGS) $(LDFLAGS) $(filter %.c %.S,$^) -o $@.elf

$(PROGRAM)_${ARCH}_O3: $(wildcard src/*.c) $(wildcard src/*.h)
	$(CC) -O3 $(CFLAGS) $(LDFLAGS) $(filter %.c %.S,$^) -o $@.elf


all: O0 O1 O3

clean:
	rm -f *.elf *.i *.o *.s *.su *.cgraph *.map

fresh: clean
	rm -rf experiments