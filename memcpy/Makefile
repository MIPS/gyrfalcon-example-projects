# CC is defined in this common config file.  Make sure
# it is configured for your environment.
ARCH=rv64
include ../config_${ARCH}.mk

PROGRAM = memcpy

all: $(PROGRAM)_${ARCH}

$(PROGRAM)_${ARCH}: $(wildcard src/*.c) $(wildcard src/*.h)
	$(CC) -O0 $(CFLAGS) $(LDFLAGS) $(filter %.c %.S,$^) -o $@.elf


clean:
	rm -f *.elf *.i *.o *.s *.su *.cgraph *.map

fresh: clean
	rm -rf experiments