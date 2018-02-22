#ifndef INDEXFINDER_H
#define  INDEXFINDER_H

int IndexFinder(size_t currentD, size_t K, size_t Bounds[], size_t Indices[])
{
	if (currentD < K)
		return Indices[currentD-1] + Bounds[currentD-1]  * (IndexFinder(currentD+1, K, Bounds, Indices));
	else
		return Indices[currentD-1];
}

#endif
