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

# Run these targets to check that your compiler configuration is good
# These targets must be run separately, do not do this:
#
# $make checkcc64 checkcc32
#
# If sucessful. you will see the version statement from the compiler.
checkcc64 checkcc32: checkcc
