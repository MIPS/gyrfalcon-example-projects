#include "trace_macros.h"
#include <stdint.h>
#include <string.h>
#include <stdio.h>
 
#define MEMORY_SIZE 8*1024 // Adjust based on your memory size

int errors = 0;
void init(uint8_t *memory, uint8_t pattern) {

    for (int i = 0; i < MEMORY_SIZE; i++) {
        memory[i] = pattern; 
    }
}
 
int main() {
    uint8_t src_memory[MEMORY_SIZE]; // Replace with your memory address
    uint8_t dst_memory[MEMORY_SIZE]; // Replace with your memory address

    //printf("The address of src_memory is: %p\n", (void *)src_memory);
    //printf("The address of dst_memory is: %p\n", (void *)dst_memory);

    init(src_memory, 0x55);

    START_TRACE
    memcpy(&dst_memory, &src_memory, MEMORY_SIZE);
    STOP_TRACE

    return 0;
}
