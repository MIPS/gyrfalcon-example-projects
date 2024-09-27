#include <stdio.h>

int main()
{
  float a = 1.0;
  float b, c, d;
  double A = 0.1;
  double B, C, D;

  //asm ("fatan.s %0, %1":"=f"(b):"f"(a));
  //asm ("fsincos.s %0, %1, %2":"=f"(c),"=f"(d):"f"(a));
  //asm ("fatan.d %0, %1":"=f"(B):"f"(A));
  asm ("fsincos.d %0, %1, %2":"=f"(C),"=f"(D):"f"(A));

  //printf("fatan.s(%f) = %f\n", a, b);
  //printf("fsincos.s(%f) = %f %f\n", a, c, d);
  //printf("fatan.d(%f) = %f\n", A, B);
  printf("fsincos.d(%f) = %f %f\n", A, C, D);

  return 0;
}
