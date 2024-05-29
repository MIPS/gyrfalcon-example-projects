#include "../include/prime.h"

int __attribute__ ((noinline)) test_prime(int i) {
	int c = 0;
	for (int j = 1; j <= i; j++) {
		if (i % j == 0) {
			c++;
		}
	}

	if (c == 2) {
		// i is a prime number
		prime_counter++;
		last_prime = i;
		return 0;
	}

	return 1;
}
