CC = riscv64-mti-elf-gcc
PROGRAM = mandelbrot
CFLAGS := -g -Wno-implicit
CFLAGS += -fno-builtin-printf -fno-common -falign-functions=4

override CFLAGS += -Xlinker --defsym=__stack_size=0x800 -Xlinker --defsym=__heap_size=0x1000

all: $(PROGRAM)_O0 $(PROGRAM)_O1 $(PROGRAM)_O2 $(PROGRAM)_O3

$(PROGRAM)_O0: $(wildcard src/*.c) $(wildcard src/*.h)
	$(CC) -O0 $(CFLAGS) $(LDFLAGS) $(filter %.c %.S,$^) -o $@.elf

$(PROGRAM)_O1: $(wildcard src/*.c) $(wildcard src/*.h)
	$(CC) -O1 $(CFLAGS) $(LDFLAGS) $(filter %.c %.S,$^) -o $@.elf

$(PROGRAM)_O2: $(wildcard src/*.c) $(wildcard src/*.h)
	$(CC) -O2 $(CFLAGS) $(LDFLAGS) $(filter %.c %.S,$^) -o $@.elf

$(PROGRAM)_O3: $(wildcard src/*.c) $(wildcard src/*.h)
	$(CC) -O3 $(CFLAGS) $(LDFLAGS) $(filter %.c %.S,$^) -o $@.elf

clean:
	rm -f *.elf *.i *.o *.s
