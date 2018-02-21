#ifndef NUMELEMENTS_H
#define  NUMELEMENTS_H
#include <stdlib.h>
#include "NumElements.h"
int NumElements(size_t K, size_t Bounds[])
{
  int number = 1;
  for (int n = 0; n < K; n++)
  {
    number *= Bounds[n];
  }
  return number;
}
#endif
