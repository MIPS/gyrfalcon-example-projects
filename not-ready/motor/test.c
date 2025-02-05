float test1(float a)
{
  float r;
  asm ("fatan.s %0, %1":"=f"(r):"f"(a));
  return r;
}

double test2(double a)
{
  double r;
  asm ("fatan.d %0, %1":"=f"(r):"f"(a));
  return r;
}

float test3(float a)
{
  float r, s;
  asm ("fsincos.s %0, %1, %2":"=f"(r),"=f"(s):"f"(a));
  return r;
}

double test4(double a)
{
  double r, s;
  asm ("fsincos.d %0, %1, %2":"=f"(r),"=f"(s):"f"(a));
  return r;
}
