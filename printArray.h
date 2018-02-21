
#ifndef PRINTARRAY_H_
#define  PRINTARRAY_H_
#include <stdio.h>
#include <stdlib.h>

void printArray(int* Array, size_t Bounds[])
{
  printf("\n");
  for (int n = 0; n<Bounds[0]*Bounds[1];n++)
  {
    printf("%d ", Array[n]);
    if ((n+1)%Bounds[0] == 0)
    {
      printf("\n");
    }
  }
  printf("\n");
}

#endif
