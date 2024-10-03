CC = riscv64-mti-elf-gcc
PROGRAM = mandelbrot
CFLAGS := -Ofast -g -Wno-implicit
CFLAGS += -fno-builtin-printf -fno-common -falign-functions=4

override CFLAGS += -Xlinker --defsym=__stack_size=0x800 -Xlinker --defsym=__heap_size=0x1000

all: $(PROGRAM)

$(PROGRAM): $(wildcard src/*.c) $(wildcard src/*.h)
	$(CC) $(CFLAGS) $(LDFLAGS) $(filter %.c %.S,$^) -o $@.elf

clean:
	rm -f $(PROGRAM).elf *.i *.o *.s
