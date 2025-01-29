example_list := mandelbrot primes memcpy memwalk matmul motor hanoi fibonacci dhrystone

ifeq (checkcc64,$(filter checkcc64,$(MAKECMDGOALS)))
include config_rv64.mk
endif
ifeq (checkcc32,$(filter checkcc32,$(MAKECMDGOALS)))
include config_rv32.mk
endif

.PHONY: all $(example_list) clean checkcc64 checkcc32

all: $(example_list)
	for f in $(example_list); do cd $$f && make all && cd ..; done

clean: $(example_list)
	for f in $(example_list); do cd $$f && make clean && cd ..; done

fresh: $(example_list)
	for f in $(example_list); do cd $$f && make fresh && cd ..; done

checkcc64 checkcc32: checkcc
