#ifndef TENPERCENTONES_H
#define  TENPERCENTONES_H
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

void TenPercentOnes(int* Array, size_t K, size_t Bounds[])
{
  int elements = NumElements(K,Bounds);
  printf("Num Elements: %d\n", elements);
  int band = roundf(elements/10.0f);
  int space = ceil(elements/(float)band);
  printf("Band size: %d\n", band);

  for (int n = 0; n < band;n++)
    Array[n*space] =  1;
}
#endif
