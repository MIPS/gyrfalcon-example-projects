example_list := mandelbrot primes memcpy memwalk matmul motor hanoi fibonacci dhrystone

.PHONY: all $(example_list)

all: $(example_list)
	for f in $(example_list); do cd $$f && make all && cd ..; done

clean: $(example_list)
	for f in $(example_list); do cd $$f && make clean && cd ..; done

fresh: $(example_list)
	for f in $(example_list); do cd $$f && make fresh && cd ..; done
