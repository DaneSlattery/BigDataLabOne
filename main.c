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
	printf("Create Array\n");
	size_t Bounds[2] = {10,10};
	size_t Dims = sizeof(Bounds)/sizeof(size_t);
	printf("Dimensions of array: %zu\n",Dims);
	int *Array = CreateArray(Bounds);
	printArray(Array, Bounds);

	printf("Change element (5,5) to 5\n");
	*getElement(Array,Dims,Bounds,(size_t []) {5,5}) = 5;
	printf("element (5,5)  is now %d\n\n", *getElement(Array,Dims,Bounds,(size_t []) {5,5}));
	printArray(Array, Bounds);

	printf("Set all to 0's \n");
	setZero(Array,2,Bounds);
	printArray(Array, Bounds);

	printf("Set 10 percent to 1's \n");
	TenPercentOnes(Array,2,Bounds);
	printArray(Array, Bounds);

	printf("Choose 5 percent  \n");
	ChooseFivePercent(Array,2,Bounds);
	printArray(Array, Bounds);


}
