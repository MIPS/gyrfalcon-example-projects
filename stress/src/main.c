#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Memory stress test
void memory_test(size_t size_mb)
{
    // printf("Running memory test with %zu MB...\n", size_mb);
    size_t size = size_mb * 1024 * 1024;
    char *buffer = (char *)malloc(size);

    if (buffer == NULL)
    {
        // printf("Memory allocation failed. Test aborted.\n");
        return;
    }

    for (size_t i = 0; i < size; i++)
    {
        buffer[i] = (char)(i % 256); // Write test
    }

    for (size_t i = 0; i < size; i++)
    {
        volatile char value = buffer[i]; // Read test
        (void)value;
    }

    free(buffer);
    // printf("Memory test completed.\n");
}

// CPU stress test
void cpu_test(int iterations)
{
    //  printf("Running CPU test with %d iterations...\n", iterations);
    volatile long long result = 0;

    for (int i = 0; i < iterations; i++)
    {
        result += i * i;
    }

    // printf("CPU test completed. Final result: %lld\n", result);
}

// Floating-point stress test
void floating_point_test(int iterations)
{
    // printf("Running floating-point test with %d iterations...\n", iterations);
    volatile double result = 0.0;

    for (int i = 0; i < iterations; i++)
    {
        result += 1.0 / (i + 1.0);
    }

    // printf("Floating-point test completed. Final result: %f\n", result);
}

// LSU stress test
void lsu_test(int iterations)
{
    //  printf("Running LSU (Load-Store Unit) test with %d iterations...\n", iterations);
    size_t array_size = 1024; // Small array to stress the load/store operations
    volatile int *array = (int *)malloc(array_size * sizeof(int));

    if (array == NULL)
    {
        // printf("Memory allocation failed for LSU test. Test aborted.\n");
        return;
    }

    // Initialize the array
    for (size_t i = 0; i < array_size; i++)
    {
        array[i] = i;
    }

    // Repeatedly load and store values
    for (int i = 0; i < iterations; i++)
    {
        for (size_t j = 0; j < array_size; j++)
        {
            array[j] += 1; // Load and store operation
        }
    }

    free((void *)array);
    // printf("LSU test completed.\n");
}

int main()
{
    // printf("Starting stress tests...\n");

    // Modify these parameters as needed
    size_t memory_size_mb = 1;  // 512; // Memory test size in MB
    int cpu_iterations = 500;   // 100000000;  // CPU test iterations
    int float_iterations = 500; // 10000000; // Floating-point test iterations
    int lsu_iterations = 500;   // 1000000;    // LSU test iterations

    clock_t start, end;

    // Memory test
    // start = clock();
    memory_test(memory_size_mb);
    // end = clock();
    // printf("Memory test time: %.2f seconds\n", (double)(end - start) / CLOCKS_PER_SEC);

    // CPU test
    //  start = clock();
    cpu_test(cpu_iterations);
    //  end = clock();
    // printf("CPU test time: %.2f seconds\n", (double)(end - start) / CLOCKS_PER_SEC);

    // Floating-point test
    //  start = clock();
    floating_point_test(float_iterations);
    // end = clock();
    //  printf("Floating-point test time: %.2f seconds\n", (double)(end - start) / CLOCKS_PER_SEC);

    // LSU test
    // start = clock();
    lsu_test(lsu_iterations);
    // end = clock();
    // printf("LSU test time: %.2f seconds\n", (double)(end - start) / CLOCKS_PER_SEC);

    // printf("Stress tests completed.\n");
    return 0;
}