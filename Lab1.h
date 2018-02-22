#ifndef LAB1_H
#define  LAB1_H
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <math.h>
#include "CreateArray.h"
#include "getElement.h"
#include "printArray.h"
#include "setZero.h"
#include "TenPercentOnes.h"
#include "ChooseFivePercent.h"
void Lab1(size_t K, size_t Bounds[]) 
{
  int *Array = CreateArray(K, Bounds);
	setZero(Array,K,Bounds);
	TenPercentOnes(Array,K,Bounds);
	ChooseFivePercent(Array,K,Bounds);
	free(Array);
}
#endif
