/*
 * getElement.h
 *
 *  Created on: 20 Feb 2018
 *      Author: dane
 */

#ifndef GETELEMENT_H_
#define GETELEMENT_H_
#include <stdio.h>
#include <stdlib.h>

int* getElement(int* Array, size_t K, size_t Bounds[], size_t Indices[])
{
  if (K==0)
    return Array;

  int index = Indices[0];
  for (size_t n = 1; n < K; ++n)
  {
    index = index * Bounds[n] + Indices[n];
  }
  // printf("%d\n", index);
  return &Array[index];
}

#endif
