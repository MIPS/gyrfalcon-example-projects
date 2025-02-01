# CC is defined in this common config file.  Make sure
# it is configured for your environment.
include ../config_rv64.mk

O0: $(PROGRAM)_O0
O1: $(PROGRAM)_O1
O3: $(PROGRAM)_O3

$(PROGRAM)_O0: $(wildcard src/*.c) $(wildcard src/*.h)
	$(CC) -O0 $(CFLAGS) $(LDFLAGS) $(filter %.c %.S,$^) -o $@.elf

$(PROGRAM)_O1: $(wildcard src/*.c) $(wildcard src/*.h)
	$(CC) -O1 $(CFLAGS) $(LDFLAGS) $(filter %.c %.S,$^) -o $@.elf

$(PROGRAM)_O3: $(wildcard src/*.c) $(wildcard src/*.h)
	$(CC) -O3 $(CFLAGS) $(LDFLAGS) $(filter %.c %.S,$^) -o $@.elf

all: O0 O1 O3

clean:
	rm -f *.elf *.i *.o *.s *.su *.cgraph *.map

fresh: clean
	rm -rf experiments