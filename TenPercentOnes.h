#ifndef TENPERCENTONES_H
#define  TENPERCENTONES_H

#include <stdlib.h>
#include <math.h>

void TenPercentOnes(int* Array, size_t K, size_t Bounds[])
{
  int elements = NumElements(K,Bounds);                                         // determine the total number of elements
  int band = roundf(elements/10.0f);                                            // determine the 10% of this total
  int space = ceil(elements/(float)band);                                       // calculate the distance for each 1 to be for uniformity
  
  srand(time(NULL));                                                            // should only be called once
  int R = rand()%space;                                                         // returns a pseudo-random integer between 0 and RAND_MAX
  
  for (int n = 0; n < band;n++)                                                 // place 'band' number of 1's, every 'space' distance apart in the 
    Array[n*space+R] =  1;                                                      // array
}
#endif
