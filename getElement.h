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
#include "IndexFinder.h"

int* getElement(int* Array, size_t K,size_t Bounds[], size_t Indices[])
{

  if (K==0)
    return Array;

  // int index = Indices[0];
  // for (size_t n = 1; n < K; ++n)
  // {
  //   index = index * Bounds[n-1] + Indices[n];
  // }
  int index = IndexFinder(1,K,Bounds,Indices);

  return &Array[index];
}

#endif
