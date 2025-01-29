# You have two choices:
#   1. put the toolchain bin folder on your path.
#   2. set the path here (RISCV_PATH)

RISCV_PATH = ${HOME}/toolchain/riscv-elf/v3.06/bin/

# You should not need to edit anything below this line.

COMPILER = riscv32-mti-elf-gcc
CC = ${RISCV_PATH}$(COMPILER)

# Run this target from any example folder to verify 
# the compiler is properly configured.
checkcc:
	$(CC) --version
