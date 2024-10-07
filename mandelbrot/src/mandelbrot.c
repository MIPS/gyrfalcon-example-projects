#include <stdio.h>
extern int rasterize();

int main() {
	double result = rasterize();
	printf("Mandelbrot! %f", result);
}
