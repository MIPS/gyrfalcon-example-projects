#include "trace_macros.h"
// #include <stdio.h>
#include <stdint.h>
 
#define MEMORY_SIZE 1024 // Adjust based on your memory size

int errors = 0;
void memory_walk_test(volatile uint8_t *memory) {

    uint8_t pattern = 0x55; // Test pattern

    for (int i = 0; i < MEMORY_SIZE; i++) {
        memory[i] = pattern; 
        if (memory[i] != pattern) {
            errors++;
        }
        pattern = (pattern == 0x55) ? 0xAA : 0x55; 
    }
}
 
int main() {
    volatile uint8_t *memory = (volatile uint8_t *)0x10000000; // Replace with your memory address
    memory_walk_test(memory); 
    return 0;
}
 