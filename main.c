/*
 * main.c
 *
 *  Created on: 20 Feb 2018
 *      Author: dane
 */

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
int main()
{
	size_t Bounds[5] = {10,10,10,10,10};
	size_t K = sizeof(Bounds)/sizeof(size_t);
	int *Array = CreateArray(K, Bounds);
	setZero(Array,K,Bounds);
	TenPercentOnes(Array,K,Bounds);
	ChooseFivePercent(Array,K,Bounds);
	free(Array);
	return 0;
}
