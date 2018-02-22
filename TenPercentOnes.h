#ifndef TENPERCENTONES_H
#define  TENPERCENTONES_H
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

void TenPercentOnes(int* Array, size_t K, size_t Bounds[])
{
  int elements = NumElements(K,Bounds);
  // printf("Num Elements: %d\n", elements);
  int band = roundf(elements/10.0f);
  int space = ceil(elements/(float)band);
  // printf("Band size: %d\n", band);
  srand(time(NULL));   // should only be called once
  int R = rand()%space;      // returns a pseudo-random integer between 0 and RAND_MAX
  for (int n = 0; n < band;n++)
    Array[n*space+R] =  1;
}
#endif
