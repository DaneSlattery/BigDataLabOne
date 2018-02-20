/*
 * main.c
 *
 *  Created on: 20 Feb 2018
 *      Author: dane
 */

#include <stdio.h>
#include "CreateArray.h"

int main()
{
	size_t Bounds[2] = {10, 10};
	int *Array = CreateArray(2, Bounds);
	printf("Size:");
}
