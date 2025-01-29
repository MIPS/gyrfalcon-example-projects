all:
	cd mandelbrot && $(MAKE) all
	cd primes && $(MAKE) all
	cd memcpy && $(MAKE) all
	cd memwalk && $(MAKE) all
	cd matmul && $(MAKE) all
	cd motor && $(MAKE) all
	cd hanoi && $(MAKE) all
	cd fibonacci && $(MAKE) all
	cd dhrystone && $(MAKE) all
	cd mandelbrot && $(MAKE) all

clean:
	cd mandelbrot && $(MAKE) clean
	cd primes && $(MAKE) clean
	cd memcpy && $(MAKE) clean
	cd memwalk && $(MAKE) clean
	cd matmul && $(MAKE) clean
	cd motor && $(MAKE) clean
	cd hanoi && $(MAKE) clean
	cd fibonacci && $(MAKE) clean
	cd dhrystone && $(MAKE) clean
	cd mandelbrot && $(MAKE) clean

fresh:
	cd mandelbrot && $(MAKE) fresh
	cd primes && $(MAKE) fresh
	cd memcpy && $(MAKE) fresh
	cd memwalk && $(MAKE) fresh
	cd matmul && $(MAKE) fresh
	cd motor && $(MAKE) fresh
	cd hanoi && $(MAKE) fresh
	cd fibonacci && $(MAKE) fresh
	cd dhrystone && $(MAKE) fresh
	cd mandelbrot && $(MAKE) fresh
