#ifndef INDEXFINDER_H
#define  INDEXFINDER_H

int IndexFinder(size_t currentD, size_t K, size_t Bounds[], size_t Indices[])
{
	if (Bounds[currentD] < K)
		return Indices[currentD] + Bounds[currentD]  * (IndexFinder(currentD+1, K, Bounds, Indices));
	else
		return Indices[currentD];
}

#endif
