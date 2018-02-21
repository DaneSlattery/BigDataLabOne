/*
 * main.c
 *
 *  Created on: 20 Feb 2018
 *      Author: dane
 */

#include <stdio.h>
#include <math.h>
#include "CreateArray.h"
#include "getElement.h"
#include "printArray.h"
#include "setZero.h"
#include "TenPercentOnes.h"
int main()
{
	printf("Create Array\n");
	size_t Bounds[2] = {13,11};
	int *Array = CreateArray(2, Bounds);
	printArray(Array, Bounds);

	printf("Change element (1,2) to 5\n");
	*getElement(Array,2,Bounds,(size_t []) {1, 2}) = 5;
	printf("element (1,2)  is now %d\n\n", *getElement(Array,2,Bounds,(size_t []) {1, 2}));
	printArray(Array, Bounds);

	printf("Set all to 0's \n");
	setZero(Array,2,Bounds);
	printArray(Array, Bounds);

	printf("Set 10 percent to 1's \n");
	TenPercentOnes(Array,2,Bounds);
	printArray(Array, Bounds);
}
