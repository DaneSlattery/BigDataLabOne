/*
 * CreateArray.h
 *
 *  Created on: 20 Feb 2018
 *      Author: dane
 */

#ifndef CREATEARRAY_H_
#define CREATEARRAY_H_
#include <stdio.h>
#include <stdlib.h>

int* CreateArray(size_t bounds[])
{
	size_t K = sizeof(&bounds)/sizeof(size_t);
	size_t size = sizeof(int);
	for (size_t n = 0; n < K; ++n)
	{
		size *= bounds[n];
	}

	//
	printf("Memory size: %zu\n", size);
	//
	return (malloc(size));
}

#endif /* CREATEARRAY_H_ */
