RISCV_PATH=${HOME}/toolchain/riscv-elf/v3.06/bin
CC = ${RISCV_PATH}/riscv32-mti-elf-gcc

ifeq ($(RISCV_PATH),)
# If RISCV_PATH is not defined, then it is assumed that the bin folder is on your path.
CC = riscv32-mti-elf-gcc
endif

