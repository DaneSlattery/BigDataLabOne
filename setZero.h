#ifndef SETZERO_H
#define  SETZERO_H

#include "NumElements.h"

/* Sets all values in a K-dimensional array to 0.
*/
void setZero(int* Array, size_t K, size_t Bounds[])
{
  for (int n = 0; n < NumElements(K,Bounds);n++)                                // set all the allocated memory values in the 1D array to 0.
    Array[n] = 0;
}

#endif
