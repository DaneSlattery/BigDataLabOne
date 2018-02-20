/*
 * CreateArray.h
 *
 *  Created on: 20 Feb 2018
 *      Author: dane
 */

#ifndef CREATEARRAY_H_
#define CREATEARRAY_H_

#include <stdlib.h>

int* CreateArray(size_t K, size_t bounds[])
{
	size_t size = sizeof(int);
	for (size_t n = 0; n < K; ++n)
	{
		size *= bounds[n];
	}

	//
	printf("Size: (%d).\n", size);
	//
	return (malloc(size));
}

#endif /* CREATEARRAY_H_ */
