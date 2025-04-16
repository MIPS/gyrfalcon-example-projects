#include "trace_macros.h"
#include <stdint.h>
#include <string.h>
#include <stdio.h>
 
#define MEMORY_SIZE 2048 // Adjust based on your memory size

int main() {
    int src_memory[MEMORY_SIZE];
    int dst_memory[MEMORY_SIZE]; 

    for(int i = 0; i< MEMORY_SIZE; i++){
        src_memory[i]=i;
        dst_memory[i]=2*i;
     }

    START_TRACE
    memcpy(&dst_memory, &src_memory, MEMORY_SIZE * sizeof(int));
    STOP_TRACE

    return 0;
}
