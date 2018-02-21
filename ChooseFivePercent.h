#ifndef CHOOSEFIVEPERCENT_H
#define  CHOOSEFIVEPERCENT_H
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

// in a uniform random fashion chooses 5% f the elements of the array
// and prints the coordinate indices of the elements
// and the value of the array element at a chosen cell.

void ChooseFivePercent(int* Array, size_t K, size_t Bounds[])
{
  int elements = NumElements(K,Bounds);
  printf("Num Elements: %d\n", elements);
  int band = roundf(elements/20.0f);
  int space = ceil(elements/(float)band);
  printf("Band size: %d\n", band);

  srand(time(NULL));   // should only be called once
  int R, index;
  for (int n = 0; n < band;n++)
  {
    R = rand()%space;      // returns a pseudo-random integer between 0 and RAND_MAX
    index = n*space+R;
    Array[index] =  4;
    printf("Random number: %d\nCoordinates:\nValue: %d\n", R, Array[index]);
  }


}
#endif
