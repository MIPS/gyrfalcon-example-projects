# You have two choices:
#   1. put the toolchain bin folder on your path.
#   2. set the path here (RISCV_PATH)

RISCV_PATH = ${HOME}/toolchain/riscv-elf/v2.05/bin/

# You should not need to edit anything below this line.

COMPILER = riscv64-mti-elf-gcc
CC = ${RISCV_PATH}$(COMPILER)

# Add debug info (even for optimized) se we can do source sync.
CFLAGS := -g -Wno-implicit 

# Recording compiler information in the ELF.  This info will
# be extracted and made available in the experiment.
CFLAGS += -frecord-gcc-switches
CFLAGS += -fno-builtin-printf -fno-common -falign-functions=4 
CFLAGS += -Xlinker --defsym=__stack_size=0x800 -Xlinker --defsym=__heap_size=0x1000 

# Run this target from any example folder to verify 
# the compiler is properly configured.
checkcc:
	$(CC) --version
