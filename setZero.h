#ifndef SETZERO_H
#define  SETZERO_H
#include "NumElements.h"
void setZero(int* Array, size_t K, size_t Bounds[])
{
  for (int n = 0; n < NumElements(K,Bounds);n++)
    Array[n] = 0;
}
#endif
