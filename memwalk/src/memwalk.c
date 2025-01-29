#include "trace_macros.h"
// #include <stdio.h>
#include <stdint.h>
 
#define MEMORY_SIZE 1024 // Adjust based on your memory size

int errors = 0;
void memory_walk_test(uint8_t *memory) {

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
    uint8_t memory[MEMORY_SIZE];
    memory_walk_test(memory); 
    return 0;
}
 