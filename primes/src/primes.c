#include "../include/prime.h"

int last_prime;
int prime_counter;

int main() {
	for (int i = 2; i < 202; i++) {
		test_prime(i);
	}
    return 0;
}