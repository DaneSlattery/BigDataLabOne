#ifndef CHOOSEFIVEPERCENT_H
#define  CHOOSEFIVEPERCENT_H

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

// in a uniform random fashion chooses 5% f the elements of the array - done
// and prints the coordinate indices of the elements
// and the value of the array element at a chosen cell. - done
void ChooseFivePercent(int* Array, size_t K, size_t Bounds[])
{
  int elements = NumElements(K,Bounds);                                         // Computes the total number of elements in the array.
  int band = roundf(elements/20.0f);                                            // Computes 5% of this number.
  int space = ceil(elements/(float)band);                                       // 

  srand(time(NULL));                                                            // should only be called once
  
  int R, index;
  printf("Value\tCoordinates\n");
  for (int n = 0; n < band; n++)                                                // for 5% of elements
  {
    R = rand()%space;                                                           // returns a pseudo-random integer between 0 and RAND_MAX
    index = n*space+R;                                                          // pick a random index in the 1D array
    printf("(%d): ", Array[index]);
    printf("[");
    for (int i = 0; i < K; i++)                                                 // for every dimension
    {
      printf("%zu", index%Bounds[i]);                                            // calculate the index of that dimension
      if (i<K-1)
        printf("][");
      index = index/Bounds[i];                                                  // then using integer division, eliminate that dimension   
    }                                                                           // from the index.
    
    printf("]; ");
//    if (n%2 == 0)                                                     // output formatting
//        printf("\n");
  }
  printf("\n");
}
#endif
