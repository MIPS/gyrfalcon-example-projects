#include "trace_macros.h"
#include <stdint.h>
#include <string.h>
#include <stdio.h>
 
#define MEMORY_SIZE 8*1024 // Adjust based on your memory size
#define ITERS 1

int main() {
    uint8_t src_memory[MEMORY_SIZE]; // Replace with your memory address
    uint8_t dst_memory[MEMORY_SIZE]; // Replace with your memory address

    memset(src_memory, 0x55, MEMORY_SIZE);
    memset(dst_memory, 0xAA, MEMORY_SIZE);

    START_TRACE
    for (int i=0; i<ITERS; i++) {
        memcpy(&dst_memory, &src_memory, MEMORY_SIZE);
    }
    STOP_TRACE

    return 0;
}
