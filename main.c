/*
 * main.c
 *
 *  Created on: 20 Feb 2018
 *      Author: dane
 */

#include <stdio.h>
#include "CreateArray.h"
#include "getElement.h"
int main()
{
	size_t Bounds[2] = {3, 3};
	int *Array = CreateArray(2, Bounds);
	// printf("%d\n", );
	for (int n = 0; n<Bounds[0]*Bounds[1];n++)
	{
		printf("%d ", Array[n]);
		if ((n+1)%Bounds[0] == 0)
			printf("\n");
	}
	printf("\nChange element (1,2) to 79\n");
	*getElement(Array,2,Bounds,(size_t []) {1, 2}) = 79;
	printf("%d\n", *getElement(Array,2,Bounds,(size_t []) {1, 2}));

	for (int n = 0; n<Bounds[0]*Bounds[1];n++)
	{
		printf("%d ", Array[n]);
		if ((n+1)%Bounds[0] == 0)
			printf("\n");
	}
}
