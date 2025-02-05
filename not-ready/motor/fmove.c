float test1(float a, float b)
{
  float c;
  asm volatile ("fsgnj.s %0, %1, %2":"=f"(c):"f"(b),"f"(b));
  return c;
}

float test2(float a, float b)
{
  return b;
}
