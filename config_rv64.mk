RISCV_PATH=${HOME}/toolchain/riscv-elf/v2.05/bin
CC = ${RISCV_PATH}/riscv64-mti-elf-gcc

ifeq ($(RISCV_PATH),)
# If RISCV_PATH is not defined, then it is assumed that the bin folder is on your path.
CC = riscv64-mti-elf-gcc
endif
