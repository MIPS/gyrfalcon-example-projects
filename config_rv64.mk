RISCV_PATH=${HOME}/toolchain/riscv-elf/v2.05/bin
COMPILER = riscv64-mti-elf-gcc

CC = ${RISCV_PATH}/$(COMPILER)

ifeq (,$(wildcard $(CC)))
# Explicit compiler not found.
$(info Assuming compiler is on your path)
CC = $(COMPILER)
endif

require:
	@$(CC) --version || (echo ERROR: $(CC) not found, check config_rv64.mk)